package com.android.mms.ui;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;

import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Background pre-inflation pool for heavy Activity roots (compose_message_activity.xml,
 * conversation_list_screen.xml) and ListView row layouts (MessageListItem & ConversationListItem).
 * Each view is inflated on a high-priority background thread with the exact Activity theme +
 * MutableContextWrapper and handed to the UI thread with the live Activity swapped in.
 * In-flight root inflations are harvested via Future.get() so cold launches finish waiting on
 * an 85%-done background inflation (~15ms) instead of duplicating a 150ms main-thread inflation.
 */
public final class WaveRowPool {
    private static final String TAG = "WaveRowPool";

    static final int LAYOUT_MSG_RECV = 0x7f04002c;
    static final int LAYOUT_MSG_SEND = 0x7f04002d;
    static final int LAYOUT_INBOX_ROW = 0x7f04000e;
    static final int LAYOUT_INBOX_ROOT = 0x7f040012;
    static final int LAYOUT_COMPOSE_ROOT = 0x7f040009;

    private static final int THEME_COMPOSE = 0x7f0c0019;
    private static final int THEME_INBOX = 0x7f0c000d;
    private static final int DIMEN_INBOX_ROW_HEIGHT = 0x7f0b0019;

    private static final int TARGET_RECV = 5;
    private static final int TARGET_SEND = 5;
    private static final int TARGET_INBOX = 4;

    private static final long ROOT_HARVEST_TIMEOUT_MS = 450L;

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
    private static final ConcurrentLinkedQueue<Entry> INBOX_ROOT_POOL = new ConcurrentLinkedQueue<>();
    private static final ConcurrentLinkedQueue<Entry> COMPOSE_ROOT_POOL = new ConcurrentLinkedQueue<>();

    private static final Object ROOT_LOCK = new Object();
    private static Future<Entry> sComposeRootFuture;
    private static Future<Entry> sInboxRootFuture;
    private static volatile boolean sComposeActive;
    /** Set only while obtainComposeRoot() is actively waiting on a compose-root future. */
    private static volatile Future<Entry> sComposeRootClaimed;
    /** Thread inflating the inbox root (0 = none), so a cold conversation open can demote it. */
    private static final Object TID_LOCK = new Object();
    private static int sInboxRootTid;
    private static boolean sInboxRootDemoted;

