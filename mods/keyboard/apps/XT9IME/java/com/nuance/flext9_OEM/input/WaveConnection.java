package com.nuance.flext9_OEM.input;

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
        if (flags == 0 && n >= 0 && mValid && mTrusted && !mBroken && WaveSpec.inKey()) {
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
        if (mValid && !mBroken && mComposing >= 0) {
            // Same text as our copy (as far as both reach back)?
            int k = Math.min(mText.length(), s.length());
            boolean same = mText.substring(mText.length() - k).equals(s.substring(s.length() - k));
            boolean appAtStart = s.length() < ask;
            if (mAtStart && s.length() != mText.length() && (appAtStart || s.length() > mText.length())) same = false;
            if (appAtStart && mText.length() > s.length()) same = false;
            if (!same) {
                if (WaveSpec.DEBUG) Log.d(TAG, "copy [" + mText + "] app [" + s + "] ask " + ask + " atStart " + mAtStart
                        + " composing " + mComposing + " inKey " + WaveSpec.inKey());
                if (mTrusted) broken("text before cursor differs");
            }
        }
        if (mComposing >= 0) {
            mText.setLength(0);
            mText.append(s);
            mAtStart = s.length() < ask;
            mValid = true;
        }
        return s.length() <= n ? s : s.substring(s.length() - n);
    }

    @Override
    public int getCursorCapsMode(int reqModes) {
        int local = mValid && !mBroken ? capsMode(reqModes) : -1;
        if (local >= 0 && mTrusted && WaveSpec.inKey()) return local;
        Trace.beginSection("wave.ic.getCursorCapsMode");
        int real = super.getCursorCapsMode(reqModes);
        Trace.endSection();
        if (local >= 0) {
            if (local == real) {
                mTrusted = true;
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
