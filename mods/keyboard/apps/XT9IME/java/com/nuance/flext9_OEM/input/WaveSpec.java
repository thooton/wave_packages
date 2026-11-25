package com.nuance.flext9_OEM.input;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.view.KeyEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Answers the XT9 engine before it is asked.
 *
 * On this phone one engine step (processKey + buildSelectionList) takes 10..100 ms, and the
 * stock IME runs it on the main thread on every key. Here an engine thread works ahead while
 * the user is between keys: for each digit 2..9, for the space (key 0) after a word, and for
 * the digits after that space, it makes exactly the calls the stock key handling will make
 * (processKey with the same keyboard id and shift state; for the space, wordSelected with the
 * selected word and clearAllKeys; then the build and the reads the stock code makes after
 * them), records the answers and the engine state they leave (WaveMem.Delta), and puts the
 * engine state back exactly as it was. The likeliest keys go first (plan: the current
 * candidates' next letters, how often English words end at this length and start with each
 * key).
 *
 * When the stock code then makes those calls for the key the user pressed, they are answered
 * from the record at once, and the recorded state is applied to the engine before the engine
 * is next used, so the engine is in exactly the state the stock calls would have left. If the
 * stock code uses the engine in between (any call that isn't answered and isn't a pure read),
 * the answered calls are first made for real (settle/replay), which gives the same state: the
 * engine is deterministic. If the record for the key isn't ready yet, the stock call waits
 * for it (the engine thread does that key next); any call that isn't recorded goes to the
 * engine as on stock.
 *
 * All engine calls are serialized by ENGINE, as on stock (single threaded).
 */
public final class WaveSpec {
    static final String TAG = "WaveKeyboard";
    static final boolean DEBUG = prop("debug.wave.keyboard");

    private static Method sGetBoolean;

    static boolean prop(String name) {
        try {
            if (sGetBoolean == null) {
                sGetBoolean = Class.forName("android.os.SystemProperties").getMethod("getBoolean", String.class, boolean.class);
            }
            return (Boolean) sGetBoolean.invoke(null, name, false);
        } catch (Throwable t) {
            return false;
        }
    }

    /** Fallback order: digits by how often English words continue / start with them. */
    private static final char[] ORDER_MID = {'3', '6', '4', '7', '8', '2', '5', '9'};
    private static final char[] ORDER_FIRST = {'2', '8', '4', '6', '7', '3', '9', '5'};
    private static final String T9 = "22233344455566677778889999";
    private static final int MAXWORDS = 32, WORDLEN = 64, BASE = -1;

    static final ReentrantLock ENGINE = new ReentrantLock();

    /**
     * The look-ahead thread's priority between keys: the background group. Nice 9 alone does
     * not take it out of the foreground threads' way on this kernel, so at a key every ~150 ms
     * it starved the keyboard's own RenderThread (its frames stretched to 40..77 ms). When a
     * thread waits for it (a record the stock call needs now, or the engine it holds) it runs
     * at display priority instead, so a miss still costs only that one engine pass.
     */
    private static final int LA_NICE = Process.THREAD_PRIORITY_BACKGROUND;
    private static int sLaTid;

    private static void urgent(boolean on) {
        if (sLaTid <= 0) return;
        try {
            int p = on ? Process.THREAD_PRIORITY_URGENT_DISPLAY : LA_NICE;
            Process.setThreadPriority(sLaTid, p);
            if (WaveMem.sCmpTid > 0) Process.setThreadPriority(WaveMem.sCmpTid, p);
        } catch (Throwable t) {
            // Priority only.
        }
    }

    /** The WaveCmp thread, as it starts: the look-ahead's priority. */
    static void cmpStarted() {
        try {
            Process.setThreadPriority(LA_NICE);
        } catch (Throwable t) {
            // Priority only.
        }
    }

    /** ENGINE.lock(), raising the look-ahead while it holds the engine (for call: a trace label). */
    private static void lockEngine(String call) {
        if (ENGINE.tryLock()) return;
        boolean raise = Process.myTid() != sLaTid;
        if (raise) urgent(true);
        Trace.beginSection("wave.lockwait");
        Trace.beginSection(call);
        Trace.endSection();
        try {
            ENGINE.lock();
        } finally {
            Trace.endSection();
            if (raise) urgent(false);
        }
    }
    private static final Object LOCK = new Object();

    /**
     * The engine's answers after one key (or for the current state: BASE), and its state. A key
     * is the stock calls processKey(ctx, kdb, key, shift) for a digit, or for the space (key
     * SPACE) wordSelected(ctx, wsIndex, wsFlag) and clearAllKeys(ctx); the stock code then builds
     * the selection list and reads it.
     */
    static final class Snap {
        int ver, ctx, kdb, key = BASE, shift;
        int wsIndex;
        boolean wsFlag, cleared;
        boolean ok = true;
        int count, def, keyCount, inlineLen;
        boolean known;
        int nWords;
        boolean[] wordOk = new boolean[MAXWORDS];
        char[][] word = new char[MAXWORDS][], sub = new char[MAXWORDS][];
        int[][] lens = new int[MAXWORDS][];
        char[] inline = new char[WORDLEN];
        /** Engine state after the key's calls, the build and the reads. */
        WaveMem.Delta built;
        /**
         * Text the key left (the composing text and word the bar shows), made when the record is
         * made; the text-field answers around a pressed key are computed from it instead of
         * copying the field text again.
         */
        String text;
        int margin;

        /** Number of stock calls before the build. */
        int ops() {
            return key == SPACE ? 2 : 1;
        }
    }

    /** The space key's record (in sKeys[0]: key 0 is the space key). */
    private static final int SPACE = '0';

    // ---- guarded by LOCK
    /** Engine version: bumped by every engine change. */
    private static int sVer;
    /** Look-ahead generation: bumped to stop the running look-ahead. */
    private static int sGen;
    /** Records for the current version: sCur for the current state, sKeys[d] for key d. */
    private static Snap sCur;
    private static boolean sCurBuilt;
    private static final Snap[] sKeys = new Snap[10];
    /** Generation of the queued or running look-ahead (-1: none), and the key the main thread waits for. */
    private static int sLaGen = -1;
    private static int sDemand;
    /** What the last look-ahead was started for. */
    private static int jVer = -1, jCtx, jKdb, jShift, jWsIndex;
    private static boolean jWsFlag;
    /**
     * States to apply to the engine before its next use (answered calls up to builds), in order;
     * each is relative to the state the ones before leave.
     */
    private static final ArrayList<WaveMem.Delta> sPending = new ArrayList<WaveMem.Delta>();
    /** Records for the keys after the space record sNextOf (computed from its state). */
    private static final Snap[] sNext = new Snap[10];
    private static Snap sNextOf;
    /** The version the look-ahead has worked out all it plans for. */
    private static int sDoneVer = -1;
    /**
     * A key whose first sSeqDone calls were answered but whose build hasn't been: before the
     * engine is used, those calls are made for real (the engine is deterministic: same calls,
     * same state, same answers).
     */
    private static Snap sSeq;
    private static int sSeqDone;

