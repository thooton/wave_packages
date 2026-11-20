#!/usr/bin/env bash
# Build and stage a fresh, standalone module (no APKs, private data, or stock libraries).
set -euo pipefail
ROOT=$(cd "$(dirname "$0")/.." && pwd)
"$ROOT/tools/build.sh"
Z=$(mktemp -d "$ROOT/build/package.XXXXXXXX")
trap 'rm -rf "$Z"' EXIT
mkdir -p "$Z/system/lib" "$Z/META-INF/com/google/android"
install -m 0644 "$ROOT/out/system/lib/libsqlite.so" "$Z/system/lib/"
install -m 0644 "$ROOT/module/"{module.prop,customize.sh} "$Z/"
install -m 0755 "$ROOT/module/service.sh" "$Z/"
install -m 0755 "$ROOT/../tools/magisk/update-binary" "$Z/META-INF/com/google/android/"
cp "$ROOT/../tools/magisk/updater-script" "$Z/META-INF/com/google/android/"
ver=$(sed -n 's/^version=//p' "$Z/module.prop")
[[ $ver =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]
out="$ROOT/out/sqlite-improved-$ver.zip"
(cd "$Z" && zip -qr -X package.zip META-INF system module.prop customize.sh service.sh)
mv -f "$Z/package.zip" "$out"
printf 'Packaged experimental module %s\n' "$out"
