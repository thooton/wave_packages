#pragma once

#include <cstddef>
#include <cstdint>
#include <memory>
#include <string>

#include <executorch/runtime/core/data_loader.h>
#include <executorch/runtime/core/result.h>

namespace asr4all {

// DataLoader backed by either a file path or a caller-provided (fd, offset,
// length) slice, e.g. an uncompressed .pte entry inside an Android APK.
// Uses per-segment mmap when base_offset is 64-byte aligned, and falls back to
// 64-byte aligned pread buffers when base_offset is not 64-byte aligned.
class OffsetDataLoader final : public executorch::runtime::DataLoader {
 public:
  static executorch::runtime::Result<std::unique_ptr<OffsetDataLoader>>
  from_file(const char* path);

  // Duplicates `fd` internally so the caller may close its descriptor right
  // away. If `length < 0`, uses `file_size - base_offset`.
  static executorch::runtime::Result<std::unique_ptr<OffsetDataLoader>>
  from_fd(int fd, int64_t base_offset, int64_t length);

  ~OffsetDataLoader() override;

  OffsetDataLoader(const OffsetDataLoader&) = delete;
  OffsetDataLoader& operator=(const OffsetDataLoader&) = delete;

  ET_NODISCARD executorch::runtime::Result<executorch::runtime::FreeableBuffer>
  load(
      size_t offset,
      size_t size,
      const DataLoader::SegmentInfo& segment_info) const override;

  ET_NODISCARD executorch::runtime::Result<size_t> size() const override;

  ET_NODISCARD executorch::runtime::Error load_into(
      size_t offset,
      size_t size,
      const DataLoader::SegmentInfo& segment_info,
      void* buffer) const override;

 private:
  OffsetDataLoader(
      int fd,
      int64_t base_offset,
      size_t slice_size,
      size_t page_size,
      bool can_mmap,
      std::string label);

  executorch::runtime::Error validate_range(size_t offset, size_t size) const;
  executorch::runtime::Error pread_exact(
      int64_t file_offset,
      void* dst,
      size_t size) const;

  int fd_;
  int64_t base_offset_;
  size_t slice_size_;
  size_t page_size_;
  bool can_mmap_;
  std::string label_;
};

}  // namespace asr4all
