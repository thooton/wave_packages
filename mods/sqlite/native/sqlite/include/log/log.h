/* Minimal stand-in for AOSP's <log/log.h> (system/core/liblog), enough for
 * external/sqlite/android/sqlite3_android.cpp. Logs through the NDK liblog API. */
#pragma once
#include <android/log.h>

#ifndef LOG_TAG
#define LOG_TAG NULL
#endif

#define LOG_INFO ANDROID_LOG_INFO
#define ALOG(prio, tag, ...) __android_log_print(prio, tag, __VA_ARGS__)
#define ALOGV(...) ((void)0)
#define ALOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define ALOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define ALOGW(...) __android_log_print(ANDROID_LOG_WARN, LOG_TAG, __VA_ARGS__)
#define ALOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
