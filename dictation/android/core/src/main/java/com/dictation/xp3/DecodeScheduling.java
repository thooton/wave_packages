package com.dictation.xp3;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/**
 * Raises the decode thread and the XNNPACK pool workers it spawned to one bounded nice value
 * for a dictation session, then puts back exactly what it changed.
 *
 * <p>Why the workers need this: pthreadpool starts its workers once, from the decode thread, when
 * the pool is created (normally at the first preload, at nice 0). They copy the decode thread's
 * nice and name at clone time and live until the thread count changes or the process dies, so
 * raising the decode thread afterwards never reaches them.
 *
 * <p>Rules, each against touching the wrong thread:
 * <ul>
 * <li>Only this process: tids come from {@code /proc/self/task}, and a tid counts only while its
 *     stat reads under {@code /proc/self/task}, which the kernel refuses for a tid outside our
 *     thread group. The app has one process and no shared UID, so no other process of ours exists.
 * <li>A thread is (tid, start time), never its name: Linux reuses tids and names are not unique.
 * <li>A worker has exactly the decode thread's name, is not the main thread, and sits at the
 *     decode thread's starting nice. The pthreadpool is static in the native library, so its
 *     workers outlive a Service instance and can be older than the current decode thread; age is
 *     not used, because the name is ours alone. A thread born during the session at the requested
 *     nice inherited it from us and is restored too. Anything else (the -19 mic thread, an
 *     externally reniced thread, a thread at another nice) is left alone.
 * <li>More workers than the pool can have ({@code threads - 1}) means the name is ambiguous, and
 *     no new worker is raised until the count fits again.
 * <li>Never less urgent: a decode thread already at or above the request is left alone. Nothing
 *     is done when it is at or above {@code ANDROID_PRIORITY_BACKGROUND} (10), where Android's
 *     {@code setThreadPriority} would also move the thread's cgroup.
 * <li>Bounded: requests clamp to [{@link #MOST_URGENT}, 0]. SCHED_OTHER only; no real-time
 *     policy, affinity or cgroup writes.
 * <li>Restore only what is still ours: same identity and still at the value we set. A thread
 *     someone else changed meanwhile keeps their value.
 * <li>The first permission denial on a live thread undoes everything and turns the helper into a
 *     no-op for the rest of its life (one log line).
 * </ul>
 *
 * <p>Rules for the rest of the app: no other thread may have a name whose first 15 characters
 * equal the decode thread's ({@code dictation-decod}), and a native thread started from the decode
 * thread during a session inherits the raise. (Java threads don't: ART sets a new Java thread's
 * nice from its Java priority when it starts.)
 *
 * <p>Call {@link #enter} on the decode thread before the session's model load, {@link #refresh}
 * after anything that may have created the pool, and {@link #exit} in a {@code finally}.
 */
public final class DecodeScheduling {

    /** THREAD_PRIORITY_AUDIO. The mic thread runs at URGENT_AUDIO (-19) and must stay ahead. */
    public static final int MOST_URGENT = -16;
    /** No change; disables the raise (lab comparison and opt-out). */
    public static final int OFF = 0;
    /** libutils ANDROID_PRIORITY_BACKGROUND. */
    static final int BACKGROUND = 10;
    /** {@link Os#getNice} result for a thread that is gone. */
    public static final int NO_THREAD = Integer.MIN_VALUE;

    /** {@link Os#setNice} results. */
    public static final int SET_OK = 0;
    public static final int SET_GONE = 1;
    public static final int SET_DENIED = 2;
    public static final int SET_FAILED = 3;

    /** What the helper needs from the system. The app wraps android.os.Process; tests fake it. */
    public interface Os {
        int myPid();

        int myTid();

        /** Thread ids of this process (empty when unreadable). */
        int[] tids();

        /** The thread's stat while {@code tid} is a live thread of this process, else null. */
        Stat stat(int tid);

        /** The thread's nice value, or {@link #NO_THREAD} when it is gone. */
        int getNice(int tid);

        /** Sets the thread's nice value; returns one of the {@code SET_} codes. */
        int setNice(int tid, int nice);

