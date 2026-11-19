#!/bin/bash
# tools/rcs/device_suite.sh: end-to-end RCS regression suite on the phone against the mock network.
# Needs: mock running (python3 -m tools.rcs.mock --no-otp), Messages Improved installed with an RCS config
# imported from the mock (tools/rcs/import_config.sh <(curl -s 'http://127.0.0.1:8080/config.xml?msisdn=%2B15550002') enabled=1),
# root. Turns tools/rcs/testnet.sh on. Uses virtual users +1555777000{1,2,3} and non-RCS +15558880001;
# deletes their threads before and after. Drives the stock UI for sending (keys/taps, 240x320).
set -uo pipefail
cd "$(dirname "$0")/../.."
API=http://127.0.0.1:8099
SELF=+15550002; U1=+15557770001; U2=+15557770002; U3=+15557770003; NR=+15558880001
pass=0; fail=0
ok()  { echo "PASS $*"; pass=$((pass+1)); }
bad() { echo "FAIL $*"; fail=$((fail+1)); }
db()  { tools/testing/db.sh "$1"; }
ui()  { tools/testing/ui_dump.sh; }
api() { local m=$1 p=$2; shift 2; curl -sf -X "$m" "$API$p" ${1:+-d "$1"}; }
rlog() { adb logcat -d -s WaveRcs:I; }
wait_log() { for _ in $(seq "${2:-40}"); do rlog | grep -q "$1" && return 0; sleep 0.5; done; return 1; }
tag=$(head -c 64 /dev/urandom | tr -dc 'a-z' | head -c 6)

wake() { adb shell input keyevent KEYCODE_WAKEUP; adb shell svc power stayon true; adb shell wm dismiss-keyguard; }
leave() { for k in BACK BACK BACK; do adb shell input keyevent KEYCODE_$k; done; sleep 1; }
menu_send() {   # open the options menu and tap "Send"
  adb shell input keyevent KEYCODE_MENU
  local b=""
  for _ in $(seq 10); do b=$(ui | grep '"Send"' | grep -oE '\[[0-9]+,[0-9]+\]' | head -1); [ -n "$b" ] && break; sleep 0.5; done
  [ -n "$b" ] || return 1
  set -- $(echo "$b" | tr -d '[]' | tr ',' ' ')
  adb shell input tap $(( $1 + 40 )) $(( $2 + 8 ))
}
send_to() {     # send_to <number> <text>: new message via SENDTO
  leave
  adb shell "am start -f 0x10008000 -a android.intent.action.SENDTO -d 'smsto:$1' --es sms_body '$2'" >/dev/null
  for _ in $(seq 20); do ui | grep -q "$2" && break; sleep 0.5; done
  menu_send
}
send_in_thread() {  # send_in_thread <thread_id> <letters-only text>
  leave
  adb shell am start -f 0x10008000 -a android.intent.action.VIEW -d content://mms-sms/conversations/$1 -n com.android.mms/.ui.ComposeMessageActivity >/dev/null
  for _ in $(seq 20); do ui | grep -q 'Type message' && break; sleep 0.5; done
  adb shell input keyevent KEYCODE_DPAD_DOWN; adb shell input text "$2"
  for _ in $(seq 10); do ui | grep -q "$2" && break; sleep 0.5; done
  menu_send
}
send_pic() {    # send_pic <thread_id>
  leave
  adb shell am start -f 0x10008000 -a android.intent.action.SEND -t image/png --eu android.intent.extra.STREAM \
      file:///sdcard/Download/wave_test.png --el thread_id $1 -n com.android.mms/.ui.ComposeMessageActivity >/dev/null
  for _ in $(seq 20); do ui | grep -q 'KB"' && break; sleep 0.5; done
  menu_send
}
thread_of() {   # thread id whose recipients are exactly the given numbers (sorted, comma-separated)
  db "select t._id from threads t where (select group_concat(a, ',') from (select replace(replace(replace(replace(c.address,' ',''),'-',''),'(',''),')','') a from canonical_addresses c where (' '||t.recipient_ids||' ') like ('% '||c._id||' %') order by c.address))='$1' limit 1;"
}
cleanup() {
  for t in $(db "select t._id from threads t join canonical_addresses c on (' '||t.recipient_ids||' ') like ('% '||c._id||' %') where replace(replace(replace(replace(c.address,' ',''),'-',''),'(',''),')','') like '%555777000%' or replace(replace(replace(replace(c.address,' ',''),'-',''),'(',''),')','') like '%5558880001' group by t._id;"); do
    adb shell content delete --uri content://mms-sms/conversations/$t >/dev/null
  done
}

