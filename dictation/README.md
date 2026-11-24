# Dictation, for the Sonim XP3

Offline on-device English voice dictation for the Sonim XP3800, designed to work
with Keyboard Improved (`mods/keyboard`). When enabled, pressing `*` in a text
field starts listening, draws a blue caret and microphone badge beside the
cursor, and streams punctuated, capitalized text directly into the field with no
network access.

## Model Notice & Licensing

The bundled speech recognition weights are from **Asr4All**
(`futo-org/asr4all-s`, commit `87a6b5d093723fe37e9f69ad26307a3b95a31af0`) and are
subject to the **FUTO Model Weights License (Restricted Use) 1.0**. By using the
embedded model in this application, users are bound by the Limitations section
of that license (which prohibits surveillance, profiling/discrimination,
intelligence gathering, monitoring people in custody, targeting protected
activity, and circumvention). The full verbatim license is bundled inside the
APK (`assets/FUTO_LICENSE.txt`) and readable in the app under **Notices**,
alongside the BSD-3-Clause notices for ExecuTorch and XNNPACK.

This project is independent and is not affiliated with or endorsed by FUTO.

## Privacy

- Runs 100% offline with no `INTERNET` permission.
- The microphone is opened strictly while dictation is active and released
  immediately when dictation stops.
- Microphone audio is never written to storage.
- Password and other sensitive fields never trigger dictation.

## Build

```bash
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export ANDROID_HOME=/opt/android-sdk
export PATH="$JAVA_HOME/bin:$PATH"
./gradlew :dictation:core:selfTest :dictation:app:assembleRelease
```