        void log(String message);
    }

    /** The two fields of {@code /proc/<pid>/task/<tid>/stat} this needs. */
    public static final class Stat {
        public final String comm;
        /** Field 22, clock ticks after boot. With the tid it identifies one thread. */
        public final long startTime;

        public Stat(String comm, long startTime) {
            this.comm = comm;
            this.startTime = startTime;
        }

        /** Parses a stat line (the name may hold spaces and parentheses); null if malformed. */
        public static Stat parse(String line) {
            if (line == null) return null;
            int open = line.indexOf('(');
            int close = line.lastIndexOf(')');
            if (open < 0 || close < open) return null;
            String[] f = line.substring(close + 1).trim().split(" +");
            if (f.length < 20) return null; // f[0] is field 3 (state), f[19] field 22
            try {
                return new Stat(line.substring(open + 1, close), Long.parseLong(f[19]));
            } catch (NumberFormatException e) {
                return null;
            }
        }
    }

    /** The /proc half of {@link Os}; the app adds the priority calls and logging. */
    public abstract static class ProcOs implements Os {
        private final File taskDir;

        protected ProcOs() {
            this(new File("/proc/self/task"));
        }

        protected ProcOs(File taskDir) {
            this.taskDir = taskDir;
        }

        @Override
        public int[] tids() {
            String[] names = taskDir.list();
            if (names == null) return new int[0];
            int[] out = new int[names.length];
            int n = 0;
            for (String s : names) {
                int tid;
                try {
                    tid = Integer.parseInt(s);
                } catch (NumberFormatException e) {
                    continue;
                }
                out[n++] = tid;
            }
            return Arrays.copyOf(out, n);
        }

        @Override
        public Stat stat(int tid) {
            File f = new File(new File(taskDir, Integer.toString(tid)), "stat");
            try (BufferedReader r = new BufferedReader(
                    new InputStreamReader(new FileInputStream(f), StandardCharsets.UTF_8))) {
                return Stat.parse(r.readLine());
            } catch (IOException | RuntimeException e) {
                return null;
            }
        }
    }

    private static final class Owned {
        final int tid;
        final long start;
        final int setTo;
        final int restoreTo;

        Owned(int tid, long start, int setTo, int restoreTo) {
            this.tid = tid;
            this.start = start;
            this.setTo = setTo;
            this.restoreTo = restoreTo;
        }
    }

    private static final class Seen {
        final int tid;
        final long start;
        final int nice;

        Seen(int tid, long start, int nice) {
            this.tid = tid;
            this.start = start;
            this.nice = nice;
        }
    }

    private final Os os;
    private boolean unsupported;
    private boolean warnedUnsupported;
    private boolean warnedAmbiguous;

    // One session.
    private boolean active;
    private String state = "idle";
    private int decodeTid = -1;
    private long decodeStart;
    private String comm;
    private int baseline = NO_THREAD;
    private int request = OFF;
    private int expectedWorkers;
    private final List<Seen> preexisting = new ArrayList<Seen>();
    private final List<Owned> owned = new ArrayList<Owned>();
    private int otherNice;
    private int foreign;
    private int gone;
    private int failed;
    private long enterMicros;

    public DecodeScheduling(Os os) {
        if (os == null) throw new IllegalArgumentException("os");
        this.os = os;
    }

    /** Clamps a requested nice to [{@link #MOST_URGENT}, {@link #OFF}]. */
    public static int clamp(int nice) {
        return nice > OFF ? OFF : Math.max(MOST_URGENT, nice);
    }

