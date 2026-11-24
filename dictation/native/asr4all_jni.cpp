#include <jni.h>

#include <cstdint>
#include <memory>
#include <string>
#include <vector>

#include "asr4all_runtime.h"

namespace {

using asr4all::AsrRuntime;
using asr4all::InputTensor;
using asr4all::OutputTensor;
using asr4all::kDtypeFloat32;
using asr4all::kDtypeInt64;

AsrRuntime* from_handle(jlong handle) {
  return reinterpret_cast<AsrRuntime*>(static_cast<uintptr_t>(handle));
}

jlong to_handle(AsrRuntime* rt) {
  return static_cast<jlong>(reinterpret_cast<uintptr_t>(rt));
}

std::string jstring_to_utf8(JNIEnv* env, jstring jstr) {
  if (jstr == nullptr) {
    return "";
  }
  const char* chars = env->GetStringUTFChars(jstr, nullptr);
  if (chars == nullptr) {
    return "";
  }
  std::string out(chars);
  env->ReleaseStringUTFChars(jstr, chars);
  return out;
}

}  // namespace

extern "C" {

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* /*vm*/, void* /*reserved*/) {
  return JNI_VERSION_1_6;
}

JNIEXPORT void JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeSetNumThreads(
    JNIEnv* /*env*/,
    jclass /*clazz*/,
    jint num_threads) {
  asr4all::set_num_threads(static_cast<int>(num_threads));
}

JNIEXPORT jlong JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeOpenFile(
    JNIEnv* env,
    jclass /*clazz*/,
    jstring jpath) {
  if (jpath == nullptr) {
    asr4all::set_thread_last_error("nativeOpenFile: null path");
    return 0;
  }
  const std::string path = jstring_to_utf8(env, jpath);
  auto rt = AsrRuntime::open_file(path);
  if (!rt) {
    return 0;
  }
  return to_handle(rt.release());
}

JNIEXPORT jlong JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeOpenFd(
    JNIEnv* /*env*/,
    jclass /*clazz*/,
    jint fd,
    jlong offset,
    jlong length) {
  auto rt = AsrRuntime::open_fd(
      static_cast<int>(fd),
      static_cast<int64_t>(offset),
      static_cast<int64_t>(length));
  if (!rt) {
    return 0;
  }
  return to_handle(rt.release());
}

JNIEXPORT void JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeClose(
    JNIEnv* /*env*/,
    jclass /*clazz*/,
    jlong handle) {
  AsrRuntime* rt = from_handle(handle);
  delete rt;
}

JNIEXPORT jint JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeLoadMethod(
    JNIEnv* env,
    jclass /*clazz*/,
    jlong handle,
    jstring jmethod,
    jstring jgroup) {
  AsrRuntime* rt = from_handle(handle);
  if (rt == nullptr || jmethod == nullptr) {
    asr4all::set_thread_last_error("nativeLoadMethod: invalid handle or method");
    return -1;
  }
  const std::string method = jstring_to_utf8(env, jmethod);
  const std::string group = jstring_to_utf8(env, jgroup);
  return static_cast<jint>(rt->load_method(method, group));
}

JNIEXPORT void JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeUnloadMethod(
    JNIEnv* env,
    jclass /*clazz*/,
    jlong handle,
    jstring jmethod) {
  AsrRuntime* rt = from_handle(handle);
  if (rt == nullptr) {
    return;
  }
  const std::string method = jstring_to_utf8(env, jmethod);
  rt->unload_method(method);
}

JNIEXPORT jstring JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeMethodMeta(
    JNIEnv* env,
    jclass /*clazz*/,
    jlong handle,
    jstring jmethod) {
  AsrRuntime* rt = from_handle(handle);
  if (rt == nullptr || jmethod == nullptr) {
    asr4all::set_thread_last_error("nativeMethodMeta: invalid handle or method");
    return nullptr;
  }
  const std::string method = jstring_to_utf8(env, jmethod);
  const std::string json = rt->method_meta_json(method);
  if (json.empty()) {
    return nullptr;
  }
  return env->NewStringUTF(json.c_str());
}

