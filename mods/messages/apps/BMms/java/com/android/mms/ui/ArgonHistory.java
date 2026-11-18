package com.android.mms.ui;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;

import com.android.mms.util.ArgonLaunch;

/** Keep the stock full-history scroll range and anchor when the cursor refreshes. */
public final class ArgonHistory {
    private static final int HISTORY = 9527;
    public static final int ANCHORED = -2;

    private final ComposeMessageActivity activity;
    private final ListView list;
    private long thread;
    private boolean keepFocus, firstRowsMeasured, opened;
    private BottomAlignment bottomAlignment;
    private Intent selectedIntent;
    private long selectedId = -1;

    private ArgonHistory(ComposeMessageActivity activity, ListView list) {
        this.activity = activity;
        this.list = list;
    }

    public static void attach(ComposeMessageActivity activity, ListView list) {
        ArgonHistory h = new ArgonHistory(activity, list);
        activity.mArgonHistory = h;
    }

    public static Uri queryUri(ComposeMessageActivity activity, int token, Uri uri) {
        if (token == HISTORY) ArgonLaunch.mark("history_requested");
        Uri indexed = ArgonTextMms.queryUri(uri);
        ArgonHistory h = (ArgonHistory) activity.mArgonHistory;
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
        return indexed.buildUpon().appendQueryParameter("argon_page", "1")
                .appendQueryParameter("argon_full", "1").build();
    }

    public static long selectionId(ComposeMessageActivity activity) {
        Intent intent = activity.getIntent();
        long id = intent.getLongExtra("select_id", -1);
        ArgonHistory h = (ArgonHistory) activity.mArgonHistory;
        return h != null && h.selectedIntent == intent && h.selectedId == id ? -1 : id;
    }

    /** Called before stock selection/scroll logic. Anchor by message identity, not list position. */
    public static int apply(ComposeMessageActivity activity, Cursor next, int selection) {
        MessageListAdapter adapter = activity.mMsgListAdapter;
        ArgonHistory h = (ArgonHistory) activity.mArgonHistory;
        if (h == null) {
            adapter.changeCursor(next);
            return selection;
        }
        long selected = selectionId(activity);
        Cursor old = adapter.getCursor();
        boolean indexed = next != null && next.getColumnIndex("argon_date") >= 0;
        boolean sameThread = old != null && next != null && next.getCount() > 0 && belongsTo(old, h.thread);
        Anchor anchor = null;
        if (indexed && sameThread && selected == -1 && !activity.argonScrollOnSend()
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
        if (!h.opened && next != null && next.getCount() > 0) {
            h.opened = true;
            if (selected == -1 && selection == -1 && position < 0) {
                h.bottomAlignment = h.new BottomAlignment();
                h.list.getViewTreeObserver().addOnPreDrawListener(h.bottomAlignment);
                // PDU rows can gain height after first layout. Never hold up drawing.
                h.list.postDelayed(h.bottomAlignment, 2200);
            }
        }
        if (ArgonLaunch.ENABLED && !h.firstRowsMeasured && next != null && next.getCount() > 0) {
            h.firstRowsMeasured = true;
            ArgonLaunch.awaitRows(h.list);
        }
        if (indexed && Log.isLoggable("ArgonHistory", Log.DEBUG)) {
            Log.d("ArgonHistory", "rows=" + next.getCount() + " older=false"
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
        ArgonHistory h = (ArgonHistory) activity.mArgonHistory;
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
                if (ArgonLaunch.ENABLED) ArgonLaunch.mark("history_align_bottom");
            }
            return true;
        }

        @Override public void run() {
            if (bottomAlignment == this) stopBottomAlignment();
        }
    }

    public static boolean keepFocus(ComposeMessageActivity activity) {
        return activity.mArgonHistory != null && ((ArgonHistory) activity.mArgonHistory).keepFocus;
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
            return new Key(c.getLong(c.getColumnIndexOrThrow("argon_date")), c.getString(0), c.getLong(1));
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
            if (c.getColumnIndex("argon_date") < 0) return null;
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
