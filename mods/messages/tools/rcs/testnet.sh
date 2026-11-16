#!/bin/bash
# tools/rcs/testnet.sh on|off
# Development only: point the phone at the mock RCS network on the host (python3 -m tools.rcs.mock).
# adb reverse makes 127.0.0.1:{5060,8080,2855} on the phone reach the mock; debug.argon.rcs.testnet=1
# makes the engine treat the network as available (the test phone has no Wi-Fi/data). The own number
# comes from debug.argon.self_number (tools/testing). Props and reverses reset on reboot.
set -euo pipefail
case "${1:-on}" in
on)
    for p in 5060 8080 2855; do adb reverse tcp:$p tcp:$p >/dev/null; done
    adb shell su -c "'setprop debug.argon.rcs.testnet 1; setprop debug.argon.self_number ${SELF:-+15550002}'"
    adb shell am startservice -n com.android.mms/com.android.mms.rcs.RcsMessageStatusService -a org.argon.rcs.HOST --es cmd restart >/dev/null
    echo "RCS test network on";;
off)
    for p in 5060 8080 2855; do adb reverse --remove tcp:$p 2>/dev/null || true; done
    adb shell su -c "'setprop debug.argon.rcs.testnet \"\"; setprop debug.argon.rcs.verbose \"\"'"
    echo "RCS test network off";;
esac