api GET /api/state >/dev/null || { echo "RCS mock not running"; exit 2; }
wake
adb shell appops set com.android.shell WRITE_SMS allow
tools/rcs/testnet.sh on >/dev/null
for _ in $(seq 60); do api GET /api/registrations | grep -q "$SELF" && break; sleep 1; done
api GET /api/registrations | grep -q "$SELF" || { echo "phone not registered at the mock"; exit 2; }
api POST /api/reset >/dev/null
for u in $U1 $U2 $U3; do api POST /api/users "{\"number\":\"$u\"}" >/dev/null; done
python3 - <<'EOF'
import zlib, struct
w = h = 64
raw = b''.join(b'\x00' + b''.join(bytes([30, (x * 4) % 256, (y * 4) % 256]) for x in range(w)) for y in range(h))
ch = lambda t, d: struct.pack('>I', len(d)) + t + d + struct.pack('>I', zlib.crc32(t + d) & 0xffffffff)
open('build/wave_test.png', 'wb').write(b'\x89PNG\r\n\x1a\n' + ch(b'IHDR', struct.pack('>IIBBBBB', w, h, 8, 2, 0, 0, 0))
                                         + ch(b'IDAT', zlib.compress(raw)) + ch(b'IEND', b''))
EOF
adb push build/wave_test.png /sdcard/Download/wave_test.png >/dev/null
cleanup
adb logcat -c

