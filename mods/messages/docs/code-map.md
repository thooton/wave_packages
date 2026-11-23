# Code map: stock messaging stack (XP3800, firmware 3A.0.1-02-8.1.0-11.20.00)

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
| Misc | `ui.MessageUtils` (grab-bag helpers), `ui.MessagingPreferenceActivity` (settings), `MmsConfig`, `widget.*`, `rcs.*` (unused stock RCS stubs) |

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

## Our code (Messages Improved)
`rg '# (FIX|FEAT|PERF)\(' apps/` lists every smali hook. Java:

| File (`apps/BMms/java/com/android/mms/…`) | What |
|---|---|
| `wave/WaveInit` (`MmsApp.onCreate`) | app start: receipt prefs, held-MMS sweep |
| `wave/Wave` | dev switches (`debug.wave.*` props) |
| `wave/WaveConfig` (`MmsConfig`) | recipient limit |
| `wave/WaveSelf` (`MessageUtils.getLocalNumber`, persist call sites) | own number, group thread filing |
| `transaction/WaveMmsReceive` (`PushReceiver`, `TransactionService`, ack composers) | held placeholder, reveal/sweep, Report-Allowed, MMS test network |
| `transaction/WavePerf` (`MessagingNotification`, `NotificationTransaction`, `TransactionService`, `PushReceiver`, `DownloadManager`) | receive latency |
| `ui/WaveComposePerf`, `ui/WaveHistory`, `ui/WaveStreetAddress`, `ui/WaveTextMms` | Conversation load, lightweight address links, inline text MMS |
| `wave/imsg/*`, `wave/WaveIMessageConfig`, `wave/WaveIMessageHost`, `transaction/WaveIMessageStore`, `transaction/WaveIMessageSend`, `ui/WaveIMessageUi`, `ui/WaveIMessageSettings` | Apple (iMessage) bridge client, foreground low-power service, routing, compose hint, settings & setup wizard |

TelephonyProvider: `apps/TelephonyProvider/java/…/ThreadIntegrity` (docs/fixes/sms-orphaned-threads)
and `WaveConversationSchema` / `WaveConversationQuery` (docs/fixes/conversation-load).
Magisk module extras: `module/service.sh` (boot-time `speed` dexopt, docs/fixes/performance).
