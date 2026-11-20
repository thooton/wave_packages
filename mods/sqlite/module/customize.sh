# Invoked by Magisk before activating the overlay. Restrict installation to the
# exact firmware builds whose stock SQLite and ICU libraries match the build inputs.
[ "$ARCH" = arm ] && [ "$API" -eq 27 ] && [ "$(getprop ro.product.device)" = XP3800 ] \
    || abort 'SQLite Improved is only for the 32-bit Sonim XP3800 (Android 8.1).'
case "$(getprop ro.build.fingerprint)" in
    Sonim/XP3832/XP3800:8.1.0/3A.0.0-01-8.1.0-11.17.00/1:user/release-keys|\
    Sonim/XP3832/XP3800:8.1.0/3A.0.1-02-8.1.0-11.20.00/22:user/release-keys) ;;
    *) abort 'This firmware is not an approved SQLite build baseline.' ;;
esac
old=/data/adb/modules/argon_sqlite
[ ! -d "$old" ] || touch "$old/remove"
set_perm_recursive "$MODPATH/system" 0 0 0755 0644 u:object_r:system_file:s0
set_perm "$MODPATH/service.sh" 0 0 0755
