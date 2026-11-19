# Sourced with ROOT set to the mod's directory.
set -euo pipefail
SHARED=$(cd "$ROOT/../tools" && pwd)
SDK=${ANDROID_SDK:-${ANDROID_HOME:-/opt/android-sdk}}
BT=${BUILD_TOOLS:-$SDK/build-tools/35.0.1}
ANDROID_JAR=${ANDROID_JAR:-$SDK/platforms/android-35/android.jar}
JADX=${JADX:-$SHARED/.tools/jadx/bin/jadx}
PATH="$SHARED/.tools/bin:$PATH"
MIN_API=27
FIRMWARE="$ROOT/../firmware"
all_apps() { ls "$ROOT/apps"; }
system_path() { printf 'system/priv-app/%s/%s.apk\n' "$1" "$1"; }
stock_apk() { printf '%s/%s\n' "$FIRMWARE" "$(system_path "$1")"; }
firmware_fingerprint() { sed -n 's/^ro\.build\.fingerprint=//p' "$FIRMWARE/system/build.prop" |head -1; }
