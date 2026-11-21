# Keyboard Improved installer, sourced by Magisk's install_module with the zip extracted in
# $MODPATH. The module carries only the built dex: they are spliced into the phone's own stock
# XT9IME.apk (xt9/splice.dex; every stock entry and the stock signature are kept byte for byte).
STOCK_SHA256=@STOCK_SHA256@
APK=system/app/XT9IME/XT9IME.apk

# The stock APK, not an overlay of it (an earlier version of this module): Magisk's mirror first.
stock=
for f in "$(magisk --path 2>/dev/null)/.magisk/mirror/$APK" "/$APK"; do
    if [ -f "$f" ] && [ "$(sha256sum "$f" | cut -d' ' -f1)" = "$STOCK_SHA256" ]; then
        stock=$f
        break
    fi
done
[ -n "$stock" ] || abort "! This needs the stock XT9 keyboard of XP3800 firmware 11.20.00"

ui_print "- Building the keyboard from the phone's stock XT9IME.apk"
set -- "$MODPATH/xt9/classes.dex"
i=2
while [ -f "$MODPATH/xt9/classes$i.dex" ]; do
    set -- "$@" "$MODPATH/xt9/classes$i.dex"
    i=$((i + 1))
done
mkdir -p "$MODPATH/system/app/XT9IME"
ANDROID_DATA=${ANDROID_DATA:-/data} ANDROID_ROOT=${ANDROID_ROOT:-/system} \
    /system/bin/app_process -Djava.class.path="$MODPATH/xt9/splice.dex" /system/bin \
    org.wave.mod.keyboard.Splice "$stock" "$MODPATH/$APK" "$@" \
    || abort "! Couldn't build the keyboard APK"
rm -rf "$MODPATH/xt9"
# The splicer's compiled code, if ART kept any.
rm -f /data/dalvik-cache/*/*xt9@splice.dex* 2>/dev/null

set_perm_recursive "$MODPATH/system" 0 0 0755 0644 u:object_r:system_file:s0
set_perm "$MODPATH/service.sh" 0 0 0755
