package com.android.mms.ui;

import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;

import com.android.mms.util.WaveLaunch;
import com.android.mms.wave.WaveColdOpen;

import java.util.ArrayList;

/** Keep the starting window until the first conversation viewport is usable. */
final class WaveConversationReveal implements ViewTreeObserver.OnPreDrawListener {
    private static final long MAX_WAIT_MS = 3500;
    private final ListView list;
    private final long deadline = SystemClock.uptimeMillis() + MAX_WAIT_MS;
    private boolean waiting = true;
    private boolean historyDelivered;
    private boolean waitedOnPdu;
    /** Main-thread work held while the window is hidden; posted once the reveal ends. */
    private ArrayList<Runnable> afterClose;
    private final Runnable closeTimer = new Runnable() {
        @Override public void run() {
            close();
        }
    };

    WaveConversationReveal(ListView list) {
        this.list = list;
        list.getViewTreeObserver().addOnPreDrawListener(this);
        list.postDelayed(closeTimer, MAX_WAIT_MS);
    }

    void historyDelivered() {
        historyDelivered = true;
    }

    boolean isWaiting() {
        return waiting;
    }

    /** Run r on the main thread right after the reveal ends (in order). Main thread only. */
    void runAfterClose(Runnable r) {
        if (!waiting) {
            list.post(r);
            return;
        }
        if (afterClose == null) afterClose = new ArrayList<>(4);
        afterClose.add(r);
    }

    void close() {
        if (!waiting) return;
        waiting = false;
        list.removeCallbacks(closeTimer);
        ViewTreeObserver observer = list.getViewTreeObserver();
        if (observer.isAlive()) observer.removeOnPreDrawListener(this);
        ArrayList<Runnable> rs = afterClose;
        afterClose = null;
        if (rs != null) {
            // list.post runs after the frame being drawn now (the first conversation frame).
            for (int i = 0; i < rs.size(); i++) list.post(rs.get(i));
        }
        WaveColdOpen.launchSettled();
    }

    @Override public boolean onPreDraw() {
        if (!waiting) return true;
        if (historyDelivered && viewportReady()) {
            close();
            WaveLaunch.mark("history_revealed");
            return true;
        }
        if (SystemClock.uptimeMillis() >= deadline) {
            // A stalled provider or damaged attachment must not keep the window hidden.
            close();
            WaveLaunch.mark("history_reveal_timeout");
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
            if (item == null) return false;
            if (item.mWavePduPending) {
                if (!waitedOnPdu) {
                    waitedOnPdu = true;
                    WaveLaunch.mark("reveal_wait_pdu");
                }
                return false;
            }
        }
        if (waitedOnPdu) WaveLaunch.mark("pdu_ready");
        return true;
    }
}