JNIEXPORT jobjectArray JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeExecute(
    JNIEnv* env,
    jclass /*clazz*/,
    jlong handle,
    jstring jmethod,
    jintArray jdtypes,
    jobjectArray jshapes,
    jobjectArray jfloats,
    jobjectArray jlongs) {
  AsrRuntime* rt = from_handle(handle);
  if (rt == nullptr || jmethod == nullptr || jdtypes == nullptr ||
      jshapes == nullptr) {
    asr4all::set_thread_last_error("nativeExecute: invalid null argument");
    return nullptr;
  }

  const std::string method = jstring_to_utf8(env, jmethod);
  const jsize n_in = env->GetArrayLength(jdtypes);
  if (env->GetArrayLength(jshapes) != n_in) {
    asr4all::set_thread_last_error("nativeExecute: inputShapes length mismatch");
    return nullptr;
  }

  std::vector<jint> dtypes(static_cast<size_t>(n_in));
  if (n_in > 0) {
    env->GetIntArrayRegion(jdtypes, 0, n_in, dtypes.data());
  }

  std::vector<InputTensor> inputs(static_cast<size_t>(n_in));
  std::vector<std::vector<float>> f32_bufs(static_cast<size_t>(n_in));
  std::vector<std::vector<int64_t>> i64_bufs(static_cast<size_t>(n_in));

  for (jsize i = 0; i < n_in; ++i) {
    const size_t idx = static_cast<size_t>(i);
    InputTensor& in = inputs[idx];
    in.dtype = static_cast<int>(dtypes[idx]);

    auto jshape = static_cast<jintArray>(env->GetObjectArrayElement(jshapes, i));
    if (jshape != nullptr) {
      const jsize rank = env->GetArrayLength(jshape);
      in.sizes.resize(static_cast<size_t>(rank));
      if (rank > 0) {
        static_assert(sizeof(jint) == sizeof(int32_t), "jint must be 32-bit");
        env->GetIntArrayRegion(
            jshape, 0, rank, reinterpret_cast<jint*>(in.sizes.data()));
      }
      env->DeleteLocalRef(jshape);
    }

    if (in.dtype == kDtypeFloat32) {
      if (jfloats == nullptr) {
        asr4all::set_thread_last_error("nativeExecute: inputFloats is null");
        return nullptr;
      }
      auto jf = static_cast<jfloatArray>(env->GetObjectArrayElement(jfloats, i));
      if (jf == nullptr) {
        asr4all::set_thread_last_error("nativeExecute: missing float[] input");
        return nullptr;
      }
      const jsize len = env->GetArrayLength(jf);
      f32_bufs[idx].resize(static_cast<size_t>(len));
      if (len > 0) {
        env->GetFloatArrayRegion(jf, 0, len, f32_bufs[idx].data());
      }
      env->DeleteLocalRef(jf);
      in.f32 = f32_bufs[idx].data();
      in.count = f32_bufs[idx].size();
    } else if (in.dtype == kDtypeInt64) {
      if (jlongs == nullptr) {
        asr4all::set_thread_last_error("nativeExecute: inputLongs is null");
        return nullptr;
      }
      auto jl = static_cast<jlongArray>(env->GetObjectArrayElement(jlongs, i));
      if (jl == nullptr) {
        asr4all::set_thread_last_error("nativeExecute: missing long[] input");
        return nullptr;
      }
      const jsize len = env->GetArrayLength(jl);
      i64_bufs[idx].resize(static_cast<size_t>(len));
      if (len > 0) {
        static_assert(sizeof(jlong) == sizeof(int64_t), "jlong must be 64-bit");
        env->GetLongArrayRegion(
            jl, 0, len, reinterpret_cast<jlong*>(i64_bufs[idx].data()));
      }
      env->DeleteLocalRef(jl);
      in.i64 = i64_bufs[idx].data();
      in.count = i64_bufs[idx].size();
    } else {
      asr4all::set_thread_last_error(
          "nativeExecute: unsupported input dtype " + std::to_string(in.dtype));
      return nullptr;
    }
  }

  std::vector<OutputTensor> outputs;
  if (!rt->execute(method, inputs, outputs)) {
    return nullptr;
  }

  jclass obj_cls = env->FindClass("java/lang/Object");
  if (obj_cls == nullptr) {
    return nullptr;
  }
  jobjectArray result =
      env->NewObjectArray(static_cast<jsize>(outputs.size()), obj_cls, nullptr);
  env->DeleteLocalRef(obj_cls);
  if (result == nullptr) {
    return nullptr;
  }

  for (size_t j = 0; j < outputs.size(); ++j) {
    const OutputTensor& out = outputs[j];
    if (out.dtype == kDtypeFloat32) {
      const jsize len = static_cast<jsize>(out.f32.size());
      jfloatArray arr = env->NewFloatArray(len);
      if (arr == nullptr) {
        return nullptr;
      }
      if (len > 0) {
        env->SetFloatArrayRegion(arr, 0, len, out.f32.data());
      }
      env->SetObjectArrayElement(result, static_cast<jsize>(j), arr);
      env->DeleteLocalRef(arr);
    } else if (out.dtype == kDtypeInt64) {
      const jsize len = static_cast<jsize>(out.i64.size());
      jlongArray arr = env->NewLongArray(len);
      if (arr == nullptr) {
        return nullptr;
      }
      if (len > 0) {
        env->SetLongArrayRegion(
            arr, 0, len, reinterpret_cast<const jlong*>(out.i64.data()));
      }
      env->SetObjectArrayElement(result, static_cast<jsize>(j), arr);
      env->DeleteLocalRef(arr);
    } else {
      asr4all::set_thread_last_error(
          "nativeExecute: unsupported output dtype " + std::to_string(out.dtype));
      return nullptr;
    }
  }

  return result;
}

JNIEXPORT jstring JNICALL
Java_com_dictation_xp3_NativeRuntime_nativeLastError(
    JNIEnv* env,
    jclass /*clazz*/,
    jlong handle) {
  AsrRuntime* rt = from_handle(handle);
  std::string err = rt != nullptr ? rt->last_error() : asr4all::get_thread_last_error();
  if (err.empty()) {
    err = asr4all::get_thread_last_error();
  }
  return env->NewStringUTF(err.c_str());
}

}  // extern "C"