    private static Handler sEngine, sMain;
    static volatile boolean sDisabled;
    static int sServed, sWaited, sMissed;

    private WaveSpec() { }

    private static boolean onMain() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    // ================================================================ engine gate

    /** WaveAlpha: before engine call id (WaveAlpha.NAMES). */
    static void enter(int id) {
        enter(WaveAlpha.NAMES[id], false);
    }

    /** WaveAlpha: after engine call id. */
    static void exit(int id) {
        exit();
    }

    private static WaveMem.State sDbgBefore, sDbgAfter;
    private static String sDbgName;
    private static boolean sDbgPure;

    /**
     * Before an engine call that is not answered here: the engine in its stock state,
     * exclusively. Calls that don't change the engine (pure; checked in debug builds) leave the
     * look-ahead's records valid.
     */
    static void enter(String name, boolean pure) {
        synchronized (LOCK) {
            if (!pure || sSeq != null) {
                sGen++;
                sVer++;
                sCur = null;
                sCurBuilt = false;
                clearKeys();
            }
        }
        lockEngine(name);
        try {
            settle();
            if (DEBUG && WaveMem.sReady) {
                if (sDbgBefore == null) {
                    sDbgBefore = new WaveMem.State();
                    sDbgAfter = new WaveMem.State();
                }
                WaveMem.save(sDbgBefore);
                sDbgName = name;
                sDbgPure = pure;
            }
        } catch (RuntimeException e) {
            ENGINE.unlock();
            throw e;
        } catch (Exception e) {
            ENGINE.unlock();
            throw new RuntimeException(e);
        }
        if (!pure && onMain()) sMutated = true;
    }

    static void exit() {
        if (DEBUG && sDbgName != null) {
            try {
                WaveMem.Delta d = WaveMem.delta(sDbgBefore, sDbgAfter);
                Log.d(TAG, "call " + sDbgName + (onMain() ? "" : " (bg)") + (inKey() ? " in key" : "") + ": "
                        + (d.n == 0 ? "no change" : d.words + " words changed" + (sDbgPure ? " (PURE CALL CHANGED THE ENGINE)" : "")));
            } catch (Exception e) {
                Log.d(TAG, "call " + sDbgName + ": " + e);
            }
            sDbgName = null;
        }
        ENGINE.unlock();
        if (sMutated && onMain()) {
            sMutated = false;
            // The stock code changed the engine outside key handling: work ahead from the new
            // state (shortly: the stock code may be about to make more calls). After keys, the
            // key hooks start the look-ahead.
            if (!inKey()) schedule(sIme, RESCHEDULE_DELAY_MS);
        }
    }

    private static boolean sMutated;

    /** ENGINE held: bring the engine to the state the answered calls would have left. */
    private static void settle() {
        WaveMem.Delta[] d;
        Snap seq;
        int done;
        synchronized (LOCK) {
            d = sPending.isEmpty() ? null : sPending.toArray(new WaveMem.Delta[sPending.size()]);
            sPending.clear();
            seq = sSeq;
            done = sSeqDone;
            sSeq = null;
        }
        if (d == null && seq == null) return;
        Trace.beginSection("wave.settle");
        try {
            if (d != null) for (WaveMem.Delta x : d) WaveMem.apply(x);
            if (seq != null) replay(seq, done);
        } catch (Throwable t) {
            // Can't happen with a valid layout; if it does, the engine state is unknown.
            Log.e(TAG, "engine state", t);
            sDisabled = true;
        } finally {
            Trace.endSection();
        }
    }

    /** ENGINE held: make the first done calls of key s for real. */
    private static void replay(Snap s, int done) {
        if (DEBUG) Log.d(TAG, "replaying " + done + " call(s) of key " + (char) s.key);
        if (s.key == SPACE) {
            NativeAlphaInput.xt9input_alpha_wordSelected(s.ctx, s.wsIndex, s.wsFlag);
            if (done > 1) NativeAlphaInput.xt9input_alpha_clearAllKeys(s.ctx);
        } else {
            NativeAlphaInput.xt9input_alpha_processKey(s.ctx, s.kdb, s.key, s.shift);
        }
    }

    /**
     * LOCK held, main thread: wait while the look-ahead may still produce the record for key
     * (or BASE). Returns it, or null if it won't come.
     */
    private static Snap await(int key) {
        Snap s = key == BASE ? sCur : sKeys[key - '0'];
        if (s != null || sLaGen != sGen || sDisabled) return s;
        Trace.beginSection("wave.await");
        urgent(true);
        try {
            sDemand = key;
            int gen = sGen, ver = sVer;
            while (true) {
                s = key == BASE ? sCur : sKeys[key - '0'];
                if (s != null || sLaGen != gen || sGen != gen || sVer != ver || sDisabled) break;
                LOCK.wait();
            }
            sDemand = 0;
            if (s != null) sWaited++;
            return s;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return null;
        } finally {
            urgent(false);
            Trace.endSection();
        }
    }

    // ================================================================ answered calls

    static boolean processKey(int ctx, int kdb, int key, int shift) {
        if (onMain() && !sDisabled && key >= '2' && key <= '9') {
            synchronized (LOCK) {
                Snap s = jCtx == ctx && jKdb == kdb && jShift == shift && jVer == sVer ? await(key) : null;
                if (s != null && s.ver == sVer && s.ctx == ctx && s.kdb == kdb && s.shift == shift && sSeq == null) {
                    sVer++;
                    sGen++;
                    clearKeys();
                    s.ver = sVer;
                    sCur = s;
                    sCurBuilt = false;
                    sSeq = s;
                    sSeqDone = 1;
                    sServed++;
                    textHint(s);
                    Trace.beginSection("wave.served");
                    Trace.endSection();
                    return s.ok;
                }
                sMissed++;
                if (DEBUG) Log.d(TAG, "miss key " + (char) key + " (have " + (s == null ? "none" : s.ver + "/" + sVer)
                        + ", look-ahead for kdb " + jKdb + "/" + kdb + " shift " + jShift + "/" + shift + ")");
            }
        }
        enter("processKey", false);
        try {
            return NativeAlphaInput.xt9input_alpha_processKey(ctx, kdb, key, shift);
        } finally {
            exit();
        }
    }

