package com.xp3.common;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * Background threads for an activity's work (common/ui's Ui.worker).
 *
 * An activity makes its pools as fields and not every app shuts them down
 * in onDestroy (shutting down risks rejecting work a late callback queues).
 * So an idle thread ends by itself after a short while: a pool left behind
 * by a finished activity holds no thread, and work queued later still runs.
 * Threads are daemons, so they never keep the process alive either.
 */
public final class Workers {

    private Workers() {}

    static final long IDLE_MS = 10000;

    /** Up to `threads` jobs at once, in the order they were queued. */
    public static ExecutorService pool(final String name, int threads) {
        return pool(name, threads, IDLE_MS);
    }

    static ExecutorService pool(final String name, int threads, long idleMs) {
        ThreadPoolExecutor pool = new ThreadPoolExecutor(threads, threads, idleMs, TimeUnit.MILLISECONDS,
            new LinkedBlockingQueue<Runnable>(), runnable -> {
                Thread thread = new Thread(runnable, name);
                thread.setDaemon(true);
                return thread;
            });
        pool.allowCoreThreadTimeOut(true);
        return pool;
    }
}
