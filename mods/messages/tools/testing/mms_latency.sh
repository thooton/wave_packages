#!/bin/bash
# tools/testing/mms_latency.sh [n] [cold]: receive n MMS through the fake MMSC and print, per message, the
# milliseconds from the WAP push to: push handled (PushReceiver), message stored (download + persist),
# notification posted. "cold" kills the Messages process before each message (cold start).
# Device-clock stamps from logcat (wrong in absolute terms, consistent relative to each other).
# Needs: fake MMSC running, tools/testing/testnet.sh on, tools/testing/push.sh done, root.
set -uo pipefail
cd "$(dirname "$0")/../.."
n=${1:-3}; mode=${2:-warm}
ms() { awk -F'[:.]' '{print (($1*60+$2)*60+$3)*1000+$4}' <<<"$1"; }
stamp() { echo "$L" | grep -m1 -E "$1" | awk '{print $2}'; }
tot=0
for i in $(seq "$n"); do
  if [ "$mode" = cold ]; then
    adb shell su -c "'kill \$(pidof com.android.mms)'" 2>/dev/null
    sleep 2
  fi
  adb logcat -c
  tools/testing/mms_inject.sh +15550001 +15550002 "latency $i $RANDOM" >/dev/null
  for _ in $(seq 120); do adb logcat -d | grep -q 'updateNotification: new message' && break; sleep 0.25; done
  L=$(adb logcat -d -v time)
  t0=$(stamp 'Calling main entry WapPushInject'); t1=$(stamp 'PushReceiver subId')
  t2=$(stamp 'received new mms message'); t3=$(stamp 'updateNotification: new message')
  if [ -z "$t0" ] || [ -z "$t3" ]; then echo "#$i: incomplete (t0=$t0 t3=$t3)"; continue; fi
  b=$(ms "$t0")
  printf '#%d %-5s push %5d  stored %5d  notified %5d ms\n' "$i" "$mode" $(( $(ms "$t1") - b )) $(( $(ms "${t2:-$t3}") - b )) $(( $(ms "$t3") - b ))
  tot=$(( tot + $(ms "$t3") - b ))
done
echo "mean notified: $(( tot / n )) ms"
