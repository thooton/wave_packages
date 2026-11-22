#!/bin/bash
# Host tests: the installer's splicer and library patcher, and that the smali tree has exactly the
# hooks tools/apply_hooks.py puts in (rerunning it changes nothing).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
T="$ROOT/build/test"; rm -rf "$T"; mkdir -p "$T/splice"
javac -nowarn -source 8 -target 8 -Xlint:-options -d "$T/splice" $(find "$ROOT/tools/splice" -name '*.java')
python3 "$ROOT/tools/test/splice_test.py" "$T/splice"
stock_lib="$ROOT/../firmware/system/lib/libjni_xt9input.so"
python3 "$ROOT/tools/test/libpatch_test.py" "$T/splice" "$ROOT/module/xt9lib.patch" \
    $([ -f "$stock_lib" ] && echo "$stock_lib")
cp -r "$ROOT/apps/XT9IME/apktool/smali" "$T/smali"
python3 "$ROOT/tools/apply_hooks.py" "$T/smali" >/dev/null
diff -r "$ROOT/apps/XT9IME/apktool/smali" "$T/smali" >/dev/null \
    || { echo "apply_hooks.py would change the smali tree: rerun it and commit the result" >&2; exit 1; }
echo "hooks: smali tree up to date"
