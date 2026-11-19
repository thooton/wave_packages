# Group MMS shown first as a 1:1 "Downloading..." message

## Symptom
An incoming group MMS first appeared (and notified) as a 1:1 "Downloading MMS message..." item in
the sender's conversation for ~5 s, then disappeared there and showed up in the group conversation.

## Root cause
Stock `PushReceiver` stores the M-Notification.ind with `createThreadId=true`. The notification
PDU only has the sender (no To/Cc), so the placeholder lands in the sender's 1:1 thread, unread and
unseen, and `MessagingNotification` announces it. `RetrieveTransaction`/`NotificationTransaction`
then download the real message (M-Retrieve.conf, which has all recipients), store it in the group
thread and delete the placeholder.

## Fix (`apps/BMms/java/com/android/mms/transaction/WaveMmsReceive.java`)
* `PushReceiver$ReceivePushTask.smali`: the `createThreadId` argument of `PduPersister.persist`
  comes from `prepareIncomingNotification(values, pdu)`. When the message will be downloaded
  automatically, the placeholder is stored **held**: no thread, `seen=1`, `read=1`, so it is
  neither listed nor announced. Otherwise (manual download, roaming setting) stock behaviour: the
  placeholder in the sender's thread is the only way to download it.
  `markAsNotificationThreadIfNeed` is skipped for held rows.
* `TransactionService.update` hook (`onTransactionUpdate`, transaction types 0/1): when a
  transaction ends and its content URI is still a held placeholder (download failed, expired,
  aborted), the placeholder is **revealed** (sender's thread, unread, `msg_box` rewritten so the
  provider trigger recounts the thread) and notified, so a failed message is never invisible.
* `sweep`: held rows older than 3 min (app killed or phone rebooted mid-download) are revealed and
  a retrieve is started; runs at app start and again 200 s later.

Result: the message appears exactly once, in the right thread, when it is complete.

## Verification
`tools/testing/mms_suite.sh` (fake MMSC, see docs/testing.md): held while a slow (5 s) download
runs (no thread, seen, nothing listed, no notification); group of 2 and 3 others in the right
thread; 1:1 in the sender's thread; failed download revealed unread with retry bookkeeping intact;
no zero-count threads; no crash.
