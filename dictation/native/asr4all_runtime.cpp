#include "asr4all_runtime.h"

#include <algorithm>
#include <cstdlib>
#include <cstring>
#include <mutex>
#include <sstream>
#include <utility>

#include <executorch/extension/threadpool/threadpool.h>
#include <executorch/runtime/core/evalue.h>
#include <executorch/runtime/core/exec_aten/exec_aten.h>
#include <executorch/runtime/core/hierarchical_allocator.h>
#include <executorch/runtime/core/memory_allocator.h>
#include <executorch/runtime/core/portable_type/scalar_type.h>
#include <executorch/runtime/core/portable_type/tensor_impl.h>
#include <executorch/runtime/core/span.h>
#include <executorch/runtime/core/tag.h>
#include <executorch/runtime/executor/memory_manager.h>
#include <executorch/runtime/executor/method.h>
#include <executorch/runtime/executor/method_meta.h>
#include <executorch/runtime/platform/runtime.h>

namespace asr4all {

using executorch::aten::ScalarType;
using executorch::aten::Tensor;
using executorch::runtime::Error;
using executorch::runtime::EValue;
using executorch::runtime::HierarchicalAllocator;
using executorch::runtime::MemoryAllocator;
using executorch::runtime::MemoryManager;
using executorch::runtime::Method;
using executorch::runtime::MethodMeta;
using executorch::runtime::Program;
using executorch::runtime::Result;
using executorch::runtime::Span;
using executorch::runtime::Tag;
using executorch::runtime::etensor::TensorImpl;

namespace {

std::once_flag g_runtime_init_once;
thread_local std::string g_thread_last_error;

void ensure_runtime_init() {
  std::call_once(g_runtime_init_once, []() {
    executorch::runtime::runtime_init();
  });
}

constexpr size_t kArenaAlign = 64;

struct AlignedBuffer {
  uint8_t* ptr = nullptr;
  size_t size = 0;

  AlignedBuffer() = default;
  ~AlignedBuffer() { release(); }

  AlignedBuffer(const AlignedBuffer&) = delete;
  AlignedBuffer& operator=(const AlignedBuffer&) = delete;

  AlignedBuffer(AlignedBuffer&& other) noexcept
      : ptr(other.ptr), size(other.size) {
    other.ptr = nullptr;
    other.size = 0;
  }

  AlignedBuffer& operator=(AlignedBuffer&& other) noexcept {
    if (this != &other) {
      release();
      ptr = other.ptr;
      size = other.size;
      other.ptr = nullptr;
      other.size = 0;
    }
    return *this;
  }

  bool allocate(size_t nbytes) {
    release();
    size_t alloc_bytes = nbytes > 0 ? nbytes : kArenaAlign;
    void* raw = nullptr;
    if (::posix_memalign(&raw, kArenaAlign, alloc_bytes) != 0 || !raw) {
      return false;
    }
    ptr = static_cast<uint8_t*>(raw);
    size = nbytes;
    return true;
  }

  void release() {
    if (ptr != nullptr) {
      std::free(ptr);
      ptr = nullptr;
      size = 0;
    }
  }
};

// Dynamic heap-backed MemoryAllocator for per-method runtime structures.
// Frees all allocations deterministically when the LoadedMethod is destroyed.
class HeapMemoryAllocator final : public MemoryAllocator {
 public:
  HeapMemoryAllocator() : MemoryAllocator(0, nullptr) {}
  ~HeapMemoryAllocator() override { reset(); }

  void* allocate(size_t size, size_t alignment = kDefaultAlignment) override {
    if (!isPowerOf2(alignment)) {
      return nullptr;
    }
    const size_t eff_align = std::max(alignment, sizeof(void*));
    const size_t eff_size = size > 0 ? size : 1;
    void* raw = nullptr;
    if (::posix_memalign(&raw, eff_align, eff_size) != 0 || !raw) {
      return nullptr;
    }
    ptrs_.push_back(raw);
    return raw;
  }

  void reset() override {
    for (void* p : ptrs_) {
      std::free(p);
    }
    ptrs_.clear();
  }

