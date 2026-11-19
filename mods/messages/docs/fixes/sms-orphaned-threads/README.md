# Invisible unread short-code SMS on Sonim XP3800 (Android 8.1): root cause and fix

## Symptom
An SMS from a short code (Google 22000, etc.) raises a notification, but tapping it (or the
launcher's Missed Events entry) opens an empty compose screen addressed to the short code. The
message never appears in Messaging, can't be marked read, and the launcher keeps showing
"Missed Events (N) / N new messages / From multiple persons" indefinitely.

## Root cause (TelephonyProvider, triggered by Messaging)
Receiving an SMS takes two separate provider calls:

1. `SmsReceiverService.storeMessage()` calls `Threads.getOrCreateThreadId(address)`, which creates
   an **empty** thread (plus a canonical_addresses row).
2. It then inserts the SMS row with that `thread_id`.

Between 1 and 2, any other SMS/MMS database write deletes that empty thread:

* `MmsSmsDatabaseHelper.updateThreads()` runs after every SMS delete/update path and deletes
  **every** thread that has no messages (globally, not only the thread being updated), then removes
  the canonical addresses those threads referenced.
* Messaging deletes "obsolete" (empty) threads explicitly: on ConversationList's first query, when
  leaving a compose screen with nothing to save, and in the MMS `NotificationTransaction`.

`SmsProvider.insertInner()` trusts the supplied `thread_id`, so the message is stored against a
thread that no longer exists. A second variant: `MmsSmsProvider.getThreadId()` returns a lazily
filled cursor after its transaction ends. If the new thread is deleted before the cursor is read,
the caller gets an empty cursor, `Conversation.getOrCreateThreadId()` swallows the exception and
returns -1, and the SMS is stored with `thread_id = -1`.

The result is an "orphaned" row: `read=0, seen=0`, no thread.

* MessagingNotification queries `sms` directly, so the notification appears. Its click intent
  points at the dead thread (or no thread for -1), and ComposeMessageActivity falls back to a new
  compose screen.
* SonimLauncher's `UnreadMessageInfoLoader` counts `content://sms/inbox WHERE read=0` and opens
  `sms:<address>`. That creates a fresh, empty thread for the short code: the empty compose
  screen addressed to 22000.
* Nothing ever marks the row read (marking read is per thread), so the missed event persists.
  Two orphans with different addresses show as "From multiple persons".

It is rare because it needs a concurrent SMS/MMS write in a window of a few milliseconds. Short
codes are hit most because their threads are usually deleted after use, so every code SMS
creates a new thread. Steady senders already have a thread with messages, which can't be
deleted.

## Reproduction (tools/testing/, pushed with `tools/testing/push.sh`)
* `SmsInject.java`: root `app_process` tool that delivers a real 3GPP SMS-DELIVER
  PDU via `SMS_DELIVER` to Messaging (same path as the radio).
* `ProviderHammer.java`: concurrent writer doing the same
  `content://mms-sms/conversations/obsolete` delete Messaging does. It runs as shell after
  `appops set com.android.shell WRITE_SMS allow`; without that, provider writes are silently
  ignored.
* `race.sh` (usage in its header): injects SMS from new 5-digit numbers while the writer runs.
* `dumpdb.sh` + `orphans.py`: dump threads/sms and list rows whose thread doesn't exist.

Stock firmware: 12 of 30 messages orphaned (both variants), with the exact UI symptoms above.

## Fix
**TelephonyProvider.apk** (the root cause):
* `MmsSmsProvider.getThreadId()` now delegates to `ThreadIntegrity.getThreadId()`. Address
  resolution and thread lookup/creation run in one write transaction, and the result is
  materialized (MatrixCursor) before the transaction ends, so callers never get -1 and never a
  thread pointing at a deleted canonical address.
* `SmsProvider.insertInner()` inserts via `ThreadIntegrity.insertSms()`. For SMS rows with an
  address, one write transaction checks that the requested thread exists, recreates or looks up
  the thread for the address if it doesn't (or if the id is <= 0), and inserts the row. It holds
  the MmsSmsProvider monitor, so the lock order is the same as `getThreadId()` (monitor, then
  DB), which avoids deadlocks. Both providers share one `SQLiteDatabase` instance, so the nested
  thread creation is safe. Rows without an address (drafts) behave as before. A first version
  re-resolved outside the transaction and retried; it still lost the race under heavy
  contention, which is why the current version does it inside the transaction.
* `SmsProvider.onCreate()` starts a one-shot background repair (`ThreadIntegrity.repairOrphans`).
  It moves SMS rows whose thread doesn't exist into the correct thread for their address and
  recomputes message_count, snippet, date and read state. This fixes devices that already carry
  orphans after the next boot.

**BMms.apk** (Messages, defensive): `SmsReceiverService.storeMessage()` uses the thread the
provider actually stored the message in (read back from the inserted row) for its post-insert
bookkeeping (Recycler message limit, notification-thread marking), not the possibly stale or -1
id it requested.

With the fix, under the same race: 0 of 30 and 0 of 100 orphaned. Every thread deleted mid-receive
was caught and recreated ("requested thread N does not exist, sms stored in thread M"), with no
ANRs or deadlocks. Existing orphans (both the `-1` and the deleted-thread kind) were repaired at
boot, appeared in Messaging as unread, and reading them cleared Missed Events. Screenshots in this
folder: 3/4/5 are before the fix, 7/8/10/11 after.

## Where the code is
Search for `FIX(orphaned sms)`:
* `apps/TelephonyProvider/apktool/smali/com/android/providers/telephony/{MmsSmsProvider,SmsProvider}.smali` (hooks)
* `apps/TelephonyProvider/java/.../ThreadIntegrity.java` (the logic)
* `apps/BMms/apktool/smali/com/android/mms/transaction/SmsReceiverService.smali`

`git diff stock-messages -- apps/` shows the full change. Build, deploy and signing notes are in
/AGENTS.md. The first release was the standalone Magisk module `sms_orphan_fix`, which
`tools/deploy.sh` and the packaged zip replace automatically.
