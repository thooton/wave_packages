cmake_minimum_required(VERSION 3.24)
project(asr4all_native LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

if(NOT EXECUTORCH_DIR)
  message(FATAL_ERROR "Set -DEXECUTORCH_DIR=/path/to/executorch (directory must be named 'executorch')")
endif()

# Read selective operator list from ops.txt unless explicitly provided.
if(NOT DEFINED EXECUTORCH_SELECT_OPS_LIST OR EXECUTORCH_SELECT_OPS_LIST STREQUAL "")
  file(STRINGS "${CMAKE_CURRENT_SOURCE_DIR}/ops.txt" _ops_lines)
  set(_ops_clean "")
  foreach(_op ${_ops_lines})
    string(STRIP "${_op}" _op)
    if(NOT _op STREQUAL "" AND NOT _op MATCHES "^#")
      list(APPEND _ops_clean "${_op}")
    endif()
  endforeach()
  string(JOIN "," _ops_csv ${_ops_clean})
  set(EXECUTORCH_SELECT_OPS_LIST "${_ops_csv}" CACHE STRING "Selective operator list" FORCE)
endif()
message(STATUS "asr4all selective ops: ${EXECUTORCH_SELECT_OPS_LIST}")

# Configure ExecuTorch options before adding its subdirectory.
set(EXECUTORCH_BUILD_XNNPACK ON CACHE BOOL "" FORCE)
set(EXECUTORCH_XNNPACK_ENABLE_WEIGHT_CACHE ON CACHE BOOL "" FORCE)
set(EXECUTORCH_XNNPACK_SHARED_WORKSPACE ON CACHE BOOL "" FORCE)
set(EXECUTORCH_XNNPACK_ENABLE_KLEIDI OFF CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_PTHREADPOOL ON CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_CPUINFO ON CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_PORTABLE_OPS ON CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_KERNELS_OPTIMIZED ON CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_EXTENSION_DATA_LOADER ON CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_EXTENSION_NAMED_DATA_MAP ON CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_EXTENSION_MODULE OFF CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_EXTENSION_TENSOR OFF CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_EXTENSION_LLM OFF CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_EXTENSION_TRAINING OFF CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_KERNELS_LLM OFF CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_EXECUTOR_RUNNER OFF CACHE BOOL "" FORCE)
set(EXECUTORCH_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(BUILD_TESTING OFF CACHE BOOL "" FORCE)

if(ANDROID)
  set(EXECUTORCH_PAL_DEFAULT "android" CACHE STRING "" FORCE)
  set(XNNPACK_ENABLE_ASSEMBLY ON CACHE BOOL "" FORCE)
  if(ANDROID_ABI STREQUAL "armeabi-v7a")
    set(XNNPACK_ENABLE_ARM_SME OFF CACHE BOOL "" FORCE)
    set(XNNPACK_ENABLE_ARM_SME2 OFF CACHE BOOL "" FORCE)
    set(XNNPACK_ENABLE_ARM_I8MM OFF CACHE BOOL "" FORCE)
    set(XNNPACK_ENABLE_ARM_BF16 OFF CACHE BOOL "" FORCE)
    set(XNNPACK_ENABLE_ARM_FP16_VECTOR OFF CACHE BOOL "" FORCE)
    set(XNNPACK_ENABLE_ARM_FP16_SCALAR OFF CACHE BOOL "" FORCE)
    set(XNNPACK_ENABLE_ARM_DOTPROD OFF CACHE BOOL "" FORCE)
  endif()
else()
  set(EXECUTORCH_PAL_DEFAULT "posix" CACHE STRING "" FORCE)
endif()

# Enable function/data sections so --gc-sections drops unreferenced code.
if(NOT MSVC)
  add_compile_options(-ffunction-sections -fdata-sections)
endif()

add_subdirectory("${EXECUTORCH_DIR}" "${CMAKE_CURRENT_BINARY_DIR}/executorch")

# Shared C++ runtime core (DataLoader + Program/Method/ArenaGroup engine).
add_library(asr4all_core STATIC
  offset_data_loader.cpp
  asr4all_runtime.cpp
)
target_include_directories(asr4all_core PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

set(_asr_et_libs
  executorch
  executorch_core
  executorch_backends
  executorch_kernels
  extension_data_loader
  extension_threadpool
  XNNPACK
  xnnpack-microkernels-prod
  pthreadpool
  cpuinfo
)
if(ANDROID)
  list(APPEND _asr_et_libs log)
endif()

target_link_libraries(asr4all_core PUBLIC ${_asr_et_libs})

# Benchmark CLI executable (Linux x86_64 and Android armeabi-v7a).
add_executable(asr4all_bench
  asr4all_bench.cpp
)
target_link_libraries(asr4all_bench PRIVATE asr4all_core)
if(NOT MSVC)
  target_link_options(asr4all_bench PRIVATE -Wl,--gc-sections)
endif()

# Android JNI shared library (libasr4all.so).
if(ANDROID)
  add_library(asr4all SHARED
    asr4all_jni.cpp
  )
  target_link_libraries(asr4all PRIVATE asr4all_core log)
  target_link_options(asr4all PRIVATE
    -Wl,--gc-sections
    "LINKER:--version-script,${CMAKE_CURRENT_SOURCE_DIR}/version_script.txt"
  )
endif()