    /**
     * The field text a pressed key leaves, for WaveConnection to check the app against instead
     * of asking it (null when it can't know: not mid-word). LOCK held.
     */
    private static void textHint(Snap s) {
        String t = null;
        if (s != null && s.ok && s.built != null && s.nWords > 0 && s.wordOk[0] && s.lens[0] != null
                && s.lens[0][0] > 0 && s.word[0] != null && s.key != SPACE) {
            int n = Math.min(s.lens[0][0], s.word[0].length);
            t = new String(s.word[0], 0, n);
        }
        WaveConnection.expectedKey(t);
    }

    static void wordSelected(int ctx, int index, boolean flag) {
        if (onMain() && !sDisabled) {
            synchronized (LOCK) {
                Snap s = jCtx == ctx && jVer == sVer && jWsIndex == index && jWsFlag == flag ? await(SPACE) : null;
                if (s != null && s.ver == sVer && s.ctx == ctx && s.wsIndex == index && s.wsFlag == flag
                        && sSeq == null) {
                    sVer++;
                    sGen++;
                    sKeys[SPACE - '0'] = null;
                    Snap[] next = sNext.clone();
                    Snap nextOf = sNextOf;
                    clearKeys();
                    sNextOf = nextOf;
                    System.arraycopy(next, 0, sNext, 0, 10);
                    s.ver = sVer;
                    sCur = s;
                    sCurBuilt = false;
                    sSeq = s;
                    sSeqDone = 1;
                    sServed++;
                    Trace.beginSection("wave.served");
                    Trace.endSection();
                    return;
                }
                sMissed++;
                if (DEBUG) Log.d(TAG, "miss space (have " + (s == null ? "none" : s.ver + "/" + sVer + " " + s.wsIndex
                        + "/" + index + " " + s.wsFlag + "/" + flag) + ")");
            }
        }
        enter("wordSelected", false);
        try {
            NativeAlphaInput.xt9input_alpha_wordSelected(ctx, index, flag);
        } finally {
            exit();
        }
    }

    static boolean clearAllKeys(int ctx) {
        if (onMain() && !sDisabled) {
            synchronized (LOCK) {
                Snap s = sSeq;
                if (s != null && s.key == SPACE && sSeqDone == 1 && s.ctx == ctx && s.ver == sVer) {
                    sSeqDone = 2;
                    return s.cleared;
                }
            }
        }
        enter("clearAllKeys", false);
        try {
            return NativeAlphaInput.xt9input_alpha_clearAllKeys(ctx);
        } finally {
            exit();
        }
    }

    /** LOCK held: drop the key records (of this and the next level). */
    private static void clearKeys() {
        Arrays.fill(sKeys, null);
        Arrays.fill(sNext, null);
        sNextOf = null;
    }

    /**
     * LOCK held, the space record s was answered up to its build: the records computed for the
     * keys after it are the records for the state it leaves.
     */
    private static void promoteNext(Snap s) {
        if (sNextOf == s) {
            for (int i = 0; i < 10; i++) {
                if (sNext[i] != null) {
                    sNext[i].ver = sVer;
                    sKeys[i] = sNext[i];
                }
            }
            // The look-ahead continues from here (schedule: same inputs).
            jVer = sVer;
        }
        Arrays.fill(sNext, null);
        sNextOf = null;
    }

    /** The record answering the stock reads after a build, if any. */
    private static Snap built(int ctx) {
        if (!onMain() || sDisabled) return null;
        synchronized (LOCK) {
            return sCur != null && sCurBuilt && sCur.ctx == ctx && sCur.ver == sVer ? sCur : null;
        }
    }

    static int buildSelectionList(int ctx) {
        if (onMain() && !sDisabled) {
            synchronized (LOCK) {
                Snap s = sCur;
                // After an answered key, the build is answered too (once); the engine then gets
                // the state of the key, the build and the reads.
                if (s != null && s == sSeq && sSeqDone == s.ops() && !sCurBuilt && s.ctx == ctx && s.ver == sVer
                        && s.ok && s.built != null) {
                    sCurBuilt = true;
                    sSeq = null;
                    sPending.add(s.built);
                    if (s.key == SPACE) promoteNext(s);
                    return s.count;
                }
            }
        }
        enter("buildSelectionList", false);
        Trace.beginSection("xt9.buildSelectionList");
        try {
            return NativeAlphaInput.xt9input_alpha_buildSelectionList(ctx);
        } finally {
            Trace.endSection();
            exit();
        }
    }

    static int getDefaultWordIndex(int ctx) {
        Snap s = built(ctx);
        if (s != null) return s.def;
        enter("getDefaultWordIndex", true);
        try {
            return NativeAlphaInput.xt9input_alpha_getDefaultWordIndex(ctx);
        } finally {
            exit();
        }
    }

    static boolean getWord(int ctx, int i, char[] word, char[] sub, int[] lens, int max) {
        Snap s = built(ctx);
        if (s != null && i >= 0 && i < s.nWords && max == WORDLEN && word.length >= WORDLEN && sub.length >= WORDLEN
                && lens.length >= 3) {
            System.arraycopy(s.word[i], 0, word, 0, WORDLEN);
            System.arraycopy(s.sub[i], 0, sub, 0, WORDLEN);
            System.arraycopy(s.lens[i], 0, lens, 0, 3);
            return s.wordOk[i];
        }
        enter("getWord", true);
        try {
            return NativeAlphaInput.xt9input_alpha_getWord(ctx, i, word, sub, lens, max);
        } finally {
            exit();
        }
    }

    static int getInlineText(int ctx, char[] buf, int max) {
        Snap s = built(ctx);
        if (s != null && max == WORDLEN && buf.length >= WORDLEN) {
            System.arraycopy(s.inline, 0, buf, 0, WORDLEN);
            return s.inlineLen;
        }
        enter("getInlineText", true);
        try {
            return NativeAlphaInput.xt9input_alpha_getInlineText(ctx, buf, max);
        } finally {
            exit();
        }
    }

