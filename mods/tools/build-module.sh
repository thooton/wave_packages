#!/usr/bin/env bash
# Build a mod's APKs and package its Magisk module zip.
set -euo pipefail
SHARED=$(cd "$(dirname "$0")" && pwd)
case "${1:-}" in
    launcher|messages|music) mod=$1 ;;
    *) echo 'Usage: build-module.sh {launcher|messages|music}' >&2; exit 2 ;;
esac
[ $# -eq 1 ] || exit 2
root="$SHARED/../$mod"
"$root/tools/build.sh"
"$root/tools/package.sh"
