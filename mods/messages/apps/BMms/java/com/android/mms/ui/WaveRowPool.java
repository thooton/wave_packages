package com.android.mms.ui;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Background pre-inflation pool for heavy ListView row layouts (MessageListItem &
 * ConversationListItem). Each row is inflated on a background thread with a
 * SwappableThemedContext (exact Activity theme + MutableContextWrapper) and handed to
 * Adapter.newView() on the main thread with the live Activity swapped in (~0.02 ms vs ~25 ms).
 */
public final class WaveRowPool {
    private static final String TAG = "WaveRowPool";

    static final int LAYOUT_MSG_RECV = 0x7f04002c;
    static final int LAYOUT_MSG_SEND = 0x7f04002d;
    static final int LAYOUT_INBOX_ROW = 0x7f04000e;

    private static final int THEME_COMPOSE = 0x7f0c0019;
    private static final int THEME_INBOX = 0x7f0c000d;
    private static final int DIMEN_INBOX_ROW_HEIGHT = 0x7f0b0019;

    private static final int TARGET_RECV = 5;
    private static final int TARGET_SEND = 5;
    private static final int TARGET_INBOX = 6;

    private static final class Entry {
        final View view;
        final MutableContextWrapper mutableCtx;

        Entry(View view, MutableContextWrapper mutableCtx) {
            this.view = view;
            this.mutableCtx = mutableCtx;
        }
    }

    private static final ConcurrentLinkedQueue<Entry> RECV_POOL = new ConcurrentLinkedQueue<>();
    private static final ConcurrentLinkedQueue<Entry> SEND_POOL = new ConcurrentLinkedQueue<>();
    private static final ConcurrentLinkedQueue<Entry> INBOX_POOL = new ConcurrentLinkedQueue<>();

    private static final AtomicBoolean REFILL_MSG_SCHEDULED = new AtomicBoolean(false);
    private static final AtomicBoolean REFILL_INBOX_SCHEDULED = new AtomicBoolean(false);

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static final ExecutorService EXEC = Executors.newSingleThreadExecutor(
            new ThreadFactory() {
                @Override
                public Thread newThread(Runnable r) {
                    Thread t = new Thread(r, "wave-row-pool");
                    t.setDaemon(true);
                    t.setPriority(Thread.NORM_PRIORITY);
                    return t;
                }
            });

    private WaveRowPool() {}

    /** Kick off background inbox-row inflation during MmsApp.onCreate(). */
    public static void prewarmInbox(Context ctx) {
        if (ctx == null || INBOX_POOL.size() >= TARGET_INBOX) return;
        if (!REFILL_INBOX_SCHEDULED.compareAndSet(false, true)) return;
        final Context app = ctx.getApplicationContext();
        EXEC.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    int rowHeight = app.getResources().getDimensionPixelSize(DIMEN_INBOX_ROW_HEIGHT);
                    while (INBOX_POOL.size() < TARGET_INBOX) {
                        Entry e = inflateInboxEntry(app, rowHeight);
                        if (e == null) break;
                        INBOX_POOL.offer(e);
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "prewarmInbox failed", t);
                } finally {
                    REFILL_INBOX_SCHEDULED.set(false);
                }
            }
        });
    }

    /** Kick off background message-row inflation (immediately or after inbox settles). */
    public static void prewarmMessages(Context ctx) {
        if (ctx == null) return;
        if (RECV_POOL.size() >= TARGET_RECV && SEND_POOL.size() >= TARGET_SEND) return;
        if (!REFILL_MSG_SCHEDULED.compareAndSet(false, true)) return;
        final Context app = ctx.getApplicationContext();
        EXEC.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    // Interleave recv/send so even partial prewarming covers both directions.
                    while (RECV_POOL.size() < TARGET_RECV || SEND_POOL.size() < TARGET_SEND) {
                        if (RECV_POOL.size() < TARGET_RECV) {
                            Entry e = inflateMessageEntry(app, LAYOUT_MSG_RECV);
                            if (e == null) break;
                            RECV_POOL.offer(e);
                        }
                        if (SEND_POOL.size() < TARGET_SEND) {
                            Entry e = inflateMessageEntry(app, LAYOUT_MSG_SEND);
                            if (e == null) break;
                            SEND_POOL.offer(e);
                        }
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "prewarmMessages failed", t);
                } finally {
                    REFILL_MSG_SCHEDULED.set(false);
                }
            }
        });
    }

    /** Schedule message-row prewarming slightly after inbox rows settle so we don't contend with inbox draw. */
    public static void prewarmMessagesDelayed(Context ctx) {
        if (ctx == null) return;
        if (RECV_POOL.size() >= TARGET_RECV && SEND_POOL.size() >= TARGET_SEND) return;
        final Context app = ctx.getApplicationContext();
        MAIN.postDelayed(new Runnable() {
            @Override
            public void run() {
                prewarmMessages(app);
            }
        }, 250L);
    }

    /** Obtain a MessageListItem row for normal (non-multi-choice) recv/send layouts. */
    public static View obtainMessageRow(LayoutInflater fallbackInflater, int layoutRes, ViewGroup parent) {
        ConcurrentLinkedQueue<Entry> pool = null;
        if (layoutRes == LAYOUT_MSG_RECV) pool = RECV_POOL;
        else if (layoutRes == LAYOUT_MSG_SEND) pool = SEND_POOL;

        if (pool != null) {
            Entry e = pool.poll();
            if (e != null) {
                Context liveCtx = fallbackInflater.getContext();
                e.mutableCtx.setBaseContext(liveCtx);
                if (pool.size() < 2) {
                    prewarmMessagesDelayed(liveCtx);
                }
                return e.view;
            }
            prewarmMessagesDelayed(fallbackInflater.getContext());
        }
        return fallbackInflater.inflate(layoutRes, parent, false);
    }

    /** Obtain a ConversationListItem row for normal inbox layout (0x7f04000e). */
    public static View obtainInboxRow(LayoutInflater fallbackInflater, int layoutRes, ViewGroup parent) {
        if (layoutRes == LAYOUT_INBOX_ROW) {
            Entry e = INBOX_POOL.poll();
            if (e != null) {
                e.mutableCtx.setBaseContext(fallbackInflater.getContext());
                return e.view;
            }
        }
        return fallbackInflater.inflate(layoutRes, parent, false);
    }

    private static Entry inflateMessageEntry(Context app, int layoutRes) {
        try {
            MutableContextWrapper mutable = new MutableContextWrapper(app);
            ContextThemeWrapper themed = new ContextThemeWrapper(mutable, THEME_COMPOSE);
            LayoutInflater inflater = WaveComposePerf.rowInflater(
                    LayoutInflater.from(app).cloneInContext(themed));
            View v = inflater.inflate(layoutRes, null, false);
            v.setLayoutParams(new AbsListView.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            return new Entry(v, mutable);
        } catch (Throwable t) {
            Log.w(TAG, "inflateMessageEntry failed", t);
            return null;
        }
    }

    private static Entry inflateInboxEntry(Context app, int rowHeight) {
        try {
            MutableContextWrapper mutable = new MutableContextWrapper(app);
            ContextThemeWrapper themed = new ContextThemeWrapper(mutable, THEME_INBOX);
            LayoutInflater inflater = LayoutInflater.from(app).cloneInContext(themed);
            View v = inflater.inflate(LAYOUT_INBOX_ROW, null, false);
            v.setLayoutParams(new AbsListView.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    rowHeight));
            return new Entry(v, mutable);
        } catch (Throwable t) {
            Log.w(TAG, "inflateInboxEntry failed", t);
            return null;
        }
    }
}
