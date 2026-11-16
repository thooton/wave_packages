#!/bin/bash
# tools/testing/mms_trace.sh <out.trace> [root-method] [n]: ART method trace of one MMS receive
# (fake MMSC), then the top methods by inclusive wall time under root-method (tools/testing/trace_top.py).
# Needs root and a debuggable system: once per boot run
#   adb shell su -c "'resetprop ro.debuggable 1; setprop sys.boot_completed 0; stop; start'"
# (soft restart; waits for boot_completed again). Tracing makes everything ~3-5x slower: compare
# relative shares, not absolute numbers.
set -uo pipefail
cd "$(dirname "$0")/../.."
out=$1; root=${2:-MessagingNotification.blockingUpdateNewMessageIndicator}; n=${3:-40}
[ "$(adb shell getprop ro.debuggable | tr -d '\r')" = 1 ] || { echo "system not debuggable (see header)"; exit 2; }
adb shell su -c "'rm -f /data/local/tmp/mms.trace'"
adb shell am profile start com.android.mms /data/local/tmp/mms.trace || exit 1
adb logcat -c
tools/testing/mms_inject.sh +15550001 +15550002 "trace $RANDOM" >/dev/null
for _ in $(seq 120); do adb logcat -d | grep -q 'Transaction complete\|updateNotification: new message' && break; sleep 0.5; done
for _ in $(seq 10); do adb logcat -d | grep -q 'update transaction' && break; sleep 0.5; done
adb shell am profile stop com.android.mms
size=-1
for _ in $(seq 20); do  # wait until the trace file stops growing
  s=$(adb shell su -c "'stat -c %s /data/local/tmp/mms.trace 2>/dev/null'" | tr -d '\r')
  [ -n "$s" ] && [ "$s" = "$size" ] && break; size=$s; sleep 0.5
done
adb shell su -c "'chmod 644 /data/local/tmp/mms.trace'"
adb pull /data/local/tmp/mms.trace "$out" >/dev/null && adb shell su -c "'rm -f /data/local/tmp/mms.trace'"
python3 tools/testing/trace_top.py "$out" "$root" "$n"
