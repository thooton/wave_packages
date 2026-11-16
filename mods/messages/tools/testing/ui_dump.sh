#!/bin/bash
# dump visible UI nodes (text/desc/checked/bounds) of the current screen
adb shell uiautomator dump /sdcard/ui.xml >/dev/null
adb shell cat /sdcard/ui.xml | tr '>' '\n' | grep -oE '(text|content-desc)="[^"]+"|checked="true"|bounds="[^"]+"' | paste -sd' ' | sed 's/bounds=/\n/g' | grep -E 'text|desc|checked' | head -60
