package com.android.mms.wave.imsg;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import javax.net.ssl.SSLSocket;

/**
 * Push Protocol Spec v1 §7 NAT-timeout probing.
 * Runs separate ROLE_PROBE connections in parallel without touching the main connection.
 * Uses WakeupClock.elapsedRealtimeMs() so sleep intervals stay accurate across CPU sleep.
 */
public final class Prober {
    public static final int[] COARSE_SET_S = new int[]{
            5 * 60,
            10 * 60,
            15 * 60,
            20 * 60,
            30 * 60,
            45 * 60,
            60 * 60
    };

    public interface Logger {
        void log(String msg);
    }

    public static final class ProbeResult {
        public final boolean connectFailed;
        public final int bestPassingS;
        public final int recommendedIntervalS;

        private ProbeResult(boolean connectFailed, int bestPassingS, int recommendedIntervalS) {
            this.connectFailed = connectFailed;
            this.bestPassingS = bestPassingS;
            this.recommendedIntervalS = recommendedIntervalS;
        }

        public static ProbeResult connectFailed() {
            return new ProbeResult(true, 0, Frame.FALLBACK_INTERVAL_S);
        }

        public static ProbeResult success(int bestPassingS, int recommendedIntervalS) {
            return new ProbeResult(false, bestPassingS, recommendedIntervalS);
        }
    }

    private enum SingleOutcome {
        CONNECT_FAILED,
        PASS,
        FAIL
    }

    private final String probeHost;
    private final int probePort;
    private final String tokenHex;
    private final double probeScale;
    private final WakeupClock clock;
    private final Object sleepLock;
    private final Logger logger;
    private final SecureRandom rng = new SecureRandom();

    public Prober(
            String probeHost,
            int probePort,
            String tokenHex,
            double probeScale,
            WakeupClock clock,
            Object sleepLock,
            Logger logger
    ) {
        this.probeHost = probeHost;
        this.probePort = probePort;
        this.tokenHex = tokenHex;
        this.probeScale = probeScale > 0.0 ? probeScale : 1.0;
        this.clock = clock != null ? clock : new WakeupClock.DefaultClock();
        this.sleepLock = sleepLock != null ? sleepLock : new Object();
        this.logger = logger;
    }

    public ProbeResult run() throws InterruptedException {
        log("Starting coarse probe pass (scale=" + probeScale + ") against " + probeHost + ":" + probePort);
        List<Integer> coarseCandidates = new ArrayList<Integer>(COARSE_SET_S.length);
        for (int s : COARSE_SET_S) {
            coarseCandidates.add(s);
        }

        List<SingleOutcome> coarseOutcomes = runBatch(coarseCandidates);
        int connectedCount = 0;
        int maxPass = 0;
        int minFail = 0;

        for (int i = 0; i < coarseCandidates.size(); i++) {
            int iv = coarseCandidates.get(i);
            SingleOutcome out = coarseOutcomes.get(i);
            log("Coarse " + iv + "s -> " + out);
            if (out != SingleOutcome.CONNECT_FAILED) {
                connectedCount++;
            }
            if (out == SingleOutcome.PASS && iv > maxPass) {
                maxPass = iv;
            }
        }

        if (connectedCount == 0) {
            log("All coarse probes failed to connect; leaving main connection unchanged");
            return ProbeResult.connectFailed();
        }

        for (int i = 0; i < coarseCandidates.size(); i++) {
            int iv = coarseCandidates.get(i);
            SingleOutcome out = coarseOutcomes.get(i);
            if (out == SingleOutcome.FAIL && iv > maxPass) {
                if (minFail == 0 || iv < minFail) {
                    minFail = iv;
                }
            }
        }

        int best = maxPass;

        if (minFail > 0) {
            int low = maxPass > 0 ? maxPass : Frame.FALLBACK_INTERVAL_S;
            List<Integer> fineCandidates = buildFineIntervals(low, minFail);
            if (!fineCandidates.isEmpty()) {
                log("Starting fine probe pass between " + low + "s and " + minFail + "s: " + fineCandidates);
                List<SingleOutcome> fineOutcomes = runBatch(fineCandidates);
                for (int i = 0; i < fineCandidates.size(); i++) {
                    int iv = fineCandidates.get(i);
                    SingleOutcome out = fineOutcomes.get(i);
                    log("Fine " + iv + "s -> " + out);
                    if (out == SingleOutcome.PASS && iv > best) {
                        best = iv;
                    }
                }
            }
        }

        int computed = (int) Math.floor(Frame.SAFETY_FACTOR * best);
        int recommended = Math.max(Frame.FALLBACK_INTERVAL_S, Math.min(65535, computed));
        log("Probe complete: best=" + best + "s -> interval=" + recommended + "s");
        return ProbeResult.success(best, recommended);
    }

