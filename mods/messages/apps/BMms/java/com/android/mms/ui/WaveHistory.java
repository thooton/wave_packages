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
    private boolean keepFocus, firstRowsMeasured, opened;
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
        endReveal(activity);
        if (threadId > 0) h.reveal = new WaveConversationReveal(h.list);
    }

    public static void endReveal(ComposeMessageActivity activity) {
        WaveHistory h = (WaveHistory) activity.mWaveHistory;
        if (h != null && h.reveal != null) {
            h.reveal.close();
            h.reveal = null;
        }
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
        final Uri qUri = queryUri(activity, HISTORY, conversationUri);
        final Context app = activity.getApplicationContext();
        final String[] proj = MessageListAdapter.PROJECTION;
        final PendingQuery p = new PendingQuery(threadId);
        h.pendingQuery = p;
        h.earlyQueryThread = threadId;
        h.skipFirstStartTitle = true;
        p.future = QUERY_EXEC.submit(new Callable<Cursor>() {
            @Override
            public Cursor call() {
                if (p.cancelled) return null;
                Cursor c = null;
                try {
                    c = app.getContentResolver().query(qUri, proj, null, null, null);
                    if (c != null) c.getCount(); // force CursorWindow fill off the UI thread
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
