#!/usr/bin/env bash
set -euo pipefail
shared=$(cd "$(dirname "$0")" && pwd)
out=$(mktemp -d)
trap 'rm -rf "$out"' EXIT
javac --release 8 -d "$out" "$shared"/test/android/content/*.java \
    "$shared/java/org/wave/mod/PreferenceMigration.java" "$shared/test/PreferenceMigrationTest.java"
java -cp "$out" PreferenceMigrationTest
