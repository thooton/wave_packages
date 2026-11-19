#!/bin/bash
# Compile dex, check symbol references, and produce an unsigned request for the OEM signer.
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
        python3 "$SHARED/dexcheck.py" "$B/dex" "$B/classes"
    fi
    python3 "$SHARED/unsigned.py" "$(stock_apk "$app")" "$B/dex" "$B/request.apk"
    "$BT/zipalign" -f -p 4 "$B/request.apk" "$B/unsigned.apk"
    ANDROID_JAR="$ANDROID_JAR" python3 "$SHARED/linkcheck.py" "$B/unsigned.apk" "Lcom/sonim/borqs/launcher/"
    echo "$app: built unsigned signing request ($B/unsigned.apk)"
done