    /**
     * Starts a session on the calling (decode) thread: raises it and the pool workers that exist
     * now to {@code clamp(requestedNice)}. {@code threads} is the pool size the session uses.
     * Returns whether anything was raised. Safe to call when the last session wasn't exited.
     */
    public synchronized boolean enter(int requestedNice, int threads) {
        long t0 = System.nanoTime();
        if (active) exit();
        resetSession();
        active = true;
        request = clamp(requestedNice);
        expectedWorkers = Math.max(0, threads - 1);
        decodeTid = os.myTid();
        try {
            if (decodeTid == os.myPid()) {
                state = "main-thread"; // never the UI thread
                return false;
            }
            Stat me = os.stat(decodeTid);
            baseline = os.getNice(decodeTid);
            if (me == null || baseline == NO_THREAD) {
                state = "no-proc";
                return false;
            }
            comm = me.comm;
            decodeStart = me.startTime;
            List<Seen> found = scan();
            preexisting.addAll(found);
            if (unsupported) {
                state = "unsupported";
                return false;
            }
            if (request == OFF) {
                state = "off";
                return false;
            }
            if (baseline >= BACKGROUND) {
                state = "background";
                return false;
            }
            if (baseline <= request) {
                state = "already";
                return false;
            }
            int r = os.setNice(decodeTid, request);
            if (r != SET_OK) {
                if (r == SET_DENIED) {
                    markUnsupported("decode thread");
                    state = "unsupported";
                } else {
                    failed++;
                    state = "failed";
                }
                return false;
            }
            owned.add(new Owned(decodeTid, decodeStart, request, baseline));
            state = "ok";
            adopt(found, true);
            return !owned.isEmpty();
        } finally {
            enterMicros = (System.nanoTime() - t0) / 1000L;
        }
    }

    /** After the pool may have been created or recreated: raises or adopts its new workers. */
    public synchronized void refresh() {
        if (!active || owned.isEmpty()) return;
        if (!"ok".equals(state) && !"ambiguous".equals(state)) return;
        adopt(scan(), true);
    }

    /** Ends the session: restores every thread still ours. Idempotent. */
    public synchronized void exit() {
        if (!active) return;
        if (!owned.isEmpty()) adopt(scan(), false); // workers born since the last refresh
        restoreAll();
        active = false;
    }

    /**
     * {@code d:<decode nice>,w:<worker nices by tid>}, read now. The workers listed are every
     * thread that passes the name and age rules, raised or not, so a mismatch shows up here.
     */
    public synchronized String readBack() {
        if (comm == null) return "d:?,w:";
        StringBuilder sb = new StringBuilder("d:");
        int d = os.getNice(decodeTid);
        sb.append(d == NO_THREAD ? "?" : Integer.toString(d)).append(",w:");
        List<Seen> ws = scan();
        int[] tids = new int[ws.size()];
        for (int i = 0; i < tids.length; i++) tids[i] = ws.get(i).tid;
        Arrays.sort(tids);
        for (int i = 0; i < tids.length; i++) {
            if (i > 0) sb.append('/');
            for (Seen s : ws) {
                if (s.tid == tids[i]) sb.append(s.nice);
            }
        }
        return sb.toString();
    }

    /** One line for the bench log: no {@code wav=} or {@code text=} keys. Call before exit. */
    public synchronized String describe() {
        return String.format(Locale.US,
            "nice_req=%d state=%s base=%s workers=%d/%d nice=%s other_nice=%d foreign=%d gone=%d"
                + " failed=%d enter_us=%d",
            request, state, baseline == NO_THREAD ? "?" : Integer.toString(baseline),
            ownedWorkers(), expectedWorkers, readBack(), otherNice, foreign, gone, failed,
            enterMicros);
    }

    public synchronized boolean isActive() {
        return active;
    }

    public synchronized boolean isUnsupported() {
        return unsupported;
    }

    public synchronized String state() {
        return state;
    }

    public synchronized int request() {
        return request;
    }

    /** Tids this session raised or adopted, decode thread first. */
    public synchronized int[] ownedTids() {
        int[] out = new int[owned.size()];
        for (int i = 0; i < out.length; i++) out[i] = owned.get(i).tid;
        return out;
    }

    private void resetSession() {
        state = "idle";
        decodeTid = -1;
        decodeStart = 0;
        comm = null;
        baseline = NO_THREAD;
        request = OFF;
        expectedWorkers = 0;
        preexisting.clear();
        owned.clear();
        otherNice = 0;
        foreign = 0;
        gone = 0;
        failed = 0;
        enterMicros = 0;
    }

