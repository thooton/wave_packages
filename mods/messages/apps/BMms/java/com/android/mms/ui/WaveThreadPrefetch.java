package com.android.mms.ui;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Process;
import android.provider.Telephony;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/** Warm only the conversation the keypad has rested on, without adopting a speculative cursor. */
public final class WaveThreadPrefetch implements AdapterView.OnItemSelectedListener, Runnable {
    private static final String TAG = "WavePrefetch";
    private static final long DWELL_MS = 180;
    private static final int MEDIA_LIMIT = 4;
    private static final ThreadPoolExecutor WORKER = new ThreadPoolExecutor(1, 1, 10,
            TimeUnit.SECONDS, new ArrayBlockingQueue<>(1), task -> new Thread(() -> {
                Process.setThreadPriority(Process.THREAD_PRIORITY_BACKGROUND);
                task.run();
            }, "Wave thread prefetch"), new ThreadPoolExecutor.DiscardOldestPolicy());

    static { WORKER.allowCoreThreadTimeOut(true); }

    private final ListView list;
    private final Context context;
    private long selected = -1;
    private volatile long generation;

    private WaveThreadPrefetch(ListView list) {
        this.list = list;
        context = list.getContext().getApplicationContext();
    }

    public static WaveThreadPrefetch attach(ListView list) {
        WaveThreadPrefetch prefetch = new WaveThreadPrefetch(list);
        list.setOnItemSelectedListener(prefetch);
        return prefetch;
    }

    public static void windowFocus(WaveThreadPrefetch prefetch, boolean focused) {
        if (prefetch == null) return;
        if (focused) prefetch.update();
        else prefetch.cancel();
    }

    public static void stop(WaveThreadPrefetch prefetch) {
        if (prefetch != null) prefetch.cancel();
    }

    @Override public void onItemSelected(AdapterView<?> parent, View row, int position, long id) {
        update();
    }

    @Override public void onNothingSelected(AdapterView<?> parent) { cancel(); }

    private long selection() {
        return list.isShown() && list.hasWindowFocus() && list.hasFocus()
                && list.getSelectedView() instanceof ConversationListItem
                ? list.getSelectedItemId() : -1;
    }

    private void update() {
        long id = selection();
        if (id == selected) return;
        cancel();
        selected = id;
        if (id > 0) list.postDelayed(this, DWELL_MS);
    }

    private void cancel() {
        generation++;
        selected = -1;
        list.removeCallbacks(this);
    }

    @Override public void run() {
        long id = selection();
        if (id <= 0 || id != selected) return;
        long ticket = generation;
        WORKER.execute(() -> load(id, ticket));
    }

    private void load(long id, long ticket) {
        if (ticket != generation) return;
        Uri uri = WaveTextMms.queryUri(ContentUris.withAppendedId(Telephony.Threads.CONTENT_URI, id))
                .buildUpon().appendQueryParameter("wave_page", "1").build();
        Cursor cursor = null;
        boolean handedOff = false;
        try {
            cursor = context.getContentResolver().query(uri, MessageListAdapter.PROJECTION,
                    null, null, null);
            // Without the indexed provider, don't traverse an unbounded stock result.
            if (ticket != generation || cursor == null || cursor.getColumnIndex("wave_older") < 0) return;
            int rows = cursor.getCount();
            WaveMessageUi.warmMediaMetaForCursor(context, cursor, 6);
            List<WaveComposePerf.PduWarmup> media = WaveComposePerf.collectPduWarmups(cursor, MEDIA_LIMIT);
            if (ticket != generation) return;
            cursor.moveToPosition(-1);
            WaveHistory.offerPrefetchedCursor(id, cursor);
            handedOff = true;
            if (Log.isLoggable(TAG, Log.DEBUG)) Log.d(TAG, "ready rows=" + rows + " media=" + media.size());
            if (!media.isEmpty()) list.post(() -> {
                if (ticket == generation && selection() == id) WaveComposePerf.warmPdus(media);
            });
        } catch (RuntimeException e) {
            if (Log.isLoggable(TAG, Log.DEBUG)) Log.d(TAG, "Prefetch unavailable");
        } finally {
            if (!handedOff && cursor != null) {
                try { cursor.close(); } catch (Throwable ignored) {}
            }
        }
    }
}
