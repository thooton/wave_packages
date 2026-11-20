#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
BUILD_DIR="$(mktemp -d "${TMPDIR:-/tmp}/appdrawer-build.XXXXXX")"
SDK_DIR="${ANDROID_SDK_ROOT:-${ANDROID_HOME:-/opt/android-sdk}}"
PLATFORM_DIR="$SDK_DIR/platforms/android-35"
TOOLS_DIR="$SDK_DIR/build-tools/35.0.1"
ANDROID_JAR="$PLATFORM_DIR/android.jar"
# Signing, as for the Gradle apps (signing/signing.gradle): the release key from
# WAVE_KEYSTORE_BASE64 (or WAVE_KEYSTORE_FILE), WAVE_KEYSTORE_PASSWORD,
# WAVE_KEY_ALIAS and WAVE_KEY_PASSWORD; none set means the old App Drawer key
# in this repository, which is PUBLIC and never publishable (the release gates
# refuse it). WAVE_REQUIRE_RELEASE_KEY=1 makes a missing release key an error.
# Setting only some of the variables is always an error.
KEYSTORE="$PROJECT_DIR/signing/app-drawer.p12"
KEY_ALIAS="appdrawer"
export WAVE_SIGN_STORE_PASS=appdrawer WAVE_SIGN_KEY_PASS=appdrawer
set_keys=0
for v in WAVE_KEYSTORE_PASSWORD WAVE_KEY_ALIAS WAVE_KEY_PASSWORD; do
    [[ -z "${!v:-}" ]] || set_keys=$((set_keys + 1))
done
have_store=0
[[ -z "${WAVE_KEYSTORE_BASE64:-}${WAVE_KEYSTORE_FILE:-}" ]] || have_store=1
if (( set_keys + have_store > 0 && set_keys + have_store < 4 )); then
    echo "Release signing is half set up: WAVE_KEYSTORE_BASE64 (or WAVE_KEYSTORE_FILE), WAVE_KEYSTORE_PASSWORD, WAVE_KEY_ALIAS and WAVE_KEY_PASSWORD must all be set, or none." >&2
    exit 1
fi

# The shipped id is com.custom.appdrawer. APPDRAWER_APPLICATION_ID builds a copy
# under another id (a side-by-side test install); the code stays in its own
# package, so the activity is named in full and R is generated for that package.
APPLICATION_ID="${APPDRAWER_APPLICATION_ID:-com.custom.appdrawer}"
OUT_APK="${APPDRAWER_OUT:-$PROJECT_DIR/AppDrawer.apk}"

trap 'rm -rf "$BUILD_DIR"' EXIT

for tool in aapt javac zip "$TOOLS_DIR/d8" "$TOOLS_DIR/zipalign" "$TOOLS_DIR/apksigner"; do
    if ! command -v "$tool" >/dev/null 2>&1 && [[ ! -x "$tool" ]]; then
        echo "Missing build tool: $tool" >&2
        exit 1
    fi
done

if [[ ! -f "$ANDROID_JAR" ]]; then
    echo "Missing Android platform: $ANDROID_JAR" >&2
    exit 1
fi

bar=$(printf '=%.0s' $(seq 78))
if (( have_store )); then
    if [[ -n "${WAVE_KEYSTORE_FILE:-}" ]]; then
        KEYSTORE="$WAVE_KEYSTORE_FILE"
        [[ -f $KEYSTORE ]] || { echo "WAVE_KEYSTORE_FILE is not a file: $KEYSTORE" >&2; exit 1; }
    else
        KEYSTORE="$BUILD_DIR/release.keystore"
        (umask 077; printf '%s' "$WAVE_KEYSTORE_BASE64" | base64 -d > "$KEYSTORE")
    fi
    KEY_ALIAS="$WAVE_KEY_ALIAS"
    WAVE_SIGN_STORE_PASS="$WAVE_KEYSTORE_PASSWORD"; WAVE_SIGN_KEY_PASS="$WAVE_KEY_PASSWORD"
    printf '\n%s\nWAVE SIGNING (App Drawer): release key (alias %s)\n%s\n\n' "$bar" "$KEY_ALIAS" "$bar"
elif [[ "${WAVE_REQUIRE_RELEASE_KEY:-}" == 1 ]]; then
    echo "WAVE_REQUIRE_RELEASE_KEY=1 but no release key is configured; refusing to sign App Drawer with the public key." >&2
    exit 1
else
    printf '\n%s\n!! WAVE SIGNING (App Drawer): NO RELEASE KEY SET, SIGNING WITH THE PUBLIC OLD KEY !!\n   For trying on a phone only; never publish it (the release gates refuse it).\n%s\n\n' "$bar" "$bar"
fi

mkdir -p "$BUILD_DIR/gen" "$BUILD_DIR/classes" "$BUILD_DIR/dex" "$PROJECT_DIR/signing"

if [[ ! -f "$KEYSTORE" ]]; then
    keytool -genkeypair -noprompt \
        -keystore "$KEYSTORE" -storetype PKCS12 \
        -storepass "$WAVE_SIGN_STORE_PASS" -keypass "$WAVE_SIGN_KEY_PASS" \
        -alias "$KEY_ALIAS" -keyalg RSA -keysize 2048 -validity 10000 \
        -dname "CN=App Drawer, OU=Local, O=Custom, C=US"
fi

sed "s/package=\"com.custom.appdrawer\"/package=\"$APPLICATION_ID\"/" \
    "$PROJECT_DIR/AndroidManifest.xml" > "$BUILD_DIR/AndroidManifest.xml"

aapt package -f -m --custom-package com.custom.appdrawer \
    -J "$BUILD_DIR/gen" \
    -M "$BUILD_DIR/AndroidManifest.xml" \
    -S "$PROJECT_DIR/res" \
    -I "$ANDROID_JAR" \
    -F "$BUILD_DIR/resources.apk"

javac -source 8 -target 8 \
    -bootclasspath "$ANDROID_JAR" \
    -d "$BUILD_DIR/classes" \
    "$BUILD_DIR/gen/com/custom/appdrawer/R.java" \
    "$PROJECT_DIR/src/com/custom/appdrawer/AppDrawerActivity.java"

"$TOOLS_DIR/d8" \
    --release \
    --min-api 27 \
    --lib "$ANDROID_JAR" \
    --output "$BUILD_DIR/dex" \
    "$BUILD_DIR/classes/com/custom/appdrawer/"*.class

cp "$BUILD_DIR/resources.apk" "$BUILD_DIR/AppDrawer-unsigned.apk"
zip -q -j "$BUILD_DIR/AppDrawer-unsigned.apk" "$BUILD_DIR/dex/classes.dex"

"$TOOLS_DIR/zipalign" -f -p 4 \
    "$BUILD_DIR/AppDrawer-unsigned.apk" \
    "$BUILD_DIR/AppDrawer-aligned.apk"

"$TOOLS_DIR/apksigner" sign \
    --v4-signing-enabled false \
    --ks "$KEYSTORE" \
    --ks-key-alias "$KEY_ALIAS" \
    --ks-pass env:WAVE_SIGN_STORE_PASS \
    --key-pass env:WAVE_SIGN_KEY_PASS \
    --out "$OUT_APK" \
    "$BUILD_DIR/AppDrawer-aligned.apk"

"$TOOLS_DIR/apksigner" verify --verbose "$OUT_APK"
echo "Built $OUT_APK"
