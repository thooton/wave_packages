package com.android.mms.wave;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

import com.android.mms.util.WaveLaunch;

import java.util.ArrayList;

/**
 * PERF(cold conversation open): keeps fixed-delay startup work out of the conversation reveal
 * window. WaveInit's deferred runnables were timed for the inbox launch and landed right inside
 * a cold conversation's history -> reveal window. While a conversation opens, they are held
 * and replayed (staggered) once its first viewport is revealed, or after a hard cap.
 * A process started for the inbox or a broadcast never opens the gate, so its timing is unchanged.
 */
public final class WaveColdOpen {
    private WaveColdOpen() {}

    /** Never hold deferred startup work longer than this after a conversation starts opening. */
    private static final long CAP_MS = 2500L;

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ArrayList<Runnable> HELD = new ArrayList<>();
    private static volatile long sBusyUntil; // uptimeMillis, 0 = open

    private static final Runnable EXPIRE = new Runnable() {
        @Override public void run() {
            long until = sBusyUntil;
            if (until == 0L) return;
            if (SystemClock.uptimeMillis() >= until) {
                WaveLaunch.mark("launch_gate_cap");
                launchSettled();
            } else {
                MAIN.postAtTime(this, until);
            }
        }
    };

    /** A conversation is opening (main thread, ComposeMessageActivity.onCreate). */
    public static void launchBegan() {
        sBusyUntil = SystemClock.uptimeMillis() + CAP_MS;
    }

    /** The conversation viewport is revealed (or the reveal ended): replay held work. Main thread. */
    public static void launchSettled() {
        if (sBusyUntil == 0L) return;
        sBusyUntil = 0L;
        MAIN.removeCallbacks(EXPIRE);
        ArrayList<Runnable> rs;
        synchronized (HELD) {
            if (HELD.isEmpty()) return;
            rs = new ArrayList<>(HELD);
            HELD.clear();
        }
        WaveLaunch.mark("launch_gate_release");
        // Start after the frame being drawn now, then stagger so they don't pile into one frame.
        for (int i = 0; i < rs.size(); i++) MAIN.postDelayed(rs.get(i), 80L + 40L * i);
    }

    /**
     * Call first thing in a deferred startup runnable (main thread): true = held, return now;
     * the same runnable is run again once the conversation open settles.
     */
    public static boolean hold(Runnable r) {
        long until = sBusyUntil;
        if (until == 0L || SystemClock.uptimeMillis() >= until) return false;
        synchronized (HELD) {
            HELD.add(r);
        }
        MAIN.removeCallbacks(EXPIRE);
        MAIN.postAtTime(EXPIRE, until);
        return true;
    }

    /**
     * Fill WaveInit's isSmsEnabled cache off the main thread at app start, so the
     * ComposeMessageActivity.onCreate check is a field read instead of the process's first
     * PackageManager/AppOps binder calls. Same value and TTL as the main-thread path.
     */
    public static void primeSmsEnabledAsync(Context c) {
        try {
            final Context app = c.getApplicationContext();
            Thread t = new Thread(new Runnable() {
                @Override public void run() {
                    try {
                        WaveInit.isSmsEnabledCached(app);
                    } catch (Throwable ignored) {}
                }
            }, "wave-sms-default");
            t.setDaemon(true);
            t.start();
        } catch (Throwable ignored) {}
    }

    /**
     * First-use ICU/DateUtils formatter set-up for each timestamp style a conversation row uses
     * (today, this week, this year, other year), done on a worker before the rows bind.
     * The formatters and caches are thread-safe, so the rows' output is unchanged.
     */
    public static void warmTimeFormats(Context app) {
        try {
            long now = System.currentTimeMillis();
            long[] ts = { now - 2L * 3_600_000L, now - 3L * 86_400_000L, now - 40L * 86_400_000L,
                    now - 400L * 86_400_000L };
            for (long t : ts) com.android.mms.ui.MessageUtils.formatTimeStampString(app, t);
        } catch (Throwable ignored) {}
    }
}
