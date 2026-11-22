#!/usr/bin/env bash
# Package the Magisk module zip from tools/build.sh's output: the built dex, the splicer and the
# engine library patch (module/xt9lib.patch); module/customize.sh builds the APK on the phone
# from its own stock XT9IME.apk, and patches its own engine library.
source "$(dirname "$0")/lib/env.sh"
B="$ROOT/build/XT9IME"
[ -f "$B/dex/classes.dex" ] && [ -f "$B/splice.dex" ] || { echo "nothing built: run tools/build.sh" >&2; exit 1; }
[[ $STOCK_SHA256 =~ ^[0-9a-f]{64}$ ]] || { echo "module/stock.sha256: no stock_sha256" >&2; exit 1; }
Z="$ROOT/build/zip"; rm -rf "$Z"; mkdir -p "$Z/META-INF/com/google/android" "$Z/xt9"
install -m 0755 "$SHARED/magisk/update-binary" "$Z/META-INF/com/google/android/"
cp "$SHARED/magisk/updater-script" "$Z/META-INF/com/google/android/"
cp "$ROOT/module/service.sh" "$ROOT/module/module.prop" "$Z/"
sed "s/@STOCK_SHA256@/$STOCK_SHA256/" "$ROOT/module/customize.sh" > "$Z/customize.sh"
cp "$B"/dex/classes*.dex "$B/splice.dex" "$ROOT/module/xt9lib.patch" "$Z/xt9/"
ver=$(sed -n 's/^version=//p' "$Z/module.prop")
[[ $ver =~ ^[0-9]+\.[0-9]+\.[0-9]+$ && $(sed -n 's/^id=//p' "$Z/module.prop") == "$MODULE_ID" ]]
mkdir -p "$ROOT/out"
out="$ROOT/out/${MODULE_ID//_/-}-$ver.zip"; rm -f "$out"
(cd "$Z" && zip -qr -X "$out" .)
printf 'Packaged %s\n' "$out"
