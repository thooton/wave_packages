package com.dictation.xp3;

import android.os.Handler;
import android.os.HandlerThread;

import java.lang.reflect.Method;

/**
 * Holds the MSM8909 CPU at max frequency (1.09 GHz) while actively decoding via Qualcomm's
 * {@code android.util.BoostFramework}, matching {@code WaveBoost} in {@code mods/keyboard}.
 * Renewed every 1500 ms with a 2000 ms lease, and cancelled immediately when dictation stops.
 */
final class PerfLock {

    private static final int DURATION_MS = 2000;
    private static final int RENEW_MS = 1500;
    // 0x40800000 = CPU min freq cluster 0; 0x446 = 1094 MHz (Snapdragon 210 max).
    private static final int[] PARAMS = {0x40800000, 0x446};

    private HandlerThread thread;
    private Handler handler;
    private Object boost;
    private Method acquireMethod;
    private Method releaseMethod;
    private boolean initialized;
    private boolean active;

    private final Runnable renewTask = new Runnable() {
        @Override
        public void run() {
            synchronized (PerfLock.this) {
                if (!active) return;
                acquireLocked();
                if (handler != null) {
                    handler.postDelayed(this, RENEW_MS);
                }
            }
        }
    };

    synchronized void start() {
        if (active) return;
        ensureInit();
        active = true;
        if (handler != null && boost != null && acquireMethod != null) {
            handler.removeCallbacks(renewTask);
            handler.post(renewTask);
        }
    }

    synchronized void stop() {
        if (!active) return;
        active = false;
        if (handler != null) {
            handler.removeCallbacks(renewTask);
            if (boost != null && releaseMethod != null) {
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        releaseQuietly();
                    }
                });
            }
        }
    }

    synchronized void shutdown() {
        stop();
        if (thread != null) {
            thread.quitSafely();
            thread = null;
            handler = null;
        }
    }

    private void ensureInit() {
        if (initialized) return;
        initialized = true;
        try {
            Class<?> c = Class.forName("android.util.BoostFramework");
            boost = c.getConstructor().newInstance();
            acquireMethod = c.getMethod("perfLockAcquire", int.class, int[].class);
            try {
                releaseMethod = c.getMethod("perfLockRelease");
            } catch (NoSuchMethodException ignored) {
                releaseMethod = null;
            }
            thread = new HandlerThread("dictation-boost");
            thread.start();
            handler = new Handler(thread.getLooper());
        } catch (Throwable ignored) {
            // Absent on non-Qualcomm devices or emulators; gracefully no-op.
            boost = null;
            acquireMethod = null;
            releaseMethod = null;
        }
    }

    private void acquireLocked() {
        if (boost == null || acquireMethod == null) return;
        try {
            acquireMethod.invoke(boost, Integer.valueOf(DURATION_MS), PARAMS);
        } catch (Throwable ignored) {
        }
    }

    private void releaseQuietly() {
        if (boost == null || releaseMethod == null) return;
        try {
            releaseMethod.invoke(boost);
        } catch (Throwable ignored) {
        }
    }
}
