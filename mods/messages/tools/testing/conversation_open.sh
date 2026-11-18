#!/usr/bin/env bash
# Time a registered conversation launch without printing or saving any message text.
# Set log.tag.Mms=VERBOSE to also see the stock history/PDU diagnostics.
# --cold stops only the Messages process, not the provider or filesystem cache.
set -euo pipefail
thread=${1:?usage: conversation_open.sh THREAD_ID [--cold]}
[[ $thread =~ ^[0-9]+$ ]]
app=com.android.mms
adb shell input keyevent KEYCODE_WAKEUP
adb shell wm dismiss-keyguard
adb shell input keyevent KEYCODE_HOME
if [[ ${2:-} == --cold ]]; then adb shell am force-stop "$app"; fi
# Use the device clock for both the start and log cutoff; no global logcat clear.
after=$(adb shell 'date "+%m-%d %H:%M:%S.000"' | tr -d '\r')
adb shell am start -f 0x10008000 -a android.intent.action.VIEW \
    -d "content://mms-sms/conversations/$thread" -n "$app/.ui.ComposeMessageActivity" >/dev/null
sleep "${ARGON_OPEN_WAIT:-4}"
adb logcat -v epoch -d -T "$after" | python3 -c '
import re, sys
start = None
marks = {"display": [], "history": [], "bind": [], "pdu": [], "webview": []}
for line in sys.stdin:
    match = re.match(r"\s*(\d+\.\d+)\s+", line)
    if not match:
        continue
    now = float(match[1])
    if "START u0" in line and "cmp=com.android.mms/.ui.ComposeMessageActivity" in line:
        start = now
        for values in marks.values():
            values.clear()
    if start is None:
        continue
    for key, marker in (("display", "Displayed com.android.mms/.ui.ComposeMessageActivity"),
                        ("history", "onQueryComplete: msg history result"),
                        ("bind", "bind view position"), ("pdu", "Pdu task for"),
                        ("webview", "WebViewFactory: Loading")):
        if marker in line:
            marks[key].append(round((now-start)*1000))
if start is None:
    sys.exit("No activity launch found")
print("; ".join(f"{key} {values[0]}..{values[-1]} ms ({len(values)})" if values else f"{key} 0"
                for key, values in marks.items()))
'
