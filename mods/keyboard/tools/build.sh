#!/bin/bash
# Compile the dex (smali tree + Java) and the installer's splicer, and check symbol references.
#
# The stock XT9IME.apk is Nuance's, so it isn't in this repository: the module carries only the
# built dex, and its installer splices them into the phone's own stock APK (tools/splice). When a
# stock APK is at hand (XT9IME_STOCK, or the ignored mods/firmware/system/app/XT9IME/XT9IME.apk
# pulled from the phone), this also builds and checks the whole APK, as the phone will.
source "$(dirname "$0")/lib/env.sh"
app=XT9IME
A="$ROOT/apps/$app"; B="$ROOT/build/$app"
rm -rf "$B"; mkdir -p "$B/dex" "$B/stubs" "$B/classes" "$B/d8" "$B/splice"
# -f: never reuse apktool's cached build/ output from an earlier tree.
apktool b -f -q "$A/apktool" -o "$B/smali.apk"
unzip -q -o "$B/smali.apk" 'classes*.dex' -d "$B/dex"
rm -rf "$A/apktool/build"
n=$(ls "$B/dex" | wc -l)
javac -nowarn -Xlint:-options -source 8 -target 8 -cp "$ANDROID_JAR" -sourcepath "$A/java" -implicit:none -d "$B/stubs" \
    $(find "$A/stubs" -name '*.java')
javac -nowarn -Xlint:-options -source 8 -target 8 -cp "$ANDROID_JAR:$B/stubs" -d "$B/classes" $(find "$A/java" -name '*.java')
"$BT/d8" --release --min-api $MIN_API --lib "$ANDROID_JAR" --classpath "$B/stubs" \
    --output "$B/d8" $(find "$B/classes" -name '*.class')
n=$((n + 1)); mv "$B/d8/classes.dex" "$B/dex/classes$n.dex"
# Nothing from stubs/ may end up in the APK, and no class may be defined twice.
python3 "$SHARED/dexcheck.py" "$B/dex" "$B/classes"

# The splicer the module installer runs (app_process) and the host runs below.
javac -nowarn -Xlint:-options -source 8 -target 8 -d "$B/splice" $(find "$ROOT/tools/splice" -name '*.java')
"$BT/d8" --release --min-api $MIN_API --lib "$ANDROID_JAR" --output "$B/d8" $(find "$B/splice" -name '*.class')
mv "$B/d8/classes.dex" "$B/splice.dex"

dexes=$(ls "$B/dex"/classes*.dex | sort -V)
stock=${XT9IME_STOCK:-$(stock_apk "$app")}
if [ -f "$stock" ]; then
    echo "$(sha256sum "$stock" | cut -d' ' -f1)" | grep -qx "$STOCK_SHA256" \
        || { echo "$stock is not the stock XT9IME.apk of 11.20.00 ($STOCK_SHA256)" >&2; exit 1; }
    java -cp "$B/splice" org.wave.mod.keyboard.Splice "$stock" "$B/$app.apk" $dexes
    python3 "$SHARED/verify_splice.py" "$stock" "$B/dex" "$B/$app.apk"
    "$BT/zipalign" -c -p 4 "$B/$app.apk"
    check="$B/$app.apk"
else
    echo "$app: no stock APK here; building the dex only (set XT9IME_STOCK to build the APK too)"
    check="$B/dex-only.apk"
    (cd "$B/dex" && zip -q -X "$check" classes*.dex)
fi
ANDROID_JAR="$ANDROID_JAR" python3 "$SHARED/linkcheck.py" "$check" "Lcom/nuance/flext9_OEM/input/Wave"
echo "$app: built $(echo $dexes | wc -w) dex and the installer's splicer ($B)"
