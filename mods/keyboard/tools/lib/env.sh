ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
source "$ROOT/../tools/env.sh"
MODULE_ID=keyboard_improved
LEGACY_MODULE_IDS=""
# XT9IME is a plain system app, not priv-app.
system_path() { printf 'system/app/%s/%s.apk\n' "$1" "$1"; }
# The stock XT9IME.apk the smali tree was decoded from (firmware 11.20.00); the installer
# refuses any other.
STOCK_SHA256=$(sed -n 's/^stock_sha256=//p' "$ROOT/module/stock.sha256" 2>/dev/null || true)
