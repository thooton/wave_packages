#!/bin/bash
# Read-only ADB pull. Refuse a different firmware or an already patched BMusic.apk.
source "$(dirname "$0")/lib/env.sh"
expected='Sonim/XP3832/XP3800:8.1.0/3A.0.0-01-8.1.0-11.17.00/1:user/release-keys'
actual=$(adb shell getprop ro.build.fingerprint | tr -d '\r')
[ "$expected" = "$actual" ] || { echo "Unsupported firmware: $actual" >&2; exit 1; }
path=system/priv-app/BMusic/BMusic.apk
mkdir -p "$FIRMWARE/$(dirname "$path")"
artifact="$FIRMWARE/$path.new"
trap 'rm -f "$artifact"' EXIT
adb pull "/$path" "$artifact"
sha='6368ce31db6bb375807b7ae64dde07ea610be86a89db3ab4b48dacb0392063eb'
if ! printf '%s  %s\n' "$sha" "$artifact" | sha256sum -c --status; then
    echo 'BMusic.apk differs from stock; disable any Music overlay and reboot before pulling.' >&2
    exit 1
fi
mv "$artifact" "$FIRMWARE/$path"
printf 'ro.build.fingerprint=%s\n' "$actual" > "$FIRMWARE/system/build.prop"