# 1 incoming 1:1 text -> sms inbox in the sender's thread, delivery IMDN only
api POST /api/users/${U1#+}/send "{\"text\":\"in-$tag\"}" >/dev/null
wait_log "stored chat message" || true
r=$(db "select address||'|'||type||'|'||read from sms where body='in-$tag';")
[ "$r" = "$U1|1|0" ] && ok "1 incoming chat text stored as unread SMS ($r)" || bad "1 incoming chat text: '$r'"
sleep 1
imdn=$(api GET "/api/users/${U1#+}/received?kind=imdn" | python3 -c 'import json,sys; print(sorted({(m.get("imdn") or {}).get("status","?") for m in json.load(sys.stdin)}))')
[ "$imdn" = "['delivered']" ] && ok "1b only 'delivered' IMDN sent back" || bad "1b IMDNs sent: $imdn"

# 2 incoming group text -> MMS in the group thread
g=$(api POST /api/groups "{\"creator\":\"$U1\",\"participants\":[\"$SELF\",\"$U2\",\"$U3\"],\"subject\":\"s-$tag\",\"invite_device\":true}" | python3 -c 'import json,sys; print(json.load(sys.stdin)["id"])')
wait_log "group .*participants" || true
api POST /api/groups/$g/message "{\"from\":\"$U2\",\"text\":\"grp-$tag\"}" >/dev/null
wait_log "stored group text" || true
gt=$(thread_of "$U1,$U2,$U3")
r=$(db "select m.thread_id from part p join pdu m on m._id=p.mid where p.text='grp-$tag';")
[ -n "$gt" ] && [ "$r" = "$gt" ] && ok "2 group text in group thread $gt" || bad "2 group text thread '$r' (group thread '$gt')"
from=$(db "select a.address from part p join addr a on a.msg_id=p.mid where p.text='grp-$tag' and a.type=137;")
[ "$from" = "$U2" ] && ok "2b group message sender $U2" || bad "2b sender '$from'"

# 3 incoming file -> MMS with the image in the sender's thread
api POST /api/users/${U1#+}/send "{\"file\":{\"name\":\"in $tag.png\",\"type\":\"image/png\",\"path\":\"$PWD/build/wave_test.png\"}}" >/dev/null
wait_log "stored file" || true
t1=$(thread_of "$U1")
r=$(db "select m.thread_id||'|'||p.ct from part p join pdu m on m._id=p.mid where p.cl='in_$tag.png';")
[ "$r" = "$t1|image/png" ] && ok "3 incoming file stored as MMS image in thread $t1" || bad "3 incoming file: '$r' (thread $t1)"

# 4 outgoing 1:1 text through the UI -> RCS, row in Sent, no disposition requests
adb logcat -c
send_to $U1 "out-$tag"
wait_log "send .* ok" 60 || true
sleep 1
r=$(db "select type from sms where body='out-$tag';")
[ "$r" = "2" ] && ok "4 outgoing text sent over RCS (Sent box)" || bad "4 outgoing text type '$r'"
disp=$(api GET "/api/users/${U1#+}/received?kind=text" | python3 -c '
import json,sys
ms=[m for m in json.load(sys.stdin) if m.get("text")=="out-'$tag'"]
print(len(ms), [h for m in ms for h in (m.get("cpim") or {}).get("headers",[]) if "Disposition" in h[0]])')
[ "$disp" = "1 []" ] && ok "4b received once, no Disposition-Notification" || bad "4b at the mock: $disp"

# 5 outgoing group text in the group thread -> RCS group chat, MMS row in Sent
adb logcat -c
send_in_thread "$gt" "grpout$tag"
wait_log "send .* ok" 60 || true
sleep 1
r=$(db "select m.msg_box from part p join pdu m on m._id=p.mid where p.text like '%grpout$tag%';")
got=$(api GET /api/groups/$g/messages | grep -c "grpout$tag")
[ "$r" = "2" ] && [ "$got" -ge 1 ] && ok "5 group reply sent over RCS group chat" || bad "5 group reply msg_box '$r', at mock $got"

# 6 outgoing picture 1:1 -> RCS file transfer
adb logcat -c
send_pic "$t1"
wait_log "send .* ok" 80 || true
sleep 1
up=$(api GET /api/files | python3 -c 'import json,sys; print(sum(1 for f in json.load(sys.stdin) if (f.get("uploader") or "").lstrip("+")=="'${SELF#+}'"))')
box=$(db "select msg_box from pdu where thread_id=$t1 and m_type=128 order by _id desc limit 1;")
[ "$up" -ge 1 ] && [ "$box" = "2" ] && ok "6 picture sent as RCS file transfer" || bad "6 picture: uploads $up, msg_box '$box'"

# 7 non-RCS number: not sent over RCS (stock SMS path; queued on this SIM-less phone)
adb logcat -c
send_to $NR "nonrcs-$tag"
wait_log "caps $NR" 30 || true
sleep 3
r=$(db "select type from sms where body='nonrcs-$tag';")
rlog | grep -q "$NR.*-> rcs\|sms content://sms/.* -> rcs" && bad "7 non-RCS number went to RCS" || ok "7 non-RCS number stays SMS (type $r)"
adb shell "content delete --uri content://sms --where \"body='nonrcs-$tag'\"" >/dev/null

# 8 RCS failure -> SMS fallback (then queued / drained over RCS again on this SIM-less phone)
api POST /api/events/fail-next '{"target":"sip","method":"INVITE","count":1,"code":500}' >/dev/null
api POST /api/events/fail-next '{"target":"sip","method":"MESSAGE","count":1,"code":500}' >/dev/null
for s in $(api GET /api/sessions | python3 -c 'import json,sys; [print(x["id"]) for x in json.load(sys.stdin) if x["peer"]=="'$U1'"]'); do api POST /api/sessions/$s/bye >/dev/null; done
adb logcat -c
send_to $U1 "fb-$tag"
wait_log "as SMS" 60 && ok "8 RCS failure falls back to SMS" || bad "8 no SMS fallback"
wait_log "queued sms .* -> rcs" 20 || true
sleep 2
r=$(db "select type from sms where body='fb-$tag';")
[ "$r" = "2" ] && ok "8b queued message delivered over RCS afterwards" || bad "8b fallback message type '$r'"
api DELETE /api/events/chaos >/dev/null 2>&1 || true

# 9 no crash
c=$(adb logcat -d | grep -cE 'FATAL EXCEPTION|ANR in com.android.mms')
[ "$c" = 0 ] && ok "9 no crash/ANR" || bad "9 $c crash/ANR lines"

leave
cleanup
adb shell rm -f /sdcard/Download/wave_test.png /sdcard/ui.xml
adb shell appops set com.android.shell WRITE_SMS default
echo "== $pass passed, $fail failed"
[ $fail = 0 ]
