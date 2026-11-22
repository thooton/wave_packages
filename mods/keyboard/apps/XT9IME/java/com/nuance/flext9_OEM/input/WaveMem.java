package com.nuance.flext9_OEM.input;

import android.os.Trace;
import android.util.Log;
import java.io.BufferedReader;
import java.io.FileReader;
import java.lang.reflect.Method;
import java.util.Arrays;

/**
 * Saves and restores the XT9 engine's in-memory state.
 *
 * The engine (libjni_xt9input.so, a singleton xt9input::alpha_data) keeps all of its state in
 * a few blocks it allocates once at start (key input, keyboard, linguistic state, selection
 * list) and three small user databases. Pressing a key and taking it back is not neutral for
 * XT9 (it remembers), so the look-ahead tries keys on a copy of the state instead: it records
 * the words a key changes (a Delta against the state before) and puts the state back exactly.
 * When the user then presses that key, applying the Delta gives the engine exactly the state
 * the key would have given it.
 *
 * The layout is that of the stock library build this mod targets; it is checked at start, and
 * the look-ahead is not used if it doesn't match.
 */
final class WaveMem {
    private static final String TAG = WaveSpec.TAG;
    /** Offsets in the stock libjni_xt9input.so (sha1 4d14cdefba7a5984cbad684b9c9444f50d4ce69d). */
    private static final long TEXT_SIZE = 0x168000, SINGLETON = 0x16a284, VTABLE = 0x16967c + 8;
    /**
     * Its code mapping as the module installs it (module/xt9lib.patch: new code at the end of the
     * code segment's last page and the next one; data and its layout as stock).
     */
    private static final long TEXT_SIZE_PATCHED = 0x169000;
    /** The library's .data/.bss (to the end of its last page, which the library alone uses). */
    private static final long LIB_DATA = 0x16a000, LIB_DATA_SIZE = 0x2ac;
    /** alpha_data: its size, the fields holding its blocks and their sizes (from the calloc calls). */
    private static final int DATA_SIZE = 0x4c;
    private static final int[] FIELD = {0x04, 0x08, 0x30, 0x34, 0x38};
    private static final int[] SIZE = {0xf53c, 0x34f0c, 0x34, 0x97fa8, 0x2e80};
    /** alpha_data fields holding persistentDb objects (asdb, udb, cdb): {size, buffer, ...}. */
    private static final int[] DB_FIELD = {0x3c, 0x40, 0x44};
    private static final int[] DB_SIZE = {0x2800, 0x5000, 0x640};
    /** Runs of changed words closer than this are recorded as one. */
    private static final int GAP = 32;

    private static Method sPeek, sPoke, sPeekInt;
    private static long sLib;
    private static long[] sAddr;
    /** Region sizes in 32-bit words. */
    private static int[] sWords;
    static volatile boolean sReady;

    private WaveMem() { }

    /** Find the engine's state; false if the library isn't the expected build. */
    static synchronized boolean init() {
        if (sReady) return true;
        try {
            Class<?> mem = Class.forName("libcore.io.Memory");
            sPeek = mem.getMethod("peekIntArray", long.class, int[].class, int.class, int.class, boolean.class);
            sPoke = mem.getMethod("pokeIntArray", long.class, int[].class, int.class, int.class, boolean.class);
            sPeekInt = mem.getMethod("peekInt", long.class, boolean.class);
            long base = -1;
            BufferedReader r = new BufferedReader(new FileReader("/proc/self/maps"));
            try {
                for (String line; (line = r.readLine()) != null; ) {
                    if (line.endsWith("/libjni_xt9input.so") && line.contains(" 00000000 ") && line.contains("r-xp")) {
                        base = Long.parseLong(line.substring(0, line.indexOf('-')), 16);
                        long end = Long.parseLong(line.substring(line.indexOf('-') + 1, line.indexOf(' ')), 16);
                        if (end - base != TEXT_SIZE && end - base != TEXT_SIZE_PATCHED) {
                            Log.w(TAG, "unexpected engine library size " + (end - base));
                            return false;
                        }
                        break;
                    }
                }
            } finally {
                r.close();
            }
            if (base < 0) return false;
            sLib = base;
            if (!refresh()) return false;
            sReady = true;
            return true;
        } catch (Throwable t) {
            Log.w(TAG, "engine state access", t);
            return false;
        }
    }

