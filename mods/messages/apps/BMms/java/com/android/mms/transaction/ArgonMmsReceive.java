package com.android.mms.transaction;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Telephony;
import android.util.Log;

import com.android.mms.argon.Argon;
import com.android.mms.ui.MessageUtils;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.NotificationInd;

/**
 * FEAT(mms receive): incoming MMS (including group MMS) appear only once they are downloaded.
 *
 * Stock behaviour: PushReceiver stores the M-Notification.ind in the SENDER's 1:1 thread
 * (the notification doesn't carry the other recipients), MessagingNotification announces it,
 * the conversation shows "Downloading MMS message...", and only after the M-Retrieve.conf is
 * fetched does the real message appear in the group thread (the placeholder is deleted).
 *
 * Now: when the message will be auto-downloaded, the notification-ind row is stored without a
 * thread and marked seen/read, so nothing shows or rings until the real message exists in the
 * right thread. If the download fails (or the row is stuck), the placeholder is "revealed" in
 * the sender's thread exactly as stock did, so a manual/retried download stays possible.
 */
public final class ArgonMmsReceive {
    private static final String TAG = "ArgonMms";
    private static final int MESSAGE_TYPE_NOTIFICATION_IND = 130;
    private static final int ADDR_TYPE_FROM = 137;
    private static final int STATE_SUCCESS = 1;
    /** Held rows older than this are considered stuck and get revealed/retried. */
    static final long STALE_MS = 3 * 60 * 1000L;

    private ArgonMmsReceive() {}

    /**
     * PushReceiver hook, called right before the NotificationInd is persisted.
     * @return the createThreadId argument for PduPersister.persist (false = hold the row).
     */
    public static boolean prepareIncomingNotification(ContentValues values, GenericPdu pdu) {
        try {
            if (!(pdu instanceof NotificationInd)) return true;
            NotificationInd ind = (NotificationInd) pdu;
            boolean auto = NotificationTransaction.allowAutoDownload();
            boolean full = MessageUtils.isMmsMemoryFull();
            boolean tooLarge = NotificationTransaction.isMmsSizeTooLarge(ind);
            if (!auto || full || tooLarge) {
                Log.i(TAG, "push: not auto-downloading (auto=" + auto + " full=" + full
                        + " tooLarge=" + tooLarge + "), stock placeholder in sender thread");
                return true;
            }
            values.put("seen", 1);
            values.put("read", 1);
            Log.i(TAG, "push: holding notification until the message is downloaded");
            return false;
        } catch (Throwable t) {
            Log.w(TAG, "prepareIncomingNotification", t);
            return true;
        }
    }

    /** PushReceiver hook: stock call, skipped for held (thread-less) rows. */
    public static void markAsNotificationThreadIfNeed(Context c, long threadId, String from) {
        if (threadId > 0) MessageUtils.markAsNotificationThreadIfNeed(c, threadId, from);
    }

    /**
     * TransactionService.update hook, runs before the stock result handling. If the transaction
     * ended while its content URI still points at a held notification-ind (download failed,
     * timed out, or auto-download got disabled meanwhile), put it into the sender's thread and,
     * unless stock code is about to announce it anyway (SUCCESS), raise the notification.
     */
    public static void onTransactionUpdate(Context c, Transaction t) {
        try {
            int type = t.getType();
            if (type != 0 && type != 1) return; // notification / retrieve transactions only
            TransactionState st = t.getState();
            Uri uri = st.getContentUri();
            int state = st.getState();
            if (uri != null) {
                long tid = reveal(c, uri);
                if (tid > 0) {
                    Log.i(TAG, "transaction ended (state " + state + ") with message not downloaded;"
                            + " shown in thread " + tid);
                    if (state != STATE_SUCCESS) {
                        MessagingNotification.blockingUpdateNewMessageIndicator(c, tid, false);
                    }
                }
            }
            sweep(c, false);
        } catch (Throwable e) {
            Log.w(TAG, "onTransactionUpdate", e);
        }
    }

    /**
     * Reveals a held notification-ind: assigns the sender's thread and marks it unseen/unread.
     * @return the thread id, or -1 if the row isn't a held notification-ind (nothing done).
     */
    static long reveal(Context c, Uri uri) {
        long id;
        try {
            id = Long.parseLong(uri.getLastPathSegment());
        } catch (Exception e) {
            return -1;
        }
        Cursor cur = c.getContentResolver().query(Telephony.Mms.CONTENT_URI,
                new String[] { "thread_id", "m_type" },
                "_id=" + id + " AND m_type=" + MESSAGE_TYPE_NOTIFICATION_IND
                        + " AND (thread_id IS NULL OR thread_id<=0)", null, null);
        if (cur == null) return -1;
        try {
            if (!cur.moveToFirst()) return -1;
        } finally {
            cur.close();
        }
        String from = fromAddress(c, id);
        if (from == null) from = "Unknown"; // AOSP uses this for missing senders too
        long tid = Telephony.Threads.getOrCreateThreadId(c, from);
        ContentValues v = new ContentValues(4);
        v.put("thread_id", tid);
        v.put("seen", 0);
        v.put("read", 0);
        v.put("msg_box", 1); // same value; makes the provider's trigger recount the thread
        c.getContentResolver().update(ContentUrisCompat.mms(id), v, null, null);
        return tid;
    }

