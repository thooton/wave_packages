#!/usr/bin/env bash
# Install apktool if the pinned version isn't on PATH. JADX is only needed for
# reading the optional decompiled reference; opt in with --jadx.
set -euo pipefail
ROOT=$(cd "$(dirname "$0")/../messages" && pwd)
source "$ROOT/../tools/env.sh"
cache="$SHARED/.tools"
if ! command -v apktool >/dev/null || [[ $(apktool --version) != 2.11.0 ]]; then
    mkdir -p "$cache/bin"
    curl -fsSL --retry 3 https://github.com/iBotPeaches/Apktool/releases/download/v2.11.0/apktool_2.11.0.jar -o "$cache/apktool.jar.tmp"
    mv "$cache/apktool.jar.tmp" "$cache/apktool.jar"
    printf '%s\n' '#!/bin/sh' 'exec java -jar "$(dirname "$0")/../apktool.jar" "$@"' > "$cache/bin/apktool"
    chmod +x "$cache/bin/apktool"
fi
if [[ ${1:-} == --jadx && ! -x $JADX ]]; then
    mkdir -p "$cache/jadx"
    curl -fsSL --retry 3 https://github.com/skylot/jadx/releases/download/v1.5.1/jadx-1.5.1.zip -o "$cache/jadx.zip"
    unzip -qo "$cache/jadx.zip" -d "$cache/jadx" && rm "$cache/jadx.zip"
fi
for cmd in java javac apktool zip unzip python3; do command -v "$cmd" >/dev/null; done
for f in "$BT/d8" "$BT/apksigner" "$BT/zipalign" "$ANDROID_JAR"; do [[ -r $f ]] || { echo "Missing $f" >&2; exit 1; }; done
[[ $(apktool --version) == 2.11.0 ]]
printf 'apktool %s; build-tools %s; %s\n' "$(apktool --version)" "$BT" "$ANDROID_JAR"