    private static List<Integer> buildFineIntervals(int low, int high) {
        if (high - low <= 10) {
            return Collections.emptyList();
        }
        Set<Integer> set = new LinkedHashSet<Integer>();
        for (int k = 1; k <= 4; k++) {
            int val = low + (int) Math.round((high - low) * (k / 5.0));
            if (val > low && val < high) {
                set.add(val);
            }
        }
        return new ArrayList<Integer>(set);
    }

    private List<SingleOutcome> runBatch(List<Integer> intervalsS) throws InterruptedException {
        ExecutorService pool = Executors.newFixedThreadPool(intervalsS.size());
        try {
            List<Future<SingleOutcome>> futures = new ArrayList<Future<SingleOutcome>>(intervalsS.size());
            for (final int iv : intervalsS) {
                futures.add(pool.submit(new Callable<SingleOutcome>() {
                    @Override
                    public SingleOutcome call() throws Exception {
                        return probeSingle(iv);
                    }
                }));
            }
            List<SingleOutcome> results = new ArrayList<SingleOutcome>(intervalsS.size());
            for (Future<SingleOutcome> f : futures) {
                try {
                    results.add(f.get());
                } catch (InterruptedException ie) {
                    throw ie;
                } catch (Exception e) {
                    results.add(SingleOutcome.FAIL);
                }
            }
            return results;
        } finally {
            pool.shutdownNow();
        }
    }

    private SingleOutcome probeSingle(int intervalS) throws InterruptedException {
        SSLSocket socket = null;
        try {
            socket = TlsHelper.connect(probeHost, probePort, 10_000, 10_000);
            InputStream in = socket.getInputStream();
            OutputStream out = socket.getOutputStream();

            socket.setSoTimeout(10_000);
            Frame.hello(Frame.ROLE_PROBE, tokenHex, 0L, 0).writeTo(out);
            Frame resp = Frame.readFrom(in);
            if (resp == null || resp.type != Frame.TYPE_WELCOME) {
                return SingleOutcome.CONNECT_FAILED;
            }
            socket.setSoTimeout(0);

            // Probes run in parallel: each has its own wakeup and wakelock.
            String holder = "probe-" + intervalS;
            long sleepMs = Math.max(100L, Math.round(intervalS * 1000.0 * probeScale));
            sleepElapsed(holder, sleepMs);

            clock.acquireBriefWakeLock(holder, (Frame.PONG_TIMEOUT_S + 3) * 1000L);
            try {
                int nonce = rng.nextInt();
                socket.setSoTimeout(Frame.PONG_TIMEOUT_S * 1000);
                Frame.ping(nonce).writeTo(out);
                Frame pong = Frame.readFrom(in);
                if (pong != null && pong.type == Frame.TYPE_PONG && pong.nonce == nonce) {
                    try {
                        Frame.bye(Frame.BYE_NORMAL).writeTo(out);
                    } catch (IOException ignored) {
                    }
                    return SingleOutcome.PASS;
                }
                return SingleOutcome.FAIL;
            } finally {
                clock.releaseWakeLock(holder);
            }
        } catch (InterruptedException ie) {
            throw ie;
        } catch (IOException ioe) {
            return socket == null ? SingleOutcome.CONNECT_FAILED : SingleOutcome.FAIL;
        } finally {
            if (socket != null) {
                try {
                    socket.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

    /**
     * Sleeps for durationMs of elapsed (sleep-inclusive) time. Object.wait's timeout doesn't run
     * while the CPU is suspended, so the probe sets its own wakeup under {@code key}: without it,
     * it only woke at the main loop's next alarm, which on a learned 48-minute keepalive turned
     * a 5-minute probe into a 48-minute one, failed every probe and collapsed the interval to 60 s.
     * The wakeup's tick notifies sleepLock (PushClient's watchdog lock) and takes a wakelock
     * named {@code key} for us.
     */
    private void sleepElapsed(String key, long durationMs) throws InterruptedException {
        long deadline = clock.elapsedRealtimeMs() + durationMs;
        clock.scheduleWakeup(key, durationMs);
        try {
            while (true) {
                long left = deadline - clock.elapsedRealtimeMs();
                if (left <= 0L) {
                    return;
                }
                synchronized (sleepLock) {
                    sleepLock.wait(left);
                }
            }
        } finally {
            clock.cancelWakeup(key);
        }
    }

    private void log(String msg) {
        if (logger != null) {
            logger.log("[probe] " + msg);
        }
    }
}
