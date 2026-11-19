ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
source "$ROOT/../tools/env.sh"
MODULE_ID=messages_improved
# Historical module id to remove during handover.
LEGACY_MODULE_IDS="messages_argon sms_orphan_fix xp3800_messaging"
