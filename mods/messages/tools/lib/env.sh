# Shared settings for tools/*.sh (sourced). Override any of these from the environment.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SDK="${ANDROID_SDK:-/opt/android-sdk}"
BT="${BUILD_TOOLS:-$(ls -d "$SDK"/build-tools/* | sort -V | tail -1)}"
ANDROID_JAR="${ANDROID_JAR:-$(ls -d "$SDK"/platforms/android-* | sort -V | tail -1)/android.jar}"
JADX="${JADX:-$ROOT/.tools/jadx/bin/jadx}"
MIN_API=27                                   # device: Android 8.1
MODULE_ID=xp3800_messaging                   # Magisk module used for deployment
LEGACY_MODULE_IDS="sms_orphan_fix"           # older module ids, removed on deploy
FIRMWARE="$ROOT/firmware"

# stock_apk <App>  -> path of the stock APK in firmware/, e.g. firmware/system/priv-app/BMms/BMms.apk
stock_apk() {
    local f
    f=$(find "$FIRMWARE/system" -path "*/$1/$1.apk" | head -1)
    [ -n "$f" ] || { echo "no stock APK for '$1' under firmware/system" >&2; return 1; }
    echo "$f"
}

# system_path <App> -> path on the device, e.g. system/priv-app/BMms/BMms.apk
system_path() { local f; f=$(stock_apk "$1"); echo "${f#"$FIRMWARE"/}"; }

all_apps() { ls "$ROOT/apps"; }
