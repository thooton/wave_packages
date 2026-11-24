package com.android.mms.ui;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;

import com.android.mms.util.WaveLaunch;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/** Keep the stock full-history scroll range and anchor when the cursor refreshes. */
public final class WaveHistory {
    private static final int HISTORY = 9527;
    public static final int ANCHORED = -2;
    private static final long HARVEST_WAIT_MS = 45L;

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService QUERY_EXEC = Executors.newSingleThreadExecutor(
            new ThreadFactory() {
                @Override
                public Thread newThread(Runnable r) {
                    Thread t = new Thread(r, "wave-history-query");
                    t.setDaemon(true);
                    t.setPriority(Thread.MAX_PRIORITY - 1);
                    return t;
                }
            });

    private static final class PendingQuery {
        final long threadId;
        Future<Cursor> future;
        boolean delivered;
        volatile boolean cancelled;

        PendingQuery(long threadId) {
            this.threadId = threadId;
        }
    }

    private final ComposeMessageActivity activity;
    private final ListView list;
    private long thread;
    private long earlyQueryThread = -1;
    private boolean skipFirstStartTitle;
    private PendingQuery pendingQuery;

    private static final class DeferredReceivers {
        Runnable pending;
        android.content.BroadcastReceiver[] registered;
    }

    private static final java.util.WeakHashMap<ComposeMessageActivity, DeferredReceivers> RECEIVERS =
            new java.util.WeakHashMap<>();
    private boolean keepFocus, firstRowsMeasured, opened, heldContactRefresh;
    private BottomAlignment bottomAlignment;
    private WaveConversationReveal reveal;
    private Intent selectedIntent;
    private long selectedId = -1;

    private WaveHistory(ComposeMessageActivity activity, ListView list) {
        this.activity = activity;
        this.list = list;
    }

    public static void attach(ComposeMessageActivity activity, ListView list) {
        WaveHistory h = new WaveHistory(activity, list);
        activity.mWaveHistory = h;
    }

