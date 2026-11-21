package com.nuance.flext9_OEM.input;

import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.view.Choreographer;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Draws the IME window as soon as a key's suggestions are set, instead of on the next
 * vsync after the whole stock key handler (which still makes slow synchronous calls into
 * the editor after this point, e.g. getCursorCapsMode for auto-caps) has returned.
 *
 * This runs the traversal the stock code already scheduled (ViewRootImpl.doTraversal), so
 * the frame is the one stock would draw a little later; anything the rest of the key
 * handler changes is drawn by the next frame as usual.
 */
public final class WaveFrame {
    private static final String TAG = "WaveKeyboard";
    private static boolean sInit, sDisabled;
    private static Method mGetViewRootImpl, mDoTraversal, mSetVsync;
    private static Field fScheduled, fInTraversal, fFrameInfo, fCallbacksRunning, fLastFrameTime;

    private WaveFrame() { }

    /** AlphaInputView.updateSuggestions(IZ)I, after the stock body. */
    private static java.lang.reflect.Field fList, fSugg, fSel;

    /** Debug (parity tests): the candidates as shown. */
    private static void logSuggestions(Object view) {
        try {
            if (fList == null) {
                fList = WaveSpec.field(view.getClass(), "mAlphaWordListView");
                Class<?> c = Class.forName("com.nuance.flext9_OEM.input.CandidatesListView");
                fSugg = WaveSpec.field(c, "mSuggestions");
                fSel = WaveSpec.field(c, "mSelectedIndex");
            }
            Object list = fList.get(view);
            if (list == null) return;
            Log.d(WaveSpec.TAG, "cands sel=" + fSel.getInt(list) + " " + fSugg.get(list));
        } catch (Throwable t) {
            Log.d(WaveSpec.TAG, "cands: " + t);
        }
    }

    public static void suggestionsUpdated(Object view, int min, boolean emoji, int size) {
        Trace.beginSection("wave.suggestions");
        Trace.endSection();
        if (WaveSpec.DEBUG) logSuggestions(view);
        if (sDisabled || !WaveSpec.inKey() || !(view instanceof View)) return;
        if (Looper.myLooper() != Looper.getMainLooper()) return;
        try {
            drawNow((View) view);
        } catch (Throwable t) {
            Log.e(TAG, "frame hook disabled", t);
            sDisabled = true;
        }
    }

    private static final android.graphics.Rect sClip = new android.graphics.Rect();

    /**
     * Candidate widths. CandidatesListView forgets its word widths whenever the list is set
     * (every key), so onDraw measures all (up to 32) candidates again before the frame. Widths
     * are kept per exact text and every Paint setting that changes a width; a miss calls
     * Paint.measureText itself, so each width is the one stock computes. The look-ahead's
     * candidates are measured ahead on a spare thread, with a copy of each Paint setting seen
     * (prepare). DEBUG checks every hit against a fresh measurement.
     */
    private static final class Sig {
        android.graphics.Typeface tf;
        float size, scaleX, skewX, spacing;
        int flags, hinting, gen;
        boolean elegant;
        android.os.LocaleList locales;
        String features, variations;
        /** A copy of the Paint, for the measuring thread only. */
        android.graphics.Paint copy;
        /** Guarded by itself. */
        final java.util.HashMap<String, Float> widths = new java.util.HashMap<>();

        boolean matches(android.graphics.Paint p) {
            return p.getTypeface() == tf && p.getTextSize() == size && p.getTextScaleX() == scaleX
                    && p.getTextSkewX() == skewX && p.getLetterSpacing() == spacing && p.getFlags() == flags
                    && p.getHinting() == hinting && p.isElegantTextHeight() == elegant
                    && java.util.Objects.equals(p.getTextLocales(), locales)
                    && java.util.Objects.equals(p.getFontFeatureSettings(), features)
                    && java.util.Objects.equals(p.getFontVariationSettings(), variations);
        }

        /** Main thread. */
        void set(android.graphics.Paint p) {
            synchronized (widths) {
                tf = p.getTypeface(); size = p.getTextSize(); scaleX = p.getTextScaleX(); skewX = p.getTextSkewX();
                spacing = p.getLetterSpacing(); flags = p.getFlags(); hinting = p.getHinting();
                elegant = p.isElegantTextHeight(); locales = p.getTextLocales();
                features = p.getFontFeatureSettings(); variations = p.getFontVariationSettings();
                copy = new android.graphics.Paint(p);
                gen++;
                widths.clear();
            }
        }
    }

    private static final Sig[] SIGS = new Sig[6];
    private static int sNextSig, sHits, sMisses;

    /** CandidatesListView.onDraw: Paint.measureText(text, start, end), remembered. */
    public static float measure(android.graphics.Paint p, CharSequence text, int start, int end) {
        if (Looper.myLooper() != Looper.getMainLooper()) return p.measureText(text, start, end);
        Sig g = null;
        for (Sig x : SIGS) {
            if (x != null && x.matches(p)) { g = x; break; }
        }
        if (g == null) {
            g = SIGS[sNextSig];
            if (g == null) {
                g = new Sig();
                synchronized (SIGS) { SIGS[sNextSig] = g; }
            }
            sNextSig = (sNextSig + 1) % SIGS.length;
            g.set(p);
        }
        String k = android.text.TextUtils.substring(text, start, end);
        Float w;
        synchronized (g.widths) { w = g.widths.get(k); }
        if (w != null) {
            sHits++;
            if (WaveSpec.DEBUG) {
                float real = p.measureText(text, start, end);
                if (Float.floatToIntBits(real) != Float.floatToIntBits(w)) {
                    Log.w(TAG, "width cache mismatch '" + k + "' " + w + " != " + real);
                }
            }
            return w;
        }
        sMisses++;
        if (WaveSpec.DEBUG && sMisses % 100 == 0) Log.d(TAG, "widths: " + sHits + " hits, " + sMisses + " misses");
        float real = p.measureText(text, start, end);
        synchronized (g.widths) {
            if (g.widths.size() >= 4000) g.widths.clear();
            g.widths.put(k, real);
        }
        return real;
    }

