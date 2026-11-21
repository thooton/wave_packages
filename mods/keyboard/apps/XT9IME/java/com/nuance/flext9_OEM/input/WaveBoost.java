package com.nuance.flext9_OEM.input;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Arrays;

/**
 * Holds the CPU at its top frequency while the user types.
 *
 * The CPU governor ramps up only after load has been seen for a while, so a key press is
 * handled at the idle frequency (800 MHz instead of 1.09 GHz here), and drawing the suggestion
 * bar takes 3..4 times longer. On each key press the keyboard asks the platform's performance
 * service (Qualcomm BoostFramework, as the platform's own scroll and animation boosts do) to
 * keep the CPU minimum frequency at the top for a short while.
 *
 * While a key is handled and its frame drawn, the keyboard's main thread and RenderThread run
 * at audio priority: the editor app starts its own work for the key (relayout, provider
 * queries, its frame) at the same moment, and on four slow cores the suggestion frame
 * otherwise waits behind it. Their priorities go back a moment later.
 */
final class WaveBoost {
    private static final String TAG = WaveSpec.TAG;
    /** perf HAL: CPU minimum frequency, cluster 0 (MHz); as in /vendor/etc/perf/perfboostsconfig.xml. */
    private static final int MIN_FREQ = 0x40800000, MAX_MHZ = 0x446;
    private static final int DURATION_MS = 400, RENEW_MS = 250;

    private static Handler sHandler;
    private static Object sBoost;
    private static Method sAcquire;
    private static boolean sDisabled;
    private static long sLast;

    /** Threads raised while a key is handled: main and RenderThread(s), their own priorities. */
    private static final int URGENT = Process.THREAD_PRIORITY_URGENT_AUDIO, HOLD_MS = 120;
    private static int[] sTids = new int[0], sPrio = new int[0];
    /** All threads when raised (threads started while raised inherit URGENT; see LOWER). */
    private static int[] sAll = new int[0];
    private static boolean sRaised, sNoRaise;
    private static Handler sMain;

    /** Main thread, as a key event (down or up) arrives. */
    static void raise() {
        if (sNoRaise) return;
        if (sMain == null) sMain = new Handler(android.os.Looper.getMainLooper());
        sMain.removeCallbacks(LOWER);
        sMain.postDelayed(LOWER, HOLD_MS);
        if (sRaised) return;
        if (WaveSpec.prop("debug.wave.keyboard.noraise")) return;
        try {
            int[] all = threads();
            if (!Arrays.equals(all, sAll)) findRaised(all);
            sAll = all;
            for (int i = 0; i < sTids.length; i++) {
                sPrio[i] = Process.getThreadPriority(sTids[i]);
                if (sPrio[i] > URGENT) Process.setThreadPriority(sTids[i], URGENT);
            }
            sRaised = true;
        } catch (Throwable t) {
            Log.i(TAG, "no thread priority: " + t);
            sNoRaise = true;
        }
    }

    private static final Runnable LOWER = new Runnable() {
        @Override public void run() {
            if (!sRaised) return;
            sRaised = false;
            int mainPrio = sPrio.length > 0 ? sPrio[0] : 0;
            for (int i = 0; i < sTids.length; i++) {
                try {
                    if (sPrio[i] > URGENT) Process.setThreadPriority(sTids[i], sPrio[i]);
                } catch (Throwable gone) {
                    // Thread gone.
                }
            }
            // A thread started meanwhile (e.g. by the main thread) inherited URGENT instead of
            // the main thread's own priority: give it that.
            for (int t : threads()) {
                if (Arrays.binarySearch(sAll, t) >= 0) continue;
                try {
                    if (Process.getThreadPriority(t) == URGENT && mainPrio > URGENT) Process.setThreadPriority(t, mainPrio);
                } catch (Throwable gone) {
                    // Thread gone.
                }
            }
        }
    };

    /** This process's thread ids, sorted. */
    private static int[] threads() {
        String[] names = new java.io.File("/proc/self/task").list();
        if (names == null) return new int[0];
        int[] out = new int[names.length];
        int n = 0;
        for (String x : names) {
            try { out[n++] = Integer.parseInt(x); } catch (NumberFormatException ignored) { }
        }
        out = Arrays.copyOf(out, n);
        Arrays.sort(out);
        return out;
    }

    /** sTids: the main thread, then every RenderThread (names read for threads not seen before). */
    private static void findRaised(int[] all) {
        java.util.ArrayList<Integer> l = new java.util.ArrayList<>();
        l.add(Process.myTid());
        for (int i = 1; i < sTids.length; i++) {
            if (Arrays.binarySearch(all, sTids[i]) >= 0) l.add(sTids[i]);
        }
        for (int t : all) {
            if (Arrays.binarySearch(sAll, t) >= 0) continue;
            try (java.io.BufferedReader r = new java.io.BufferedReader(new java.io.FileReader("/proc/self/task/" + t + "/comm"))) {
                if ("RenderThread".equals(r.readLine())) l.add(t);
            } catch (Exception ignored) {
                // Thread gone.
            }
        }
        sTids = new int[l.size()];
        sPrio = new int[l.size()];
        for (int i = 0; i < sTids.length; i++) sTids[i] = l.get(i);
    }

    /** Main thread, on a key press. */
    static void keyPressed() {
        if (sDisabled) return;
        long now = SystemClock.uptimeMillis();
        if (now - sLast < RENEW_MS) return;
        sLast = now;
        if (sHandler == null) {
            HandlerThread t = new HandlerThread("WaveBoost", Process.THREAD_PRIORITY_FOREGROUND);
            t.start();
            sHandler = new Handler(t.getLooper());
        }
        sHandler.post(ACQUIRE);
    }

    private static final Runnable ACQUIRE = new Runnable() {
        @Override public void run() {
            try {
                if (sBoost == null) {
                    Class<?> c = Class.forName("android.util.BoostFramework");
                    sBoost = c.getConstructor().newInstance();
                    sAcquire = c.getMethod("perfLockAcquire", int.class, int[].class);
                }
                sAcquire.invoke(sBoost, DURATION_MS, new int[] {MIN_FREQ, MAX_MHZ});
            } catch (Throwable t) {
                Log.i(TAG, "no CPU boost: " + t);
                sDisabled = true;
            }
        }
    };
}
