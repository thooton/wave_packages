#!/bin/bash
# tools/test.sh: host tests of the Android-free code (WaveLayout, WaveDefaults, TrayFile, WaveNav).
source "$(dirname "$0")/lib/env.sh"
J="$ROOT/apps/SonimLauncher/java/com/sonim/borqs/launcher"
O="$ROOT/build/test"; rm -rf "$O"; mkdir -p "$O"
javac -nowarn -Xlint:-options -source 8 -target 8 -d "$O" \
    "$J/WaveLayout.java" "$J/WaveDefaults.java" "$J/TrayFile.java" "$J/WaveNav.java" \
    "$ROOT/tools/test/TrayFileTest.java" "$ROOT/tools/test/LayoutTest.java" "$ROOT/tools/test/WaveNavTest.java"
java -cp "$O" com.sonim.borqs.launcher.LayoutTest
java -cp "$O" com.sonim.borqs.launcher.TrayFileTest
java -cp "$O" com.sonim.borqs.launcher.WaveNavTest