    static boolean isInlineKnown(int ctx) {
        Snap s = built(ctx);
        if (s != null) return s.known;
        enter("isInlineKnown", true);
        try {
            return NativeAlphaInput.xt9input_alpha_isInlineKnown(ctx);
        } finally {
            exit();
        }
    }

    static int getKeyCount(int ctx) {
        if (onMain() && !sDisabled) {
            synchronized (LOCK) {
                Snap s = sCur;
                if (s != null && s.ctx == ctx && s.ver == sVer) return s.keyCount;
            }
        }
        enter("getKeyCount", true);
        try {
            return NativeAlphaInput.xt9input_alpha_getKeyCount(ctx);
        } finally {
            exit();
        }
    }

    // ================================================================ engine thread

    /** ENGINE held: read what the stock code reads after a build into s. */
    private static void read(Snap s) {
        int ctx = s.ctx;
        Trace.beginSection("wave.build");
        s.count = NativeAlphaInput.xt9input_alpha_buildSelectionList(ctx);
        Trace.endSection();
        s.def = NativeAlphaInput.xt9input_alpha_getDefaultWordIndex(ctx);
        int n = Math.min(s.count, MAXWORDS);
        for (int i = 0; i < n; i++) {
            if (s.word[i] == null) {
                s.word[i] = new char[WORDLEN];
                s.sub[i] = new char[WORDLEN];
                s.lens[i] = new int[3];
            }
            s.wordOk[i] = NativeAlphaInput.xt9input_alpha_getWord(ctx, i, s.word[i], s.sub[i], s.lens[i], WORDLEN);
        }
        s.nWords = Math.max(0, n);
        s.inlineLen = NativeAlphaInput.xt9input_alpha_getInlineText(ctx, s.inline, WORDLEN);
        s.known = NativeAlphaInput.xt9input_alpha_isInlineKnown(ctx);
    }

    /** sBase, sBase1: one of two buffers each, so a new state needn't wait for compares against the last. */
    private static WaveMem.State sBase, sBase1, sBaseA, sBaseB, sBase1A, sBase1B;
    /** The space record whose state sBase1 holds. */
    private static Snap sBase1Of;
    /** Plan items: d - '0' for digit d, SPACE_ITEM, or NEXT + d - '0' (digit d after the space). */
    private static final int SPACE_ITEM = 10, NEXT = 100;
    private static final String[] KEY_LABEL = new String[10], NEXT_LABEL = new String[10];
    static {
        for (int d = 0; d < 10; d++) {
            KEY_LABEL[d] = "wave.key " + d;
            NEXT_LABEL[d] = "wave.next " + d;
        }
    }

    private static final class LookAhead implements Runnable {
        final int gen, ver, ctx, kdb, shift, wsIndex;
        final boolean wsFlag;

        LookAhead(int gen, int ver, int ctx, int kdb, int shift, int wsIndex, boolean wsFlag) {
            this.gen = gen; this.ver = ver; this.ctx = ctx; this.kdb = kdb; this.shift = shift;
            this.wsIndex = wsIndex; this.wsFlag = wsFlag;
        }

        /** LOCK held. */
        private boolean stale() {
            return sGen != gen || sVer != ver || sDisabled;
        }

        private Snap snap(int d) {
            Snap s = new Snap();
            s.ver = ver; s.ctx = ctx; s.kdb = kdb; s.key = d; s.shift = shift;
            s.wsIndex = wsIndex; s.wsFlag = wsFlag;
            return s;
        }

        /**
         * ENGINE held: make the calls of key s in the engine's current state and read the
         * result; then put the engine in state back. Returns a copy of the state the key left
         * (a buffer from WaveMem.take), or null if the key failed.
         */
        private WaveMem.State press(Snap s, WaveMem.State back) throws Exception {
            int d = s.key;
            if (d == SPACE) {
                NativeAlphaInput.xt9input_alpha_wordSelected(ctx, wsIndex, wsFlag);
                s.cleared = NativeAlphaInput.xt9input_alpha_clearAllKeys(ctx);
                s.ok = true;
            } else {
                Trace.beginSection("wave.processKey");
                s.ok = NativeAlphaInput.xt9input_alpha_processKey(ctx, kdb, d, shift);
                Trace.endSection();
            }
            s.keyCount = NativeAlphaInput.xt9input_alpha_getKeyCount(ctx);
            // The stock code builds right after the key (AlphaInput.getWords); a key that fails
            // is made for real when served (see settle).
            if (s.ok) {
                Trace.beginSection("wave.read");
                read(s);
                Trace.endSection();
                WaveFrame.prepare(s.word, s.lens, s.wordOk, s.nWords);
            }
            WaveMem.State after = null;
            if (s.ok) {
                after = WaveMem.take();
                Trace.beginSection("wave.peek");
                WaveMem.save(after);
                Trace.endSection();
            }
            Trace.beginSection("wave.restore");
            WaveMem.restore(back);
            Trace.endSection();
            return after;
        }

        /** Record key d (a digit or SPACE) for the current state. False: stale. */
        private boolean key(int d) throws Exception {
            synchronized (LOCK) {
                if (sKeys[d - '0'] != null) return true;
            }
            final Snap s = snap(d);
            WaveMem.State after;
            ENGINE.lock();
            try {
                synchronized (LOCK) { if (stale()) return false; }
                Trace.beginSection(d == SPACE ? "wave.space" : KEY_LABEL[d - '0']);
                try {
                    after = press(s, sBase);
                } finally {
                    Trace.endSection();
                }
            } finally {
                ENGINE.unlock();
            }
            if (after != null && d != SPACE) {
                // Compared on the WaveCmp thread; the record is kept once that's done.
                WaveMem.submit(sBase, after, new WaveMem.Done() {
                    @Override public void run(WaveMem.Delta built) {
                        keep(s, built);
                    }
                });
                return true;
            }
            if (after != null) {
                // The space now: the keys after it start from its state.
                Trace.beginSection("wave.cmp");
                try {
                    s.built = WaveMem.diff(sBase, after);
                } finally {
                    Trace.endSection();
                    WaveMem.release(after);
                }
            }
            return keep(s, s.built);
        }

        /** Keep record s of a key (built: its state), unless stale. Any thread. */
        private boolean keep(Snap s, WaveMem.Delta built) {
            synchronized (LOCK) {
                if (s.ok && built == null) {
                    sDisabled = true;
                    LOCK.notifyAll();
                    return false;
                }
                if (stale()) return false;
                s.built = built;
                sKeys[s.key - '0'] = s;
                LOCK.notifyAll();
            }
            return true;
        }

