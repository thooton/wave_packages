#!/bin/bash
# tools/deploy.sh [--no-reboot]
# Installs everything in out/system/ on the connected phone as the Magisk module $MODULE_ID
# (systemless overlay of /system, fully reversible) and reboots. Removes legacy module ids.
# Undo: tools/deploy.sh --remove
source "$(dirname "$0")/lib/env.sh"
if [ "${1:-}" = --remove ]; then
    adb shell su -c "'rm -rf /data/adb/modules/$MODULE_ID'" && adb reboot && echo "module removed, rebooting"
    exit 0
fi
[ -d "$ROOT/out/system" ] || { echo "nothing in out/system: run tools/build.sh"; exit 1; }
STAGE=/data/local/tmp/$MODULE_ID
cat > "$ROOT/build/module.prop" <<EOF
id=$MODULE_ID
name=Messages Argon
version=dev
versionCode=1
author=local
description=Modified Messages/TelephonyProvider for the Sonim XP3800 (dev build)
EOF
adb shell "rm -rf $STAGE; mkdir -p $STAGE"
adb push "$ROOT/build/module.prop" "$ROOT/module/service.sh" "$ROOT/out/system" $STAGE/ >/dev/null
adb shell su -c "'
set -e
for old in $LEGACY_MODULE_IDS; do rm -rf /data/adb/modules/\$old; done
M=/data/adb/modules/$MODULE_ID
rm -rf \$M; mkdir -p \$M; cp -r $STAGE/module.prop $STAGE/service.sh $STAGE/system \$M/
chown -R 0:0 \$M; find \$M -type d -exec chmod 755 {} +; find \$M -type f -exec chmod 644 {} +; chmod 755 \$M/service.sh
chcon -R u:object_r:system_file:s0 \$M/system
for a in \$(ls \$M/system/*/); do rm -f /data/dalvik-cache/*/system@*@\$a@*; done
rm -rf /data/system/package_cache/*
rm -rf $STAGE
find \$M -name \"*.apk\"
'"
if [ "${1:-}" != --no-reboot ]; then
    adb reboot; echo "rebooting; wait with: adb wait-for-device; until [ \"\$(adb shell getprop sys.boot_completed | tr -d '\\r')\" = 1 ]; do sleep 2; done"
fi
