package com.nuance.flext9_OEM.input;

import android.os.SystemClock;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

/**
 * The keyboard's connection to the text field (IME.getCurrentInputConnection).
 *
 * While handling a key, the stock IME asks the app about the text before the cursor
 * (getTextBeforeCursor) and the auto-capitalization state (getCursorCapsMode) right after
 * changing the text. Each such call waits until the app's UI thread has applied the change,
 * typically 20..40 ms on this phone, two or three times per key.
 *
 * This connection keeps a copy of the text before the cursor: taken from the app's own
 * answers (outside key handling, when the stock code asks anyway, e.g. on every selection
 * update) and updated with the changes the keyboard itself makes (composing text, commits).
 * During key handling the two calls are answered from that copy, computing the caps mode
 * like the framework does (TextUtils.getCapsMode on the text before the cursor). Every real
 * answer the app gives later is compared with the copy; on any difference the copy is not
 * used again for this field, and the stock shift state is refreshed. Answers are only taken
 * from the copy once the app's real caps mode has matched it at least once.
 */
public final class WaveConnection extends InputConnectionWrapper {
    private static final String TAG = WaveSpec.TAG;
    private static final int KEEP = 256, FETCH = 256;

    private static WaveConnection sLast;

    /** Text before the cursor (its last KEEP chars); valid only if mValid. */
    private final StringBuilder mText = new StringBuilder();
    private boolean mValid, mAtStart;
    /** Length of the composing text, which ends at the cursor; -1 if unknown. */
    private int mComposing = 0;
    private boolean mTrusted, mBroken;
    /** The copy has been checked against the field for the text the current key leaves. */
    private boolean mTrustedCurrent;
    /** The text the copy expects the field to have after the key just answered (see expect()). */
    private String mExpect, mExpectTail;
    private long mExpectAt, mFreshAt;
    private static final long EXPECT_MS = 400, FRESH_MS = 220;
    private final InputConnection mTarget;

    private WaveConnection(InputConnection target) {
        super(target, false);
        mTarget = target;
    }

    /** IME.getCurrentInputConnection. */
    public static InputConnection wrap(InputConnection ic) {
        if (ic == null || ic instanceof WaveConnection) return ic;
        WaveConnection w = sLast;
        if (w == null || w.mTarget != ic) sLast = w = new WaveConnection(ic);
        return w;
    }

    private void invalidate() {
        mValid = false;
    }

    // ---------------------------------------------------------------- answers

    @Override
    public CharSequence getTextBeforeCursor(int n, int flags) {
        // In key handling: the copy, once the app has matched it at least once (a first real ask
        // confirms and freshens it). Outside key handling the copy is freshened from the app
        // once per key gap or so, far enough ahead that its binder round trip is over before
        // the next key's frame is due.
        if (flags == 0 && n >= 0 && mValid && mTrusted && !mBroken && confirmed()
                && (WaveSpec.inKey() || SystemClock.uptimeMillis() >= mFreshAt)) {
            int len = mText.length();
            if (n <= len || mAtStart) {
                return mText.substring(Math.max(0, len - n));
            }
        }
        if (flags != 0 || n < 0) return super.getTextBeforeCursor(n, flags);
        // Ask for a bit more than asked, to keep enough of the text for later answers.
        int ask = Math.max(n, FETCH);
        Trace.beginSection("wave.ic.getTextBeforeCursor");
        CharSequence r = super.getTextBeforeCursor(ask, 0);
        Trace.endSection();
        if (r == null) {
            invalidate();
            return null;
        }
        String s = r.toString();
        String e = expect();
        if (e != null) {
            // Known key: the application's text must be the one the key leaves.
            if (expects(e, s, ask)) {
                trusted(s, ask);
                mFreshAt = SystemClock.uptimeMillis() + FRESH_MS;
                return s.length() <= n ? s : s.substring(s.length() - n);
            }
            if (WaveSpec.DEBUG) Log.d(TAG, "copy [" + mText + "] not the expected [" + e + "] app [" + s
                    + "] ask " + ask + " composing " + mComposing);
            broken("text before cursor differs");
        } else if (mValid && !mBroken && mComposing >= 0) {
            // Nothing to expect here: keep the copy right (it isn't confirmed by this).
            if (!same(s, ask) && mTrusted) broken("text before cursor differs");
            mTrustedCurrent = false;
        }
        if (mComposing >= 0) {
            mText.setLength(0);
            mText.append(s);
            mAtStart = s.length() < ask;
            mValid = true;
        }
        mFreshAt = SystemClock.uptimeMillis() + FRESH_MS;
        return s.length() <= n ? s : s.substring(s.length() - n);
    }

