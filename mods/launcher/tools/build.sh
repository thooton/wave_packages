#!/bin/bash
# tools/build.sh [App...]      (default: every app in apps/)
# For each app:
#   apps/<App>/apktool/  -> apktool b -> classes*.dex
#   apps/<App>/java/     -> javac + d8 -> next classesN.dex   (apps/<App>/stubs/ is compile-only:
#                           declarations of stock classes the Java code calls, never shipped)
#   splice the dex files into the STOCK apk (keeps its platform signature, see AGENTS.md),
#   zipalign -> out/system/.../<App>.apk
# Stock classes whose smali was deleted (replaced by Java) must not survive in the smali dex: the
# check at the end fails the build if a class is defined in two dex files.
source "$(dirname "$0")/lib/env.sh"
apps=("$@"); [ ${#apps[@]} -gt 0 ] || mapfile -t apps < <(all_apps)
for app in "${apps[@]}"; do
    A="$ROOT/apps/$app"; B="$ROOT/build/$app"
    rm -rf "$B"; mkdir -p "$B/dex"
    apktool b -q "$A/apktool" -o "$B/smali.apk"
    unzip -q -o "$B/smali.apk" 'classes*.dex' -d "$B/dex"
    n=$(ls "$B/dex" | wc -l)
    if [ -d "$A/java" ]; then
        mkdir -p "$B/stubs" "$B/classes" "$B/d8"
        if [ -d "$A/stubs" ]; then
            javac -nowarn -Xlint:-options -source 8 -target 8 -cp "$ANDROID_JAR" -sourcepath "$A/java" -implicit:none -d "$B/stubs" \
                $(find "$A/stubs" -name '*.java')
        fi
        javac -nowarn -Xlint:-options -source 8 -target 8 -cp "$ANDROID_JAR:$B/stubs" -d "$B/classes" \
            $(find "$A/java" -name '*.java')
        "$BT/d8" --release --min-api $MIN_API --lib "$ANDROID_JAR" --classpath "$B/stubs" \
            --output "$B/d8" $(find "$B/classes" -name '*.class')
        n=$((n + 1)); mv "$B/d8/classes.dex" "$B/dex/classes$n.dex"
        # Nothing from stubs/ may end up in the APK, and no class may be defined twice.
        python3 "$ROOT/tools/lib/dexcheck.py" "$B/dex" "$B/classes"
    fi
    args=(); for d in "$B"/dex/*.dex; do args+=("$(basename "$d")=$d"); done
    out="$ROOT/out/$(system_path "$app")"; mkdir -p "$(dirname "$out")"
    python3 "$ROOT/tools/lib/splice_apk.py" "$(stock_apk "$app")" "$B/unaligned.apk" "${args[@]}" >/dev/null
    "$BT/zipalign" -f -p 4 "$B/unaligned.apk" "$out"
    "$BT/zipalign" -c -p 4 "$out"
    ANDROID_JAR="$ANDROID_JAR" python3 "$ROOT/tools/lib/linkcheck.py" "$out"
    echo "built ${out#"$ROOT"/} ($(ls "$B/dex" | tr '\n' ' '))"
done
