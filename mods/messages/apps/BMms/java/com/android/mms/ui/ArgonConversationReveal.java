package com.android.mms.ui;

import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;

import com.android.mms.util.ArgonLaunch;

/** Keep the starting window until the first conversation viewport is usable. */
final class ArgonConversationReveal implements ViewTreeObserver.OnPreDrawListener {
    private static final long MAX_WAIT_MS = 3500;
    private final ListView list;
    private final long deadline = SystemClock.uptimeMillis() + MAX_WAIT_MS;
    private boolean waiting = true;
    private boolean historyDelivered;

    ArgonConversationReveal(ListView list) {
        this.list = list;
        list.getViewTreeObserver().addOnPreDrawListener(this);
    }

    void historyDelivered() {
        historyDelivered = true;
    }

    void close() {
        if (!waiting) return;
        waiting = false;
        ViewTreeObserver observer = list.getViewTreeObserver();
        if (observer.isAlive()) observer.removeOnPreDrawListener(this);
    }

    @Override public boolean onPreDraw() {
        if (!waiting) return true;
        if (historyDelivered && viewportReady()) {
            close();
            ArgonLaunch.mark("history_revealed");
            return true;
        }
        if (SystemClock.uptimeMillis() >= deadline) {
            // A stalled provider or damaged attachment must not keep the window hidden.
            close();
            ArgonLaunch.mark("history_reveal_timeout");
            return true;
        }
        return false;
    }

    private boolean viewportReady() {
        if (list.getCount() == 0) return true;
        if (!list.isShown() || list.getChildCount() == 0 || list.isLayoutRequested()) return false;
        for (int i = 0, count = list.getChildCount(); i < count; i++) {
            View row = list.getChildAt(i);
            if (!(row instanceof MessageListItem) || row.getVisibility() != View.VISIBLE
                    || row.getBottom() <= 0 || row.getTop() >= list.getHeight()) continue;
            MessageItem item = ((MessageListItem) row).getMessageItem();
            if (item == null || item.mArgonPduPending) return false;
        }
        return true;
    }
}