    /**
     * The text the copy expects the field to have, if it knows: the field text before the key
     * that was just answered, with that key's result (as the engine recorded it) in place of
     * its composing text. Null when it can't know (after a space, an empty word, or no record).
     */
    private String expect() {
        String t = mExpect;
        return t != null && SystemClock.uptimeMillis() < mExpectAt ? t : null;
    }

    /** Does the application's text s (of ask chars, short only at the start) match e? */
    private static boolean expects(String e, String s, int ask) {
        return s.length() != ask && (e.equals(s) || e.endsWith(s));
    }

    /** Does the application's text s agree with the copy? (as far as both reach back) */
    private boolean same(String s, int ask) {
        int k = Math.min(mText.length(), s.length());
        boolean eq = mText.substring(mText.length() - k).equals(s.substring(s.length() - k));
        boolean appAtStart = s.length() < ask;
        if (mAtStart && s.length() != mText.length() && (appAtStart || s.length() > mText.length())) eq = false;
        if (appAtStart && mText.length() > s.length()) eq = false;
        return eq;
    }

    /**
     * The application's text matched what the key was expected to leave: the copy can answer,
     * and goes onto that text.
     */
    private void trusted(String s, int ask) {
        mText.setLength(0);
        mText.append(s);
        mAtStart = s.length() < ask;
        mComposing = Math.min(mExpectTail.length(), mText.length());
        if (mText.length() > KEEP) {
            mText.delete(0, mText.length() - KEEP);
            mAtStart = false;
        }
        mTrusted = true;
        mTrustedCurrent = true;
        mValid = true;
        mExpect = null;
    }

    /**
     * In key handling, getTextBeforeCursor is answered from the copy only once the copy has been
     * checked against the field for the text this key leaves (a confirmation from an earlier
     * state doesn't cover it): tests the copy answers correctly, and a field the copy can't
     * follow (rich text, non-append edits) goes to the app from the first key.
     */
    private boolean confirmed() {
        return mTrusted && (mTrustedCurrent || !WaveSpec.inKey());
    }

    /**
     * WaveSpec, when a key was answered from a record: the field text the key left (mid-word
     * only), set up as expect() above. Null clears it.
     */
    static void expectedKey(String text) {
        WaveConnection w = sLast;
        if (w == null) return;
        if (text == null || w.mComposing < 0 || w.mComposing > w.mText.length()) {
            w.mExpect = null;
            return;
        }
        w.mExpect = w.mText.substring(0, w.mText.length() - w.mComposing) + text;
        w.mExpectTail = text;
        w.mExpectAt = SystemClock.uptimeMillis() + EXPECT_MS;
    }

    @Override
    public int getCursorCapsMode(int reqModes) {
        int local = mValid && !mBroken ? capsMode(reqModes) : -1;
        if (local >= 0 && mTrusted && confirmed()) return local;
        Trace.beginSection("wave.ic.getCursorCapsMode");
        int real = super.getCursorCapsMode(reqModes);
        Trace.endSection();
        // Confirm only while typing: outside key handling the request may come from the editor
        // asking after its own change (e.g. the app sending the key itself), not from the
        // keyboard's text, and comparing then would distrust a perfectly good copy.
        if (local >= 0 && WaveSpec.inKey()) {
            if (local == real) {
                mTrustedCurrent = true;
            } else {
                broken("caps mode " + local + " vs app " + real);
            }
        }
        return real;
    }

    private void broken(String why) {
        if (mBroken) return;
        mBroken = true;
        mValid = false;
        Log.i(TAG, "text field answers differ from the local copy (" + why + "), asking the app from now on");
        WaveSpec.refreshShift();
    }

    /**
     * TextUtils.getCapsMode(text, cursor, reqModes) on our copy of the text before the
     * cursor; -1 if the answer depends on text before the copy.
     */
    private int capsMode(int reqModes) {
        CharSequence cs = mText;
        int off = cs.length();
        int mode = 0;
        if ((reqModes & TextUtils.CAP_MODE_CHARACTERS) != 0) mode |= TextUtils.CAP_MODE_CHARACTERS;
        if ((reqModes & (TextUtils.CAP_MODE_WORDS | TextUtils.CAP_MODE_SENTENCES)) == 0) return mode;
        // The framework only looks back to the start of the previous word; make sure the copy
        // reaches back that far (or to the start of the text).
        int i = off;
        while (i > 0 && isOpen(cs.charAt(i - 1))) i--;
        int j = i;
        while (j > 0 && (cs.charAt(j - 1) == ' ' || cs.charAt(j - 1) == '\t')) j--;
        int k = j;
        while (k > 0 && isClose(cs.charAt(k - 1))) k--;
        int w = k > 0 ? k - 1 : 0;
        while (w > 0 && cs.charAt(w - 1) != '.' && Character.isLetter(cs.charAt(w - 1))) w--;
        if (w == 0 && !mAtStart) return -1;
        return TextUtils.getCapsMode(cs, off, reqModes);
    }

