# RCS on the phone: Android glue

The engine (`apps/BMms/java/org/wave/rcs/`, docs/rcs/engine.md) is pure Java. This is how it runs
inside Messages (`com.android.mms`) and how RCS messages reach the stock UI. Contract and
constraints: docs/rcs/design.md.

## Pieces

| File | Role |
|---|---|
| `com/android/mms/wave/RcsHost.java` | Owns the `RcsEngine`; implements `RcsPlatform` and `RcsListener`; config import; status file; send-result waiters; capability waits; network callback |
| `com/android/mms/transaction/WaveRcsStore.java` | Incoming messages -> telephony provider |
| `com/android/mms/transaction/WaveRcsSend.java` | Outgoing routing (SMS/MMS send hooks), SMS fallback, queued-SMS drain |
| `com/android/mms/wave/WaveHooks.java` | App start -> `RcsHost.onAppCreate` |
| `com/android/mms/wave/WaveRcsSettings.java` | Settings screen (below) |

Smali hooks (`# FEAT(rcs)`):
* `rcs/RcsMessageStatusService.smali` `onStartCommand`: `RcsHost.onStartCommand`. Our action
  `org.wave.rcs.HOST` (or a sticky restart's null intent) is handled by us and returns
  `START_STICKY`; every other intent goes to the stock code. This dormant, already-declared service
  keeps the process alive while RCS is on (the manifest can't change).
* `transaction/SmsSingleRecipientSender.smali` `sendMessage`: `WaveRcsSend.interceptSms` right
  before the row goes to the outbox / SmsManager.
* `transaction/TransactionService$ServiceHandler.smali` `processTransaction`:
  `WaveRcsSend.rcsReadyForMms` before `beginMmsConnectivity`.
* `transaction/SendTransaction.smali` `run`: `WaveRcsSend.interceptMms` after the SendReq is
  loaded; on success the transaction completes as sent.
* `ui/MessageUtils.smali` `getActivatedIccCardCount`: `RcsHost.activatedIccCardCount` reports 1
  while RCS is registered, so compose allows sending without a SIM.
* `transaction/SmsReceiverService.smali` (no-service branch): `WaveRcsSend.drainQueuedAsync`.
* `ui/MessagingPreferenceActivity.smali` `loadPrefs`, `ui/MessagingReportsPreferenceActivity.smali`
  `onCreate` (`# FEAT(rcs settings)`): settings entry and screen.

## Lifecycle
* App start (`WaveHooks`, never blocks): on the host thread, import a pending configuration,
  then if RCS is enabled start `RcsMessageStatusService` with our action.
* `onStartCommand`: (re)import, create/start the engine (or stop it when disabled); `cmd=restart`
  stops it first. A default-network callback calls `engine.onNetworkChanged()` (debounced 1.5 s).
* Status: `files/rcs_status.txt` (enabled, state, detail, msisdn) for
  `tools/rcs/device_status.sh`. Log tag `WaveRcs`; VERBOSE (full SIP/MSRP, message contents)
  only with `debug.wave.rcs.verbose=1`.

## Platform
* Own number: `TelephonyManager.getLine1Number()`, else `WaveSelf` fallback (docs/fixes/self-number), as E.164.
* IMSI/IMEI/MCC/MNC from TelephonyManager; EAP-AKA via `getIccAuthentication(USIM, EAP_AKA)`.
* State: SharedPreferences `wave_rcs` (`st.<key>`); files in `files/rcs/`.
* OTP (ACS provisioning over SMS): polls the SMS inbox for the pattern.
* Wake lock `WaveRcs` (partial, non-reference-counted, always with a timeout).
* `networkAvailable`: active network connected, or `debug.wave.rcs.testnet=1`.

## Incoming (`WaveRcsStore`)
* 1:1 text: `sms` inbox row in the sender's thread (unread), then the stock notification
  (`MessagingNotification.blockingUpdateNewMessageIndicator`).
* Group text and every file: a retrieved MMS (`RetrieveConf` persisted with `PduPersister`, From =
  sender, To = us, Cc = other participants, Message-ID `rcs-<id>`), filed in the thread of sender +
  other participants, which is the thread a group MMS with the same people uses. Files up to 2 MB
  inline, larger by file URI.

## Outgoing (`WaveRcsSend`)
Messages are composed and stored by the stock code; only the last step is rerouted, and every RCS
failure falls back to the stock SMS/MMS path, so nothing is lost (a message may arrive twice if
the network accepted part of it).
* SMS (1:1 text): RCS registered, the number is E.164, capabilities (cached or asked, max 5 s
  wait) say `chat`: row to outbox, `engine.sendText`, return "handled". The result fires the same
  `MESSAGE_SENT` PendingIntent the radio would (row to Sent, next queued message goes). On failure
  `fallbackSms` re-runs the stock send with RCS bypassed.
* MMS (group text, files, 1:1 with attachment): every recipient needs `chat` (+ `groupChat` for
  groups, + `fileTransferHttp` for files). When that holds (`rcsReadyForMms`, hooked into
  `TransactionService$ServiceHandler.processTransaction`, max 3 s capability wait) the transaction
  starts without requesting the MMS network, so it works with no SIM, no mobile data or Wi-Fi
  only. If RCS then fails, that attempt fails and the stock retry goes through MMS as usual (no
  second RCS attempt for that message).
  Files go first (one transfer each), then text + subject as one message; blocking on the
  transaction thread (60 s text, 5 min files). Success moves the PDU to Sent with `resp_st=128`;
  otherwise MMS sends it (in the same attempt when the MMS network was acquired, else on retry).
* Group conversation: the engine reuses the most recently active group chat with exactly those
  participants (`Chat.touch`), or creates one.
* No cellular service: stock queues SMS (`type=6`) until service returns. While RCS is
  registered, queued messages to RCS contacts are sent over RCS at once (on queueing and when RCS
  registers); others stay queued. Skipped when the cellular network is in service (then
  `interceptSms` handles them on the normal path).

## Settings screen
Settings > Advanced settings > **Chat (RCS) messages settings**, below the SMS and MMS entries.
The screen runs in the stock `MessagingReportsPreferenceActivity` (declared, same theme as the
SMS/MMS screens) started with `msg_type=wave_rcs`; the preferences are built in code.

| Item | What it does |
|---|---|
| RCS IM message (switch) | RCS on/off (`wave_rcs` pref `enabled`) |
| Send delivery report (switch) | RCS `delivered` IMDNs (pref `send_delivery_reports`, default on; applied live) |
| Status | Live: Online / Offline (switched off) / Connecting… / Network unavailable / Service not activated on network. (no account) / RCS Service is not available. (error, or an attempt failed and waits for its retry) |
| Refresh | Registers again from scratch (`RcsHost.check`), shows Refreshing… until the outcome |

There is no read-receipt setting: read receipts are never sent. UI text: the app's own strings
are reused by resource name (`rcs_immediately_message_*`, `pref_title_mms_send_delivery_report`,
`mms_send_delivery_report`, `status_label`, `rcs_online`/`rcs_offline`, `refreshing`,
`rcs_network_unavailable`, `service_not_activated`, `rcs_service_is_not_available`), so their
translations apply. Only "Chat (RCS) messages settings", "Refresh" and "Connecting…" are new
(English only; resources can't be rebuilt).

## Configuration (root)
Jibe (Bell) can't provision a non-GMS client (design.md), so an account comes from a
configuration XML of another device (engine.md "Importing a config from another phone"):

```
tools/rcs/import_config.sh donor-config.xml instance_id=urn:gsma:imei:<donor IMEI>
tools/rcs/device_status.sh                      # state, msisdn, recent log
tools/rcs/import_config.sh enabled=0            # RCS off
tools/rcs/import_config.sh clear=1 enabled=0    # forget account, caches, groups
```

The files are written into the app's private `files/rcs_import/` (only root can), picked up and
deleted by the app. Other keys: any engine state key (`pcscf=host:port`, `force_pager=1`, ...),
`reprovision=1`.

## Testing on the phone
Mock network on the host (`python3 -m tools.rcs.mock --no-otp`), then:

```
tools/rcs/testnet.sh on      # adb reverse 5060/8080/2855 + debug.wave.rcs.testnet=1 + self number
tools/rcs/import_config.sh <(curl -s 'http://127.0.0.1:8080/config.xml?msisdn=%2B15550002') enabled=1
tools/rcs/device_suite.sh    # 13 checks, drives the stock UI
```

`device_suite.sh`: incoming 1:1 text (SMS row, only `delivered` IMDN back), incoming group text
(group thread, sender), incoming file (MMS image), outgoing text via the UI (Sent, no
Disposition-Notification), group reply in the group thread, picture as file transfer, non-RCS
number stays SMS, RCS failure -> SMS fallback -> drained over RCS, no crash/ANR.

## Limits
* Real network: needs an imported configuration; untested against Jibe itself (no account here).
* No RCS indicator in conversations (the UI is unchanged on purpose); RCS messages look like
  SMS/MMS. Only the settings screen above was added.
* An account can only be added with root (`import_config.sh`), not from the settings screen.
* Group management from the phone (add/remove/leave/subject) is not supported (engine).
