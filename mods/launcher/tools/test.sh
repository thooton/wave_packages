#!/bin/bash
# tools/test.sh: host tests of the Android-free code (ArgonLayout, ArgonDefaults).
source "$(dirname "$0")/lib/env.sh"
J="$ROOT/apps/SonimLauncher/java/com/sonim/borqs/launcher"
O="$ROOT/build/test"; rm -rf "$O"; mkdir -p "$O"
javac -nowarn -Xlint:-options -source 8 -target 8 -d "$O" \
    "$J/ArgonLayout.java" "$J/ArgonDefaults.java" "$ROOT/tools/test/LayoutTest.java"
java -cp "$O" com.sonim.borqs.launcher.LayoutTest