    private static boolean isOpen(char c) {
        return c == '"' || c == '\'' || Character.getType(c) == Character.START_PUNCTUATION;
    }

    private static boolean isClose(char c) {
        return c == '"' || c == '\'' || Character.getType(c) == Character.END_PUNCTUATION;
    }

    // ---------------------------------------------------------------- changes we make

    private void replaceComposing(CharSequence t) {
        if (mComposing < 0 || !mValid) {
            invalidate();
            return;
        }
        int len = mText.length();
        if (mComposing > len) {
            invalidate();
            return;
        }
        mText.setLength(len - mComposing);
        mText.append(t);
        if (mText.length() > KEEP) {
            mText.delete(0, mText.length() - KEEP);
            mAtStart = false;
        }
    }

    @Override
    public boolean setComposingText(CharSequence text, int newCursorPosition) {
        if (newCursorPosition == 1 && text != null) {
            replaceComposing(text);
            mComposing = text.length();
        } else {
            invalidate();
            mComposing = -1;
        }
        return super.setComposingText(text, newCursorPosition);
    }

    @Override
    public boolean commitText(CharSequence text, int newCursorPosition) {
        if (newCursorPosition == 1 && text != null) {
            replaceComposing(text);
        } else {
            invalidate();
        }
        mComposing = 0;
        return super.commitText(text, newCursorPosition);
    }

    @Override
    public boolean finishComposingText() {
        mComposing = 0;
        return super.finishComposingText();
    }

    @Override
    public boolean deleteSurroundingText(int beforeLength, int afterLength) {
        if (mValid && mComposing == 0 && beforeLength >= 0 && beforeLength <= mText.length()) {
            mText.setLength(mText.length() - beforeLength);
            if (!mAtStart && mText.length() < 32) invalidate();
        } else {
            invalidate();
        }
        return super.deleteSurroundingText(beforeLength, afterLength);
    }

    @Override
    public boolean setComposingRegion(int start, int end) {
        invalidate();
        mComposing = -1;
        return super.setComposingRegion(start, end);
    }

    @Override
    public boolean setSelection(int start, int end) {
        invalidate();
        return super.setSelection(start, end);
    }

    @Override
    public boolean sendKeyEvent(android.view.KeyEvent event) {
        invalidate();
        mComposing = -1;
        return super.sendKeyEvent(event);
    }

    @Override
    public boolean commitCompletion(android.view.inputmethod.CompletionInfo text) {
        invalidate();
        mComposing = -1;
        return super.commitCompletion(text);
    }

    @Override
    public boolean commitCorrection(android.view.inputmethod.CorrectionInfo correctionInfo) {
        invalidate();
        return super.commitCorrection(correctionInfo);
    }

    @Override
    public boolean performEditorAction(int editorAction) {
        invalidate();
        mComposing = -1;
        return super.performEditorAction(editorAction);
    }

    @Override
    public boolean performContextMenuAction(int id) {
        invalidate();
        mComposing = -1;
        return super.performContextMenuAction(id);
    }

    @Override
    public boolean deleteSurroundingTextInCodePoints(int beforeLength, int afterLength) {
        invalidate();
        return super.deleteSurroundingTextInCodePoints(beforeLength, afterLength);
    }

    @Override
    public boolean commitContent(android.view.inputmethod.InputContentInfo inputContentInfo, int flags,
            android.os.Bundle opts) {
        invalidate();
        mComposing = -1;
        return super.commitContent(inputContentInfo, flags, opts);
    }

    /** IME.onUpdateSelection, before the stock body: the field changed. */
    static void selectionChanging(int oldSelStart, int oldSelEnd, int newSelStart, int newSelEnd, int candStart, int candEnd) {
        WaveConnection w = sLast;
        if (w == null) return;
        // The copy assumes a cursor (no selection) at the end of the composing text.
        if (newSelStart != newSelEnd || (candEnd >= 0 && candEnd != newSelEnd)) {
            w.invalidate();
            if (candEnd < 0) w.mComposing = 0;
        }
    }

    /** IME.onStartInput: a new field (or the same field restarted). */
    static void reset() {
        sLast = null;
    }
}
