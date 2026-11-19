#!/bin/sh
# TokenStore's rotation under concurrency, on a plain JVM: the real
# TokenStore and ApiException compiled against small stand-ins for the
# Android classes, org.json and Tesla's token endpoint (stubs/).
# Charge has no host-test module; run this by hand: sh tests/tokenstore/run.sh
set -e
here=$(cd "$(dirname "$0")" && pwd)
data="$here/../../app/src/main/java/com/teslacharge/xp3/data"
out=$(mktemp -d)
trap 'rm -rf "$out"' EXIT
javac -d "$out" "$data/TokenStore.java" "$data/ApiException.java" "$here/Harness.java" $(find "$here/stubs" -name '*.java')
java -cp "$out" Harness
