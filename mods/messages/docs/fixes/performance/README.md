# Receive latency (MMS especially): measurements and fixes

## Symptom
Messages, MMS in particular, took long to show up / ring. The delay grew the more unread MMS there
were.

## How it was measured
Everything on the phone, with the fake MMSC (no SIM, `tools/testing/testnet.sh on`):

* `tools/testing/mms_latency.sh [n] [warm|cold]`: injects n MMS (WAP push -> download from the
  fake MMSC -> store -> notification) and prints, per message, the ms from the push to: push handled,
  message stored, notification posted. `cold` kills the app first.
* `tools/testing/mms_trace.sh <out.trace> [method]`: ART method trace of one MMS receive and the
  top methods under `method` (`tools/testing/trace_top.py`, also `--children` for a call-order
  breakdown). Needs a debuggable system for the session:
  `adb shell su -c "'resetprop ro.debuggable 1; setprop sys.boot_completed 0; stop; start'"`.

The fake MMSC is local (adb reverse), so radio/network time is ~0 here. On the real network the
download and the M-NotifyResp round trip are 0.3-2 s each and the MMS PDN bring-up 1-3 s; that
part of the fixes (2, 4) can't be measured on the test phone.

## Findings

| Where | What happened | Cost |
|---|---|---|
| `MessagingNotification.addMmsNotificationInfos` | On **every** new message (SMS too) it re-loaded **every unseen MMS**: an `addr` query for the sender, `PduPersister.load`, a SMIL parse + `SlideshowModel`, and a 360 dp bitmap decode for each picture, although the notification shows a few lines and one picture. | ~70 ms per unread MMS per update; 4.4 s of a 6 s traced receive with 15 unread MMS |
| `NotificationTransaction.run` | Stored the message, then sent M-NotifyResp.ind (HTTP round trip over the MMS APN), trimmed old messages, and only then let `TransactionService.update` notify. | one carrier HTTP round trip before every MMS notification |
| `PushReceiver` | `ReceivePushTask.execute()` = AsyncTask's app-wide serial executor; a push waited behind any other AsyncTask in the process (contact/conversation loading). | variable |
| `TransactionService` | Releases the MMS network request as soon as its queue is empty; the next MMS a second later pays a new PDN activation. AOSP's MmsService keeps it 5 s. | 1-3 s per MMS in a burst (real network) |
| `DownloadManager.markState` | Loads and parses the whole M-Notification.ind PDU to read its expiry before each download. | ~30 ms |
| ART | The patched APKs don't match the firmware's AOT code, so after install the app runs interpreted/JIT until an idle-maintenance dexopt. | app cold start 1.3 s vs 0.85 s compiled |

Not changed: the SMS receive path (inject -> notification ~0.5 s, mostly the notification itself,
which got cheaper with the first fix), `MessageUtils.updateThreadAttachTypeByThreadId` (runs after
the notification), cold process start (~0.4 s before the push is handled).

## Fixes (`apps/BMms/java/com/android/mms/transaction/WavePerf.java`, smali hooks marked `PERF(...)`)

1. **Notification content cache** (`MessagingNotification.smali`, `addMmsNotificationInfos`):
   sender (`mmsFrom`, replaces `AddressUtils.getFrom`), text and attachment type are cached per
   message (key `_id/date`, 100 entries). Rows are newest first: row 0 is always loaded in full
   (its picture may be shown); later rows use the cache, are loaded once if not cached, and rows
   past the newest 8 are not loaded at all unless the pop-up alert preference is on (it lists every
   message). Pictures are decoded for row 0 only.
2. **Early MMS notification** (`NotificationTransaction.smali`): `WavePerf.notifyEarly(uri)` right
   after the message is stored; `TransactionService.update` calls `updateAfterTransaction`, which
   skips its own notification once for a thread that was notified early (no second sound). Entries
   expire after 5 min.
3. **Push executor** (`PushReceiver.smali`): `ReceivePushTask.executeOnExecutor(WavePerf.PUSH_EXECUTOR)`,
   a dedicated single thread (still serial among pushes, which stock duplicate detection expects).
4. **MMS network linger** (`TransactionService.smali`, `releaseNetworkRequest`): when the MMS
   network is connected, `lingerMmsNetwork` files its own request for it before stock releases its
   own, and drops it 5 s later (like AOSP `MmsNetworkManager.NETWORK_RELEASE_TIMEOUT_MILLIS`). A
   following MMS finds the network up. Never when the test network is on; never more than one.
5. **Expiry query** (`DownloadManager.smali`, `markState`): `WavePerf.expiry` reads the `exp`
   column (same semantics: missing row throws like `PduPersister.load`, missing value = -1).
6. **Compiled code** (`module/service.sh`, Magisk late-start): 90 s after boot,
   `cmd package compile -m speed` for `com.android.mms` and `com.android.providers.telephony`
   (no-op once done; a new deploy re-installs the APKs and it runs again).

## Results (fake MMSC, warm process)

| | before | after |
|---|---|---|
| push -> notification, 0 unread MMS | ~1.0 s | ~0.87 s |
| push -> notification, 8-15 unread MMS | 1.4-1.75 s, +~70 ms per unread MMS | ~0.9 s, flat |
| app cold start (ConversationList) | 1.3 s | 0.85 s |

Cold-process receive stays ~2 s (process start + first-use class loading). On the real network,
fixes 2 and 4 additionally remove one MMSC round trip before every notification and the PDN
bring-up for MMS arriving within 5 s of each other.

## Verification
`tools/testing/mms_suite.sh` 8/8 and the historical Argon RCS suite 13/13 on the build with all of
the above; one notification (sound) per MMS checked in logcat (`updateNotification: new message`
once per message).
