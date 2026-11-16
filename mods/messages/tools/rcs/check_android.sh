#!/bin/bash
# Compile-check the RCS engine against android.jar (API level check via d8 --min-api 27).
# Does NOT touch build/BMms (the lead's build dir).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
SDK="${ANDROID_SDK:-/opt/android-sdk}"
JAR="${ANDROID_JAR:-$(ls -d "$SDK"/platforms/android-* | sort -V | tail -1)/android.jar}"
BT="${BUILD_TOOLS:-$(ls -d "$SDK"/build-tools/* | sort -V | tail -1)}"
OUT="$ROOT/build/rcs-check"
rm -rf "$OUT"; mkdir -p "$OUT/classes" "$OUT/d8"
javac -nowarn -Xlint:-options -source 8 -target 8 -cp "$JAR" -d "$OUT/classes" \
    $(find "$ROOT/apps/BMms/java/org/argon" -name '*.java') 2>&1 | grep -vE '^Note:' || true
[ -n "$(find "$OUT/classes" -name '*.class' | head -1)" ] || { echo "javac failed"; exit 1; }
"$BT/d8" --min-api 27 --lib "$JAR" --output "$OUT/d8" $(find "$OUT/classes" -name '*.class')
echo "rcs engine OK for Android (min-api 27): $(find "$OUT/classes" -name '*.class' | wc -l) classes"
