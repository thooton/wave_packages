#pragma once

#include <cstddef>
#include <cstdint>
#include <memory>
#include <mutex>
#include <string>
#include <unordered_map>
#include <vector>

#include <executorch/runtime/core/error.h>
#include <executorch/runtime/executor/program.h>

#include "offset_data_loader.h"

namespace asr4all {

constexpr int kDtypeInt64 = 4;
constexpr int kDtypeFloat16 = 5;
constexpr int kDtypeFloat32 = 6;

struct TensorSpec {
  int dtype = 0;
  std::vector<int32_t> sizes;

  size_t numel() const {
    size_t n = 1;
    for (int32_t s : sizes) {
      n *= static_cast<size_t>(s);
    }
    return n;
  }
};

struct MethodMetaInfo {
  std::vector<TensorSpec> inputs;
  std::vector<TensorSpec> outputs;
};

struct InputTensor {
  int dtype = 0;
  std::vector<int32_t> sizes;
  const float* f32 = nullptr;
  const int64_t* i64 = nullptr;
  size_t count = 0;
};

struct OutputTensor {
  int dtype = 0;
  std::vector<int32_t> sizes;
  std::vector<float> f32;
  std::vector<int64_t> i64;
};

// Configure the process-wide ExecuTorch / XNNPACK pthreadpool thread count.
void set_num_threads(int num_threads);

// Thread-local error string used when open_file / open_fd fails before a
// runtime handle exists.
std::string get_thread_last_error();
void set_thread_last_error(const std::string& msg);

class AsrRuntime {
 public:
  static std::unique_ptr<AsrRuntime> open_file(const std::string& path);
  static std::unique_ptr<AsrRuntime> open_fd(
      int fd,
      int64_t offset,
      int64_t length);

  ~AsrRuntime();

  AsrRuntime(const AsrRuntime&) = delete;
  AsrRuntime& operator=(const AsrRuntime&) = delete;

  // Loads a method into memory. If `arena_group` is non-empty, planned
  // activation buffers are shared across all methods loaded in that group
  // (they must not execute concurrently). Returns 0 (Error::Ok) on success.
  int load_method(
      const std::string& method_name,
      const std::string& arena_group);

  // Unloads a single method, or all methods if `method_name` is empty.
  void unload_method(const std::string& method_name);

  // Query input/output tensor metadata (works even before load_method).
  bool get_method_meta(const std::string& method_name, MethodMetaInfo& out);

  // Returns JSON:
  // {"inputs":[{"dtype":6,"sizes":[1,22400]},...],"outputs":[...]}
  // Empty string on error (details in last_error()).
  std::string method_meta_json(const std::string& method_name);

  // Executes a loaded method (auto-loads with dedicated arena if not loaded)
  // and deep-copies outputs out of the method arena into `outputs`.
  bool execute(
      const std::string& method_name,
      const std::vector<InputTensor>& inputs,
      std::vector<OutputTensor>& outputs);

  std::string last_error() const;

 private:
  struct ArenaStorage;
  struct ArenaGroup;
  struct LoadedMethod;

  AsrRuntime(
      std::unique_ptr<OffsetDataLoader> loader,
      std::unique_ptr<executorch::runtime::Program> program);

  static std::unique_ptr<AsrRuntime> create_from_loader(
      std::unique_ptr<OffsetDataLoader> loader,
      const std::string& label);

  int load_method_locked(
      const std::string& method_name,
      const std::string& arena_group);

  int instantiate_method_locked(
      const std::string& method_name,
      const std::string& arena_group,
      ArenaStorage* shared_arena,
      std::unique_ptr<LoadedMethod>& out);

  void set_error_locked(const std::string& msg);

  mutable std::mutex mutex_;
  std::unique_ptr<OffsetDataLoader> loader_;
  std::unique_ptr<executorch::runtime::Program> program_;
  std::unordered_map<std::string, std::unique_ptr<LoadedMethod>> methods_;
  std::unordered_map<std::string, std::unique_ptr<ArenaGroup>> arena_groups_;
  std::string last_error_;
};

}  // namespace asr4all
