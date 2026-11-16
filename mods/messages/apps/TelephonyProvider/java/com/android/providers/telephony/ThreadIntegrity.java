package com.android.providers.telephony;

import android.content.ContentProvider;
import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Log;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Fix for SMS rows being stored against a thread that no longer exists ("orphaned" messages).
 *
 * Root cause: a thread is created empty by getOrCreateThreadId() and the message row is inserted
 * by a separate call afterwards. In between, any other SMS/MMS write runs
 * MmsSmsDatabaseHelper.updateThreads(), which deletes EVERY thread without messages (and the
 * canonical addresses they referenced); the Messages app also explicitly deletes "obsolete"
 * threads from several UI paths. The new message is then inserted with a dangling thread_id (or
 * -1 when the thread vanished inside getThreadId itself). Such a message is unread, raises a
 * notification and counts as a missed event, but it belongs to no conversation, so it can never
 * be displayed or marked read.
 *
 * This class makes thread creation atomic, makes the SMS insert verify (and if needed re-create)
 * its thread inside the same transaction as the insert, and re-homes rows that were orphaned
 * before the fix was installed. Lock order everywhere: MmsSmsProvider monitor, then database.
 */
public final class ThreadIntegrity {
    private static final String TAG = "ThreadIntegrity";
    private static final int MAX_ATTEMPTS = 5;
    private static final String TOKEN = "insert-address-token";

    private ThreadIntegrity() {}

    // ---------------------------------------------------------------------------------------
    // MmsSmsProvider.getThreadId() replacement
    // ---------------------------------------------------------------------------------------

    /**
     * Same contract as the original MmsSmsProvider.getThreadId(), but the canonical-address
     * lookup, the thread lookup/creation and reading the result all happen inside ONE write
     * transaction, and the result is materialized before the transaction ends. Previously the
     * returned cursor was filled lazily after endTransaction(), so a concurrent cleanup could
     * delete the just-created thread and the caller got an empty cursor (thread id -1), and the
     * canonical address could be removed between being resolved and being referenced.
     */
    public static Cursor getThreadId(MmsSmsProvider provider, List<String> recipients) {
        if (sMmsSms == null) sMmsSms = provider;
        SQLiteDatabase db = provider.ti_getOpenHelper().getWritableDatabase();
        db.beginTransaction();
        try {
            Set<Long> ids = new HashSet<>(recipients.size());
            for (String address : recipients) {
                if (TOKEN.equals(address)) continue;
                long id = provider.ti_getSingleAddressId(address);
                if (id != -1L) {
                    ids.add(id);
                } else {
                    Log.e(TAG, "getThreadId: address ID not found");
                }
            }
            if (ids.isEmpty()) {
                Log.e("MmsSmsProvider", "getThreadId: NO receipients specified -- NOT creating thread",
                        new Exception());
                db.setTransactionSuccessful();
                return null;
            }
            long[] sorted = new long[ids.size()];
            int i = 0;
            for (Long id : ids) sorted[i++] = id;
            Arrays.sort(sorted);
            StringBuilder sb = new StringBuilder();
            for (int j = 0; j < sorted.length; j++) {
                if (j != 0) sb.append(' ');
                sb.append(sorted[j]);
            }
            String recipientIds = sb.toString();

            MatrixCursor result = queryThreads(db, recipientIds);
            if (result.getCount() == 0) {
                Log.d("MmsSmsProvider", "getThreadId: create new thread_id for recipients xxxxxxxx");
                provider.ti_insertThread(recipientIds, recipients.size());
                result = queryThreads(db, recipientIds);
            }
            db.setTransactionSuccessful();
            if (result.getCount() > 1) {
                Log.w("MmsSmsProvider", "getThreadId: why is cursorCount=" + result.getCount());
            }
            return result;
        } catch (Throwable t) {
            Log.e("MmsSmsProvider", "getThreadId failed", t);
            return null;
        } finally {
            db.endTransaction();
        }
    }

    private static MatrixCursor queryThreads(SQLiteDatabase db, String recipientIds) {
        MatrixCursor out = new MatrixCursor(new String[] { "_id" });
        Cursor c = db.rawQuery("SELECT _id FROM threads WHERE recipient_ids=?",
                new String[] { recipientIds });
        try {
            while (c.moveToNext()) out.addRow(new Object[] { c.getLong(0) });
        } finally {
            c.close();
        }
        return out;
    }

    // ---------------------------------------------------------------------------------------
    // SmsProvider.insertInner(): replacement for db.insert(table, nullColumnHack, values)
    // ---------------------------------------------------------------------------------------

