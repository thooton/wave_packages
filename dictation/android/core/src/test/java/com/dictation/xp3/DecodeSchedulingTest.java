package com.dictation.xp3;

import com.xp3.common.Check;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/**
 * Host tests for {@link DecodeScheduling} against a fake process. Add to SelfTest with
 * {@code check.run("decodeScheduling", () -> DecodeSchedulingTest.run(check));}.
 */
public final class DecodeSchedulingTest {

    private DecodeSchedulingTest() {}

    public static void main(String[] args) {
        Check check = new Check();
        check.run("decodeScheduling", () -> run(check));
        if (!check.report()) System.exit(1);
    }

    static final String DECODE = "dictation-decod";
    static final int PID = 1000;
    static final int MAIN = 1000;
    static final int BINDER = 1001;
    static final int RENDER = 1002;
    static final int STALE = 1003; // older same-named thread, used by olderSameName()
    static final int DEC = 1010;
    static final int MIC = 1011;
    static final int W1 = 1012;
    static final int W2 = 1013;
    static final int W3 = 1014;

    /** A process: threads with name, start time and nice; clone copies name and nice. */
    static final class FakeOs implements DecodeScheduling.Os {
        static final class T {
            final int tid;
            final String comm;
            final long start;
            int nice;

            T(int tid, String comm, long start, int nice) {
                this.tid = tid;
                this.comm = comm;
                this.start = start;
                this.nice = nice;
            }
        }

        final Map<Integer, T> threads = new TreeMap<Integer, T>();
        final Set<Integer> deny = new HashSet<Integer>();
        final Set<Integer> vanishOnSet = new HashSet<Integer>();
        final Set<Integer> hiddenStat = new HashSet<Integer>();
        final List<int[]> sets = new ArrayList<int[]>();
        final List<String> logs = new ArrayList<String>();
        boolean denyAll;
        int current = DEC;
        /** Reuses {@link #reuseTid} for an unrelated thread once it has been stat'ed this often. */
        int reuseTid = -1;
        int reuseAfterStats;
        long clock = 1;

        T add(int tid, String comm, int nice) {
            T t = new T(tid, comm, clock++, nice);
            threads.put(tid, t);
            return t;
        }

        /** pthread_create from the current thread: same name and nice. */
        T spawn(int tid) {
            T me = threads.get(current);
            return add(tid, me.comm, me.nice);
        }

        void kill(int tid) {
            threads.remove(tid);
        }

        int nice(int tid) {
            T t = threads.get(tid);
            return t == null ? DecodeScheduling.NO_THREAD : t.nice;
        }

        Set<Integer> touched() {
            Set<Integer> s = new HashSet<Integer>();
            for (int[] c : sets) s.add(c[0]);
            return s;
        }

        @Override public int myPid() { return PID; }

        @Override public int myTid() { return current; }

        @Override
        public int[] tids() {
            int[] out = new int[threads.size()];
            int i = 0;
            for (int t : threads.keySet()) out[i++] = t;
            return out;
        }

        @Override
        public DecodeScheduling.Stat stat(int tid) {
            if (tid == reuseTid && reuseAfterStats-- <= 0) {
                reuseTid = -1;
                add(tid, "RenderThread", -10);
            }
            T t = threads.get(tid);
            if (t == null || hiddenStat.contains(tid)) return null;
            return new DecodeScheduling.Stat(t.comm, t.start);
        }

        @Override public int getNice(int tid) { return nice(tid); }

        @Override
        public int setNice(int tid, int nice) {
            sets.add(new int[] {tid, nice});
            if (vanishOnSet.contains(tid)) {
                kill(tid); // exited and its tid went to another process: EPERM
                return DecodeScheduling.SET_DENIED;
            }
            T t = threads.get(tid);
            if (t == null) return DecodeScheduling.SET_GONE;
            if (denyAll || deny.contains(tid)) return DecodeScheduling.SET_DENIED;
            t.nice = nice;
            return DecodeScheduling.SET_OK;
        }

        @Override public void log(String message) { logs.add(message); }
    }

    /** The dictation process with a warm pool of {@code workers} at nice 0. */
    static FakeOs process(int workers) {
        FakeOs os = new FakeOs();
        os.add(MAIN, "com.dictation.x", 0);
        os.add(BINDER, "Binder:1000_1", 0);
        os.add(RENDER, "RenderThread", -4);
        os.add(DEC, DECODE, 0);
        os.add(MIC, "dictation-mic", -19);
        for (int i = 0; i < workers; i++) os.spawn(W1 + i);
        return os;
    }

