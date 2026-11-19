#!/bin/bash
# Pulls the stock system apps/framework from the connected (stock or module-free) phone into
# firmware/. NOTE: if our Magisk module is active, the modified apps would be pulled instead, so
# it refuses to run then.
source "$(dirname "$0")/lib/env.sh"
if adb shell su -c "ls /data/adb/modules" 2>/dev/null | grep -qE "^($MODULE_ID|${LEGACY_MODULE_IDS// /|})\$"; then
    echo "our Magisk module is installed; disable it and reboot first (pulled APKs would be patched)"; exit 1
fi
mkdir -p "$FIRMWARE/system"
for d in priv-app app framework; do adb pull /system/$d "$FIRMWARE/system/" >/dev/null; done
adb shell su -c 'cat /system/build.prop' > "$FIRMWARE/system/build.prop"
grep ro.build.fingerprint "$FIRMWARE/system/build.prop"