    /** Local MmsSmsProvider instance (same process); its monitor guards thread creation. */
    private static volatile MmsSmsProvider sMmsSms;

    private static MmsSmsProvider mmsSms(Context context) {
        MmsSmsProvider p = sMmsSms;
        if (p != null) return p;
        try {
            ContentProviderClient client =
                    context.getContentResolver().acquireContentProviderClient("mms-sms");
            if (client == null) return null;
            ContentProvider local = client.getLocalContentProvider();
            if (local instanceof MmsSmsProvider) {
                sMmsSms = (MmsSmsProvider) local;   // client intentionally kept: pins the provider
            } else {
                client.release();
            }
        } catch (RuntimeException e) {
            Log.w(TAG, "cannot get local mms-sms provider: " + e);
        }
        return sMmsSms;
    }

    /**
     * Returns a provider whose thread-creation can be nested in a transaction on {@code db}, or
     * null if that is not possible (different database object -> would self-deadlock).
     */
    private static MmsSmsProvider nestableProvider(Context context, SQLiteDatabase db) {
        MmsSmsProvider mp = mmsSms(context);
        if (mp == null) return null;
        try {
            return mp.ti_getOpenHelper().getWritableDatabase() == db ? mp : null;
        } catch (RuntimeException e) {
            return null;
        }
    }

    /**
     * Must be called holding mp's monitor and inside a transaction on mp's database. Returns
     * {@code requested} if that thread exists, otherwise the (possibly newly created) thread for
     * {@code address}. Thread creation nests in the caller's transaction, so the returned thread
     * cannot be deleted before the caller commits.
     */
    private static long liveThreadLocked(MmsSmsProvider mp, SQLiteDatabase db, long requested,
            String address) {
        if (requested > 0 && threadExists(db, requested)) return requested;
        Cursor c = getThreadId(mp, Collections.singletonList(normalizeForThread(address)));
        if (c == null) return -1L;
        try {
            return c.moveToFirst() ? c.getLong(0) : -1L;
        } finally {
            c.close();
        }
    }

    /** Same address handling as Telephony.Threads.getOrCreateThreadId(). */
    private static String normalizeForThread(String address) {
        if (address.indexOf('@') >= 0) {
            Matcher m = NAME_ADDR_EMAIL.matcher(address);
            if (m.matches()) return m.group(2);
        }
        return address;
    }

    private static final Pattern NAME_ADDR_EMAIL =
            Pattern.compile("\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*");

    /**
     * Replacement for db.insert() in SmsProvider.insertInner(). For SMS rows with an address it
     * guarantees that the row is inserted into a thread that exists: the thread check, (if
     * needed) re-resolving/creating the thread for the address, and the insert all happen in ONE
     * write transaction, under the MmsSmsProvider monitor (same lock order as getThreadId:
     * monitor, then database), so no cleanup can delete the thread in between.
     */
    public static long insertSms(SmsProvider provider, SQLiteDatabase db, String table,
            String nullColumnHack, ContentValues values) {
        if (!"sms".equals(table) || values == null) {
            return db.insert(table, nullColumnHack, values);
        }
        String address = values.getAsString("address");
        if (TextUtils.isEmpty(address)) {
            // e.g. drafts: there is nothing to re-resolve the thread from; keep old behaviour.
            return db.insert(table, nullColumnHack, values);
        }
        MmsSmsProvider mp = nestableProvider(provider.getContext(), db);
        if (mp == null) {
            Log.w(TAG, "insert: atomic path unavailable, using retry path");
            return insertSmsRetrying(provider, db, table, nullColumnHack, values, address);
        }
        Long req = values.getAsLong("thread_id");
        long requested = req == null ? 0L : req;
        synchronized (mp) {
            db.beginTransaction();
            try {
                long tid = liveThreadLocked(mp, db, requested, address);
                if (tid > 0 && tid != requested) {
                    values.put("thread_id", tid);
                    Log.w(TAG, "insert: requested thread " + requested
                            + " does not exist, sms stored in thread " + tid);
                }
                long rowId = db.insert(table, nullColumnHack, values);
                db.setTransactionSuccessful();
                return rowId;
            } finally {
                db.endTransaction();
            }
        }
    }

