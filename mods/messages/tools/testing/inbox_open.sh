#!/usr/bin/env bash
# Timestamp a cold Messages inbox launch without reading visible names or message text.
set -euo pipefail
app=com.android.mms
samples=${1:-1}
[[ $samples =~ ^[1-9][0-9]*$ ]] || { echo 'usage: inbox_open.sh [samples]' >&2; exit 2; }
for tag in WaveLaunch WavePhoneMap; do
    adb shell setprop "log.tag.$tag" DEBUG
done
trap 'for tag in WaveLaunch WavePhoneMap; do adb shell "setprop log.tag.$tag \"\"" >/dev/null 2>&1 || :; done' EXIT
for ((n=1; n <= samples; n++)); do
    policy=$(adb shell -T 'dumpsys window policy')
    if [[ $policy != *isStatusBarKeyguard=false* ]]; then
        echo 'Handset locked; unlock before measuring' >&2
        exit 1
    fi
    adb shell am force-stop "$app"
    # The previous task's removal can enqueue a Home launch. Let it finish first.
    sleep 1.2
    after=$(adb shell -T 'date +"%m-%d %H:%M:%S.000"')
    timeout 8 adb shell am start -W -a android.intent.action.MAIN -c android.intent.category.LAUNCHER \
        -n "$app/.ui.ConversationList" >/dev/null
    sleep 0.4
    adb logcat -v epoch -d -T "$after" -s WaveLaunch:D WavePhoneMap:D ActivityManager:I '*:S' | python3 -c '
import re, sys
start = None
marks = {}
for line in sys.stdin:
    m = re.match(r"\s*(\d+\.\d+)", line)
    if not m:
        continue
    now = float(m[1])
    if "START u0" in line and "cmp=com.android.mms/.ui.ConversationList" in line:
        start = now
        marks.clear()
    if start is None:
        continue
    if "WaveLaunch: " in line:
        marks.setdefault(line.split("WaveLaunch: ", 1)[1].strip(), now)
    elif "WavePhoneMap: snapshot rows=" in line:
        marks.setdefault(line.split("WavePhoneMap: ", 1)[1].strip(), now)
    elif "Displayed com.android.mms/.ui.ConversationList" in line:
        marks.setdefault("displayed", now)
if "displayed" not in marks:
    sys.exit("Inbox window was not displayed")
for stage, now in marks.items():
    print(f"{(now-start)*1000:5.0f} ms {stage}")'
    echo
done