    /** Threads named like the decode thread, other than it and main, at any age. */
    private List<Seen> scan() {
        List<Seen> out = new ArrayList<Seen>();
        if (comm == null) return out;
        int pid = os.myPid();
        for (int tid : os.tids()) {
            if (tid == decodeTid || tid == pid) continue;
            Stat s = os.stat(tid);
            if (s == null || !comm.equals(s.comm)) continue;
            int nice = os.getNice(tid);
            if (nice == NO_THREAD) continue;
            out.add(new Seen(tid, s.startTime, nice));
        }
        return out;
    }

    /** Adopts inherited workers and, if {@code raise}, raises eligible ones. */
    private void adopt(List<Seen> found, boolean raise) {
        pruneGone();
        List<Seen> eligible = new ArrayList<Seen>();
        int other = 0;
        for (Seen s : found) {
            if (isOwned(s.tid, s.start)) continue;
            boolean born = !isPreexisting(s.tid, s.start);
            if (born && s.nice == request) {
                owned.add(new Owned(s.tid, s.start, request, baseline)); // inherited from us
            } else if (s.nice == baseline) {
                eligible.add(s);
            } else {
                other++; // e.g. reniced by someone else: not ours
            }
        }
        otherNice = other;
        if (!raise || eligible.isEmpty()) {
            if (raise && "ambiguous".equals(state) && ownedWorkers() <= expectedWorkers) state = "ok";
            return;
        }
        if (ownedWorkers() + eligible.size() > expectedWorkers) {
            state = "ambiguous";
            if (!warnedAmbiguous) {
                warnedAmbiguous = true;
                os.log("decode priority: " + (ownedWorkers() + eligible.size()) + " threads named "
                    + comm + " for " + expectedWorkers + " workers; workers left as they are");
            }
            return;
        }
        state = "ok";
        for (Seen s : eligible) {
            int r = os.setNice(s.tid, request);
            if (r == SET_OK) {
                owned.add(new Owned(s.tid, s.start, request, baseline));
            } else if (r == SET_DENIED && sameThread(s.tid, s.start)) {
                markUnsupported("worker " + s.tid);
                restoreAll();
                state = "unsupported";
                return;
            } else if (r == SET_FAILED) {
                failed++;
            } else {
                gone++; // exited (or its tid was reused) between the scan and the call
            }
        }
    }

    private void restoreAll() {
        for (int i = owned.size() - 1; i >= 0; i--) restore(owned.get(i));
        owned.clear();
    }

    private void restore(Owned o) {
        if (!sameThread(o.tid, o.start)) {
            gone++;
            return;
        }
        int now = os.getNice(o.tid);
        if (now == NO_THREAD) {
            gone++;
            return;
        }
        if (now != o.setTo) {
            foreign++; // changed by someone else since: theirs now
            return;
        }
        int r = os.setNice(o.tid, o.restoreTo);
        if (r == SET_GONE) {
            gone++;
        } else if (r != SET_OK) {
            failed++;
            os.log("decode priority: could not restore thread " + o.tid + " (" + r + ")");
        }
    }

    private void pruneGone() {
        for (int i = owned.size() - 1; i >= 1; i--) { // index 0 is the decode thread
            Owned o = owned.get(i);
            if (!sameThread(o.tid, o.start)) {
                owned.remove(i);
                gone++;
            }
        }
    }

    private boolean sameThread(int tid, long start) {
        Stat s = os.stat(tid);
        return s != null && s.startTime == start;
    }

    private boolean isOwned(int tid, long start) {
        for (Owned o : owned) {
            if (o.tid == tid && o.start == start) return true;
        }
        return false;
    }

    private boolean isPreexisting(int tid, long start) {
        for (Seen s : preexisting) {
            if (s.tid == tid && s.start == start) return true;
        }
        return false;
    }

    private int ownedWorkers() {
        int n = 0;
        for (Owned o : owned) {
            if (o.tid != decodeTid) n++;
        }
        return n;
    }

    private void markUnsupported(String where) {
        unsupported = true;
        if (!warnedUnsupported) {
            warnedUnsupported = true;
            os.log("decode priority unavailable (" + where + " refused); staying at default priority");
        }
    }
}
