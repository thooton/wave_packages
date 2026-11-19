#!/system/bin/sh
# Launcher Improved module: late_start service (runs on every boot, in the background).
#
# The patched launcher APK doesn't match the code ART compiled for the stock one, so after install
# it runs verified-only (interpreter + JIT) until an idle-maintenance dexopt happens to run.
# Compile it once with "speed"; without -f this is a no-op when already done.
(
  until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 5; done
  sleep 90
  cmd package compile -m speed com.sonim.borqs.launcher >/dev/null 2>&1
) &
