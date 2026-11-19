#!/bin/bash
# Checks host tools and downloads jadx into .tools/ if missing.
source "$(dirname "$0")/lib/env.sh"
ok=1
for t in adb java javac apktool python3 zip; do
    command -v $t >/dev/null || { echo "missing: $t"; ok=0; }
done
for f in "$BT/d8" "$BT/zipalign" "$ANDROID_JAR"; do
    [ -e "$f" ] || { echo "missing: $f (set ANDROID_SDK / BUILD_TOOLS / ANDROID_JAR)"; ok=0; }
done
if [ ! -x "$JADX" ]; then
    echo "downloading jadx..."
    mkdir -p "$ROOT/.tools"
    curl -sL -o "$ROOT/.tools/jadx.zip" https://github.com/skylot/jadx/releases/download/v1.5.1/jadx-1.5.1.zip
    unzip -qo "$ROOT/.tools/jadx.zip" -d "$ROOT/.tools/jadx" && rm "$ROOT/.tools/jadx.zip"
fi
[ -d "$FIRMWARE/system/priv-app" ] || echo "firmware/ is empty: run tools/pull_firmware.sh with the phone connected"
[ $ok = 1 ] && echo "setup OK (build-tools: $BT, android.jar: $ANDROID_JAR)"
