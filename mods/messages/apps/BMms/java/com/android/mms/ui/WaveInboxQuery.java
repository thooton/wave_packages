package com.android.mms.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.preference.PreferenceManager;
import android.util.Log;

import com.android.mms.data.Conversation;

import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/**
 * Starts the main inbox thread-list query (token 0x6a5) at the top of ConversationList.onCreate()
 * before setContentView(), and harvests the completed cursor synchronously at the end of
 * ConversationList.onResume() before WindowManager.addView() schedules an empty first frame.
 */
public final class WaveInboxQuery {
    private static final String TAG = "WaveInboxQuery";
    private static final int TOKEN_MAIN_INBOX = 0x6a5;
    private static final long HARVEST_WAIT_MS = 50L;

    private static final String SEL_NON_EMPTY =
            "(EXISTS (SELECT 1 FROM sms WHERE sms.thread_id=threads._id)"
            + " OR _id IN (SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL))";
    private static final String SEL_SPLIT = "notification=0 and " + SEL_NON_EMPTY;

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService EXEC = Executors.newSingleThreadExecutor(
            new ThreadFactory() {
                @Override
                public Thread newThread(Runnable r) {
                    Thread t = new Thread(r, "wave-inbox-query");
                    t.setDaemon(true);
                    t.setPriority(Thread.MAX_PRIORITY - 1);
                    return t;
                }
            });

    private static final class Pending {
        Future<Cursor> future;
        boolean consumedByStartAsync;
        boolean skipFirstInvalidate = true;
        boolean delivered;
        volatile boolean cancelled;
    }

    private static final WeakHashMap<ConversationList, Pending> PENDING = new WeakHashMap<>();

    private WaveInboxQuery() {}

    /** Launch the 0x6a5 inbox query right inside ConversationList.onCreate() before setContentView(). */
    public static void startEarly(final ConversationList act) {
        if (act == null || !"com.android.mms.ui.ConversationList".equals(act.getClass().getName())) {
            return;
        }
        cancelExisting(act);
        final Context app = act.getApplicationContext();
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(app);
        boolean split = sp.getBoolean("pref_key_seperate_notification_msg", true);
        final String selection = split ? SEL_SPLIT : SEL_NON_EMPTY;

        final Pending p = new Pending();
        PENDING.put(act, p);
        // Resolve Conversation static fields on the main thread so Conversation.<clinit>
        // (which constructs a Handler) always runs on a Looper thread.
        final android.net.Uri queryUri = Conversation.sAllThreadsUri;
        final String[] projection = Conversation.ALL_THREADS_PROJECTION;
        final String sortOrder = Conversation.DEFAULT_SORT_ORDER;
        p.future = EXEC.submit(new Callable<Cursor>() {
            @Override
            public Cursor call() {
                if (p.cancelled) return null;
                Cursor c = null;
                try {
                    c = app.getContentResolver().query(
                            queryUri,
                            projection,
                            selection,
                            null,
                            sortOrder);
                    if (c != null) c.getCount(); // force CursorWindow fill off-main
                } catch (Throwable t) {
                    Log.w(TAG, "early inbox query failed", t);
                    if (c != null) {
                        try { c.close(); } catch (Throwable ignored) {}
                        c = null;
                    }
                }
                if (p.cancelled) {
                    if (c != null) {
                        try { c.close(); } catch (Throwable ignored) {}
                    }
                    return null;
                }
                final Cursor ready = c;
                Message msg = Message.obtain(MAIN, new Runnable() {
                    @Override
                    public void run() {
                        deliverOnMain(act, p, ready);
                    }
                });
                msg.setAsynchronous(true);
                MAIN.sendMessage(msg);
                return ready;
            }
        });
    }

    /** On initial cold ConversationList.onStart(), keep the fresh Contact cache just warmed. */
    public static boolean consumeFirstStartSkipInvalidate(ConversationList act) {
        if (act == null) return false;
        Pending p = PENDING.get(act);
        if (p != null && p.skipFirstInvalidate) {
            p.skipFirstInvalidate = false;
            return true;
        }
        return false;
    }

    /** Called in startAsyncQuery(): returns true once so onStart() skips duplicating the 0x6a5 query. */
    public static boolean consumeEarly(ConversationList act) {
        if (act == null) return false;
        Pending p = PENDING.get(act);
        if (p != null && !p.cancelled && !p.consumedByStartAsync) {
            p.consumedByStartAsync = true;
            return true;
        }
        return false;
    }

    /** Called at the very end of ConversationList.onResume() before WindowManager.addView(). */
    public static void harvest(ConversationList act) {
        if (act == null) return;
        Pending p = PENDING.get(act);
        if (p == null || p.delivered || p.cancelled || p.future == null) return;
        try {
            Cursor c = p.future.get(HARVEST_WAIT_MS, TimeUnit.MILLISECONDS);
            deliverOnMain(act, p, c);
        } catch (TimeoutException ignored) {
            // Async main message will deliver immediately on completion (even across VSync barrier).
        } catch (Throwable t) {
            Log.w(TAG, "harvest failed", t);
        }
    }

    private static void deliverOnMain(ConversationList act, Pending p, Cursor c) {
        if (p.delivered) return;
        p.delivered = true;
        if (PENDING.get(act) == p) PENDING.remove(act);
        if (p.cancelled || act.isFinishing() || act.isDestroyed()) {
            if (c != null) {
                try { c.close(); } catch (Throwable ignored) {}
            }
            return;
        }
        act.waveDeliverInboxQuery(TOKEN_MAIN_INBOX, null, c);
    }

    private static void cancelExisting(ConversationList act) {
        Pending old = PENDING.remove(act);
        if (old != null) {
            old.cancelled = true;
            if (!old.delivered && old.future != null && old.future.isDone()) {
                old.delivered = true;
                try {
                    Cursor c = old.future.get();
                    if (c != null) c.close();
                } catch (Throwable ignored) {}
            }
        }
    }
}