    public static void beginReveal(ComposeMessageActivity activity, long threadId) {
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h == null) return;
        closeReveal(h);
        if (threadId > 0) h.reveal = new WaveConversationReveal(h.list);
        else com.android.mms.wave.WaveColdOpen.launchSettled();
    }

    public static void endReveal(ComposeMessageActivity activity) {
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h != null) closeReveal(h);
        // No reveal (new message, reply modes) or the activity stopped: release held startup work.
        com.android.mms.wave.WaveColdOpen.launchSettled();
    }

    private static void closeReveal(WaveHistory h) {
        if (h.reveal != null) {
            h.reveal.close();
            h.reveal = null;
        }
    }

    /**
     * PERF(cold open): ComposeMessageActivity$81 (contact-update refresh, main thread). While the
     * window is still hidden for the reveal, a refresh would drop every MessageItem (cancelling
     * their PDU loads) and push the reveal back. Hold it until the reveal ends; WaveComposePerf's
     * pending contacts are kept (drain() has not run), so the held refresh does exactly what it
     * would have done, just after the first conversation frame.
     */
    public static boolean deferWhileRevealing(ComposeMessageActivity activity, Runnable r) {
        WaveHistory h = activity == null ? null : (WaveHistory) activity.mWaveHistory;
        if (h == null || h.reveal == null || !h.reveal.isWaiting() || r == null) return false;
        h.heldContactRefresh = true;
        h.reveal.runAfterClose(r);
        WaveLaunch.mark("contact_refresh_deferred");
        return true;
    }

    /**
     * After a held cold-open contact refresh updates the header title, 1:1 threads do not show
     * per-row sender names, so skipping notifyDataSetChanged() avoids evicting all MessageItems
     * and flashing MMS placeholders right after the reveal.
     */
    public static boolean skipAdapterNotifyForHeld1to1(
            ComposeMessageActivity activity, com.android.mms.data.ContactList recipients) {
        WaveHistory h = activity == null ? null : (WaveHistory) activity.mWaveHistory;
        if (h == null || !h.heldContactRefresh) return false;
        h.heldContactRefresh = false;
        return recipients != null && recipients.size() <= 1;
    }

    private static final Object PREFETCH_LOCK = new Object();
    private static final long PREFETCH_TTL_MS = 2500L;
    private static long sPrefetchThreadId = -1;
    private static long sPrefetchAtMs;
    private static Cursor sPrefetchCursor;

    /** Store a freshly filled page-1 cursor from WaveThreadPrefetch for immediate adoption. */
    public static void offerPrefetchedCursor(long threadId, Cursor cursor) {
        if (threadId <= 0 || cursor == null) return;
        Cursor toClose;
        synchronized (PREFETCH_LOCK) {
            toClose = sPrefetchCursor;
            sPrefetchThreadId = threadId;
            sPrefetchAtMs = android.os.SystemClock.uptimeMillis();
            sPrefetchCursor = cursor;
        }
        if (toClose != null && toClose != cursor) {
            try { toClose.close(); } catch (Throwable ignored) {}
        }
    }

    /** Discard any cached prefetched cursor (e.g. when inbox data refreshes). */
    public static void clearPrefetchedCursor() {
        Cursor toClose;
        synchronized (PREFETCH_LOCK) {
            toClose = sPrefetchCursor;
            sPrefetchCursor = null;
            sPrefetchThreadId = -1;
        }
        if (toClose != null) {
            try { toClose.close(); } catch (Throwable ignored) {}
        }
    }

    private static Cursor takePrefetchedCursor(long threadId) {
        Cursor found = null;
        Cursor expired = null;
        synchronized (PREFETCH_LOCK) {
            if (sPrefetchCursor != null) {
                long age = android.os.SystemClock.uptimeMillis() - sPrefetchAtMs;
                if (sPrefetchThreadId == threadId && age >= 0 && age <= PREFETCH_TTL_MS
                        && !sPrefetchCursor.isClosed()) {
                    found = sPrefetchCursor;
                    sPrefetchCursor = null;
                    sPrefetchThreadId = -1;
                } else if (age > PREFETCH_TTL_MS) {
                    expired = sPrefetchCursor;
                    sPrefetchCursor = null;
                    sPrefetchThreadId = -1;
                }
            }
        }
        if (expired != null) {
            try { expired.close(); } catch (Throwable ignored) {}
        }
        return found;
    }

    private static final java.util.WeakHashMap<ComposeMessageActivity, PendingQuery> PRELAUNCH =
            new java.util.WeakHashMap<ComposeMessageActivity, PendingQuery>();
    private static final ExecutorService CONV_EXEC = Executors.newSingleThreadExecutor(
            new ThreadFactory() {
                @Override
                public Thread newThread(final Runnable r) {
                    Thread t = new Thread(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                android.os.Process.setThreadPriority(
                                        android.os.Process.THREAD_PRIORITY_MORE_FAVORABLE);
                            } catch (Throwable ignored) {}
                            r.run();
                        }
                    }, "wave-conv-warm");
                    t.setDaemon(true);
                    t.setPriority(Thread.MAX_PRIORITY - 1);
                    return t;
                }
            });

    /**
     * Called at the very top of ComposeMessageActivity.onCreate() (before super.onCreate() and
     * initResourceRefs()) so BOTH the page-1 history SQLite query AND Conversation.Cache warmup
     * overlap the entire Activity view inflation (~150-180ms earlier on cold chat open!).
     */
    public static void prelaunchFromIntent(final ComposeMessageActivity activity, android.os.Bundle savedInstanceState) {
        if (activity == null || savedInstanceState != null) return;
        android.content.Intent intent = activity.getIntent();
        if (intent == null) return;
        if (intent.getLongExtra("select_id", -1L) != -1L) return;
        long tid = intent.getLongExtra("thread_id", 0L);
        if (tid <= 0L) {
            Uri data = intent.getData();
            if (data != null && "content".equals(data.getScheme())
                    && "mms-sms".equals(data.getAuthority())) {
                try {
                    tid = android.content.ContentUris.parseId(data);
                } catch (Throwable ignored) {
                    tid = 0L;
                }
            }
        }
        final long threadId = tid;
        if (threadId <= 0L) return;

        final Context app = activity.getApplicationContext();
        // A conversation is opening: hold fixed-delay startup work until it is revealed and
        // let the compose root have the inflation threads.
        com.android.mms.wave.WaveColdOpen.launchBegan();
        WaveRowPool.composeOpening();
        // Touch Conversation static field on main thread so Conversation.<clinit> runs on a Looper thread.
        @SuppressWarnings("unused")
        Uri initCheck = com.android.mms.data.Conversation.sAllThreadsUri;
        CONV_EXEC.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    com.android.mms.data.Conversation.get(app, threadId, false);
                } catch (Throwable ignored) {}
                // Build the PDU loader (PduCache, PduPersister, DRM client) here instead of on the
                // main thread at history_received. The getter is synchronized and the loader's
                // Handler uses the main Looper.
                try {
                    com.android.mms.MmsApp mms = com.android.mms.MmsApp.getApplication();
                    if (mms != null) mms.getPduLoaderManager();
                } catch (Throwable ignored) {}
                com.android.mms.wave.WaveColdOpen.warmTimeFormats(app);
                WaveLaunch.mark("conv_warm_done");
            }
        });

        final PendingQuery p = new PendingQuery(threadId);
        synchronized (PRELAUNCH) {
            PendingQuery prev = PRELAUNCH.put(activity, p);
            if (prev != null) prev.cancelled = true;
        }
        final Cursor prefetched = takePrefetchedCursor(threadId);
        if (prefetched != null) {
            p.future = java.util.concurrent.CompletableFuture.completedFuture(prefetched);
            return;
        }
        final Uri qUri = WaveTextMms.queryUri(
                android.content.ContentUris.withAppendedId(android.provider.Telephony.Threads.CONTENT_URI, threadId))
                .buildUpon().appendQueryParameter("wave_page", "1").build();
        final String[] proj = MessageListAdapter.PROJECTION;
        p.future = QUERY_EXEC.submit(new Callable<Cursor>() {
            @Override
            public Cursor call() {
                if (p.cancelled) return null;
                Cursor c = null;
                try {
                    c = app.getContentResolver().query(qUri, proj, null, null, null);
                    if (c != null) {
                        c.getCount();
                        WaveMessageUi.warmMediaMetaForCursor(app, c, 6);
                    }
                } catch (Throwable t) {
                    Log.w("Mms", "WaveHistory prelaunch query failed", t);
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
                        WaveHistory h = (WaveHistory) activity.mWaveHistory;
                        if (h != null && h.pendingQuery == p) {
                            deliverPendingOnMain(activity, h, p, ready);
                        }
                    }
                });
                msg.setAsynchronous(true);
                MAIN.sendMessage(msg);
                return ready;
            }
        });
    }

    /**
     * Launch the initial conversation history query directly from ComposeMessageActivity.initialize()
     * on a dedicated high-priority thread so harvestEarlyQuery() at the end of onResume() can
     * deliver the cursor BEFORE WindowManager.addView() schedules an empty VSync-blocked frame.
     */
    public static boolean startEarlyQuery(final ComposeMessageActivity activity, final long threadId, Uri conversationUri) {
        final WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h == null || threadId <= 0 || conversationUri == null) return false;
        cancelPending(h);
        PendingQuery prelaunched;
        synchronized (PRELAUNCH) {
            prelaunched = PRELAUNCH.remove(activity);
        }
        if (prelaunched != null) {
            if (h.selectedId == -1L && prelaunched.threadId == threadId && !prelaunched.cancelled) {
                h.pendingQuery = prelaunched;
                h.earlyQueryThread = threadId;
                h.skipFirstStartTitle = true;
                return true;
            }
            prelaunched.cancelled = true;
            if (prelaunched.future != null && prelaunched.future.isDone()) {
                try {
                    Cursor stale = prelaunched.future.get();
                    if (stale != null && !stale.isClosed()) stale.close();
                } catch (Throwable ignored) {}
            }
        }
        final Uri qUri = queryUri(activity, HISTORY, conversationUri);
        final Context app = activity.getApplicationContext();
        final String[] proj = MessageListAdapter.PROJECTION;
        final PendingQuery p = new PendingQuery(threadId);
        h.pendingQuery = p;
        h.earlyQueryThread = threadId;
        h.skipFirstStartTitle = true;

        final Cursor prefetched = takePrefetchedCursor(threadId);
        if (prefetched != null) {
            p.future = java.util.concurrent.CompletableFuture.completedFuture(prefetched);
            return true;
        }

        p.future = QUERY_EXEC.submit(new Callable<Cursor>() {
            @Override
            public Cursor call() {
                if (p.cancelled) return null;
                Cursor c = null;
                try {
                    c = app.getContentResolver().query(qUri, proj, null, null, null);
                    if (c != null) {
                        c.getCount(); // force CursorWindow fill off the UI thread
                        WaveMessageUi.warmMediaMetaForCursor(app, c, 6);
                    }
                } catch (Throwable t) {
                    Log.w("Mms", "WaveHistory early query failed", t);
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
                        deliverPendingOnMain(activity, h, p, ready);
                    }
                });
                msg.setAsynchronous(true);
                MAIN.sendMessage(msg);
                return ready;
            }
        });
        return true;
    }

    /**
     * Called at the end of ComposeMessageActivity.onResume() (before WindowManager.addView()).
     * Harvests the already-completed (or nearly-completed) early query synchronously so the very
     * first ViewRootImpl layout/draw pass renders populated message rows with zero empty frame.
     */
    public static void harvestEarlyQuery(ComposeMessageActivity activity) {
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h == null) return;
        PendingQuery p = h.pendingQuery;
        if (p == null || p.delivered || p.cancelled || p.future == null) return;
        try {
            Cursor c = p.future.get(HARVEST_WAIT_MS, TimeUnit.MILLISECONDS);
            deliverPendingOnMain(activity, h, p, c);
        } catch (TimeoutException ignored) {
            // Still running; the background thread's asynchronous main message will deliver it.
        } catch (Throwable t) {
            Log.w("Mms", "WaveHistory harvest failed", t);
        }
    }

    private static void deliverPendingOnMain(
            ComposeMessageActivity activity, WaveHistory h, PendingQuery p, Cursor c) {
        if (p.delivered) return;
        p.delivered = true;
        if (h.pendingQuery == p) h.pendingQuery = null;
        if (p.cancelled || activity.isFinishing() || activity.isDestroyed()) {
            if (c != null) {
                try { c.close(); } catch (Throwable ignored) {}
            }
            return;
        }
        activity.waveDeliverQuery(HISTORY, Long.valueOf(p.threadId), c);
    }

    private static void cancelPending(WaveHistory h) {
        PendingQuery p = h.pendingQuery;
        if (p != null) {
            p.cancelled = true;
            h.pendingQuery = null;
            if (!p.delivered && p.future != null && p.future.isDone()) {
                p.delivered = true;
                try {
                    Cursor c = p.future.get();
                    if (c != null) c.close();
                } catch (Throwable ignored) {}
            }
        }
    }

    /**
     * Defer ComposeMessageActivity's 4 onStart() BroadcastReceiver registrations until right after
     * frame #1 draws, removing 4 synchronous ActivityManagerService Binder IPCs from open latency.
     */
    public static void registerReceiversDeferred(
            final ComposeMessageActivity activity,
            final android.content.BroadcastReceiver r1, final android.content.IntentFilter f1,
            final android.content.BroadcastReceiver r2, final android.content.IntentFilter f2,
            final android.content.BroadcastReceiver r3, final android.content.IntentFilter f3,
            final android.content.BroadcastReceiver r4, final android.content.IntentFilter f4) {
        unregisterReceivers(activity);
        final DeferredReceivers state = new DeferredReceivers();
        RECEIVERS.put(activity, state);
        final Runnable task = new Runnable() {
            @Override
            public void run() {
                if (state.pending != this) return;
                state.pending = null;
                if (activity.isFinishing() || activity.isDestroyed()) return;
                android.content.BroadcastReceiver[] list = new android.content.BroadcastReceiver[4];
                android.content.BroadcastReceiver[] rs = new android.content.BroadcastReceiver[] { r1, r2, r3, r4 };
                android.content.IntentFilter[] fs = new android.content.IntentFilter[] { f1, f2, f3, f4 };
                for (int i = 0; i < 4; i++) {
                    if (rs[i] != null && fs[i] != null) {
                        try {
                            activity.registerReceiver(rs[i], fs[i]);
                            list[i] = rs[i];
                        } catch (Throwable t) {
                            Log.w("WaveHistory", "deferred registerReceiver failed", t);
                        }
                    }
                }
                state.registered = list;
            }
        };
        state.pending = task;
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h != null && h.reveal != null && h.reveal.isWaiting()) {
            // MAIN.post here still runs before the first frame (it is queued ahead of the
            // traversal). Register right after the conversation is revealed instead; the
            // fallback only matters if the reveal never ends. The task runs once either way.
            h.reveal.runAfterClose(task);
            MAIN.postDelayed(task, 1500L);
        } else {
            MAIN.post(task);
        }
    }

    /** Cancel deferred registration or unregister any receivers registered by registerReceiversDeferred(). */
    public static void unregisterReceivers(ComposeMessageActivity activity) {
        if (activity == null) return;
        PendingQuery orphan;
        synchronized (PRELAUNCH) {
            orphan = PRELAUNCH.remove(activity);
        }
        if (orphan != null) {
            orphan.cancelled = true;
            if (orphan.future != null && orphan.future.isDone()) {
                try {
                    Cursor c = orphan.future.get();
                    if (c != null && !c.isClosed()) c.close();
                } catch (Throwable ignored) {}
            }
        }
        DeferredReceivers state = RECEIVERS.remove(activity);
        if (state == null) return;
        if (state.pending != null) {
            MAIN.removeCallbacks(state.pending);
            state.pending = null;
        }
        android.content.BroadcastReceiver[] list = state.registered;
        state.registered = null;
        if (list != null) {
            for (android.content.BroadcastReceiver r : list) {
                if (r != null) {
                    try {
                        activity.unregisterReceiver(r);
                    } catch (Throwable ignored) {}
                }
            }
        }
    }

    /** Skip duplicate updateTitle() in onStart() right after initialize() already set the title. */
    public static boolean consumeFirstStartTitle(ComposeMessageActivity activity) {
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h != null && h.skipFirstStartTitle) {
            h.skipFirstStartTitle = false;
            return true;
        }
        return false;
    }

    /** Consume the early-query marker in loadMessageContent() so onStart() does not query twice. */
    public static boolean consumeEarlyQuery(ComposeMessageActivity activity, long threadId) {
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h == null) return false;
        boolean matched = h.earlyQueryThread > 0 && h.earlyQueryThread == threadId;
        h.earlyQueryThread = -1;
        if (!matched) cancelPending(h);
        return matched;
    }

    public static Uri queryUri(ComposeMessageActivity activity, int token, Uri uri) {
        if (token == HISTORY) WaveLaunch.mark("history_requested");
        Uri indexed = WaveTextMms.queryUri(uri);
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h == null || token != HISTORY || indexed == uri) return indexed;
        long thread;
        try {
            thread = Long.parseLong(uri.getLastPathSegment());
        } catch (NumberFormatException e) {
            return indexed;
        }
        if (thread != h.thread) {
            h.stopBottomAlignment();
            h.thread = thread;
            h.selectedIntent = null;
            h.opened = false;
        }
        // Ask for the complete cursor with indexed sort keys for refresh anchoring.
        return indexed.buildUpon().appendQueryParameter("wave_page", "1")
                .appendQueryParameter("wave_full", "1").build();
    }

    public static long selectionId(ComposeMessageActivity activity) {
        Intent intent = activity.getIntent();
        long id = intent.getLongExtra("select_id", -1);
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        return h != null && h.selectedIntent == intent && h.selectedId == id ? -1 : id;
    }

    /** Called before stock selection/scroll logic. Anchor by message identity, not list position. */
    public static int apply(ComposeMessageActivity activity, Cursor next, int selection) {
        MessageListAdapter adapter = activity.mMsgListAdapter;
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h == null) {
            adapter.changeCursor(next);
            return selection;
        }
        long selected = selectionId(activity);
        Cursor old = adapter.getCursor();
        boolean indexed = next != null && next.getColumnIndex("wave_date") >= 0;
        boolean sameThread = old != null && next != null && next.getCount() > 0 && belongsTo(old, h.thread);
        Anchor anchor = null;
        if (indexed && sameThread && selected == -1 && !activity.waveScrollOnSend()
                && h.list.getLastVisiblePosition() < old.getCount() - 1) {
            anchor = Anchor.capture(h.list, old);
        }
        if (selected != -1 && next != null) {
            h.selectedIntent = activity.getIntent();
            h.selectedId = selected;
        }
        h.keepFocus = false;
        int position = anchor == null ? -1 : anchor.find(next);
        adapter.changeCursor(next);
        if (h.reveal != null) h.reveal.historyDelivered();
        if (!h.opened && next != null && next.getCount() > 0) {
            h.opened = true;
            if (selected == -1 && selection == -1 && position < 0) {
                h.bottomAlignment = h.new BottomAlignment();
                h.list.getViewTreeObserver().addOnPreDrawListener(h.bottomAlignment);
                // PDU rows can gain height after first layout. Never hold up drawing.
                h.list.postDelayed(h.bottomAlignment, 2200);
            }
        }
        if (WaveLaunch.ENABLED && !h.firstRowsMeasured && next != null && next.getCount() > 0) {
            h.firstRowsMeasured = true;
            WaveLaunch.awaitRows(h.list);
        }
        if (indexed && Log.isLoggable("WaveHistory", Log.DEBUG)) {
            Log.d("WaveHistory", "rows=" + next.getCount() + " older=false"
                    + " anchor=" + position + " selection=" + selection);
        }
        if (position >= 0) {
            h.keepFocus = true;
            h.list.setSelectionFromTop(position, anchor.top);
            return ANCHORED;
        }
        return selection;
    }

    public static void stopInitialAlignment(ComposeMessageActivity activity) {
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h != null) h.stopBottomAlignment();
    }

    private void stopBottomAlignment() {
        if (bottomAlignment == null) return;
        list.getViewTreeObserver().removeOnPreDrawListener(bottomAlignment);
        list.removeCallbacks(bottomAlignment);
        bottomAlignment = null;
    }

    private final class BottomAlignment implements ViewTreeObserver.OnPreDrawListener, Runnable {
        @Override public boolean onPreDraw() {
            int last = list.getCount() - 1;
            if (!list.isShown() || last < 0 || list.getLastVisiblePosition() != last) return true;
            View row = list.getChildAt(last - list.getFirstVisiblePosition());
            if (row == null) return true;
            int overflow = row.getBottom() - (list.getHeight() - list.getListPaddingBottom());
            if (overflow > 0) {
                list.scrollListBy(overflow);
                if (WaveLaunch.ENABLED) WaveLaunch.mark("history_align_bottom");
            }
            return true;
        }

        @Override public void run() {
            if (bottomAlignment == this) stopBottomAlignment();
        }
    }

    public static boolean keepFocus(ComposeMessageActivity activity) {
        return activity.mWaveHistory != null && ((WaveHistory) activity.mWaveHistory).keepFocus;
    }

    private static boolean belongsTo(Cursor c, long thread) {
        int pos = c.getPosition();
        try {
            return c.moveToFirst() && c.getLong(2) == thread;
        } finally {
            c.moveToPosition(pos);
        }
    }

    private static final class Key implements Comparable<Key> {
        final long date, id;
        final String kind;
        Key(long date, String kind, long id) {
            this.date = date;
            this.kind = kind;
            this.id = id;
        }
        static Key read(Cursor c) {
            return new Key(c.getLong(c.getColumnIndexOrThrow("wave_date")), c.getString(0), c.getLong(1));
        }
        @Override public int compareTo(Key other) {
            int cmp = Long.compare(date, other.date);
            if (cmp == 0) cmp = kind.compareTo(other.kind);
            return cmp == 0 ? Long.compare(id, other.id) : cmp;
        }
    }

    private static final class Anchor {
        final Key key;
        final int top;
        Anchor(Key key, int top) {
            this.key = key;
            this.top = top;
        }
        static Anchor capture(ListView list, Cursor c) {
            if (c.getColumnIndex("wave_date") < 0) return null;
            int oldPosition = c.getPosition();
            try {
                int row = list.getFirstVisiblePosition();
                View child = list.getChildAt(0);
                View selected = list.getSelectedView();
                if (list.hasFocus() && selected != null) {
                    child = selected;
                    row = list.getSelectedItemPosition();
                }
                return child != null && c.moveToPosition(row)
                        ? new Anchor(Key.read(c), child.getTop() - list.getListPaddingTop()) : null;
            } finally {
                c.moveToPosition(oldPosition);
            }
        }
        int find(Cursor c) {
            int pos = c.getPosition();
            try {
                int lo = 0, hi = c.getCount();
                while (lo < hi) {
                    int mid = (lo + hi) >>> 1;
                    if (!c.moveToPosition(mid)) return -1;
                    if (Key.read(c).compareTo(key) < 0) lo = mid + 1;
                    else hi = mid;
                }
                return Math.min(lo, c.getCount() - 1);
            } finally {
                c.moveToPosition(pos);
            }
        }
    }
}
