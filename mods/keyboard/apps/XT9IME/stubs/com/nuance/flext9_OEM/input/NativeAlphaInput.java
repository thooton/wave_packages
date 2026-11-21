package com.nuance.flext9_OEM.input;

import android.content.Context;
import android.graphics.Point;
import android.os.Trace;
import java.util.List;

/** Compile stub of the stock class (not packaged). */
public final class NativeAlphaInput {
    public static native boolean xt9input_alpha_addCustomSymbolSet(int a0, char[] a1, int a2, int a3);
    public static native boolean xt9input_alpha_addExplicit(int a0, char[] a1, int a2, int a3);
    public static native boolean xt9input_alpha_addWordToUserDictionary(int a0, char[] a1, int a2);
    public static native boolean xt9input_alpha_asdb_add(int a0, String a1, int a2, String a3, int a4);
    public static native int xt9input_alpha_asdb_count(int a0);
    public static native boolean xt9input_alpha_asdb_delete(int a0, char[] a1, int a2);
    public static native boolean xt9input_alpha_asdb_find(int a0, char[] a1, int a2, char[] a3, int a4);
    public static native boolean xt9input_alpha_asdb_getNext(int a0, char[] a1, int[] a2, char[] a3, int[] a4, int a5);
    public static native void xt9input_alpha_asdb_reset(int a0);
    public static native void xt9input_alpha_breakContext(int a0);
    public static native int xt9input_alpha_buildSelectionList(int a0);
    public static native boolean xt9input_alpha_clearAllKeys(int a0);
    public static native boolean xt9input_alpha_clearKey(int a0);
    public static native int xt9input_alpha_create(String a0);
    public static native void xt9input_alpha_destroy(int a0);
    public static native void xt9input_alpha_finish(int a0);
    public static native int xt9input_alpha_getDefaultWordIndex(int a0);
    public static native int xt9input_alpha_getExactType(int a0, char[] a1, int a2);
    public static native int xt9input_alpha_getInlineText(int a0, char[] a1, int a2);
    public static native int xt9input_alpha_getKeyCount(int a0);
    public static native boolean xt9input_alpha_getKeyPositions(int a0, int a1, List<Point> a2);
    public static native boolean xt9input_alpha_getWord(int a0, int a1, char[] a2, char[] a3, int[] a4, int a5);
    public static native void xt9input_alpha_initTrace(int a0, int a1, int a2, int a3);
    public static native int xt9input_alpha_isAutoSpaceBeforeTrace(int a0, int a1, List<Point> a2);
    public static native boolean xt9input_alpha_isInlineKnown(int a0);
    public static native boolean xt9input_alpha_isLowerSymbol(int a0, char a1);
    public static native boolean xt9input_alpha_isUpperSymbol(int a0, char a1);
    public static native boolean xt9input_alpha_processKey(int a0, int a1, int a2, int a3);
    public static native boolean xt9input_alpha_processTap(int a0, int a1, int a2, int a3, int a4);
    public static native boolean xt9input_alpha_processTrace(int a0, int a1, List<Point> a2, int a3);
    public static native boolean xt9input_alpha_recaptureWord(int a0, int a1, char[] a2, int a3);
    public static native boolean xt9input_alpha_setAttribute(int a0, int a1, int a2);
    public static native void xt9input_alpha_setContext(int a0, char[] a1, int a2);
    public static native void xt9input_alpha_setKeyboardLayoutSize(int a0, int a1, int a2);
    public static native boolean xt9input_alpha_setLanguage(int a0, int a1);
    public static native boolean xt9input_alpha_start(int a0, Context a1);
    public static native char xt9input_alpha_toLowerSymbol(int a0, char a1);
    public static native char xt9input_alpha_toUpperSymbol(int a0, char a1);
    public static native boolean xt9input_alpha_udb_add(int a0, char[] a1, int a2);
    public static native int xt9input_alpha_udb_count(int a0);
    public static native boolean xt9input_alpha_udb_delete(int a0, char[] a1, int a2);
    public static native boolean xt9input_alpha_udb_find(int a0, char[] a1, int a2);
    public static native boolean xt9input_alpha_udb_getNext(int a0, char[] a1, int[] a2, int a3);
    public static native int xt9input_alpha_udb_getRemainingMemory(int a0);
    public static native int xt9input_alpha_udb_getSize(int a0);
    public static native void xt9input_alpha_udb_reset(int a0);
    public static native boolean xt9input_alpha_udb_scanBuf(int a0, char[] a1, int a2);
    public static native void xt9input_alpha_wordSelected(int a0, int a1, boolean a2);
}
