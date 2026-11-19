#!/bin/bash
# tools/testing/push.sh : builds the on-device test helpers and pushes them to /data/local/tmp
#   smsinject.dex  -> SmsInject (fake incoming SMS), WapPushInject (fake WAP push, e.g. MMS
#                     notifications; used by mms_inject.sh), ProviderHammer (concurrent provider writes)
#   race.sh        -> orphaned-thread race reproducer
# Usage on device afterwards:
#   adb shell su -c 'CLASSPATH=/data/local/tmp/smsinject.dex app_process /system/bin SmsInject 22000 "hello" [count] [delayMs]'
source "$(dirname "$0")/../lib/env.sh"
T="$ROOT/build/testing"; rm -rf "$T"; mkdir -p "$T/classes"
javac -nowarn -source 8 -target 8 -cp "$ANDROID_JAR" -d "$T/classes" \
    "$ROOT"/tools/testing/*.java 2>&1 | grep -vE '^warning|bootstrap|release 8|^[0-9]+ warning|^Note:' || true
"$BT/d8" --min-api $MIN_API --lib "$ANDROID_JAR" --output "$T" "$T"/classes/*.class
mv "$T/classes.dex" "$T/smsinject.dex"
adb push "$T/smsinject.dex" "$ROOT/tools/testing/race.sh" /data/local/tmp/ >/dev/null
echo "pushed smsinject.dex, race.sh to /data/local/tmp"