    /** Fallback only (should not be used on this device): re-resolve outside, check+insert inside. */
    private static long insertSmsRetrying(SmsProvider provider, SQLiteDatabase db, String table,
            String nullColumnHack, ContentValues values, String address) {
        ContentValues attempt = new ContentValues(values);
        for (int n = 1; n <= MAX_ATTEMPTS; n++) {
            Long tid = attempt.getAsLong("thread_id");
            if (tid == null || tid <= 0) {
                tid = resolveThread(provider.getContext(), address);
                attempt.put("thread_id", tid);
            }
            db.beginTransaction();
            try {
                if (tid > 0 && threadExists(db, tid)) {
                    long rowId = db.insert(table, nullColumnHack, attempt);
                    db.setTransactionSuccessful();
                    values.putAll(attempt);
                    return rowId;
                }
            } finally {
                db.endTransaction();
            }
            attempt.remove("thread_id");
        }
        Log.e(TAG, "insert: could not obtain a live thread");
        return db.insert(table, nullColumnHack, values);
    }

    private static boolean threadExists(SQLiteDatabase db, long threadId) {
        Cursor c = db.rawQuery("SELECT 1 FROM threads WHERE _id=?",
                new String[] { Long.toString(threadId) });
        try {
            return c.moveToFirst();
        } finally {
            c.close();
        }
    }

    private static long resolveThread(Context context, String address) {
        try {
            return Telephony.Threads.getOrCreateThreadId(context, address);
        } catch (RuntimeException e) {
            Log.w(TAG, "getOrCreateThreadId failed: " + e);
            return -1L;
        }
    }

    // ---------------------------------------------------------------------------------------
    // One-shot repair of rows orphaned before this fix (runs once per provider start)
    // ---------------------------------------------------------------------------------------

    public static void scheduleRepair(final SmsProvider provider) {
        Thread t = new Thread("ThreadIntegrity-repair") {
            @Override
            public void run() {
                try {
                    Thread.sleep(8000);
                    repairOrphans(provider);
                } catch (Throwable e) {
                    Log.e(TAG, "repair failed", e);
                }
            }
        };
        t.setPriority(Thread.MIN_PRIORITY);
        t.start();
    }

    static int repairOrphans(SmsProvider provider) {
        Context context = provider.getContext();
        SQLiteDatabase db = provider.getWritableDatabase(0 /* URL_ALL: same helper insertInner uses for sms */);
        List<long[]> ids = new ArrayList<>();
        List<String> addrs = new ArrayList<>();
        Cursor c = db.rawQuery("SELECT _id, thread_id, address FROM sms WHERE address IS NOT NULL"
                + " AND address != '' AND (thread_id IS NULL OR thread_id NOT IN"
                + " (SELECT _id FROM threads))", null);
        try {
            while (c.moveToNext()) {
                ids.add(new long[] { c.getLong(0), c.isNull(1) ? 0 : c.getLong(1) });
                addrs.add(c.getString(2));
            }
        } finally {
            c.close();
        }
        if (ids.isEmpty()) {
            Log.i(TAG, "repair: no orphaned sms");
            return 0;
        }
        int fixed = 0;
        MmsSmsProvider mp = nestableProvider(context, db);
        if (mp == null) {
            Log.w(TAG, "repair: mms-sms provider not usable, skipping");
            return 0;
        }
        for (int i = 0; i < ids.size(); i++) {
            long msgId = ids.get(i)[0];
            long tid;
            synchronized (mp) {
                db.beginTransaction();
                try {
                    tid = liveThreadLocked(mp, db, -1L, addrs.get(i));
                    if (tid > 0) {
                        ContentValues cv = new ContentValues(1);
                        cv.put("thread_id", tid);
                        db.update("sms", cv, "_id=?", new String[] { Long.toString(msgId) });
                        MmsSmsDatabaseHelper.updateThread(db, tid);
                        // the read-state trigger only fires on UPDATE OF read, not thread_id
                        db.execSQL("UPDATE threads SET read = CASE (SELECT COUNT(*) FROM sms"
                                + " WHERE read = 0 AND thread_id = threads._id) WHEN 0 THEN 1"
                                + " ELSE 0 END WHERE _id = " + tid);
                        db.setTransactionSuccessful();
                    }
                } finally {
                    db.endTransaction();
                }
            }
            if (tid > 0) {
                Log.i(TAG, "repair: sms " + msgId + " (thread " + ids.get(i)[1]
                        + ") moved to thread " + tid);
                fixed++;
            } else {
                Log.w(TAG, "repair: no thread for sms " + msgId);
            }
        }
        Log.i(TAG, "repair: re-homed " + fixed + " of " + ids.size() + " orphaned sms");
        if (fixed > 0) {
            context.getContentResolver().notifyChange(Telephony.MmsSms.CONTENT_URI, null, true);
            context.getContentResolver().notifyChange(Telephony.Sms.CONTENT_URI, null, true);
            context.getContentResolver().notifyChange(Uri.parse("content://mms-sms/conversations/"),
                    null, true);
        }
        return fixed;
    }
}
