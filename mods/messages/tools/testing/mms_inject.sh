#!/bin/bash
# tools/testing/mms_inject.sh <from> <to,to,...> <text> [json extras]
# Creates a message on the fake MMSC (tools/testing/fake_mmsc.py, must be running) and delivers
# its M-Notification.ind to the phone as a WAP push. The phone then downloads it from the fake
# MMSC (needs tools/testing/testnet.sh on). Example group MMS from +15550001 to me and two others:
#   tools/testing/mms_inject.sh +15550001 +15550002,+15550003 "hello group"
#   tools/testing/mms_inject.sh +15550001 +15550002 "slow one" '"delay": 6'
#   tools/testing/mms_inject.sh +15550001 +15550002 "broken" '"fail": true'
set -euo pipefail
from=$1; to=$2; text=$3; extra=${4:-}
tojson=$(python3 -c 'import json,sys; print(json.dumps(sys.argv[1].split(",") if sys.argv[1] else []))' "$to")
body=$(python3 -c 'import json,sys; d={"from":sys.argv[1],"to":json.loads(sys.argv[2]),"text":sys.argv[3]}; d.update(json.loads("{"+sys.argv[4]+"}")); print(json.dumps(d))' "$from" "$tojson" "$text" "$extra")
resp=$(curl -s -X POST --data "$body" http://127.0.0.1:8098/ctl/new)
hex=$(python3 -c 'import json,sys; print(json.loads(sys.argv[1])["push_hex"])' "$resp")
adb shell su -c "'CLASSPATH=/data/local/tmp/smsinject.dex app_process /system/bin WapPushInject $hex'"
# message id on the fake MMSC (the phone stores http://127.0.0.1:8098/mms/<id> as ct_l)
python3 -c 'import json,sys; print("MMSC_ID=" + json.loads(sys.argv[1])["id"])' "$resp"
