# RCS on the phone: Android glue

The engine (`apps/BMms/java/org/argon/rcs/`, docs/rcs/engine.md) is pure Java. This is how it runs
inside Messages (`com.android.mms`) and how RCS messages reach the stock UI. Contract and
constraints: docs/rcs/design.md.

## Pieces

| File | Role |
|---|---|
| `com/android/mms/argon/RcsHost.java` | Owns the `RcsEngine`; implements `RcsPlatform` and `RcsListener`; config import; status file; send-result waiters; capability waits; network callback |
| `com/android/mms/transaction/ArgonRcsStore.java` | Incoming messages -> telephony provider |
| `com/android/mms/transaction/ArgonRcsSend.java` | Outgoing routing (SMS/MMS send hooks), SMS fallback, queued-SMS drain |
| `com/android/mms/argon/ArgonHooks.java` | App start -> `RcsHost.onAppCreate` |

Smali hooks (`# FEAT(rcs)`):
* `rcs/RcsMessageStatusService.smali` `onStartCommand`: `RcsHost.onStartCommand`. Our action
  `org.argon.rcs.HOST` (or a sticky restart's null intent) is handled by us and returns
  `START_STICKY`; every other intent goes to the stock code. This dormant, already-declared service
  keeps the process alive while RCS is on (the manifest can't change).
* `transaction/SmsSingleRecipientSender.smali` `sendMessage`: `ArgonRcsSend.interceptSms` right
  before the row goes to the outbox / SmsManager.
* `transaction/SendTransaction.smali` `run`: `ArgonRcsSend.interceptMms` after the SendReq is
  loaded; on success the transaction completes as sent.
* `ui/MessageUtils.smali` `getActivatedIccCardCount`: `RcsHost.activatedIccCardCount` reports 1
  while RCS is registered, so compose allows sending without a SIM.
* `transaction/SmsReceiverService.smali` (no-service branch): `ArgonRcsSend.drainQueuedAsync`.

## Lifecycle
* App start (`ArgonHooks`, never blocks): on the host thread, import a pending configuration,
  then if RCS is enabled start `RcsMessageStatusService` with our action.
* `onStartCommand`: (re)import, create/start the engine (or stop it when disabled); `cmd=restart`
  stops it first. A default-network callback calls `engine.onNetworkChanged()` (debounced 1.5 s).
* Status: `files/rcs_status.txt` (enabled, state, detail, msisdn) for
  `tools/rcs/device_status.sh`. Log tag `ArgonRcs`; VERBOSE (full SIP/MSRP, message contents)
  only with `debug.argon.rcs.verbose=1`.

## Platform
* Own number: `TelephonyManager.getLine1Number()`, else `ArgonSelf` fallback (docs/fixes/self-number), as E.164.
* IMSI/IMEI/MCC/MNC from TelephonyManager; EAP-AKA via `getIccAuthentication(USIM, EAP_AKA)`.
* State: SharedPreferences `argon_rcs` (`st.<key>`); files in `files/rcs/`.
* OTP (ACS provisioning over SMS): polls the SMS inbox for the pattern.
* Wake lock `ArgonRcs` (partial, non-reference-counted, always with a timeout).
* `networkAvailable`: active network connected, or `debug.argon.rcs.testnet=1`.

## Incoming (`ArgonRcsStore`)
* 1:1 text: `sms` inbox row in the sender's thread (unread), then the stock notification
  (`MessagingNotification.blockingUpdateNewMessageIndicator`).
* Group text and every file: a retrieved MMS (`RetrieveConf` persisted with `PduPersister`, From =
  sender, To = us, Cc = other participants, Message-ID `rcs-<id>`), filed in the thread of sender +
  other participants, which is the thread a group MMS with the same people uses. Files up to 2 MB
  inline, larger by file URI.

## Outgoing (`ArgonRcsSend`)
Messages are composed and stored by the stock code; only the last step is rerouted, and every RCS
failure falls back to the stock SMS/MMS path, so nothing is lost (a message may arrive twice if
the network accepted part of it).
* SMS (1:1 text): RCS registered, the number is E.164, capabilities (cached or asked, max 5 s
  wait) say `chat`: row to outbox, `engine.sendText`, return "handled". The result fires the same
  `MESSAGE_SENT` PendingIntent the radio would (row to Sent, next queued message goes). On failure
  `fallbackSms` re-runs the stock send with RCS bypassed.
* MMS (group text, files, 1:1 with attachment): every recipient needs `chat` (+ `groupChat` for
  groups, + `fileTransferHttp` for files). Files go first (one transfer each), then text + subject
  as one message; blocking on the transaction thread (60 s text, 5 min files). Success moves the
  PDU to Sent with `resp_st=128`; anything else returns null and MMS sends it.
* Group conversation: the engine reuses the most recently active group chat with exactly those
  participants (`Chat.touch`), or creates one.
* No cellular service: stock queues SMS (`type=6`) until service returns. While RCS is
  registered, queued messages to RCS contacts are sent over RCS at once (on queueing and when RCS
  registers); others stay queued. Skipped when the cellular network is in service (then
  `interceptSms` handles them on the normal path).

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
tools/rcs/testnet.sh on      # adb reverse 5060/8080/2855 + debug.argon.rcs.testnet=1 + self number
tools/rcs/import_config.sh <(curl -s 'http://127.0.0.1:8080/config.xml?msisdn=%2B15550002') enabled=1
tools/rcs/device_suite.sh    # 13 checks, drives the stock UI
```

`device_suite.sh`: incoming 1:1 text (SMS row, only `delivered` IMDN back), incoming group text
(group thread, sender), incoming file (MMS image), outgoing text via the UI (Sent, no
Disposition-Notification), group reply in the group thread, picture as file transfer, non-RCS
number stays SMS, RCS failure -> SMS fallback -> drained over RCS, no crash/ANR.

## Limits
* Real network: needs an imported configuration; untested against Jibe itself (no account here).
* No RCS indicator in the UI (the UI is unchanged on purpose); RCS messages look like SMS/MMS.
* Group management from the phone (add/remove/leave/subject) is not supported (engine).
