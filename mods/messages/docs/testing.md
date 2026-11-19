# Testing on the phone

These procedures assume an authorized, recoverable test XP3800 with the
signed module already approved for device testing. They are not suitable
for a personal phone's normal SMS/RCS data. Build and run host checks from
`mods/messages/` first (`tools/test.sh`); see [the shared mod guide](../../AGENTS.md)
for packaging and the verification boundary. For simulated network tests,
use a test phone without a SIM or carrier connection. The `debug.*` switches
reset on reboot.

## Prerequisites
* Magisk root granted for the test shell. Confirm the selected device and its
  permission before starting. Do not change root policy for normal use.
* `adb shell svc power stayon true` and `adb shell wm dismiss-keyguard` before UI-driven tests
  (240x320, no touchscreen: `input keyevent` / `input tap`).
* `tools/testing/push.sh`: builds and pushes `/data/local/tmp/smsinject.dex` (SmsInject,
  WapPushInject, ProviderHammer).
* Shell provider writes need `adb shell appops set com.android.shell WRITE_SMS allow`.

## MMS
* `python3 tools/testing/fake_mmsc.py`: fake MMSC on :8098 (OMA MMS 1.2 PDUs). Control API:
  `POST /ctl/new {from,to,cc,text,subject,image,delay,fail}`, `GET /ctl/log` (everything the phone
  posted: M-Send.req with recipients and report flags, NotifyResp/Ack), `GET /ctl/reset`.
* `tools/testing/testnet.sh on|off`: adb reverse :8098, `debug.wave.mms.testnet=1` (skip the
  carrier MMS APN), `debug.wave.mms.mmsc=http://127.0.0.1:8098/mmsc`.
* `tools/testing/mms_inject.sh <from> <to,...> <text>`: creates a message at the MMSC and delivers
  its WAP push (prints `MMSC_ID`).
* `tools/testing/mms_suite.sh`: receive regression suite (8 checks, see its header). Spoofs our
  number with `debug.wave.self_number=+15550002`.
* `tools/testing/mms_watch.sh <s>`: samples pdu rows / notification twice a second.
* `tools/testing/mms_latency.sh [n] [warm|cold]`, `tools/testing/mms_trace.sh`,
  `tools/testing/trace_top.py`: latency and method traces (docs/fixes/performance).

## Conversation history

* `tools/testing/conversation_index_test.py [--db SNAPSHOT]`: index triggers, paging, eligibility
  and address detection; the optional database is opened read-only and copied into memory.
* `tools/testing/recipient_cache_test.py`: batched canonical-address reads, ordering and cache races.
* `tools/testing/inbox_filter_test.py [--db SNAPSHOT]`: stock-equivalent inbox selection with
  and without the optional MMS thread index.
* `tools/testing/inbox_open.sh [samples]`: cold inbox window, contact map, query and first
  nonempty list layout timings. The phone must be unlocked. The script resets its log flags.
* `tools/testing/conversation_open.sh THREAD [--cold]`: launch markers, row binds, PDU loads and
  WebView startup. Set `adb shell setprop log.tag.WaveLaunch DEBUG` before a cold launch to time
  app init, conversation view setup, history, and the first nonempty list layout. `rows_ready` is
  pre-draw, not GPU presentation or completion of the media loader. Clear the property after testing.
  Use `log.tag.Mms=VERBOSE` separately for stock markers; it changes the startup workload.
  `trace_top.py` accepts `--thread=main` and ART streaming traces.

## SMS
* `SmsInject <from> <body> [count] [delayMs]` (root `app_process`, see `push.sh`): a real
  SMS-DELIVER through the radio's broadcast path.
* `race.sh`, `ProviderHammer`, `dumpdb.sh`, `orphans.py`: orphaned-thread race
  (docs/fixes/sms-orphaned-threads).

## RCS
* `python3 -m tools.rcs.mock --no-otp`: mock RCS network (ACS, SIP, MSRP, FT, control API on
  127.0.0.1:8099); host tests `tools/rcs/run_tests.sh`.
* `tools/rcs/testnet.sh on|off`, `tools/rcs/import_config.sh`, `tools/rcs/device_status.sh`,
  `tools/rcs/device_suite.sh`: docs/rcs/android.md.

## Helpers
* `tools/testing/db.sh "<sql>"`: sqlite3 on a fresh copy of the phone's `mmssms.db` (root; copy in
  `build/testdb/`).
* `tools/testing/ui_dump.sh`: visible UI nodes (text, bounds) of the current screen.

## Test numbers
`+155500xx` (MMS suite), `+1555777000x` (RCS virtual users), `+1555888xxxx` (non-RCS / large
groups). 9-digit numbers like `+15550010` count as short codes, which compose refuses in group
messages.

## Cleaning up the phone
```
tools/testing/testnet.sh off; tools/rcs/testnet.sh off
adb shell su -c "'setprop debug.wave.self_number \"\"'"
tools/rcs/import_config.sh clear=1 enabled=0            # if a test RCS config was imported
# delete test threads (Messages UI or content delete on content://mms-sms/conversations/<id>)
adb shell appops set com.android.shell WRITE_SMS default
adb shell rm -f /data/local/tmp/smsinject.dex /data/local/tmp/race.sh /sdcard/ui.xml
```