    /**
     * ENGINE held: (re)read where the engine's state is (it moves if the engine is recreated).
     * False if it isn't there as expected.
     */
    static boolean refresh() {
        try {
            long base = sLib;
            long data = peekInt(base + SINGLETON);
            if (data == 0 || peekInt(data) != base + VTABLE) {
                Log.w(TAG, "unexpected engine library layout");
                return false;
            }
            int n = 2 + FIELD.length + DB_FIELD.length;
            long[] addr = new long[n];
            int[] bytes = new int[n];
            int k = 0;
            addr[k] = base + LIB_DATA; bytes[k++] = (int) LIB_DATA_SIZE;
            addr[k] = data; bytes[k++] = DATA_SIZE;
            for (int i = 0; i < FIELD.length; i++) {
                addr[k] = peekInt(data + FIELD[i]);
                bytes[k++] = SIZE[i];
            }
            for (int i = 0; i < DB_FIELD.length; i++) {
                long db = peekInt(data + DB_FIELD[i]);
                if (db == 0) return false;
                long sz = peekInt(db), buf = peekInt(db + 4);
                if (sz != DB_SIZE[i] || buf == 0) {
                    Log.w(TAG, "unexpected engine database " + i);
                    return false;
                }
                addr[k] = buf;
                bytes[k++] = DB_SIZE[i];
            }
            int[] words = new int[n];
            for (int i = 0; i < n; i++) {
                if (addr[i] == 0 || (addr[i] & 3) != 0 || (bytes[i] & 3) != 0) return false;
                words[i] = bytes[i] / 4;
            }
            sAddr = addr;
            sWords = words;
            return true;
        } catch (Throwable t) {
            Log.w(TAG, "engine state access", t);
            return false;
        }
    }

    private static long peekInt(long a) throws Exception {
        return ((Integer) sPeekInt.invoke(null, a, false)) & 0xffffffffL;
    }

    /** A full copy of the engine state. */
    static final class State {
        final int[][] block = new int[sWords.length][];
        /** Compare jobs against this state not done yet (guarded by JOBS). */
        int jobs;

        State() {
            for (int i = 0; i < sWords.length; i++) block[i] = new int[sWords[i]];
        }
    }

    /** The words in which a state differs from a base state. */
    static final class Delta {
        int n;
        int[] region = new int[16], off = new int[16], len = new int[16];
        int[] data = new int[256];
        int words;

        /** Words [o, o + l) of region r, from src at at. */
        void add(int r, int o, int l, int[] src, int at) {
            if (n == region.length) {
                region = Arrays.copyOf(region, n * 2);
                off = Arrays.copyOf(off, n * 2);
                len = Arrays.copyOf(len, n * 2);
            }
            if (words + l > data.length) data = Arrays.copyOf(data, Math.max(data.length * 2, words + l));
            region[n] = r; off[n] = o; len[n] = l;
            System.arraycopy(src, at, data, words, l);
            n++;
            words += l;
        }
    }

    /** ENGINE held: copy the engine state into s. */
    static void save(State s) throws Exception {
        for (int i = 0; i < sAddr.length; i++) sPeek.invoke(null, sAddr[i], s.block[i], 0, sWords[i], false);
    }

    /** ENGINE held: the engine's current state as a Delta against base (scratch: a State to use). */
    static Delta delta(State base, State scratch) throws Exception {
        Trace.beginSection("wave.peek");
        save(scratch);
        Trace.endSection();
        Trace.beginSection("wave.cmp");
        try {
            Delta d = new Delta();
            for (int r = 0; r < sAddr.length; r++) compare(d, r, base.block[r], scratch.block[r], 0, sWords[r]);
            return d;
        } finally {
            Trace.endSection();
        }
    }

    /** How base and snap differ (no engine access). */
    static Delta diff(State base, State snap) {
        Delta d = new Delta();
        for (int r = 0; r < base.block.length; r++) compare(d, r, base.block[r], snap.block[r], 0, base.block[r].length);
        return d;
    }

    // ---------------------------------------------------------------- the compare thread
    //
    // A look-ahead record's state is copied out (save) and the engine put back (restore, all
    // of it), then the copy is compared with its base on the WaveCmp thread while the
    // look-ahead goes on with the next item. The base must not change until its jobs are done
    // (drain).

    /** What to do with a job's Delta (null: the compare failed). On the WaveCmp thread. */
    interface Done {
        void run(Delta d);
    }

    private static final Object JOBS = new Object();
    private static final java.util.ArrayDeque<Object[]> sJobs = new java.util.ArrayDeque<>();
    private static final java.util.ArrayList<State> sFree = new java.util.ArrayList<>();
    private static int sBuffers, sPending;
    private static Thread sCmp;
    static volatile int sCmpTid;
    private static final int BUFFERS = 3;

    /** A state buffer for save; waits while all are in use. */
    static State take() throws InterruptedException {
        synchronized (JOBS) {
            while (sFree.isEmpty() && sBuffers >= BUFFERS) JOBS.wait();
            if (!sFree.isEmpty()) return sFree.remove(sFree.size() - 1);
            sBuffers++;
        }
        return new State();
    }

