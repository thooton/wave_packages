#!/bin/bash
# tools/rcs/device_status.sh: RCS state of Messages Argon on the phone (root) + recent log lines.
adb shell su -c "'cat /data/data/com.android.mms/files/rcs_status.txt 2>/dev/null || echo no status yet'"
adb logcat -d -s ArgonRcs:V | tail -n "${1:-15}"