 private:
  std::vector<void*> ptrs_;
};

std::string error_to_string(Error err) {
  return "ExecuTorch Error(" + std::to_string(static_cast<int>(err)) + ")";
}

bool collect_planned_sizes(
    const MethodMeta& meta,
    std::vector<size_t>& out,
    std::string* err_msg) {
  const size_t n = meta.num_memory_planned_buffers();
  out.clear();
  out.reserve(n);
  for (size_t i = 0; i < n; ++i) {
    Result<int64_t> sz = meta.memory_planned_buffer_size(i);
    if (!sz.ok() || sz.get() < 0) {
      if (err_msg) {
        *err_msg = "Failed to query memory_planned_buffer_size(" +
                   std::to_string(i) + ")";
      }
      return false;
    }
    out.push_back(static_cast<size_t>(sz.get()));
  }
  return true;
}

}  // namespace

struct AsrRuntime::ArenaStorage {
  std::vector<AlignedBuffer> buffers;
  std::vector<Span<uint8_t>> spans;

  bool allocate(const std::vector<size_t>& sizes) {
    buffers.clear();
    spans.clear();
    buffers.resize(sizes.size());
    spans.reserve(sizes.size());
    for (size_t i = 0; i < sizes.size(); ++i) {
      if (!buffers[i].allocate(sizes[i])) {
        buffers.clear();
        spans.clear();
        return false;
      }
      spans.emplace_back(buffers[i].ptr, buffers[i].size);
    }
    return true;
  }

  bool covers(const std::vector<size_t>& required) const {
    if (buffers.size() < required.size()) {
      return false;
    }
    for (size_t i = 0; i < required.size(); ++i) {
      if (buffers[i].size < required[i]) {
        return false;
      }
    }
    return true;
  }

  std::vector<size_t> merged_sizes(const std::vector<size_t>& required) const {
    const size_t n = std::max(buffers.size(), required.size());
    std::vector<size_t> out(n, 0);
    for (size_t i = 0; i < buffers.size(); ++i) {
      out[i] = std::max(out[i], buffers[i].size);
    }
    for (size_t i = 0; i < required.size(); ++i) {
      out[i] = std::max(out[i], required[i]);
    }
    return out;
  }
};

struct AsrRuntime::ArenaGroup {
  ArenaStorage storage;
};

struct AsrRuntime::LoadedMethod {
  std::string name;
  std::string arena_group;
  std::unique_ptr<ArenaStorage> dedicated_arena;
  std::unique_ptr<HeapMemoryAllocator> method_allocator;
  std::unique_ptr<HierarchicalAllocator> planned_allocator;
  std::unique_ptr<MemoryManager> memory_manager;
  std::unique_ptr<Method> method;

