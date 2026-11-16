#!/bin/bash
# tools/package.sh [version]  -> out/xp3800_messaging-<version>.zip (flash in the Magisk app)
# The zip refuses to install on any firmware other than firmware/system/build.prop's fingerprint.
source "$(dirname "$0")/lib/env.sh"
ver=${1:-$(git -C "$ROOT" describe --always --dirty 2>/dev/null || echo dev)}
fp=$(grep '^ro.build.fingerprint=' "$FIRMWARE/system/build.prop" | cut -d= -f2)
[ -d "$ROOT/out/system" ] || { echo "nothing in out/system: run tools/build.sh"; exit 1; }
Z="$ROOT/build/zip"; rm -rf "$Z"; mkdir -p "$Z/META-INF/com/google/android"
cp -r "$ROOT/out/system" "$Z/"
cat > "$Z/META-INF/com/google/android/update-binary" <<'EOF'
#!/sbin/sh
umask 022
OUTFD=$2
ZIPFILE=$3
ui_print() { echo "$1"; }
mount /data 2>/dev/null
[ -f /data/adb/magisk/util_functions.sh ] || { ui_print "! Magisk v20.4+ required"; exit 1; }
. /data/adb/magisk/util_functions.sh
[ $MAGISK_VER_CODE -lt 20400 ] && { ui_print "! Magisk v20.4+ required"; exit 1; }
install_module
exit 0
EOF
echo "#MAGISK" > "$Z/META-INF/com/google/android/updater-script"
cat > "$Z/module.prop" <<EOF
id=$MODULE_ID
name=XP3800 messaging
version=$ver
versionCode=$(date +%s)
author=local
description=Modified Messages/TelephonyProvider for the Sonim XP3800. Built for $fp
EOF
cat > "$Z/customize.sh" <<EOF
# APKs are patched from one exact firmware build; refuse anything else.
EXPECTED="$fp"
ACTUAL="\$(getprop ro.build.fingerprint)"
if [ "\$ACTUAL" != "\$EXPECTED" ]; then
  ui_print "! Firmware mismatch: expected \$EXPECTED"
  ui_print "!                    found    \$ACTUAL"
  abort "! Rebuild from this phone's own APKs (see README)."
fi
for old in $LEGACY_MODULE_IDS; do [ -d /data/adb/modules/\$old ] && touch /data/adb/modules/\$old/remove; done
set_perm_recursive \$MODPATH/system 0 0 0755 0644 u:object_r:system_file:s0
for a in \$(ls \$MODPATH/system/*/); do rm -f /data/dalvik-cache/*/system@*@\$a@*; done
rm -rf /data/system/package_cache/*
ui_print "- Installed. Reboot to apply."
EOF
out="$ROOT/out/$MODULE_ID-$ver.zip"; rm -f "$out"
(cd "$Z" && zip -qr -X "$out" .)
echo "packaged ${out#"$ROOT"/}"
