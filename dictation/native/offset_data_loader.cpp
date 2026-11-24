#include "offset_data_loader.h"

#include <cerrno>
#include <cstdlib>
#include <cstring>
#include <limits>
#include <utility>

#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

#include <executorch/runtime/platform/log.h>

namespace asr4all {

using executorch::runtime::DataLoader;
using executorch::runtime::Error;
using executorch::runtime::FreeableBuffer;
using executorch::runtime::Result;

namespace {

constexpr size_t kRequiredAlignment = 64;

struct MmapRange {
  uintptr_t start;
  size_t size;
};

MmapRange overlapping_pages(uintptr_t addr, size_t size, size_t page_size) {
  const uintptr_t mask = ~(static_cast<uintptr_t>(page_size) - 1);
  const uintptr_t start = addr & mask;
  const uintptr_t end = (addr + size + page_size - 1) & mask;
  return {start, static_cast<size_t>(end - start)};
}

void munmap_segment(void* context, void* data, size_t size) {
  const size_t page_size = static_cast<size_t>(reinterpret_cast<uintptr_t>(context));
  const MmapRange range =
      overlapping_pages(reinterpret_cast<uintptr_t>(data), size, page_size);
  if (::munmap(reinterpret_cast<void*>(range.start), range.size) != 0) {
    ET_LOG(
        Error,
        "munmap(%p, %zu) failed: %s (%d)",
        reinterpret_cast<void*>(range.start),
        range.size,
        ::strerror(errno),
        errno);
  }
}

void free_aligned_buffer(void* /*context*/, void* data, size_t /*size*/) {
  std::free(data);
}

size_t query_page_size() {
  long ps = ::sysconf(_SC_PAGESIZE);
  if (ps <= 0) {
    return 4096;
  }
  return static_cast<size_t>(ps);
}

}  // namespace

OffsetDataLoader::OffsetDataLoader(
    int fd,
    int64_t base_offset,
    size_t slice_size,
    size_t page_size,
    bool can_mmap,
    std::string label)
    : fd_(fd),
      base_offset_(base_offset),
      slice_size_(slice_size),
      page_size_(page_size),
      can_mmap_(can_mmap),
      label_(std::move(label)) {}

OffsetDataLoader::~OffsetDataLoader() {
  if (fd_ >= 0) {
    ::close(fd_);
    fd_ = -1;
  }
}

Result<std::unique_ptr<OffsetDataLoader>> OffsetDataLoader::from_file(
    const char* path) {
  if (path == nullptr || path[0] == '\0') {
    return Error::InvalidArgument;
  }
  int fd = ::open(path, O_RDONLY | O_CLOEXEC);
  if (fd < 0) {
    ET_LOG(Error, "Failed to open %s: %s (%d)", path, ::strerror(errno), errno);
    return Error::AccessFailed;
  }
  struct stat st {};
  if (::fstat(fd, &st) != 0) {
    ET_LOG(Error, "fstat(%s) failed: %s (%d)", path, ::strerror(errno), errno);
    ::close(fd);
    return Error::AccessFailed;
  }
  if (st.st_size < 0 ||
      static_cast<uint64_t>(st.st_size) > std::numeric_limits<size_t>::max()) {
    ::close(fd);
    return Error::InvalidArgument;
  }
  const size_t page_size = query_page_size();
  return std::unique_ptr<OffsetDataLoader>(new OffsetDataLoader(
      fd,
      0,
      static_cast<size_t>(st.st_size),
      page_size,
      /*can_mmap=*/true,
      std::string(path)));
}

Result<std::unique_ptr<OffsetDataLoader>> OffsetDataLoader::from_fd(
    int fd,
    int64_t base_offset,
    int64_t length) {
  if (fd < 0 || base_offset < 0) {
    return Error::InvalidArgument;
  }
  int dup_fd = ::fcntl(fd, F_DUPFD_CLOEXEC, 0);
  if (dup_fd < 0) {
    dup_fd = ::dup(fd);
  }
  if (dup_fd < 0) {
    ET_LOG(Error, "dup(%d) failed: %s (%d)", fd, ::strerror(errno), errno);
    return Error::AccessFailed;
  }
  struct stat st {};
  if (::fstat(dup_fd, &st) != 0) {
    ET_LOG(Error, "fstat(fd=%d) failed: %s (%d)", dup_fd, ::strerror(errno), errno);
    ::close(dup_fd);
    return Error::AccessFailed;
  }
  const int64_t file_size = static_cast<int64_t>(st.st_size);
  if (base_offset > file_size) {
    ::close(dup_fd);
    return Error::InvalidArgument;
  }
  int64_t effective_len = length;
  if (effective_len < 0) {
    effective_len = file_size - base_offset;
  }
  if (effective_len < 0 || base_offset + effective_len > file_size ||
      static_cast<uint64_t>(effective_len) > std::numeric_limits<size_t>::max()) {
    ::close(dup_fd);
    return Error::InvalidArgument;
  }
  // Ensure the end of the slice fits in off_t (important on 32-bit Android).
  if (base_offset + effective_len > static_cast<int64_t>(std::numeric_limits<off_t>::max())) {
    ::close(dup_fd);
    return Error::NotSupported;
  }

  const size_t page_size = query_page_size();
  // Only use direct mmap when base_offset preserves 64-byte segment alignment.
  // Uncompressed APK assets are typically 4-byte aligned, so fall back to
  // 64-byte aligned pread when misaligned to guarantee NEON/FlatBuffer alignment.
  const bool can_mmap =
      (static_cast<uint64_t>(base_offset) % kRequiredAlignment) == 0;

  return std::unique_ptr<OffsetDataLoader>(new OffsetDataLoader(
      dup_fd,
      base_offset,
      static_cast<size_t>(effective_len),
      page_size,
      can_mmap,
      "fd:" + std::to_string(dup_fd)));
}

Error OffsetDataLoader::validate_range(size_t offset, size_t size) const {
  if (fd_ < 0) {
    return Error::InvalidState;
  }
  if (offset > slice_size_ || size > slice_size_ - offset) {
    ET_LOG(
        Error,
        "%s: offset %zu + size %zu > slice_size %zu",
        label_.c_str(),
        offset,
        size,
        slice_size_);
    return Error::InvalidArgument;
  }
  return Error::Ok;
}

Error OffsetDataLoader::pread_exact(
    int64_t file_offset,
    void* dst,
    size_t size) const {
  uint8_t* out = static_cast<uint8_t*>(dst);
  size_t done = 0;
  while (done < size) {
    const off_t off = static_cast<off_t>(file_offset + static_cast<int64_t>(done));
    const ssize_t n = ::pread(fd_, out + done, size - done, off);
    if (n < 0) {
      if (errno == EINTR) {
        continue;
      }
      ET_LOG(
          Error,
          "pread(%s, off=%lld, len=%zu) failed: %s (%d)",
          label_.c_str(),
          static_cast<long long>(off),
          size - done,
          ::strerror(errno),
          errno);
      return Error::AccessFailed;
    }
    if (n == 0) {
      ET_LOG(Error, "pread(%s) hit unexpected EOF", label_.c_str());
      return Error::AccessFailed;
    }
    done += static_cast<size_t>(n);
  }
  return Error::Ok;
}

Result<FreeableBuffer> OffsetDataLoader::load(
    size_t offset,
    size_t size,
    const DataLoader::SegmentInfo& /*segment_info*/) const {
  const Error err = validate_range(offset, size);
  if (err != Error::Ok) {
    return err;
  }
  if (size == 0) {
    return FreeableBuffer(nullptr, 0, nullptr);
  }

  const int64_t abs_offset = base_offset_ + static_cast<int64_t>(offset);
  if (can_mmap_) {
    const uint64_t page_mask = ~(static_cast<uint64_t>(page_size_) - 1);
    const uint64_t map_start = static_cast<uint64_t>(abs_offset) & page_mask;
    const size_t delta = static_cast<size_t>(static_cast<uint64_t>(abs_offset) - map_start);
    const size_t map_size = delta + size;
    void* pages = ::mmap(
        nullptr,
        map_size,
        PROT_READ,
        MAP_PRIVATE,
        fd_,
        static_cast<off_t>(map_start));
    if (pages != MAP_FAILED) {
      const void* data = static_cast<const uint8_t*>(pages) + delta;
      return FreeableBuffer(
          data,
          size,
          munmap_segment,
          reinterpret_cast<void*>(static_cast<uintptr_t>(page_size_)));
    }
    // Fall through to aligned pread if mmap failed (e.g. address space limit).
  }

  void* buf = nullptr;
  if (::posix_memalign(&buf, kRequiredAlignment, size) != 0 || buf == nullptr) {
    return Error::MemoryAllocationFailed;
  }
  const Error read_err = pread_exact(abs_offset, buf, size);
  if (read_err != Error::Ok) {
    std::free(buf);
    return read_err;
  }
  return FreeableBuffer(buf, size, free_aligned_buffer, nullptr);
}

Result<size_t> OffsetDataLoader::size() const {
  if (fd_ < 0) {
    return Error::InvalidState;
  }
  return slice_size_;
}

Error OffsetDataLoader::load_into(
    size_t offset,
    size_t size,
    const DataLoader::SegmentInfo& /*segment_info*/,
    void* buffer) const {
  if (buffer == nullptr) {
    return Error::InvalidArgument;
  }
  const Error err = validate_range(offset, size);
  if (err != Error::Ok) {
    return err;
  }
  if (size == 0) {
    return Error::Ok;
  }
  return pread_exact(base_offset_ + static_cast<int64_t>(offset), buffer, size);
}

}  // namespace asr4all
