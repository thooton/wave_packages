#!/bin/bash
# tools/testing/db.sh "<sql>": sqlite3 query against a fresh copy of the phone's mmssms.db (root).
# The copy lives in build/testdb/ (ignored).
S="$(cd "$(dirname "$0")/../.." && pwd)/build/testdb"; mkdir -p "$S"
adb shell su -c "'cat /data/user_de/0/com.android.providers.telephony/databases/mmssms.db > /data/local/tmp/s.db; cat /data/user_de/0/com.android.providers.telephony/databases/mmssms.db-wal > /data/local/tmp/s.db-wal 2>/dev/null; chmod 644 /data/local/tmp/s.db*'" >/dev/null
rm -f "$S/s.db" "$S/s.db-wal"
adb pull /data/local/tmp/s.db "$S/s.db" >/dev/null 2>&1; adb pull /data/local/tmp/s.db-wal "$S/s.db-wal" >/dev/null 2>&1
adb shell rm -f /data/local/tmp/s.db /data/local/tmp/s.db-wal
sqlite3 ${DB_HEADER:+-header} "$S/s.db" "$1"
