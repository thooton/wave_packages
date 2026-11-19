#!/bin/bash
# tools/preview.sh [theme 0|1] [layout file]  -> build/preview/*.png, tray.txt
# Renders the tray and its folders with the BUILT code on the connected phone (app_process as the
# shell user; nothing installed, the screen untouched; only /data/local/tmp/wave_preview is used
# and removed). Needs root once, to copy the launcher's App_Tray database for the stock rows.
# Run tools/build.sh first. Details: tools/preview/com/sonim/borqs/launcher/TrayPreview.java.
source "$(dirname "$0")/lib/env.sh"
theme=${1:-0}; lay=${2:-}
B="$ROOT/build/SonimLauncher"; P="$ROOT/build/preview-tool"; O="$ROOT/build/preview"
APK="$ROOT/out/system/priv-app/SonimLauncher/SonimLauncher.apk"
[ -f "$APK" ] || { echo "run tools/build.sh first"; exit 1; }
rm -rf "$P" "$O"; mkdir -p "$P/classes" "$O"
javac -nowarn -Xlint:-options -source 8 -target 8 -cp "$ANDROID_JAR:$B/stubs:$B/classes" -d "$P/classes" \
    $(find "$ROOT/tools/preview" -name '*.java')
"$BT/d8" --min-api $MIN_API --lib "$ANDROID_JAR" --classpath "$B/stubs" --classpath "$B/classes" \
    --output "$P" $(find "$P/classes" -name '*.class')
T=/data/local/tmp/wave_preview
adb shell "rm -rf $T; mkdir -p $T/out"
adb push "$APK" $T/app.apk >/dev/null
adb push "$P/classes.dex" $T/preview.dex >/dev/null
[ -n "$lay" ] && adb push "$lay" $T/layout.txt >/dev/null
adb shell su -c "'cp /data/data/com.sonim.borqs.launcher/databases/App_Tray $T/App_Tray && chmod 644 $T/App_Tray'"
adb shell "CLASSPATH=$T/app.apk:$T/preview.dex app_process /system/bin com.sonim.borqs.launcher.TrayPreview \
    $T/out $T/App_Tray $theme ${lay:+$T/layout.txt}"
adb pull $T/out/. "$O/" >/dev/null
adb shell "rm -rf $T"
ls "$O"
