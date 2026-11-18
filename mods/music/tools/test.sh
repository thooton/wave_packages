#!/bin/bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CLASSES="$ROOT/build/test/whitelist"
mkdir -p "$CLASSES"
javac -d "$CLASSES" "$ROOT/apps/BMusic/java/com/android/music/FolderRules.java" "$ROOT/tools/test/FolderQueries.java"
java -cp "$CLASSES" com.android.music.FolderQueries | python3 "$ROOT/tools/test/queries.py"