    private static final AtomicBoolean REFILL_MSG_SCHEDULED = new AtomicBoolean(false);
    private static final AtomicBoolean REFILL_INBOX_ROWS_SCHEDULED = new AtomicBoolean(false);

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static final ExecutorService EXEC = Executors.newFixedThreadPool(2,
            new ThreadFactory() {
                @Override
                public Thread newThread(final Runnable r) {
                    Thread t = new Thread(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                Process.setThreadPriority(Process.THREAD_PRIORITY_MORE_FAVORABLE);
                            } catch (Throwable ignored) {}
                            r.run();
                        }
                    }, "wave-row-pool");
                    t.setDaemon(true);
                    t.setPriority(Thread.MAX_PRIORITY - 1);
                    return t;
                }
            });

    private WaveRowPool() {}

    /** Kick off background compose-root and inbox-root inflation during MmsApp.onCreate().
     *  Inbox rows are chained right after inbox-root finishes so they never contend with root inflation
     *  and immediately yield if ComposeMessageActivity launches cold. */
    public static void prewarmInbox(Context ctx) {
        if (ctx == null) return;
        final Context app = ctx.getApplicationContext();
        scheduleComposeRootIfNeeded(app);
        scheduleInboxRootIfNeeded(app);
    }

    private static void scheduleComposeRootIfNeeded(final Context app) {
        synchronized (ROOT_LOCK) {
            if (!COMPOSE_ROOT_POOL.isEmpty() || sComposeRootFuture != null) return;
            sComposeRootFuture = EXEC.submit(new Callable<Entry>() {
                @Override
                public Entry call() {
                    Entry e = inflateComposeRootEntry(app);
                    synchronized (ROOT_LOCK) {
                        if (sComposeRootFuture != null) {
                            // Not claimed by obtainComposeRoot() yet -> store in pool for instant poll.
                            if (e != null) COMPOSE_ROOT_POOL.offer(e);
                            sComposeRootFuture = null;
                            return null;
                        }
                    }
                    // Claimed by obtainComposeRoot() -> return directly to the waiter.
                    return e;
                }
            });
        }
    }

    /**
     * PERF(cold conversation open): the inbox root started in MmsApp.onCreate is not needed when
     * the process was started for a conversation, but it competes with the compose root for the
     * 4 cores and the AssetManager lock. Slightly lower its priority while it finishes (avoiding
     * BACKGROUND nice 10 lock priority inversion); the result is still pooled for a later inbox open.
     */
    public static void composeOpening() {
        synchronized (TID_LOCK) {
            if (sInboxRootTid <= 0 || sInboxRootDemoted) return;
            try {
                Process.setThreadPriority(sInboxRootTid, Process.THREAD_PRIORITY_LESS_FAVORABLE);
                sInboxRootDemoted = true;
                com.android.mms.util.WaveLaunch.mark("inbox_root_demoted");
            } catch (Throwable ignored) {}
        }
    }

    private static void promoteInboxRoot() {
        synchronized (TID_LOCK) {
            if (sInboxRootTid <= 0 || !sInboxRootDemoted) return;
            try {
                Process.setThreadPriority(sInboxRootTid, Process.THREAD_PRIORITY_MORE_FAVORABLE);
            } catch (Throwable ignored) {}
            sInboxRootDemoted = false;
        }
    }

    private static void scheduleInboxRootIfNeeded(final Context app) {
        synchronized (ROOT_LOCK) {
            if (!INBOX_ROOT_POOL.isEmpty() || sInboxRootFuture != null) return;
            sInboxRootFuture = EXEC.submit(new Callable<Entry>() {
                @Override
                public Entry call() {
                    Entry e = inflateInboxRootEntry(app);
                    synchronized (ROOT_LOCK) {
                        if (sInboxRootFuture != null) {
                            if (e != null) INBOX_ROOT_POOL.offer(e);
                            sInboxRootFuture = null;
                            if (!sComposeActive) scheduleInboxRowsIfNeeded(app);
                            return null;
                        }
                    }
                    if (!sComposeActive) scheduleInboxRowsIfNeeded(app);
                    return e;
                }
            });
        }
    }

    private static void scheduleInboxRowsIfNeeded(final Context app) {
        if (INBOX_POOL.size() >= TARGET_INBOX || sComposeActive) return;
        if (!REFILL_INBOX_ROWS_SCHEDULED.compareAndSet(false, true)) return;
        EXEC.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    int rowHeight = app.getResources().getDimensionPixelSize(DIMEN_INBOX_ROW_HEIGHT);
                    while (INBOX_POOL.size() < TARGET_INBOX && !sComposeActive) {
                        Entry e = inflateInboxEntry(app, rowHeight);
                        if (e == null) break;
                        INBOX_POOL.offer(e);
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "prewarmInboxRows failed", t);
                } finally {
                    REFILL_INBOX_ROWS_SCHEDULED.set(false);
                }
            }
        });
    }

    /** Kick off background message-row & compose-root inflation (interleaved on 1 worker to avoid AssetManager contention). */
    public static void prewarmMessages(Context ctx) {
        if (ctx == null) return;
        sComposeActive = true;
        final Context app = ctx.getApplicationContext();
        scheduleComposeRootIfNeeded(app);
        if (RECV_POOL.size() >= TARGET_RECV && SEND_POOL.size() >= TARGET_SEND) return;
        if (!REFILL_MSG_SCHEDULED.compareAndSet(false, true)) return;
        EXEC.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    // Only wait on a compose-root future the main thread is actively blocked on,
                    // never on a speculative refill root (so scroll/warm refills stay parallel).
                    Future<Entry> root = sComposeRootClaimed;
                    if (root != null && !root.isDone()) {
                        try {
                            root.get(ROOT_HARVEST_TIMEOUT_MS, TimeUnit.MILLISECONDS);
                        } catch (Throwable ignored) {}
                    }
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

    /** Schedule message-row & compose-root prewarming slightly after inbox rows settle. */
    public static void prewarmMessagesDelayed(Context ctx) {
        if (ctx == null) return;
        if (RECV_POOL.size() >= TARGET_RECV && SEND_POOL.size() >= TARGET_SEND
                && !COMPOSE_ROOT_POOL.isEmpty()) return;
        final Context app = ctx.getApplicationContext();
        MAIN.postDelayed(new Runnable() {
            @Override
            public void run() {
                prewarmMessages(app);
            }
        }, 250L);
    }

    /** Obtain a pre-inflated conversation_list_screen.xml root layout for ConversationList. */
    public static View obtainInboxRoot(LayoutInflater fallbackInflater, int layoutRes) {
        sComposeActive = false;
        promoteInboxRoot();
        if (layoutRes == LAYOUT_INBOX_ROOT) {
            Entry e = INBOX_ROOT_POOL.poll();
            if (e == null) {
                Future<Entry> f;
                synchronized (ROOT_LOCK) {
                    e = INBOX_ROOT_POOL.poll();
                    f = (e == null) ? sInboxRootFuture : null;
                    if (f != null) sInboxRootFuture = null;
                }
                if (f != null) {
                    try {
                        e = f.get(ROOT_HARVEST_TIMEOUT_MS, TimeUnit.MILLISECONDS);
                    } catch (Throwable ignored) {}
                }
            }
            if (e != null) {
                e.mutableCtx.setBaseContext(fallbackInflater.getContext());
                return e.view;
            }
        }
        return fallbackInflater.inflate(layoutRes, null);
    }

    /** Obtain a pre-inflated 70-view compose_message_activity.xml root layout for ComposeMessageActivity. */
    public static View obtainComposeRoot(LayoutInflater fallbackInflater, int layoutRes) {
        sComposeActive = true;
        if (layoutRes == LAYOUT_COMPOSE_ROOT) {
            Entry e = COMPOSE_ROOT_POOL.poll();
            if (e == null) {
                Future<Entry> f;
                synchronized (ROOT_LOCK) {
                    e = COMPOSE_ROOT_POOL.poll();
                    f = (e == null) ? sComposeRootFuture : null;
                    if (f != null) sComposeRootFuture = null;
                }
                if (f != null) {
                    com.android.mms.util.WaveLaunch.mark("compose_root_future");
                    sComposeRootClaimed = f;
                    try {
                        e = f.get(ROOT_HARVEST_TIMEOUT_MS, TimeUnit.MILLISECONDS);
                    } catch (Throwable ignored) {
                    } finally {
                        if (sComposeRootClaimed == f) sComposeRootClaimed = null;
                    }
                    com.android.mms.util.WaveLaunch.mark("compose_root_waited");
                }
            } else {
                com.android.mms.util.WaveLaunch.mark("compose_root_pool");
            }
            Context liveCtx = fallbackInflater.getContext();
            if (e == null) com.android.mms.util.WaveLaunch.mark("compose_root_fallback");
            if (e != null) {
                e.mutableCtx.setBaseContext(liveCtx);
                prewarmMessagesDelayed(liveCtx);
                return e.view;
            }
            prewarmMessagesDelayed(liveCtx);
        }
        return fallbackInflater.inflate(layoutRes, null);
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
            com.android.mms.util.WaveLaunch.mark("row_pool_miss");
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

    private static Entry inflateComposeRootEntry(Context app) {
        try {
            MutableContextWrapper mutable = new MutableContextWrapper(app);
            ContextThemeWrapper themed = new ContextThemeWrapper(mutable, THEME_COMPOSE);
            LayoutInflater inflater = LayoutInflater.from(app).cloneInContext(themed);
            View v = inflater.inflate(LAYOUT_COMPOSE_ROOT, null);
            return new Entry(v, mutable);
        } catch (Throwable t) {
            Log.w(TAG, "inflateComposeRootEntry failed", t);
            return null;
        }
    }

    private static Entry inflateInboxRootEntry(Context app) {
        synchronized (TID_LOCK) {
            sInboxRootTid = Process.myTid();
            sInboxRootDemoted = false;
        }
        try {
            MutableContextWrapper mutable = new MutableContextWrapper(app);
            ContextThemeWrapper themed = new ContextThemeWrapper(mutable, THEME_INBOX);
            LayoutInflater inflater = LayoutInflater.from(app).cloneInContext(themed);
            View v = inflater.inflate(LAYOUT_INBOX_ROOT, null);
            return new Entry(v, mutable);
        } catch (Throwable t) {
            Log.w(TAG, "inflateInboxRootEntry failed", t);
            return null;
        } finally {
            synchronized (TID_LOCK) {
                boolean demoted = sInboxRootDemoted;
                sInboxRootTid = 0;
                sInboxRootDemoted = false;
                // This pool thread runs later tasks: give it back its normal priority.
                if (demoted) {
                    try {
                        Process.setThreadPriority(Process.THREAD_PRIORITY_MORE_FAVORABLE);
                    } catch (Throwable ignored) {}
                }
            }
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
