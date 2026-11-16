#!/system/bin/sh
# Messages Argon module: late_start service (runs on every boot, in the background).
#
# The firmware's apps run AOT-compiled code (speed-profile). The patched APKs don't match that code,
# so after install ART only verifies them (interpreter + JIT) until an idle-maintenance dexopt
# happens to run. Compile them once with "speed"; without -f this is a no-op when already done.
(
  until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 5; done
  sleep 90
  for p in com.android.mms com.android.providers.telephony; do
    cmd package compile -m speed "$p" >/dev/null 2>&1
  done
) &
