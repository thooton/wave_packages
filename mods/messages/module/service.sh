#!/system/bin/sh
# Messages Improved module: late_start service (runs on every boot, in the background).
#
# The firmware's apps run AOT-compiled code (speed-profile). The patched APKs don't match that code,
# so after install ART only verifies them (interpreter + JIT) until an idle-maintenance dexopt
# happens to run. Compile them once with "speed"; without -f this is a no-op when already done.
(
  until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 5; done
  # FEAT(imessage): the iMessage connection runs without a foreground service unless its
  # notification is turned on, so keep Messages exempt from Doze's network and alarm limits and
  # allowed to run in the background.
  dumpsys deviceidle whitelist +com.android.mms >/dev/null 2>&1
  cmd appops set com.android.mms RUN_IN_BACKGROUND allow >/dev/null 2>&1
  sleep 90
  DIR="${0%/*}"
  if [ -f "$DIR/system/priv-app/ContactsProvider/ContactsProvider.apk" ]; then
    cmd package compile -m speed com.android.providers.contacts >/dev/null 2>&1
  fi
  for p in com.android.mms com.android.providers.telephony; do
    cmd package compile -m speed "$p" >/dev/null 2>&1
  done
) &
