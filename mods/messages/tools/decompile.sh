#!/bin/bash
# tools/decompile.sh <App> [--force]
#   decompiled/<App>/      jadx Java of the STOCK apk (read-only reference, regenerable)
#   apps/<App>/apktool/    editable apktool (smali) project, created only if it doesn't exist
# <App> is the APK directory name on the device, e.g. BMms, TelephonyProvider, SonimLauncher.
source "$(dirname "$0")/lib/env.sh"
app=${1:?usage: decompile.sh <App> [--force]}
apk=$(stock_apk "$app")
if [ ! -d "$ROOT/decompiled/$app" ] || [ "${2:-}" = --force ]; then
    rm -rf "$ROOT/decompiled/$app"
    "$JADX" -q -d "$ROOT/decompiled/$app" "$apk" >/dev/null 2>&1 || true   # jadx exits 1 on partial failures
    echo "jadx -> decompiled/$app"
fi
if [ ! -d "$ROOT/apps/$app/apktool" ]; then
    mkdir -p "$ROOT/apps/$app"
    # -r: keep resources/manifest binary as-is (the manifest must stay byte-identical, see AGENTS.md)
    apktool d -q -r -f "$apk" -o "$ROOT/apps/$app/apktool"
    echo "apktool -> apps/$app/apktool"
fi
