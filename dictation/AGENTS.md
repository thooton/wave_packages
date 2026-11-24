# AGENTS.md

On-device English dictation app (`com.dictation.xp3`) for the Sonim XP3800
(240x320 mdpi, Android 8.1 API 27, 32-bit `armeabi-v7a`, Java 8).

## User-Approved Third-Party Exception

This repository's general rule is zero third-party dependencies. For `dictation/`
alone, there is a user-approved exception strictly limited to:

1. The native C++ runtime library `libasr4all.so` (ExecuTorch `v1.6.0` + XNNPACK
   selective operator build for `armeabi-v7a`, BSD-3-Clause), built on GitHub
   Actions and fetched/verified by SHA-256 at build time (no NDK in Gradle).
2. The bundled speech recognition weights from `futo-org/asr4all-s`
   (`asr_encoder.pte`, `metadata.json`, and verbatim `LICENSE` shipped as
   `assets/FUTO_LICENSE.txt`, pinned to Hugging Face commit
   `87a6b5d093723fe37e9f69ad26307a3b95a31af0`, FUTO Model Weights License
   (Restricted Use) 1.0).

All Java/Android code in `:dictation:core` and `:dictation:app` remains plain
Java 8 with zero third-party Java or Android dependencies, using only `common/`.

## Layout

- `android/core`: Android-free Java 8 (`--release 8`) engine:
  - `Tensor`, `MethodMeta`, `AsrModel`, `AsrMetadata`: runtime abstraction and
    `metadata.json` parser (using `com.xp3.common.Json`).
  - `PcecDecoder`: faithful port of `asr4all_executorch.py`'s `_Pcec` and
    `render_slots` (double-precision hidden pooling, pause buckets, shared
    `"pcec"` arena group, 0-D `INT64[]` `n_real` flush).
  - `AsrEngine`: streaming and offline CTC + PCEC + wake-VAD driver with bounded
    PCM compaction and per-tier method unloading.
  - `StreamDisplay`: splits live output into strictly prefix-monotonic settled
    text and mutable tentative text without word duplication across the
    PCEC/acoustic frontier.
  - `SilenceTracker`: ~8 s silence auto-stop using VAD scores (or RMS fallback).
  - `WavUtil`: pure Java 16 kHz mono 16-bit PCM WAV codec.
  - `FixtureReplay` + `SelfTest`: deterministic host tests and golden
    `core_fixtures.json` replay.
- `android/app`:
  - `NativeRuntime` / `NativeModel`: JNI bridge to `libasr4all.so` mapping
    uncompressed `assets/asr_encoder.pte` directly from the APK via
    `AssetFileDescriptor` (`noCompress "pte"`, `extractNativeLibs="false"`,
    `useLegacyPackaging = false`).
  - `DictationContract` / `DictationService`: exported Binder service verifying
    caller UID matches `com.nuance.flext9_OEM.input` (or own UID), immediate
    15 s ring-buffer `AudioCapture`, `PerfLock` (`BoostFramework`),
    `CaretOverlay` (`TYPE_APPLICATION_OVERLAY`), 45 s idle model unload, and
    explicit debug-only WAV path (`DictationDebugReceiver`, gated by `DUMP`).
  - `DictationStateProvider`: lightweight read-only `ContentProvider`
    (`com.dictation.xp3.state`) for `< 1 ms` `isEnabled` checks from the IME.
  - `MainActivity` / `NoticesActivity`: `Family`-styled settings and mandatory
    license notices screens.

## Build and Test

```bash
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export ANDROID_HOME=/opt/android-sdk
export PATH="$JAVA_HOME/bin:$PATH"

# Core host tests (optionally pass golden fixtures/metadata):
./gradlew :dictation:core:selfTest

# Release APK (downloads & SHA-256 verifies pinned HF assets, or pass -PdictationAssetDir=...):
./gradlew :dictation:app:assembleRelease
```

Optional Gradle properties for offline/local staging:
- `-PdictationAssetDir=/path/to/hf` — local cache containing `asr_encoder.pte`,
  `metadata.json`, and `LICENSE` (still SHA-256 verified).
- `-PdictationJniDir=/path/to/jni` — local directory containing
  `armeabi-v7a/libasr4all.so` (and optional `x86_64/libasr4all.so`).

## Hard Constraints

- Never commit `asr_encoder.pte` or `libasr4all.so` into git.
- Keep `asr_encoder.pte` stored uncompressed (`noCompress "pte"`) and
  `extractNativeLibs="false"` so neither file is duplicated in `/data`.
- Keep all license notices intact in `README.md`, `assets/FUTO_LICENSE.txt`, and
  `NoticesActivity`. Do not use FUTO's name or marks to endorse this app.
- Bump `versionName` and `versionCode` in `dictation/android/app/build.gradle`
  on every change to the app.
