# Keyboard Improved installer, sourced by Magisk's install_module with the zip extracted in
# $MODPATH. The module carries only the built dex: they are spliced into the phone's own stock
# XT9IME.apk (xt9/splice.dex; every stock entry and the stock signature are kept byte for byte).
# Likewise its engine library: only a patch (xt9/xt9lib.patch) is shipped.
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

# The engine library: the phone's own copy, with xt9lib.patch (faster code, the same results; see
# native/README.md in the source). LibPatch checks it before and after; on any other library the
# module goes on without it (exit 3: not 11.20.00's; Magisk's mirror first, as for the APK).
LIB=system/lib/libjni_xt9input.so
ui_print "- Speeding up the phone's XT9 engine library"
mkdir -p "$MODPATH/system/lib"
st=3
for f in "$(magisk --path 2>/dev/null)/.magisk/mirror/$LIB" "/$LIB"; do
    [ -f "$f" ] || continue
    ANDROID_DATA=${ANDROID_DATA:-/data} ANDROID_ROOT=${ANDROID_ROOT:-/system} \
        /system/bin/app_process -Djava.class.path="$MODPATH/xt9/splice.dex" /system/bin \
        org.wave.mod.keyboard.LibPatch "$f" "$MODPATH/xt9/xt9lib.patch" "$MODPATH/$LIB"
    st=$?
    [ $st = 3 ] || break
done
if [ $st != 0 ]; then
    rm -rf "$MODPATH/system/lib"
    ui_print "  (not this phone's library: the keyboard works the same without it)"
fi
rm -rf "$MODPATH/xt9"
# The splicer's compiled code, if ART kept any.
rm -f /data/dalvik-cache/*/*xt9@splice.dex* 2>/dev/null

set_perm_recursive "$MODPATH/system" 0 0 0755 0644 u:object_r:system_file:s0
set_perm "$MODPATH/service.sh" 0 0 0755
