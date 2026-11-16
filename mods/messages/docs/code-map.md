# Code map: stock messaging stack (XP3800, firmware 3A.0.0-01-8.1.0-11.17.00)

Read the Java in `decompiled/<App>/sources/` (jadx; some methods fail to decompile; rerun jadx
with `--show-bad-code` or read the smali). Edit the smali in `apps/<App>/apktool/`.

## BMms: Messages app, `com.android.mms` (Qualcomm/CAF AOSP Mms + Borqs/Sonim changes)
| Area | Classes (`com.android.mms.…`) |
|---|---|
| Incoming SMS | `transaction.PrivilegedSmsReceiver` (SMS_DELIVER) → `SmsReceiver` → `SmsReceiverService.handleSmsReceived/storeMessage` |
| Incoming MMS | `transaction.PushReceiver`, `TransactionService`, `NotificationTransaction`, `RetrieveTransaction` |
| Sending | `transaction.SmsMessageSender`, `SmsSingleRecipientSender`, `MmsMessageSender`, `SendTransaction` |
| Notifications | `transaction.MessagingNotification` (queries `sms`/`pdu` with `seen=0`; click → `ComposeMessageActivity.createIntent(threadId)`) |
| Conversation list | `ui.ConversationList`, `ConversationListAdapter/Item`, `NotificationConversationList` (China-only filter, disabled) |
| Conversation view / compose | `ui.ComposeMessageActivity` (~7k lines), `MessageListAdapter`, `MessageItem`, `MessageListItem`, `data.WorkingMessage` |
| Data model / caches | `data.Conversation` (+ in-memory `Cache` keyed by thread id / recipients), `data.Contact`, `ContactList`, `util.DraftCache`, `util.Recycler` (message limits) |
| Misc | `ui.MessageUtils` (grab-bag helpers), `ui.MessagingPreferenceActivity` (settings), `MmsConfig`, `widget.*`, `rcs.*` (stock RCS stubs, unused; `RcsMessageStatusService` now hosts our engine) |

Config booleans in `apktool/res/values/bools.xml` (read-only for now; resources can't be rebuilt yet).

## TelephonyProvider: `com.android.providers.telephony` (runs in `com.android.phone`, uid phone)
* DB `mmssms.db` (`/data/user_de/0/com.android.providers.telephony/databases/`): tables `sms`,
  `pdu`/`part`/`addr` (MMS), `threads`, `canonical_addresses`, `words` (search), `raw` (framework
  SMS staging), plus triggers that maintain thread counts and read state.
* `SmsProvider` (`content://sms`), `MmsProvider` (`content://mms`), `MmsSmsProvider`
  (`content://mms-sms`: conversations, `threadID?recipient=` = getOrCreateThreadId, obsolete
  thread cleanup), `MmsSmsDatabaseHelper` (schema, `updateThreads`, which deletes ALL empty threads).
* Our addition: `ThreadIntegrity` (see docs/fixes/sms-orphaned-threads).

## Other pieces that touch messaging
* `firmware/system/priv-app/MmsService`: framework MMS send/download service (`com.android.mms.service`).
* `SonimLauncher` (`com.sonim.borqs.launcher`): Missed Events page. `UnreadMessageInfoLoader`
  counts `content://sms/inbox` `read=0`; one sender → opens `sms:<addr>`, else launches Messages.
  `LauncherActivity` forces `sms_default_application = com.android.mms`.
* Framework SMS path: `InboundSmsHandler` (telephony-common.jar) writes `raw`, then broadcasts
  SMS_DELIVER to the default SMS app.
* An outer-display component logs `ExtDisplay: getMissMmsCount` (owner not identified yet).

## Our code (Messages Argon)
`rg '# (FIX|FEAT|PERF)\(' apps/` lists every smali hook. Java:

| File (`apps/BMms/java/com/android/mms/…`) | What |
|---|---|
| `argon/ArgonInit` (`MmsApp.onCreate`), `argon/ArgonHooks` | app start: receipt prefs, held-MMS sweep, RCS start |
| `argon/Argon` | dev switches (`debug.argon.*` props) |
| `argon/ArgonConfig` (`MmsConfig`) | recipient limit |
| `argon/ArgonSelf` (`MessageUtils.getLocalNumber`, persist call sites) | own number, group thread filing |
| `transaction/ArgonMmsReceive` (`PushReceiver`, `TransactionService`, ack composers) | held placeholder, reveal/sweep, Report-Allowed, MMS test network |
| `transaction/ArgonPerf` (`MessagingNotification`, `NotificationTransaction`, `TransactionService`, `PushReceiver`, `DownloadManager`) | receive latency |
| `argon/RcsHost` (`RcsMessageStatusService`, `MessageUtils.getActivatedIccCardCount`) | RCS engine host, platform, config import |
| `transaction/ArgonRcsStore`, `transaction/ArgonRcsSend` (`SmsSingleRecipientSender`, `SendTransaction`, `SmsReceiverService`) | RCS storage and routing |
| `org/argon/rcs/…` | RCS engine (pure Java, docs/rcs/engine.md) |

TelephonyProvider: `apps/TelephonyProvider/java/…/ThreadIntegrity` (docs/fixes/sms-orphaned-threads).
Magisk module extras: `module/service.sh` (boot-time `speed` dexopt, docs/fixes/performance).
