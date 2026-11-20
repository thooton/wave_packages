#!/usr/bin/env bash
set -euo pipefail
sdk=${ANDROID_SDK_ROOT:-${ANDROID_HOME:-/opt/android-sdk}}
export ANDROID_HOME="$sdk"
export PATH="$sdk/build-tools/${ANDROID_BUILD_TOOLS:-35.0.1}:$PATH"
# Disable developer credentials even on a local machine with Delta configured.
export XDG_CONFIG_HOME=$(mktemp -d)
trap 'rm -rf "$XDG_CONFIG_HOME"' EXIT
unset DELTA_SERVER DELTA_TOKEN
printf '{}\n' >"$XDG_CONFIG_HOME/wave-no-login.json"
read -ra apps <<<"$(python3 .github/packages.py gradle-apps)"
# Optional explicit package paths for reproducing selected packages locally.
if (( $# )); then
    for app; do
        [[ " ${apps[*]} " == *" $app "* ]] || { printf 'Not an active Gradle release app: %s\n' "$app" >&2; exit 2; }
    done
    apps=("$@")
fi
tasks=(:common:core:selfTest)
for app in "${apps[@]}"; do
    [[ ! -f $app/android/core/build.gradle && ! -f $app/core/build.gradle ]] || tasks+=(":$app:core:selfTest")
    tasks+=(":$app:app:assembleRelease")
done
./gradlew --no-daemon -Pdelta.center="$XDG_CONFIG_HOME/wave-no-login.json" "${tasks[@]}"
rm -rf apks; mkdir apks
files=()
for app in "${apps[@]}"; do
    python3 .github/packages.py check-bundled "$app"
    build="$app/android/app/build/outputs/apk/release/app-release.apk"
    if [[ "$app" == dictionary ]]; then build="$app/app/build/outputs/apk/release/app-release.apk"; fi
    cp "$build" "apks/$app.apk"
    files+=("apks/$app.apk")
done
# Each APK needs its own verifier JVM, but files are independent. Limit the
# batch to four so a runner doesn't start a JVM for every package at once.
printf '%s\0' "${files[@]}" | xargs -0 -n1 -P4 bash -c '
    apksigner verify --min-sdk-version 27 "$1" || { echo "$1: APK signature check failed" >&2; exit 1; }
' _
for app in "${apps[@]}"; do
    if [[ -f $app/wave/package.json ]]; then
        python3 .github/release_package.py "$app" "apks/$app.apk" --check
    fi
done
./launcher/build.sh
cp launcher/AppDrawer.apk apks/
python3 .github/release_package.py launcher apks/AppDrawer.apk --check
python3 .github/manifest.py apks "$(command -v aapt2)"
# Say which key signed each APK. A public key is reported, not failed: only a
# build that is published needs the release key (the gates refuse the rest).
python3 signing/check_signer.py --report apks/*.apk