    static void untouchedOthers(Check check, String name, FakeOs os) {
        Set<Integer> t = os.touched();
        boolean ok = !t.contains(MAIN) && !t.contains(BINDER) && !t.contains(RENDER)
            && !t.contains(MIC);
        check.ok(name + ": main, binder, render and mic never touched", ok);
        check.same(name + ": mic stays -19", -19, os.nice(MIC));
        check.same(name + ": render stays -4", -4, os.nice(RENDER));
        check.same(name + ": main stays 0", 0, os.nice(MAIN));
    }

    public static void run(Check check) throws Exception {
        warmPool(check);
        coldPool(check);
        threadCountChange(check);
        bornAfterRefresh(check);
        foreignChange(check);
        tidReuse(check);
        deniedDecode(check);
        deniedLiveWorker(check);
        deniedReusedWorker(check);
        clampAndOff(check);
        alreadyUrgentOrBackground(check);
        mainThreadRefused(check);
        ambiguousNames(check);
        statHidden(check);
        exceptionPathAndReentry(check);
        workerAtOtherNice(check);
        olderSameName(check);
        statParsing(check);
        procOs(check);
    }

    static void warmPool(Check check) {
        FakeOs os = process(3);
        DecodeScheduling s = new DecodeScheduling(os);
        check.ok("warm: enter raises", s.enter(-10, 4));
        check.same("warm: state", "ok", s.state());
        check.same("warm: decode", -10, os.nice(DEC));
        check.same("warm: w1", -10, os.nice(W1));
        check.same("warm: w3", -10, os.nice(W3));
        check.same("warm: touched", new HashSet<Integer>(Arrays.asList(DEC, W1, W2, W3)), os.touched());
        String line = s.describe();
        check.ok("warm: describe nice", line.contains("nice=d:-10,w:-10/-10/-10"));
        check.ok("warm: describe req", line.startsWith("nice_req=-10 "));
        check.ok("warm: describe workers", line.contains("workers=3/3"));
        check.ok("warm: no wav= or text=", !line.contains("wav=") && !line.contains("text="));
        s.refresh();
        check.same("warm: refresh is a no-op", 4, os.sets.size());
        s.exit();
        check.same("warm: decode restored", 0, os.nice(DEC));
        check.same("warm: w2 restored", 0, os.nice(W2));
        check.ok("warm: inactive", !s.isActive());
        int calls = os.sets.size();
        s.exit();
        check.same("warm: second exit does nothing", calls, os.sets.size());
        untouchedOthers(check, "warm", os);
    }

    static void coldPool(Check check) {
        FakeOs os = process(0);
        DecodeScheduling s = new DecodeScheduling(os);
        check.ok("cold: enter raises decode", s.enter(-16, 4));
        check.same("cold: no workers yet", 1, s.ownedTids().length);
        os.spawn(W1); // pool created by the raised decode thread
        os.spawn(W2);
        os.spawn(W3);
        check.same("cold: workers inherited", -16, os.nice(W2));
        int calls = os.sets.size();
        s.refresh();
        check.same("cold: inherited workers adopted without calls", calls, os.sets.size());
        check.same("cold: owned", 4, s.ownedTids().length);
        check.ok("cold: describe", s.describe().contains("nice=d:-16,w:-16/-16/-16"));
        s.exit();
        check.same("cold: w1 back to the decode thread's start value", 0, os.nice(W1));
        check.same("cold: w3", 0, os.nice(W3));
        check.same("cold: decode", 0, os.nice(DEC));
        untouchedOthers(check, "cold", os);
    }