    private static String fromAddress(Context c, long msgId) {
        Cursor cur = c.getContentResolver().query(
                Uri.parse("content://mms/" + msgId + "/addr"), new String[] { "address" },
                "type=" + ADDR_TYPE_FROM, null, null);
        if (cur == null) return null;
        try {
            return cur.moveToFirst() ? cur.getString(0) : null;
        } finally {
            cur.close();
        }
    }

    /**
     * Safety net for held rows whose transaction never reported back (process killed, reboot,
     * exception before the transaction started). Rows older than STALE_MS are revealed in the
     * sender's thread and a retrieve is started for them (auto-download semantics).
     * @param all reveal regardless of age (used at boot, when nothing can be in flight).
     */
    public static void sweep(Context c, boolean all) {
        try {
            long cutoffSec = (System.currentTimeMillis() - (all ? 0 : STALE_MS)) / 1000;
            Cursor cur = c.getContentResolver().query(Telephony.Mms.CONTENT_URI,
                    new String[] { "_id", "sub_id" },
                    "m_type=" + MESSAGE_TYPE_NOTIFICATION_IND
                            + " AND (thread_id IS NULL OR thread_id<=0) AND date<=" + cutoffSec,
                    null, null);
            if (cur == null) return;
            long lastTid = -1;
            try {
                while (cur.moveToNext()) {
                    long id = cur.getLong(0);
                    Uri u = ContentUrisCompat.mms(id);
                    long tid = reveal(c, u);
                    if (tid <= 0) continue;
                    lastTid = tid;
                    Log.i(TAG, "sweep: held notification " + id + " was stuck; shown in thread "
                            + tid + ", retrying download");
                    Intent i = new Intent(c, TransactionService.class);
                    i.putExtra("uri", u.toString());
                    i.putExtra("type", 1); // RETRIEVE_TRANSACTION
                    i.putExtra("sub_id", cur.getInt(1));
                    c.startService(i);
                }
            } finally {
                cur.close();
            }
            if (lastTid > 0) MessagingNotification.blockingUpdateNewMessageIndicator(c, lastTid, false);
        } catch (Throwable t) {
            Log.w(TAG, "sweep", t);
        }
    }

    /** Boot/app-start entry point: sweep everything held (nothing can be in flight yet). */
    public static void sweepAsync(final Context c, final boolean all) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                sweep(c.getApplicationContext(), all);
            }
        }, "ArgonMmsSweep").start();
    }

    /** Sets X-Mms-Report-Allowed on M-Acknowledge.ind from the "send delivery report" setting. */
    public static void setReportAllowed(GenericPdu pdu, Context c) {
        try {
            boolean allow = com.android.mms.argon.ArgonInit.sendMmsDeliveryReports(c);
            pdu.getClass().getMethod("setReportAllowed", int.class)
                    .invoke(pdu, allow ? 128 : 129);
        } catch (Throwable t) {
            Log.w(TAG, "setReportAllowed", t);
        }
    }

    /**
     * FIX(mms ack): the framework's PduComposer never encodes X-Mms-Report-Allowed in an
     * M-NotifyResp.ind ("not supported" in AOSP). With immediate retrieval the NotifyResp is the
     * only confirmation the MMSC gets, so append the header (0x91, Yes/No) to the composed bytes.
     */
    public static byte[] withReportAllowed(byte[] pdu, Context c) {
        try {
            if (pdu == null || pdu.length < 2) return pdu;
            boolean allow = com.android.mms.argon.ArgonInit.sendMmsDeliveryReports(c);
            byte[] out = java.util.Arrays.copyOf(pdu, pdu.length + 2);
            out[pdu.length] = (byte) 0x91;
            out[pdu.length + 1] = (byte) (allow ? 0x80 : 0x81);
            return out;
        } catch (Throwable t) {
            Log.w(TAG, "withReportAllowed", t);
            return pdu;
        }
    }

    // ---- test network (see Argon.mmsTestNet) ----

    /** TransactionService hooks: true = skip the carrier MMS APN, use the default route. */
    public static boolean testNet() {
        return Argon.mmsTestNet();
    }

    /** TransactionSettings.getMmscUrl hook. */
    public static String mmscUrl(String stock) {
        if (Argon.mmsTestNet()) {
            String o = Argon.mmsTestMmsc();
            if (o != null) return o;
        }
        return stock;
    }

    static final class ContentUrisCompat {
        static Uri mms(long id) {
            return Uri.parse("content://mms/" + id);
        }
    }
}
