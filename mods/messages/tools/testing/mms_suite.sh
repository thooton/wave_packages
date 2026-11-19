#!/bin/bash
# tools/testing/mms_suite.sh: end-to-end MMS receive regression suite (phone without SIM).
# Needs: fake MMSC running (python3 tools/testing/fake_mmsc.py), tools/testing/push.sh done,
# Messages Improved build installed. Turns the test network on, spoofs own number +15550002,
# deletes previous test threads (numbers +1555000xx only), then checks:
#   1 group MMS, slow download: nothing visible while downloading, lands in group thread
#   2 group MMS with 3 others -> thread of 3
#   3 1:1 MMS -> sender thread
#   4 failed download -> placeholder revealed in sender thread (unread)
#   5 M-NotifyResp.ind sent with X-Mms-Report-Allowed
#   6 no crash
set -uo pipefail
cd "$(dirname "$0")/../.."
S=.oak/tmp/suite; mkdir -p $S
MMSC=http://127.0.0.1:8098
pass=0; fail=0
ok()   { echo "PASS $*"; pass=$((pass+1)); }
bad()  { echo "FAIL $*"; fail=$((fail+1)); }
db() {  # sqlite query against a fresh copy of the provider db
  adb shell su -c "'cat /data/user_de/0/com.android.providers.telephony/databases/mmssms.db > /data/local/tmp/s.db; cat /data/user_de/0/com.android.providers.telephony/databases/mmssms.db-wal > /data/local/tmp/s.db-wal 2>/dev/null; chmod 644 /data/local/tmp/s.db*'" >/dev/null
  adb pull /data/local/tmp/s.db $S/s.db >/dev/null 2>&1; adb pull /data/local/tmp/s.db-wal $S/s.db-wal >/dev/null 2>&1
  sqlite3 $S/s.db "$1"
}
# thread recipients (sorted numbers) of a message identified by its text
thread_of() {
  db "select group_concat(address, ',') from (select c.address from part p join pdu m on m._id=p.mid join threads t on t._id=m.thread_id join canonical_addresses c on (' '||t.recipient_ids||' ') like ('% '||c._id||' %') where p.text='$1' order by c.address);"
}
curl -sf $MMSC/ctl/reset >/dev/null || { echo "fake MMSC not running"; exit 2; }
tools/testing/testnet.sh on >/dev/null
adb shell su -c "'setprop debug.wave.self_number +15550002'"
adb shell appops set com.android.shell WRITE_SMS allow
for t in $(db "select t._id from threads t join canonical_addresses c on (' '||t.recipient_ids||' ') like ('% '||c._id||' %') where c.address like '+155500%' group by t._id;"); do
  adb shell content delete --uri content://mms-sms/conversations/$t >/dev/null
done
adb logcat -c
tag=$RANDOM

# 1: slow group download
id1=$(tools/testing/mms_inject.sh +15550001 +15550002,+15550003 "g1-$tag" '"delay": 5' | sed -n 's/^MMSC_ID=//p')
sleep 2
vis=$(db "select ifnull(thread_id,'none')||'/seen='||seen from pdu where m_type=130 and ct_l like '%/$id1';")
[ "$vis" = "none/seen=1" ] || [ "$vis" = "0/seen=1" ] && ok "1a held while downloading (thread none, seen)" || bad "1a during download: '$vis'"
# 2, 3, 4
tools/testing/mms_inject.sh +15550004 +15550002,+15550005,+15550006 "g2-$tag" >/dev/null
tools/testing/mms_inject.sh +15550007 +15550002 "p3-$tag" >/dev/null
id4=$(tools/testing/mms_inject.sh +15550008 +15550002,+15550009 "f4-$tag" '"fail": true' | sed -n 's/^MMSC_ID=//p')
for i in $(seq 30); do
  n=$(curl -s $MMSC/ctl/log | python3 -c 'import json,sys; print(sum(1 for e in json.load(sys.stdin) if e["event"]=="fetch"))')
  [ "$n" -ge 4 ] && break; sleep 1
done
sleep 3
r=$(thread_of "g1-$tag"); [ "$r" = "+15550001,+15550003" ] && ok "1b group thread {$r}" || bad "1b group thread is {$r}"
r=$(thread_of "g2-$tag"); [ "$r" = "+15550004,+15550005,+15550006" ] && ok "2 group thread {$r}" || bad "2 group thread is {$r}"
r=$(thread_of "p3-$tag"); [ "$r" = "+15550007" ] && ok "3 1:1 thread {$r}" || bad "3 1:1 thread is {$r}"
r=$(db "select c.address||' read='||m.read||' count='||t.message_count from pdu m join threads t on t._id=m.thread_id join canonical_addresses c on c._id=t.recipient_ids where m.m_type=130 and m.ct_l like '%/$id4';")
[ "$r" = "+15550008 read=0 count=1" ] && ok "4 failed download revealed: $r" || bad "4 failed download: '$r'"
r=$(db "select count(*) from threads t where message_count=0 and exists (select 1 from pdu where thread_id=t._id);")
[ "$r" = 0 ] && ok "thread counts consistent" || bad "$r threads with message_count=0"
r=$(curl -s $MMSC/ctl/log | python3 -c '
import json,sys
L=[e["pdu"] for e in json.load(sys.stdin) if e["event"]=="post" and e["pdu"].get("message_type") in ("notifyresp-ind","acknowledge-ind")]
print(len(L), sorted(set(str(p.get("report_allowed")) for p in L)))')
case "$r" in "0 "*) bad "5 no NotifyResp/Ack posted";; *"['128']") ok "5 acks sent with Report-Allowed=yes ($r)";; *) bad "5 acks: $r";; esac
c=$(adb logcat -d | grep -cE 'FATAL EXCEPTION|ANR in com.android.mms')
[ "$c" = 0 ] && ok "6 no crash/ANR" || bad "6 crash/ANR in log"
echo "== $pass passed, $fail failed"
[ $fail = 0 ]