    private static android.os.Handler sMeasurer;

    /**
     * Look-ahead thread: measure n candidates (chars, lengths) ahead, with every Paint setting
     * seen so far, on the measuring thread.
     */
    static void prepare(final char[][] words, final int[][] lens, final boolean[] ok, final int n) {
        if (sMeasurer == null) {
            android.os.HandlerThread t = new android.os.HandlerThread("WaveMeasure", android.os.Process.THREAD_PRIORITY_BACKGROUND
                    + android.os.Process.THREAD_PRIORITY_MORE_FAVORABLE);
            t.start();
            sMeasurer = new android.os.Handler(t.getLooper());
        }
        sMeasurer.post(new Runnable() {
            @Override public void run() {
                Sig[] sigs;
                synchronized (SIGS) { sigs = SIGS.clone(); }
                for (Sig g : sigs) {
                    if (g == null) continue;
                    android.graphics.Paint copy;
                    int gen;
                    synchronized (g.widths) { copy = g.copy; gen = g.gen; }
                    if (copy == null) continue;
                    for (int i = 0; i < n; i++) {
                        if (!ok[i] || lens[i] == null || lens[i][0] <= 0) continue;
                        // As stock shows it (AlphaInput.getWords); marked words are drawn from 1.
                        if (words[i][0] == 40959) continue;
                        String k = new String(words[i], 0, Math.min(lens[i][0], words[i].length));
                        synchronized (g.widths) {
                            if (g.gen != gen) break;
                            if (g.widths.containsKey(k)) continue;
                        }
                        float w = copy.measureText(k, 0, k.length());
                        synchronized (g.widths) {
                            if (g.gen != gen) break;
                            if (g.widths.size() < 4000) g.widths.put(k, w);
                        }
                    }
                }
            }
        });
    }

    /**
     * CandidatesListView.onDraw draws all (up to 32) candidates every frame, though only the
     * few inside the bar are visible. Words that start right of the visible strip, or end
     * left of it, are skipped; the rest is drawn exactly as stock.
     */
    public static void drawText(android.graphics.Canvas c, CharSequence text, int start, int end, float x, float y,
            android.graphics.Paint paint) {
        if (c.getClipBounds(sClip)) {
            if (x > sClip.right + 2) return;
            if (x < sClip.left && x + measure(paint, text, start, end) < sClip.left - 2) return;
        }
        c.drawText(text, start, end, x, y, paint);
    }

    private static void drawNow(View v) throws Exception {
        if (!sInit) {
            mGetViewRootImpl = View.class.getMethod("getViewRootImpl");
            Class<?> vri = Class.forName("android.view.ViewRootImpl");
            mDoTraversal = vri.getDeclaredMethod("doTraversal");
            mDoTraversal.setAccessible(true);
            fScheduled = vri.getDeclaredField("mTraversalScheduled");
            fScheduled.setAccessible(true);
            fInTraversal = vri.getDeclaredField("mIsInTraversal");
            fInTraversal.setAccessible(true);
            fFrameInfo = Choreographer.class.getDeclaredField("mFrameInfo");
            fFrameInfo.setAccessible(true);
            mSetVsync = Class.forName("android.view.FrameInfo").getDeclaredMethod("setVsync", long.class, long.class);
            mSetVsync.setAccessible(true);
            fCallbacksRunning = Choreographer.class.getDeclaredField("mCallbacksRunning");
            fCallbacksRunning.setAccessible(true);
            fLastFrameTime = Choreographer.class.getDeclaredField("mLastFrameTimeNanos");
            fLastFrameTime.setAccessible(true);
            sInit = true;
        }
        Object root = mGetViewRootImpl.invoke(v);
        if (root == null || !fScheduled.getBoolean(root) || fInTraversal.getBoolean(root)) return;
        Trace.beginSection("wave.drawNow");
        try {
            // The frame is drawn outside a Choreographer callback: present it as a frame
            // that starts now (frame time for the views, vsync stamp for the renderer),
            // then put the Choreographer state back.
            Choreographer ch = Choreographer.getInstance();
            long now = System.nanoTime();
            long last = fLastFrameTime.getLong(ch);
            boolean running = fCallbacksRunning.getBoolean(ch);
            mSetVsync.invoke(fFrameInfo.get(ch), now, now);
            fLastFrameTime.setLong(ch, now);
            fCallbacksRunning.setBoolean(ch, true);
            try {
                mDoTraversal.invoke(root);
            } finally {
                fCallbacksRunning.setBoolean(ch, running);
                fLastFrameTime.setLong(ch, last);
            }
        } finally {
            Trace.endSection();
        }
    }
}