    /** Give back a buffer from take() that wasn't submitted. */
    static void release(State s) {
        synchronized (JOBS) {
            sFree.add(s);
            JOBS.notifyAll();
        }
    }

    /** Compare snap (from take) with base on the WaveCmp thread, then done.run; snap is released. */
    static void submit(State base, State snap, Done done) {
        synchronized (JOBS) {
            if (sCmp == null) {
                sCmp = new Thread(new Runnable() {
                    @Override public void run() { cmpLoop(); }
                }, "WaveCmp");
                sCmp.setDaemon(true);
                sCmp.start();
            }
            sJobs.add(new Object[] {base, snap, done});
            sPending++;
            base.jobs++;
            JOBS.notifyAll();
        }
    }

    /** Wait until every submitted job is done. */
    static void drain() throws InterruptedException {
        synchronized (JOBS) {
            if (sPending == 0) return;
            Trace.beginSection("wave.drain");
            try {
                while (sPending > 0) JOBS.wait();
            } finally {
                Trace.endSection();
            }
        }
    }

    /** Wait until no job compares against s (before s changes). */
    static void drain(State s) throws InterruptedException {
        synchronized (JOBS) {
            if (s.jobs == 0) return;
            Trace.beginSection("wave.drain");
            try {
                while (s.jobs > 0) JOBS.wait();
            } finally {
                Trace.endSection();
            }
        }
    }

    /** Of a and b, one no job compares against (waiting if both have jobs). */
    static State idle(State a, State b) throws InterruptedException {
        synchronized (JOBS) {
            if (a.jobs == 0) return a;
            if (b.jobs == 0) return b;
        }
        drain(a);
        return a;
    }

    private static void cmpLoop() {
        sCmpTid = android.os.Process.myTid();
        WaveSpec.cmpStarted();
        while (true) {
            Object[] job;
            synchronized (JOBS) {
                while (sJobs.isEmpty()) {
                    try { JOBS.wait(); } catch (InterruptedException e) { return; }
                }
                job = sJobs.poll();
            }
            State base = (State) job[0], snap = (State) job[1];
            Delta d = null;
            Trace.beginSection("wave.cmp");
            try {
                d = diff(base, snap);
            } catch (Throwable t) {
                Log.e(TAG, "compare", t);
            } finally {
                Trace.endSection();
            }
            try {
                ((Done) job[2]).run(d);
            } catch (Throwable t) {
                Log.e(TAG, "compare result", t);
            }
            synchronized (JOBS) {
                sFree.add(snap);
                sPending--;
                base.jobs--;
                JOBS.notifyAll();
            }
        }
    }

    private static void compare(Delta d, int r, int[] a, int[] b, int from, int len) {
        int i = from;
        while (true) {
            i = fastDiff(a, b, i, len);
            if (i >= len) return;
            int start = i, same = 0;
            // Extend the run across short equal gaps.
            while (i < len && same < GAP) {
                if (a[i] == b[i]) same++; else same = 0;
                i++;
            }
            d.add(r, start, i - same - start, b, start);
        }
    }

    /** First index >= i (and < len) where a and b differ (len if none). */
    private static int fastDiff(int[] a, int[] b, int i, int len) {
        // Eight words per iteration (or-ed xors: one branch).
        while (i + 7 < len) {
            if (((a[i] ^ b[i]) | (a[i + 1] ^ b[i + 1]) | (a[i + 2] ^ b[i + 2]) | (a[i + 3] ^ b[i + 3])
                    | (a[i + 4] ^ b[i + 4]) | (a[i + 5] ^ b[i + 5]) | (a[i + 6] ^ b[i + 6]) | (a[i + 7] ^ b[i + 7])) != 0) break;
            i += 8;
        }
        while (i < len && a[i] == b[i]) i++;
        return i;
    }

    /** ENGINE held, engine in the base state of d: apply d. */
    static void apply(Delta d) throws Exception {
        int p = 0;
        for (int i = 0; i < d.n; i++) {
            sPoke.invoke(null, sAddr[d.region[i]] + 4L * d.off[i], d.data, p, d.len[i], false);
            p += d.len[i];
        }
    }

    /** ENGINE held: put state s back, all of it. */
    static void restore(State s) throws Exception {
        for (int i = 0; i < sAddr.length; i++) sPoke.invoke(null, sAddr[i], s.block[i], 0, sWords[i], false);
    }

    /** ENGINE held, engine in the state of d: back to base. */
    static void revert(Delta d, State base) throws Exception {
        for (int i = 0; i < d.n; i++) {
            sPoke.invoke(null, sAddr[d.region[i]] + 4L * d.off[i], base.block[d.region[i]], d.off[i], d.len[i], false);
        }
    }
}
