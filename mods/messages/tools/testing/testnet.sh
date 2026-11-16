#!/bin/bash
# tools/testing/testnet.sh on|off
# Development-only MMS test network: the phone (no SIM) talks to tools/testing/fake_mmsc.py on
# the host through `adb reverse`, and BMms skips the carrier MMS APN (debug.argon.mms.* props,
# see apps/BMms/java/com/android/mms/argon/Argon.java). Props reset on reboot.
set -euo pipefail
case "${1:-on}" in
on)
    adb reverse tcp:8098 tcp:8098 >/dev/null
    adb shell su -c "'setprop debug.argon.mms.testnet 1; setprop debug.argon.mms.mmsc http://127.0.0.1:8098/mmsc'"
    echo "MMS test network on (fake MMSC must run: python3 tools/testing/fake_mmsc.py)";;
off)
    adb reverse --remove tcp:8098 2>/dev/null || true
    adb shell su -c "'setprop debug.argon.mms.testnet \"\"; setprop debug.argon.mms.mmsc \"\"'"
    echo "MMS test network off";;
esac
