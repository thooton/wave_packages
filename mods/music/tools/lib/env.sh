# Shared settings for tools/*.sh (sourced). Override any of these from the environment.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SDK="${ANDROID_SDK:-/opt/android-sdk}"
BT="${BUILD_TOOLS:-$(ls -d "$SDK"/build-tools/* | sort -V | tail -1)}"
ANDROID_JAR="${ANDROID_JAR:-$(ls -d "$SDK"/platforms/android-* | sort -V | tail -1)/android.jar}"
JADX="${JADX:-$ROOT/.tools/jadx/bin/jadx}"
MIN_API=27                                   # device: Android 8.1
MODULE_ID=music_argon                     # Magisk module used for deployment
FIRMWARE="$ROOT/firmware"

# stock_apk <App>  -> path of the stock APK in firmware/, e.g. firmware/system/priv-app/BMusic/BMusic.apk
stock_apk() {
    local f
    f=$(find "$FIRMWARE/system" -path "*/$1/$1.apk" | head -1)
    [ -n "$f" ] || { echo "no stock APK for '$1' under firmware/system" >&2; return 1; }
    echo "$f"
}

# system_path <App> -> path on the device, e.g. system/priv-app/BMusic/BMusic.apk
system_path() { local f; f=$(stock_apk "$1"); echo "${f#"$FIRMWARE"/}"; }

all_apps() { ls "$ROOT/apps"; }

firmware_fingerprint() {
    local fp
    fp=$(sed -n 's/^ro\.build\.fingerprint=//p' "$FIRMWARE/system/build.prop")
    [ -n "$fp" ] || { echo 'Missing stock firmware fingerprint; run tools/pull_firmware.sh' >&2; return 1; }
    echo "$fp"
}
