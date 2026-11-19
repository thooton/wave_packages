# Status: Messages Improved (Sonim XP3800 messaging modernization)

State at the end of the modernization work. Read `/AGENTS.md` first; feature docs are linked from
`/README.md`; testing is in `docs/testing.md`.

## The asks and where they stand

| Ask | Status | Doc |
|---|---|---|
| Group MMS shown first as 1:1 "Downloading...", then moved | Done, device-verified | docs/fixes/mms-receive-placeholder, docs/fixes/self-number |
| Group chats capped at 10 recipients | Done, device-verified (12 recipients sent) | docs/fixes/recipient-limit |
| RCS, receipts: never send/request read receipts; send but don't request delivery receipts | Done; verified against the mock network on the phone | docs/rcs/*, docs/fixes/receipts |
| "...and more": MMS acks / Report-Allowed, crash fixes | Done, device-verified | docs/fixes/mms-ack, docs/fixes/mms-no-subscription |
| Faster receiving (MMS especially) | Done, measured | docs/fixes/performance |
| Faster group MMS history, no Chromium in message rows | Done, device-verified | docs/fixes/conversation-load |
| RCS settings and status in Settings > Advanced settings | Done, device-verified | docs/rcs/android.md "Settings screen" |
| UI unchanged | Kept: no layout/resource changes; RCS messages look like SMS/MMS; the one addition is the RCS settings screen, in the stock settings style and wording | |

## Verification (last runs, final build)
* `tools/testing/mms_suite.sh`: 8/8 (MMS receive, threads, acks, no crash).
* `tools/rcs/device_suite.sh`: 13/13 (RCS on the phone against the mock, UI-driven sends).
* `tools/rcs/run_tests.sh all`: engine unit 16, integration 28 (incl. the new "latest group" check), TLS 3: all pass.
* Manual: 12-recipient group MMS (test network on and off), SMS status-report flag, M-Send.req
  report flags, injected M-Delivery.ind dropped, one notification per MMS.

## Open ends (cannot be closed from here)
* **RCS on the real network.** Bell's RCS is Google Jibe, whose provisioning requires a DroidGuard
  token only Google Play services can produce; this phone has none. The engine is standards-based
  and works with an imported configuration XML from another phone that signed up for RCS
  (docs/rcs/engine.md "Importing a config from another phone", docs/rcs/android.md
  "Configuration"). Untested against Jibe itself: no account was available. Caveat: one active
  client per number, so RCS must be off on the donor.
* **Real radio paths** (SIM, carrier MMSC, MMS PDN) weren't available: MMS was tested against the
  fake MMSC; the MMS network linger (performance fix 4) can only work with a SIM.
* MMSC limits: Bell's MMSC may refuse very large MMS groups (carrier config says 20 recipients).

## Device notes
* Serial `2a29a58`, Android 8.1, no SIM, Magisk root. The Magisk Shell root grant was time-limited
  and kept expiring; it was made permanent (`policies.until=0` for uid 2000).
* The device clock is 1970: never compare device timestamps with host time.
* After a deploy the patched APKs run unoptimized until `module/service.sh` compiles them
  (~90 s after boot).

## Where things are
* Java: `apps/BMms/java/` (table in docs/code-map.md "Our code"), smali hooks marked
  `# FIX(...)` / `# FEAT(...)` / `# PERF(...)`.
* Tools: `tools/build.sh`, `tools/deploy.sh`, `tools/package.sh`; tests under `tools/testing/`
  and `tools/rcs/`.
