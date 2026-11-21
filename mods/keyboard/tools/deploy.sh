#!/bin/bash
# tools/deploy.sh [--no-reboot]
# Installs out/keyboard-improved-<version>.zip on the connected phone with Magisk's own module
# installer (what Wave does), then reboots unless --no-reboot is given.
# Undo: tools/deploy.sh --remove
source "$(dirname "$0")/lib/env.sh"
if [ "${1:-}" = --remove ]; then
    adb shell su -c "'touch /data/adb/modules/$MODULE_ID/remove'" && adb reboot && echo "module removed, rebooting"
    exit 0
fi
ver=$(sed -n 's/^version=//p' "$ROOT/module/module.prop")
zip="$ROOT/out/${MODULE_ID//_/-}-$ver.zip"
[ -f "$zip" ] || { echo "no $zip: run tools/build.sh and tools/package.sh" >&2; exit 1; }
STAGE=/data/local/tmp/$MODULE_ID.zip
adb push "$zip" $STAGE >/dev/null
adb shell su -c "'magisk --install-module $STAGE; s=\$?; rm -f $STAGE; exit \$s'"
if [ "${1:-}" != --no-reboot ]; then
    adb reboot; echo "rebooting; wait with: adb wait-for-device; until [ \"\$(adb shell getprop sys.boot_completed | tr -d '\\r')\" = 1 ]; do sleep 2; done"
fi