        /** Record digit d after the space (from the space record's state). False: stale. */
        private boolean next(int d) throws Exception {
            Snap sp;
            synchronized (LOCK) {
                sp = sKeys[SPACE - '0'];
                if (sp == null || !sp.ok || sp.built == null) return true;
                if (sNextOf != sp) {
                    Arrays.fill(sNext, null);
                    sNextOf = sp;
                }
                if (sNext[d - '0'] != null) return true;
            }
            final Snap s = snap(d);
            final Snap space = sp;
            // Another space state: in the sBase1 buffer no compare uses.
            if (sBase1Of != sp) {
                sBase1Of = null;
                sBase1 = WaveMem.idle(sBase1 == sBase1A ? sBase1B : sBase1A, sBase1);
            }
            WaveMem.State after;
            ENGINE.lock();
            try {
                synchronized (LOCK) { if (stale()) return false; }
                Trace.beginSection(NEXT_LABEL[d - '0']);
                try {
                    Trace.beginSection("wave.apply");
                    WaveMem.apply(sp.built);
                    if (sBase1Of != sp) {
                        WaveMem.save(sBase1);
                        sBase1Of = sp;
                    }
                    Trace.endSection();
                    after = press(s, sBase);
                } finally {
                    Trace.endSection();
                }
            } finally {
                ENGINE.unlock();
            }
            if (after == null) return keepNext(s, null, space, d);
            WaveMem.submit(sBase1, after, new WaveMem.Done() {
                @Override public void run(WaveMem.Delta built) {
                    keepNext(s, built, space, d);
                }
            });
            return true;
        }

        /** Keep record s of key d after space record sp (built: its state). Any thread. */
        private boolean keepNext(Snap s, WaveMem.Delta built, Snap sp, int d) {
            synchronized (LOCK) {
                if (s.ok && built == null) {
                    sDisabled = true;
                    LOCK.notifyAll();
                    return false;
                }
                s.built = built;
                if (stale()) {
                    // The space was answered meanwhile (up to its build, and nothing since):
                    // this is the record of key d in the state it left, as promoteNext would
                    // have made it.
                    if (sCur == sp && sCurBuilt && sSeq == null && sp.ver == sVer && sKeys[d - '0'] == null) {
                        s.ver = sVer;
                        sKeys[d - '0'] = s;
                        LOCK.notifyAll();
                    }
                    return false;
                }
                if (sNextOf == sp) sNext[d - '0'] = s;
            }
            return true;
        }