    static void threadCountChange(Check check) {
        FakeOs os = process(3); // warm pool from threads=4
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 3); // session asks for 3 threads: 2 workers
        check.same("resize: ambiguous until the pool is rebuilt", "ambiguous", s.state());
        check.same("resize: old workers untouched", 0, os.nice(W1));
        check.same("resize: decode raised", -10, os.nice(DEC));
        // _unsafe_reset_threadpool: new pool first (inherits -10), then the old one is joined.
        os.spawn(1020);
        os.spawn(1021);
        os.kill(W1);
        os.kill(W2);
        os.kill(W3);
        s.refresh();
        check.same("resize: ok after rebuild", "ok", s.state());
        check.same("resize: owned decode + 2", 3, s.ownedTids().length);
        s.exit();
        check.same("resize: new worker restored", 0, os.nice(1020));
        check.same("resize: new worker restored 2", 0, os.nice(1021));
        check.same("resize: decode restored", 0, os.nice(DEC));
        check.ok("resize: old workers never set", !os.touched().contains(W1) && !os.touched().contains(W3));
        check.same("resize: one log line", 1, os.logs.size());
        untouchedOthers(check, "resize", os);
    }

    static void bornAfterRefresh(Check check) {
        FakeOs os = process(3);
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 4);
        s.refresh();
        os.kill(W3);
        os.spawn(1030); // a worker the session never refreshed for
        check.same("late: inherited", -10, os.nice(1030));
        s.exit();
        check.same("late: restored at exit", 0, os.nice(1030));
        check.same("late: others restored", 0, os.nice(W1));
    }

    static void foreignChange(Check check) {
        FakeOs os = process(3);
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 4);
        os.threads.get(W2).nice = -16; // e.g. a root renice during the session
        s.exit();
        check.same("foreign: left as the other party set it", -16, os.nice(W2));
        check.same("foreign: others restored", 0, os.nice(W1));
        check.ok("foreign: counted", s.describe().contains("foreign=1"));
    }

    static void tidReuse(Check check) {
        FakeOs os = process(3);
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 4);
        os.kill(W3);
        os.add(W3, "RenderThread", -10); // tid reused by an unrelated thread at the same value
        int calls = os.sets.size();
        s.exit();
        check.same("reuse: unrelated thread keeps its value", -10, os.nice(W3));
        for (int i = calls; i < os.sets.size(); i++) {
            check.ok("reuse: no call on the reused tid", os.sets.get(i)[0] != W3);
        }
        check.same("reuse: decode restored", 0, os.nice(DEC));
        check.ok("reuse: counted gone", s.describe().contains("gone=1"));

        // The same reuse, but between exit's prune pass and the restore itself: exit stats W3
        // once in its scan and once in the prune, and the restore's own check must catch it.
        FakeOs os2 = process(3);
        DecodeScheduling s2 = new DecodeScheduling(os2);
        s2.enter(-10, 4);
        os2.reuseTid = W3;
        os2.reuseAfterStats = 2;
        int calls2 = os2.sets.size();
        s2.exit();
        check.same("late reuse: unrelated thread keeps its value", -10, os2.nice(W3));
        for (int i = calls2; i < os2.sets.size(); i++) {
            check.ok("late reuse: no call on the reused tid", os2.sets.get(i)[0] != W3);
        }
        check.same("late reuse: w2 restored", 0, os2.nice(W2));
    }

    static void deniedDecode(Check check) {
        FakeOs os = process(3);
        os.denyAll = true;
        DecodeScheduling s = new DecodeScheduling(os);
        check.ok("denied: enter reports nothing raised", !s.enter(-10, 4));
        check.same("denied: state", "unsupported", s.state());
        check.ok("denied: marked", s.isUnsupported());
        check.same("denied: workers untouched", 0, os.nice(W1));
        check.same("denied: one call", 1, os.sets.size());
        s.exit();
        os.denyAll = false;
        check.ok("denied: later sessions are no-ops", !s.enter(-10, 4));
        check.same("denied: no more calls", 1, os.sets.size());
        check.same("denied: logged once", 1, os.logs.size());
        check.ok("denied: still reads back", s.describe().contains("nice=d:0,w:0/0/0"));
        s.exit();
    }

    static void deniedLiveWorker(Check check) {
        FakeOs os = process(3);
        os.deny.add(W2);
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 4);
        check.same("deny-worker: state", "unsupported", s.state());
        check.same("deny-worker: decode undone", 0, os.nice(DEC));
        check.same("deny-worker: w1 undone", 0, os.nice(W1));
        check.same("deny-worker: w2 untouched", 0, os.nice(W2));
        check.same("deny-worker: w3 never tried", 0, os.nice(W3));
        check.ok("deny-worker: w3 never set", !os.touched().contains(W3));
        int calls = os.sets.size();
        s.refresh();
        s.exit();
        check.same("deny-worker: nothing after", calls, os.sets.size());
    }

    static void deniedReusedWorker(Check check) {
        FakeOs os = process(3);
        os.vanishOnSet.add(W2);
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 4);
        check.same("vanish: still ok", "ok", s.state());
        check.ok("vanish: not marked unsupported", !s.isUnsupported());
        check.same("vanish: w3 raised", -10, os.nice(W3));
        s.exit();
        check.same("vanish: w3 restored", 0, os.nice(W3));
    }

    static void clampAndOff(Check check) {
        check.same("clamp -19", -16, DecodeScheduling.clamp(-19));
        check.same("clamp -20", -16, DecodeScheduling.clamp(-20));
        check.same("clamp -10", -10, DecodeScheduling.clamp(-10));
        check.same("clamp +5", 0, DecodeScheduling.clamp(5));
        FakeOs os = process(3);
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-19, 4);
        check.same("clamp: request", -16, s.request());
        check.same("clamp: decode at -16, not -19", -16, os.nice(DEC));
        check.ok("clamp: mic still more urgent", os.nice(MIC) < os.nice(W1));
        s.exit();
        check.ok("off: enter +3", !s.enter(3, 4));
        check.same("off: state", "off", s.state());
        check.ok("off: base line reads back", s.describe().startsWith("nice_req=0 state=off base=0 workers=0/3 nice=d:0,w:0/0/0"));
        s.exit();
        int calls = os.sets.size();
        s.enter(0, 4);
        s.refresh();
        s.exit();
        check.same("off: no calls at all", calls, os.sets.size());
    }

    static void alreadyUrgentOrBackground(Check check) {
        FakeOs os = process(3);
        os.threads.get(DEC).nice = -16;
        DecodeScheduling s = new DecodeScheduling(os);
        check.ok("already: nothing", !s.enter(-10, 4));
        check.same("already: state", "already", s.state());
        check.same("already: never less urgent", -16, os.nice(DEC));
        s.exit();
        os.threads.get(DEC).nice = 10;
        check.ok("background: nothing", !s.enter(-10, 4));
        check.same("background: state", "background", s.state());
        s.exit();
        check.same("already/background: no calls", 0, os.sets.size());
    }

    static void mainThreadRefused(Check check) {
        FakeOs os = process(3);
        os.current = MAIN;
        DecodeScheduling s = new DecodeScheduling(os);
        check.ok("main: refused", !s.enter(-10, 4));
        check.same("main: state", "main-thread", s.state());
        s.exit();
        check.same("main: no calls", 0, os.sets.size());
    }

    static void ambiguousNames(Check check) {
        FakeOs os = process(3);
        os.current = DEC;
        os.spawn(1040); // a fourth same-named thread newer than the decode thread
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 4);
        check.same("ambiguous: state", "ambiguous", s.state());
        check.same("ambiguous: workers untouched", 0, os.nice(W1));
        check.same("ambiguous: extra untouched", 0, os.nice(1040));
        check.ok("ambiguous: read-back shows the mismatch", s.describe().contains("nice=d:-10,w:0/0/0/0"));
        check.same("ambiguous: logged", 1, os.logs.size());
        s.exit();
        check.same("ambiguous: decode restored", 0, os.nice(DEC));
    }

    static void statHidden(Check check) {
        FakeOs os = process(3);
        os.hiddenStat.add(W2); // listed, but not readable as ours
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 3);
        check.same("hidden: ok with the readable two", "ok", s.state());
        check.same("hidden: untouched", 0, os.nice(W2));
        check.ok("hidden: never set", !os.touched().contains(W2));
        s.exit();
    }

    static void exceptionPathAndReentry(Check check) {
        FakeOs os = process(3);
        DecodeScheduling s = new DecodeScheduling(os);
        try {
            s.enter(-10, 4);
            try {
                throw new IllegalStateException("model load failed");
            } finally {
                s.exit();
            }
        } catch (IllegalStateException expected) {
            // the session's own error path
        }
        check.same("throw: decode restored", 0, os.nice(DEC));
        check.same("throw: w1 restored", 0, os.nice(W1));
        s.enter(-10, 4);
        s.enter(-16, 4); // previous session never exited
        check.same("reenter: decode at the new value", -16, os.nice(DEC));
        check.same("reenter: w3 at the new value", -16, os.nice(W3));
        s.exit();
        check.same("reenter: decode restored to the true start", 0, os.nice(DEC));
        check.same("reenter: w3 restored", 0, os.nice(W3));
    }

    static void workerAtOtherNice(Check check) {
        FakeOs os = process(3);
        os.threads.get(W1).nice = -4;
        DecodeScheduling s = new DecodeScheduling(os);
        s.enter(-10, 4);
        check.same("other: left alone", -4, os.nice(W1));
        check.same("other: rest raised", -10, os.nice(W2));
        check.ok("other: counted", s.describe().contains("other_nice=1"));
        s.exit();
        check.same("other: still its own", -4, os.nice(W1));
        check.same("other: w2 restored", 0, os.nice(W2));
    }

    static void olderSameName(Check check) {
        // The native pthreadpool outlives a Service instance, so a worker can be older than the
        // decode thread of the session that raises it. It is adopted by name, at baseline nice.
        FakeOs os = process(3);
        os.threads.put(W1, new FakeOs.T(W1, DECODE, 1, 0));
        DecodeScheduling s = new DecodeScheduling(os);
        check.ok("older: enter raises", s.enter(-10, 4));
        check.same("older: worker raised", -10, os.nice(W1));
        check.ok("older: read-back", s.describe().contains("nice=d:-10,w:-10/-10/-10"));
        s.exit();
        check.same("older: restored", 0, os.nice(W1));

        // One more same-named thread at baseline than the pool can have: ambiguous, none raised.
        FakeOs os2 = process(3);
        os2.add(STALE, DECODE, 0);
        DecodeScheduling s2 = new DecodeScheduling(os2);
        s2.enter(-10, 4);
        check.same("older: ambiguous state", "ambiguous", s2.state());
        check.same("older: stale untouched", 0, os2.nice(STALE));
        check.same("older: workers untouched", 0, os2.nice(W1));
        s2.exit();

        // An older same-named thread at another nice is someone else's: left alone, count fits.
        FakeOs os3 = process(3);
        os3.add(STALE, DECODE, -4);
        DecodeScheduling s3 = new DecodeScheduling(os3);
        s3.enter(-10, 4);
        check.same("older: other-nice state", "ok", s3.state());
        check.same("older: other-nice untouched", -4, os3.nice(STALE));
        check.ok("older: other_nice counted", s3.describe().contains("other_nice=1"));
        s3.exit();
    }

    static String statLine(int tid, String comm, long start) {
        StringBuilder sb = new StringBuilder();
        sb.append(tid).append(" (").append(comm).append(") S");
        for (int i = 4; i <= 21; i++) sb.append(" 0");
        sb.append(' ').append(start);
        for (int i = 23; i <= 52; i++) sb.append(" 0");
        return sb.toString();
    }

    static void statParsing(Check check) {
        DecodeScheduling.Stat st = DecodeScheduling.Stat.parse(statLine(7, "dictation-decod", 12345L));
        check.same("stat: comm", DECODE, st.comm);
        check.same("stat: start", 12345L, st.startTime);
        DecodeScheduling.Stat odd = DecodeScheduling.Stat.parse(statLine(7, "a) (b c", 9L));
        check.same("stat: odd comm", "a) (b c", odd.comm);
        check.same("stat: odd start", 9L, odd.startTime);
        check.ok("stat: null", DecodeScheduling.Stat.parse(null) == null);
        check.ok("stat: no parens", DecodeScheduling.Stat.parse("7 x S 1 2") == null);
        check.ok("stat: short", DecodeScheduling.Stat.parse("7 (x) S 1 2 3") == null);
        check.ok("stat: bad number", DecodeScheduling.Stat.parse(statLine(7, "x", 1L).replace(" 1 0", " q 0")) == null);
    }

    static void procOs(Check check) throws Exception {
        File dir = File.createTempFile("decsched", "");
        check.ok("proc: temp", dir.delete() && dir.mkdir());
        write(new File(dir, "21"), statLine(21, DECODE, 50L));
        write(new File(dir, "22"), "garbage");
        check.ok("proc: non-numeric", new File(dir, "self").mkdir());
        DecodeScheduling.ProcOs os = new DecodeScheduling.ProcOs(dir) {
            @Override public int myPid() { return 1; }
            @Override public int myTid() { return 21; }
            @Override public int getNice(int tid) { return 0; }
            @Override public int setNice(int tid, int nice) { return DecodeScheduling.SET_OK; }
            @Override public void log(String message) { }
        };
        int[] tids = os.tids();
        Arrays.sort(tids);
        check.ok("proc: tids skip names that aren't numbers", Arrays.equals(new int[] {21, 22}, tids));
        check.same("proc: stat", 50L, os.stat(21).startTime);
        check.ok("proc: malformed stat", os.stat(22) == null);
        check.ok("proc: missing", os.stat(23) == null);
        check.same("proc: missing dir", 0, new DecodeScheduling.ProcOs(new File(dir, "none")) {
            @Override public int myPid() { return 1; }
            @Override public int myTid() { return 1; }
            @Override public int getNice(int tid) { return 0; }
            @Override public int setNice(int tid, int nice) { return 0; }
            @Override public void log(String message) { }
        }.tids().length);
        for (String n : new String[] {"21/stat", "22/stat", "21", "22", "self"}) new File(dir, n).delete();
        dir.delete();
    }

    static void write(File taskDir, String statLine) throws Exception {
        if (!taskDir.mkdir()) throw new IllegalStateException("mkdir " + taskDir);
        try (FileOutputStream out = new FileOutputStream(new File(taskDir, "stat"))) {
            out.write((statLine + "\n").getBytes(StandardCharsets.UTF_8));
        }
    }
}
