#!/usr/bin/env bash
# Build a portable unsigned signing request; optionally package matching OEM-signed APKs.
set -euo pipefail
SHARED=$(cd "$(dirname "$0")" && pwd)
case "${1:-}" in
    launcher|messages|music) mod=$1 ;;
    *) echo 'Usage: build-module.sh {launcher|messages|music} [OEM-signed-APK-directory]' >&2; exit 2 ;;
esac
(( $# <= 2 )) || exit 2
root="$SHARED/../$mod"
"$root/tools/build.sh"
output="$root/build/$mod-improved-signing-request.zip"
work=$(mktemp -d "$root/build/request.XXXXXXXX")
trap 'rm -rf "$work"' EXIT
for app_dir in "$root"/apps/*/; do
    app=$(basename "$app_dir")
    cp "$root/build/$app/unsigned.apk" "$work/$app.apk"
done
(
    cd "$work"
    printf '%s\n' 'Unsigned APKs for OEM signing. This archive is not installable.' > README.txt
    sha256sum -- *.apk > SHA256SUMS
    zip -q -X request.zip README.txt SHA256SUMS ./*.apk
)
mv -f "$work/request.zip" "$output"
printf 'Unsigned request: %s\n' "$output"
# package.sh checks the signer, signature, alignment and exact non-signature payload.
if [[ -n ${2:-${OEM_SIGNED_APKS:-}} ]]; then
    OEM_SIGNED_APKS="${2:-$OEM_SIGNED_APKS}" "$root/tools/package.sh"
fi