        @Override public void run() {
            Trace.beginSection("wave.lookahead");
            try {
                if (sBaseA == null) {
                    sBaseA = new WaveMem.State();
                    sBaseB = new WaveMem.State();
                    sBase1A = new WaveMem.State();
                    sBase1B = new WaveMem.State();
                    sBase = sBaseA;
                    sBase1 = sBase1A;
                }
                sBase1Of = null;
                // The state to work from goes in the buffer no compare uses.
                sBase = WaveMem.idle(sBase == sBaseA ? sBaseB : sBaseA, sBase);
                // The state to work from: the engine's, with answered calls applied.
                Snap base;
                ENGINE.lock();
                try {
                    synchronized (LOCK) { if (stale()) return; }
                    settle();
                    if (!WaveMem.refresh()) {
                        sDisabled = true;
                        return;
                    }
                    WaveMem.save(sBase);
                    synchronized (LOCK) { base = sCur; }
                    if (base == null || !base.ok || base.nWords == 0) {
                        // Read the current candidates (for the order below) and the key count;
                        // the engine state is put back.
                        Trace.beginSection("wave.base");
                        Snap b = new Snap();
                        b.ver = ver; b.ctx = ctx;
                        b.keyCount = NativeAlphaInput.xt9input_alpha_getKeyCount(ctx);
                        read(b);
                        WaveMem.restore(sBase);
                        Trace.endSection();
                        synchronized (LOCK) {
                            if (stale()) return;
                            if (sCur == null) sCur = b;
                            LOCK.notifyAll();
                        }
                        base = b;
                    }
                } finally {
                    ENGINE.unlock();
                }
                // The space only after a word (its selection is what the stock space commits).
                boolean space = base.keyCount > 0 && wsIndex >= 0 && base.ok && base.nWords > 0;
                int[] plan = plan(base, space, null);
                boolean[] done = new boolean[NEXT + 10];
                // Work ahead only as far as the typing leaves time for. Each item costs an
                // engine pass, and the look-ahead's thread competes with the main thread for
                // the CPU: a fast typist (a key every ~100 ms) who races ahead of the plan pays
                // more in a slower key than the extra records save. Measured at a key every
                // 300 ms the plan fits comfortably; at 100 ms it does not.
                final long started = SystemClock.uptimeMillis();
                final long budget = Math.max(FAST_ITEMS * ITEM_MS, (long) (sGap * BUDGET_ITEMS));
                int costed = 0;
                while (true) {
                    int item = 0;
                    synchronized (LOCK) {
                        if (stale()) return;
                        int want = sDemand == SPACE ? SPACE_ITEM : sDemand >= '2' && sDemand <= '9' ? sDemand - '0' : 0;
                        if (want != 0 && !done[want]) {
                            for (int x : plan) if (x == want) item = x;
                        }
                    }
                    if (item == 0) {
                        for (int x : plan) if (!done[x]) { item = x; break; }
                        // Close to when the next key is due, a long item (a key after the
                        // space) would still be running when it comes: a key of this word
                        // that isn't done yet goes first.
                        if (item >= NEXT && SystemClock.uptimeMillis() + COST_NEXT > sKeyAt + sGap) {
                            for (int x : plan) if (x < SPACE_ITEM && !done[x]) { item = x; break; }
                        }
                        // Only what the typing leaves time for (always at least the keys of
                        // this word that follow the likeliest next one).
                        if (item != 0 && item < NEXT && costed >= FAST_ITEMS
                                && SystemClock.uptimeMillis() - started >= budget) item = 0;
                    }
                    if (item == 0) {
                        synchronized (LOCK) { if (!stale()) sDoneVer = ver; }
                        break;
                    }
                    done[item] = true;
                    if (item < NEXT) costed++;
                    if (item >= NEXT) {
                        if (!next(item - NEXT + '0')) return;
                    } else if (!key(item == SPACE_ITEM ? SPACE : item + '0')) {
                        return;
                    } else if (item == SPACE_ITEM) {
                        // The space's record has the engine's next-word predictions: they rank
                        // the keys after the space from here on.
                        Snap sp;
                        synchronized (LOCK) { sp = sKeys[SPACE - '0']; }
                        if (sp != null && sp.ok) plan = plan(base, space, sp);
                    }
                }
            } catch (Throwable t) {
                Log.e(TAG, "look-ahead disabled", t);
                sDisabled = true;
            } finally {
                // Records still being compared are kept before this look-ahead counts as over
                // (a stale one's records aren't wanted).
                boolean live;
                synchronized (LOCK) { live = !stale(); }
                if (live) {
                    try {
                        WaveMem.drain();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                synchronized (LOCK) {
                    if (sLaGen == gen) sLaGen = -1;
                    LOCK.notifyAll();
                }
                Trace.endSection();
            }
        }
    }

    /** English first letters by key, 2..9 (a-c, d-f, ...; per cent of words). */
    private static final float[] FIRST = {0, 0, 21.3f, 8.7f, 15.1f, 3.6f, 14.3f, 13.7f, 18.0f, 6.3f};
    /** Rough cost (ms) of working out a key, and what not having it costs the user (ms). */
    private static final float COST_KEY = 25, COST_SPACE = 13, COST_NEXT = 55;
    /**
     * How far ahead to work, from the usual gap between keys: items worth roughly this share of
     * it, a key taking ITEM_MS (measured: a key record is about 23 ms), and the fewest items
     * worth having anyway (the likeliest next key, the space, the keys after both).
     */
    private static final float BUDGET_ITEMS = 0.7f;
    private static final int ITEM_MS = 23, FAST_ITEMS = 3;
    private static final float MISS_KEY = 30, MISS_SPACE = 15, MISS_NEXT = 70;

    /** Of English words at least k letters long, the share exactly k long (k = 0..10+). */
    private static final float[] ENDS = {0, 0.03f, 0.18f, 0.26f, 0.27f, 0.26f, 0.28f, 0.35f, 0.4f, 0.44f, 0.5f};

    /**
     * What to work out, in order (items: d - '0' for key d, SPACE_ITEM, NEXT + d - '0' for key d
     * after the space), by how likely each is to be needed per time it takes. The odds that the
     * word ends here come from English word lengths; the odds of each key otherwise from the
     * current candidates that go on (ranked by the engine), each voting by rank for the key of
     * its next letter; after the space, from how often English words start with the key's
     * letters.
     */
    private static int[] plan(Snap base, boolean space, Snap after) {
        float[] p = new float[10];
        float total = 0;
        int pos = base.keyCount;
        for (int i = 0, r = 0; i < base.nWords; i++) {
            if (!base.wordOk[i] || base.lens[i] == null || pos >= WORDLEN || base.lens[i][0] <= pos) continue;
            char c = Character.toLowerCase(base.word[i][pos]);
            if (c < 'a' || c > 'z') continue;
            float w = 1f / (++r + 1);
            p[T9.charAt(c - 'a') - '0'] += w;
            total += w;
        }
        // Keys no candidate goes on with still happen (new words, other forms).
        char[] fallback = pos == 0 ? ORDER_FIRST : ORDER_MID;
        for (int i = 0; i < fallback.length; i++) {
            float w = 0.05f * (total + 0.1f) / (i + 1);
            p[fallback[i] - '0'] += w;
        }
        total = 0;
        for (float x : p) total += x;
        float pSpace = space ? ENDS[Math.min(pos, ENDS.length - 1)] : 0;
        total /= 1 - pSpace;
        int n = 0;
        int[] items = new int[8 + (space ? 9 : 0)];
        float[] score = new float[items.length];
        for (int d = 2; d <= 9; d++) {
            items[n] = d;
            score[n++] = p[d] / total * MISS_KEY / COST_KEY;
        }
        if (space) {
            float ps = pSpace, best = 0;
            int at = n++;
            float[] first = first(after);
            for (int d = 2; d <= 9; d++) {
                items[n] = NEXT + d;
                score[n] = ps * first[d] * MISS_NEXT / COST_NEXT;
                best = Math.max(best, score[n++]);
            }
            // The keys after the space need the space's record first.
            items[at] = SPACE_ITEM;
            score[at] = Math.max(ps * MISS_SPACE / COST_SPACE, best * 1.001f + 1e-6f);
        }
        // Sort by score, highest first (n <= 17); the space before the keys after it.
        for (int i = 1; i < n; i++) {
            for (int j = i; j > 0 && score[j] > score[j - 1]; j--) {
                float t = score[j]; score[j] = score[j - 1]; score[j - 1] = t;
                int x = items[j]; items[j] = items[j - 1]; items[j - 1] = x;
            }
        }
        return items;
    }

    /**
     * Odds of each key starting the word after the space: from how often English words start
     * with the key's letters, or, once the space's record is known, ranked as plan ranks the
     * first key of a word (its candidates, the engine's next-word predictions, each voting by
     * rank for the key of its first letter, then the usual first letters).
     */
    private static float[] first(Snap after) {
        float[] p = new float[10];
        if (after == null) {
            for (int d = 2; d <= 9; d++) p[d] = FIRST[d] / 100;
            return p;
        }
        float total = 0;
        for (int i = 0, r = 0; i < after.nWords; i++) {
            if (!after.wordOk[i] || after.lens[i] == null || after.lens[i][0] <= 0) continue;
            char c = Character.toLowerCase(after.word[i][0]);
            if (c < 'a' || c > 'z') continue;
            float w = 1f / (++r + 1);
            p[T9.charAt(c - 'a') - '0'] += w;
            total += w;
        }
        for (int i = 0; i < ORDER_FIRST.length; i++) p[ORDER_FIRST[i] - '0'] += 0.05f * (total + 0.1f) / (i + 1);
        total = 0;
        for (int d = 2; d <= 9; d++) total += p[d];
        for (int d = 2; d <= 9; d++) p[d] /= total;
        return p;
    }

    /** Digits in the order the current candidates continue with, then the fallback order. */
    private static char[] order(Snap base, boolean space) {
        char[] out = new char[8];
        boolean[] have = new boolean[10];
        int n = 0, pos = base.keyCount;
        for (int i = 0; i < base.nWords && n < 8; i++) {
            if (!base.wordOk[i] || base.lens[i] == null || base.lens[i][0] <= pos || pos >= WORDLEN) continue;
            char c = Character.toLowerCase(base.word[i][pos]);
            if (c < 'a' || c > 'z') continue;
            char d = T9.charAt(c - 'a');
            if (!have[d - '0']) { have[d - '0'] = true; out[n++] = d; }
        }
        for (char d : pos == 0 ? ORDER_FIRST : ORDER_MID) {
            if (!have[d - '0']) { have[d - '0'] = true; out[n++] = d; }
        }
        return out;
    }

    // ================================================================ stock state

    private static Object sIme;
    private static Method mGetCurrentInputView, mGetKdbId, mGetShiftState, mIsMultitapping, mIsMiniShown,
            mEditCurrent, mCanRecapture, mGetCurrentInputMode;
    private static Field fAlphInput, fCtx, fPredOn, fUseHardkey, fSwitcher, fAbc, fSuggestedIndex, fFieldInfo;
    private static Method mIntGet, mIsUdbSubst, mIsPassword;
    private static Class<?> cAlphaInputView;

    static Method method(Class<?> c, String name, Class<?>... p) throws Exception {
        for (Class<?> k = c; k != null; k = k.getSuperclass()) {
            try {
                Method m = k.getDeclaredMethod(name, p);
                m.setAccessible(true);
                return m;
            } catch (NoSuchMethodException ignored) { }
        }
        throw new NoSuchMethodException(c.getName() + "." + name);
    }

    static Field field(Class<?> c, String name) throws Exception {
        for (Class<?> k = c; k != null; k = k.getSuperclass()) {
            try {
                Field f = k.getDeclaredField(name);
                f.setAccessible(true);
                return f;
            } catch (NoSuchFieldException ignored) { }
        }
        throw new NoSuchFieldException(c.getName() + "." + name);
    }

    private static void init(Object ime) throws Exception {
        String p = "com.nuance.flext9_OEM.input.";
        Class<?> cIme = ime.getClass();
        cAlphaInputView = Class.forName(p + "AlphaInputView");
        Class<?> cAlphaInput = Class.forName(p + "AlphaInput");
        Class<?> cEdit = Class.forName(p + "EditState");
        mGetCurrentInputView = method(cIme, "getCurrentInputView");
        mGetKdbId = method(cAlphaInputView, "getKdbId");
        mGetShiftState = method(cAlphaInputView, "getShiftState");
        mIsMultitapping = method(cAlphaInputView, "isMultitapping");
        mIsMiniShown = method(cAlphaInputView, "isMiniKeyboardShown");
        mEditCurrent = method(cEdit, "current");
        mCanRecapture = method(cEdit, "canDoRecapture");
        fAlphInput = field(cAlphaInputView, "mAlphInput");
        fCtx = field(cAlphaInput, "mContext");
        fPredOn = field(cAlphaInputView, "mTextInputPredictionOn");
        fUseHardkey = field(cAlphaInputView, "mIsUseHardkey");
        fSwitcher = field(cAlphaInputView, "mKeyboardSwitcher");
        mGetCurrentInputMode = method(Class.forName(p + "KeyboardSwitcher"), "getCurrentInputMode");
        fAbc = field(Class.forName(p + "Settings"), "ALPHA_INPUT_MODE_ABC");
        fSuggestedIndex = field(cAlphaInputView, "mSuggestedWordIndex");
        mIntGet = method(Class.forName(p + "Int"), "getVal");
        fFieldInfo = field(cAlphaInputView, "mInputFieldInfo");
        Class<?> cField = Class.forName(p + "InputFieldInfo");
        mIsUdbSubst = method(cField, "isUDBSubstitutionField");
        mIsPassword = method(cField, "isPasswordField");
        HandlerThread t = new HandlerThread("WaveXT9", LA_NICE);
        t.start();
        sEngine = new Handler(t.getLooper());
        sLaTid = t.getThreadId();
        sMain = new Handler(Looper.getMainLooper());
        sIme = ime;
        boostUiThreads();
        WaveDisplay.install();
    }

    /**
     * The keyboard's UI and render threads run at the priority of the foreground app's UI
     * thread, so drawing the suggestions isn't preempted by the app reacting to the text.
     */
    private static void boostUiThreads() {
        try {
            Process.setThreadPriority(Process.THREAD_PRIORITY_URGENT_DISPLAY);
            java.io.File[] tasks = new java.io.File("/proc/self/task").listFiles();
            if (tasks == null) return;
            for (java.io.File task : tasks) {
                java.io.BufferedReader r = new java.io.BufferedReader(new java.io.FileReader(new java.io.File(task, "comm")));
                try {
                    if ("RenderThread".equals(r.readLine())) {
                        Process.setThreadPriority(Integer.parseInt(task.getName()), Process.THREAD_PRIORITY_URGENT_DISPLAY);
                    }
                } finally {
                    r.close();
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "thread priority", t);
        }
    }

    /** The current view if the stock key path will make the plain predictive engine calls. */
    private static Object predictiveView(Object ime) throws Exception {
        Object view = mGetCurrentInputView.invoke(ime);
        String why = null;
        if (view == null || !cAlphaInputView.isInstance(view)) why = "view " + view;
        else if (fAlphInput.get(view) == null || !fPredOn.getBoolean(view) || !fUseHardkey.getBoolean(view)) {
            why = "engine " + (fAlphInput.get(view) != null) + " prediction " + fPredOn.getBoolean(view)
                    + " hardkey " + fUseHardkey.getBoolean(view);
        } else if ((Boolean) mIsMiniShown.invoke(view) || (Boolean) mIsMultitapping.invoke(view)) why = "mini/multitap";
        else {
            // handlePrediction: no recapture, and no context update right before processKey.
            Object mode = mGetCurrentInputMode.invoke(fSwitcher.get(view));
            if (mode != fAbc.get(null) && !(Boolean) mCanRecapture.invoke(null)) why = "recapture";
            else if ((Integer) mEditCurrent.invoke(null) == 0) why = "edit state";
        }
        if (why != null) {
            if (DEBUG) Log.d(TAG, "no look-ahead: " + why);
            return null;
        }
        return view;
    }


    /** Start the look-ahead for the current engine state, if not running for it already. */
    static void schedule(Object ime) {
        schedule(ime, 0);
    }

    /** Debug (parity tests): no look-ahead, all calls go to the engine. */
    private static final boolean OFF = prop("debug.wave.keyboard.off");

    static void schedule(Object ime, int delayMs) {
        if (OFF || sDisabled || sDictating || ime == null || !onMain()) return;
        Trace.beginSection("wave.schedule");
        try {
            if (sEngine == null) init(ime);
            Object view = predictiveView(ime);
            if (view == null) return;
            int ctx = fCtx.getInt(fAlphInput.get(view));
            if (ctx == 0) return;
            if (!WaveMem.init()) {
                Log.w(TAG, "engine state not accessible, look-ahead off");
                sDisabled = true;
                return;
            }
            int kdb = (Integer) mGetKdbId.invoke(view);
            int shift = (Integer) mGetShiftState.invoke(view);
            // What the stock space would pass to wordSelected (AlphaInputView.selectWord).
            Object idx = fSuggestedIndex.get(view), info = fFieldInfo.get(view);
            int wsIndex = idx == null || info == null ? -1 : (Integer) mIntGet.invoke(idx);
            boolean wsFlag = info != null && ((Boolean) mIsUdbSubst.invoke(info) ? false : !(Boolean) mIsPassword.invoke(info));
            synchronized (LOCK) {
                boolean same = jVer == sVer && jCtx == ctx && jKdb == kdb && jShift == shift;
                if (same && (jWsIndex != wsIndex || jWsFlag != wsFlag)) {
                    // Only the space record depends on these.
                    sKeys[SPACE - '0'] = null;
                    Arrays.fill(sNext, null);
                    sNextOf = null;
                } else if (same && (sLaGen == sGen || sDoneVer == sVer)) {
                    // Running or done for this state.
                    return;
                }
                if (!same) clearKeys();
                sGen++;
                jVer = sVer; jCtx = ctx; jKdb = kdb; jShift = shift; jWsIndex = wsIndex; jWsFlag = wsFlag;
                sLaGen = sGen;
                sEngine.postDelayed(new LookAhead(sGen, sVer, ctx, kdb, shift, wsIndex, wsFlag), delayMs);
            }
        } catch (Throwable t) {
            Log.e(TAG, "look-ahead disabled", t);
            sDisabled = true;
        } finally {
            Trace.endSection();
        }
    }

    // ================================================================ key hooks

    static int sKeyDepth;
    /** When the last key went down, and the usual time between keys (ms, uptime). */
    private static volatile long sKeyAt;
    private static volatile float sGap = 300;

    /** IME.onKeyDown / onKeyUp, before the stock body. */
    public static void keyStart(Object ime, int keyCode, KeyEvent event) {
        sKeyDepth++;
        if (event != null && event.getAction() == KeyEvent.ACTION_DOWN && event.getRepeatCount() == 0) WaveBoost.keyPressed();
        if (event != null && event.getRepeatCount() == 0) WaveBoost.raise();
        if (event != null && event.getAction() == KeyEvent.ACTION_DOWN && event.getRepeatCount() == 0) {
            long t = event.getEventTime(), gap = t - sKeyAt;
            if (gap > 60 && gap < 1000) sGap = sGap * 0.8f + gap * 0.2f;
            sKeyAt = t;
        }
    }

    /** IME.onKeyDown, after the stock body. */
    public static void keyDownEnd(Object ime, int keyCode, KeyEvent event, boolean handled) {
        sKeyDepth--;
        schedule(ime);
    }

    /** IME.onKeyUp, after the stock body. */
    public static void keyUpEnd(Object ime, int keyCode, KeyEvent event, boolean handled) {
        sKeyDepth--;
        WaveEarly.keyUp(keyCode);
        schedule(ime);
    }

    /** IME.onUpdateSelection, before the stock body. */
    public static void selectionChanging(Object ime, int a, int b, int c, int d, int e, int f) {
        WaveConnection.selectionChanging(a, b, c, d, e, f);
    }

    /** IME.onUpdateSelection, after the stock body (the shift state may have changed). */
    public static void selectionUpdated(Object ime, int a, int b, int c, int d, int e, int f) {
        schedule(ime);
    }

    /** WaveDictation: a session is running (the stock code sees no keys or selection updates). */
    private static boolean sDictating;

    /** WaveDictation: suspend look-ahead and drop key predictions made before dictation. */
    static void dictating(boolean on) {
        sDictating = on;
        synchronized (LOCK) {
            sGen++;
            clearKeys();
            sDoneVer = -1;
        }
    }

    private static Handler sStartHandler;

    /** IME.onStartInput, before the stock body. */
    public static void startInput(final Object ime, android.view.inputmethod.EditorInfo info, boolean restarting) {
        WaveConnection.reset();
        // Work ahead for the first key once the stock code has set up the field (onStartInputView
        // runs in the same message).
        if (sStartHandler == null) sStartHandler = new Handler(Looper.getMainLooper());
        sStartHandler.removeCallbacksAndMessages(null);
        sStartHandler.post(new Runnable() {
            @Override public void run() {
                schedule(ime);
            }
        });
    }

    private static Method mUpdateShift, mGetEditorInfo;

    /** Recompute the stock shift state from the app's answers (WaveConnection gave up its copy). */
    static void refreshShift() {
        if (sMain == null) return;
        sMain.post(new Runnable() {
            @Override public void run() {
                try {
                    if (mUpdateShift == null) {
                        mUpdateShift = method(cAlphaInputView, "updateShiftKeyState", android.view.inputmethod.EditorInfo.class);
                        mGetEditorInfo = method(sIme.getClass(), "getCurrentInputEditorInfo");
                    }
                    Object view = mGetCurrentInputView.invoke(sIme);
                    if (view != null && cAlphaInputView.isInstance(view)) {
                        mUpdateShift.invoke(view, mGetEditorInfo.invoke(sIme));
                    }
                } catch (Throwable t) {
                    Log.e(TAG, "shift refresh", t);
                }
            }
        });
    }

    static boolean inKey() {
        return sKeyDepth > 0;
    }

    /**
     * WaveEarly: the space is being typed on its key down, from the key-down hook rather than
     * the stock key handler. The text-field answers come from the copy as during any key, and
     * the look-ahead is started afterwards like keyDownEnd does.
     */
    static void beginVirtualKey() {
        sKeyDepth++;
    }

    /**
     * The look-ahead starts this long after a key when the stock code changed the engine outside
     * key handling: short enough that the work still gets done within the usual key gap, long
     * enough not to join whatever the stock code is still doing.
     */
    private static final int RESCHEDULE_DELAY_MS = 5;

    static void endVirtualKey() {
        sKeyDepth--;
        boolean mutated;
        synchronized (LOCK) {
            mutated = sMutated;
            sMutated = false;
        }
        if (mutated && !inKey()) schedule(sIme, RESCHEDULE_DELAY_MS);
    }
}