  ~LoadedMethod() {
    // Destroy Method before allocators and arena storage.
    method.reset();
    memory_manager.reset();
    planned_allocator.reset();
    method_allocator.reset();
    dedicated_arena.reset();
  }
};

void set_num_threads(int num_threads) {
  ensure_runtime_init();
  const uint32_t count =
      num_threads > 0 ? static_cast<uint32_t>(num_threads) : 1u;
  auto* tp = executorch::extension::threadpool::get_threadpool();
  if (tp != nullptr) {
#if defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif
    tp->_unsafe_reset_threadpool(count);
#if defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic pop
#endif
  }
}

std::string get_thread_last_error() {
  return g_thread_last_error;
}

void set_thread_last_error(const std::string& msg) {
  g_thread_last_error = msg;
}

AsrRuntime::AsrRuntime(
    std::unique_ptr<OffsetDataLoader> loader,
    std::unique_ptr<Program> program)
    : loader_(std::move(loader)), program_(std::move(program)) {}

AsrRuntime::~AsrRuntime() {
  std::lock_guard<std::mutex> lock(mutex_);
  methods_.clear();
  arena_groups_.clear();
  program_.reset();
  loader_.reset();
}

std::unique_ptr<AsrRuntime> AsrRuntime::create_from_loader(
    std::unique_ptr<OffsetDataLoader> loader,
    const std::string& label) {
  ensure_runtime_init();
  Result<Program> prog = Program::load(
      loader.get(), Program::Verification::Minimal);
  if (!prog.ok()) {
    set_thread_last_error(
        "Program::load(" + label + ") failed: " + error_to_string(prog.error()));
    return nullptr;
  }
  set_thread_last_error("");
  auto prog_ptr = std::make_unique<Program>(std::move(prog.get()));
  return std::unique_ptr<AsrRuntime>(
      new AsrRuntime(std::move(loader), std::move(prog_ptr)));
}

std::unique_ptr<AsrRuntime> AsrRuntime::open_file(const std::string& path) {
  auto loader_res = OffsetDataLoader::from_file(path.c_str());
  if (!loader_res.ok()) {
    set_thread_last_error(
        "OffsetDataLoader::from_file(" + path + ") failed: " +
        error_to_string(loader_res.error()));
    return nullptr;
  }
  return create_from_loader(std::move(loader_res.get()), path);
}

std::unique_ptr<AsrRuntime> AsrRuntime::open_fd(
    int fd,
    int64_t offset,
    int64_t length) {
  auto loader_res = OffsetDataLoader::from_fd(fd, offset, length);
  if (!loader_res.ok()) {
    set_thread_last_error(
        "OffsetDataLoader::from_fd(fd=" + std::to_string(fd) + ", offset=" +
        std::to_string(offset) + ", length=" + std::to_string(length) +
        ") failed: " + error_to_string(loader_res.error()));
    return nullptr;
  }
  return create_from_loader(std::move(loader_res.get()), "fd");
}

void AsrRuntime::set_error_locked(const std::string& msg) {
  last_error_ = msg;
  g_thread_last_error = msg;
}

std::string AsrRuntime::last_error() const {
  std::lock_guard<std::mutex> lock(mutex_);
  return last_error_;
}

int AsrRuntime::instantiate_method_locked(
    const std::string& method_name,
    const std::string& arena_group,
    ArenaStorage* shared_arena,
    std::unique_ptr<LoadedMethod>& out) {
  Result<MethodMeta> meta_res = program_->method_meta(method_name.c_str());
  if (!meta_res.ok()) {
    set_error_locked(
        "method_meta(" + method_name + ") failed: " +
        error_to_string(meta_res.error()));
    return static_cast<int>(meta_res.error());
  }

  std::vector<size_t> planned_sizes;
  std::string err_msg;
  if (!collect_planned_sizes(meta_res.get(), planned_sizes, &err_msg)) {
    set_error_locked(err_msg);
    return static_cast<int>(Error::InvalidProgram);
  }

  auto lm = std::make_unique<LoadedMethod>();
  lm->name = method_name;
  lm->arena_group = arena_group;

  ArenaStorage* active_arena = shared_arena;
  if (active_arena == nullptr) {
    lm->dedicated_arena = std::make_unique<ArenaStorage>();
    if (!lm->dedicated_arena->allocate(planned_sizes)) {
      set_error_locked(
          "Failed to allocate dedicated planned arena for " + method_name);
      return static_cast<int>(Error::MemoryAllocationFailed);
    }
    active_arena = lm->dedicated_arena.get();
  }

  lm->method_allocator = std::make_unique<HeapMemoryAllocator>();
  lm->planned_allocator = std::make_unique<HierarchicalAllocator>(
      Span<Span<uint8_t>>(active_arena->spans.data(), active_arena->spans.size()));
  lm->memory_manager = std::make_unique<MemoryManager>(
      lm->method_allocator.get(),
      lm->planned_allocator.get(),
      /*temp_allocator=*/nullptr);

  Result<Method> method_res =
      program_->load_method(method_name.c_str(), lm->memory_manager.get());
  if (!method_res.ok()) {
    set_error_locked(
        "load_method(" + method_name + ") failed: " +
        error_to_string(method_res.error()));
    return static_cast<int>(method_res.error());
  }

  lm->method = std::make_unique<Method>(std::move(method_res.get()));
  out = std::move(lm);
  return static_cast<int>(Error::Ok);
}

int AsrRuntime::load_method(
    const std::string& method_name,
    const std::string& arena_group) {
  std::lock_guard<std::mutex> lock(mutex_);
  return load_method_locked(method_name, arena_group);
}

int AsrRuntime::load_method_locked(
    const std::string& method_name,
    const std::string& arena_group) {
  auto existing = methods_.find(method_name);
  if (existing != methods_.end()) {
    if (existing->second->arena_group == arena_group) {
      return static_cast<int>(Error::Ok);
    }
    methods_.erase(existing);
  }

  if (arena_group.empty()) {
    std::unique_ptr<LoadedMethod> lm;
    const int rc = instantiate_method_locked(method_name, "", nullptr, lm);
    if (rc == 0) {
      methods_.emplace(method_name, std::move(lm));
    }
    return rc;
  }

  Result<MethodMeta> meta_res = program_->method_meta(method_name.c_str());
  if (!meta_res.ok()) {
    set_error_locked(
        "method_meta(" + method_name + ") failed: " +
        error_to_string(meta_res.error()));
    return static_cast<int>(meta_res.error());
  }
  std::vector<size_t> required_sizes;
  std::string err_msg;
  if (!collect_planned_sizes(meta_res.get(), required_sizes, &err_msg)) {
    set_error_locked(err_msg);
    return static_cast<int>(Error::InvalidProgram);
  }

  auto git = arena_groups_.find(arena_group);
  if (git == arena_groups_.end()) {
    // Pre-size with paired *_flush sibling if present to avoid an extra reload
    // when e.g. pcec_c16 is loaded before pcec_c16_flush.
    std::vector<size_t> initial_sizes = required_sizes;
    const std::string flush_sibling = method_name + "_flush";
    Result<MethodMeta> sib_res = program_->method_meta(flush_sibling.c_str());
    if (sib_res.ok()) {
      std::vector<size_t> sib_sizes;
      if (collect_planned_sizes(sib_res.get(), sib_sizes, nullptr)) {
        const size_t n = std::max(initial_sizes.size(), sib_sizes.size());
        initial_sizes.resize(n, 0);
        for (size_t i = 0; i < sib_sizes.size(); ++i) {
          initial_sizes[i] = std::max(initial_sizes[i], sib_sizes[i]);
        }
      }
    }

    auto group = std::make_unique<ArenaGroup>();
    if (!group->storage.allocate(initial_sizes)) {
      set_error_locked("Failed to allocate arena group '" + arena_group + "'");
      return static_cast<int>(Error::MemoryAllocationFailed);
    }
    git = arena_groups_.emplace(arena_group, std::move(group)).first;
  } else if (!git->second->storage.covers(required_sizes)) {
    // Grow the shared arena safely: unload existing members of this group,
    // reallocate to the max required sizes, then reload them.
    std::vector<std::string> group_members;
    for (const auto& kv : methods_) {
      if (kv.second->arena_group == arena_group) {
        group_members.push_back(kv.first);
      }
    }
    for (const std::string& m : group_members) {
      methods_.erase(m);
    }
    std::vector<size_t> new_sizes = git->second->storage.merged_sizes(required_sizes);
    if (!git->second->storage.allocate(new_sizes)) {
      arena_groups_.erase(git);
      set_error_locked("Failed to grow arena group '" + arena_group + "'");
      return static_cast<int>(Error::MemoryAllocationFailed);
    }
    for (const std::string& m : group_members) {
      std::unique_ptr<LoadedMethod> reloaded;
      const int rc = instantiate_method_locked(
          m, arena_group, &git->second->storage, reloaded);
      if (rc != 0) {
        return rc;
      }
      methods_.emplace(m, std::move(reloaded));
    }
  }

  std::unique_ptr<LoadedMethod> lm;
  const int rc = instantiate_method_locked(
      method_name, arena_group, &git->second->storage, lm);
  if (rc == 0) {
    methods_.emplace(method_name, std::move(lm));
  }
  return rc;
}

void AsrRuntime::unload_method(const std::string& method_name) {
  std::lock_guard<std::mutex> lock(mutex_);
  if (method_name.empty()) {
    methods_.clear();
    arena_groups_.clear();
    return;
  }
  auto it = methods_.find(method_name);
  if (it == methods_.end()) {
    return;
  }
  const std::string group = it->second->arena_group;
  methods_.erase(it);
  if (!group.empty()) {
    bool still_used = false;
    for (const auto& kv : methods_) {
      if (kv.second->arena_group == group) {
        still_used = true;
        break;
      }
    }
    if (!still_used) {
      arena_groups_.erase(group);
    }
  }
}

bool AsrRuntime::get_method_meta(
    const std::string& method_name,
    MethodMetaInfo& out) {
  std::lock_guard<std::mutex> lock(mutex_);
  Result<MethodMeta> meta_res = program_->method_meta(method_name.c_str());
  if (!meta_res.ok()) {
    set_error_locked(
        "method_meta(" + method_name + ") failed: " +
        error_to_string(meta_res.error()));
    return false;
  }
  const MethodMeta& meta = meta_res.get();
  out.inputs.clear();
  out.outputs.clear();

  const size_t n_in = meta.num_inputs();
  out.inputs.reserve(n_in);
  for (size_t i = 0; i < n_in; ++i) {
    auto tag = meta.input_tag(i);
    if (!tag.ok() || tag.get() != Tag::Tensor) {
      set_error_locked(
          "method " + method_name + " input " + std::to_string(i) +
          " is not a Tensor");
      return false;
    }
    auto tinfo = meta.input_tensor_meta(i);
    if (!tinfo.ok()) {
      set_error_locked("input_tensor_meta failed for " + method_name);
      return false;
    }
    TensorSpec spec;
    spec.dtype = static_cast<int>(tinfo.get().scalar_type());
    auto sz = tinfo.get().sizes();
    spec.sizes.assign(sz.begin(), sz.end());
    out.inputs.push_back(std::move(spec));
  }

  const size_t n_out = meta.num_outputs();
  out.outputs.reserve(n_out);
  for (size_t i = 0; i < n_out; ++i) {
    auto tag = meta.output_tag(i);
    if (!tag.ok() || tag.get() != Tag::Tensor) {
      set_error_locked(
          "method " + method_name + " output " + std::to_string(i) +
          " is not a Tensor");
      return false;
    }
    auto tinfo = meta.output_tensor_meta(i);
    if (!tinfo.ok()) {
      set_error_locked("output_tensor_meta failed for " + method_name);
      return false;
    }
    TensorSpec spec;
    spec.dtype = static_cast<int>(tinfo.get().scalar_type());
    auto sz = tinfo.get().sizes();
    spec.sizes.assign(sz.begin(), sz.end());
    out.outputs.push_back(std::move(spec));
  }
  return true;
}

std::string AsrRuntime::method_meta_json(const std::string& method_name) {
  MethodMetaInfo info;
  if (!get_method_meta(method_name, info)) {
    return "";
  }
  auto write_list = [](std::ostringstream& os, const std::vector<TensorSpec>& list) {
    os << '[';
    for (size_t i = 0; i < list.size(); ++i) {
      if (i > 0) os << ',';
      os << "{\"dtype\":" << list[i].dtype << ",\"sizes\":[";
      for (size_t d = 0; d < list[i].sizes.size(); ++d) {
        if (d > 0) os << ',';
        os << list[i].sizes[d];
      }
      os << "]}";
    }
    os << ']';
  };

  std::ostringstream os;
  os << "{\"inputs\":";
  write_list(os, info.inputs);
  os << ",\"outputs\":";
  write_list(os, info.outputs);
  os << '}';
  return os.str();
}

bool AsrRuntime::execute(
    const std::string& method_name,
    const std::vector<InputTensor>& inputs,
    std::vector<OutputTensor>& outputs) {
  std::lock_guard<std::mutex> lock(mutex_);

  auto it = methods_.find(method_name);
  if (it == methods_.end()) {
    const int rc = load_method_locked(method_name, "");
    if (rc != 0) {
      return false;
    }
    it = methods_.find(method_name);
  }
  Method& method = *it->second->method;

  if (inputs.size() != method.inputs_size()) {
    set_error_locked(
        "Method " + method_name + " expects " +
        std::to_string(method.inputs_size()) + " inputs, got " +
        std::to_string(inputs.size()));
    return false;
  }

  // Keep TensorImpl metadata arrays alive for the duration of set_input + execute.
  struct BoundInput {
    std::vector<TensorImpl::SizesType> sizes;
    std::vector<TensorImpl::DimOrderType> dim_order;
    std::vector<TensorImpl::StridesType> strides;
    std::unique_ptr<TensorImpl> impl;
  };
  std::vector<BoundInput> bound(inputs.size());

  for (size_t i = 0; i < inputs.size(); ++i) {
    const InputTensor& in = inputs[i];
    BoundInput& b = bound[i];

    size_t expected_numel = 1;
    b.sizes.assign(in.sizes.begin(), in.sizes.end());
    const size_t rank = b.sizes.size();
    b.dim_order.resize(rank);
    b.strides.resize(rank);
    for (size_t d = 0; d < rank; ++d) {
      if (b.sizes[d] < 0) {
        set_error_locked("Negative tensor dimension for " + method_name);
        return false;
      }
      expected_numel *= static_cast<size_t>(b.sizes[d]);
      b.dim_order[d] = static_cast<TensorImpl::DimOrderType>(d);
    }
    if (rank > 0) {
      int32_t stride = 1;
      for (size_t d = rank; d > 0; --d) {
        b.strides[d - 1] = stride;
        stride *= b.sizes[d - 1];
      }
    }

    if (in.count < expected_numel) {
      set_error_locked(
          "Input " + std::to_string(i) + " for " + method_name + " has " +
          std::to_string(in.count) + " elements, expected at least " +
          std::to_string(expected_numel));
      return false;
    }

    ScalarType st = ScalarType::Float;
    void* data_ptr = nullptr;
    if (in.dtype == kDtypeFloat32) {
      st = ScalarType::Float;
      data_ptr = const_cast<float*>(in.f32);
    } else if (in.dtype == kDtypeInt64) {
      st = ScalarType::Long;
      data_ptr = const_cast<int64_t*>(in.i64);
    } else {
      set_error_locked(
          "Unsupported input dtype " + std::to_string(in.dtype) + " at input " +
          std::to_string(i));
      return false;
    }

    if (expected_numel > 0 && data_ptr == nullptr) {
      set_error_locked(
          "Null data pointer for input " + std::to_string(i) + " of " +
          method_name);
      return false;
    }

    b.impl = std::make_unique<TensorImpl>(
        st,
        static_cast<ssize_t>(rank),
        rank > 0 ? b.sizes.data() : nullptr,
        data_ptr,
        rank > 0 ? b.dim_order.data() : nullptr,
        rank > 0 ? b.strides.data() : nullptr);

    Tensor tensor(b.impl.get());
    Error set_err = method.set_input(EValue(tensor), i);
    if (set_err != Error::Ok) {
      set_error_locked(
          "set_input(" + method_name + ", " + std::to_string(i) + ") failed: " +
          error_to_string(set_err));
      return false;
    }
  }

  Error exec_err = method.execute();
  if (exec_err != Error::Ok) {
    set_error_locked(
        "execute(" + method_name + ") failed: " + error_to_string(exec_err));
    return false;
  }

  const size_t n_out = method.outputs_size();
  outputs.clear();
  outputs.resize(n_out);
  for (size_t j = 0; j < n_out; ++j) {
    const EValue& ev = method.get_output(j);
    if (!ev.isTensor()) {
      set_error_locked(
          "Output " + std::to_string(j) + " of " + method_name +
          " is not a Tensor");
      return false;
    }
    const Tensor& t = ev.toTensor();
    OutputTensor& out = outputs[j];
    out.dtype = static_cast<int>(t.scalar_type());
    out.sizes.resize(static_cast<size_t>(t.dim()));
    for (ssize_t d = 0; d < t.dim(); ++d) {
      out.sizes[static_cast<size_t>(d)] = static_cast<int32_t>(t.size(d));
    }
    const size_t n = static_cast<size_t>(t.numel());
    if (out.dtype == kDtypeFloat32) {
      out.f32.resize(n);
      if (n > 0) {
        std::memcpy(out.f32.data(), t.const_data_ptr<float>(), n * sizeof(float));
      }
    } else if (out.dtype == kDtypeInt64) {
      out.i64.resize(n);
      if (n > 0) {
        std::memcpy(
            out.i64.data(), t.const_data_ptr<int64_t>(), n * sizeof(int64_t));
      }
    } else {
      set_error_locked(
          "Unsupported output dtype " + std::to_string(out.dtype) +
          " at output " + std::to_string(j));
      return false;
    }
  }

  return true;
}

}  // namespace asr4all
