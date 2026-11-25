package com.dictation.xp3;

/**
 * JNI bridge to {@code libasr4all.so} (ExecuTorch + XNNPACK runtime).
 * Method signatures match the Phase 1 native build contract exactly.
 */
public final class NativeRuntime {

    private static volatile boolean loaded;
    private static volatile Throwable loadError;

    static {
        try {
            System.loadLibrary("asr4all");
            loaded = true;
        } catch (Throwable t) {
            loadError = t;
        }
    }

    private NativeRuntime() {}

    public static boolean isAvailable() {
        return loaded;
    }

    public static Throwable loadError() {
        return loadError;
    }

    public static native void nativeSetNumThreads(int numThreads);

    public static native long nativeOpenFile(String path);

    public static native long nativeOpenFd(int fd, long offset, long length);

    public static native void nativeClose(long handle);

    public static native int nativeLoadMethod(long handle, String methodName, String arenaGroup);

    public static native void nativeUnloadMethod(long handle, String methodName);

    public static native int nativeSetFeedback(long handle, String methodName, int[] outIdx, int[] inIdx);

    public static native void nativeResetFeedback(long handle, String methodName);

    public static native String nativeMethodMeta(long handle, String methodName);

    public static native Object[] nativeExecute(
        long handle,
        String methodName,
        int[] inputDtypes,
        int[][] inputShapes,
        float[][] inputFloats,
        long[][] inputLongs
    );

    public static native String nativeLastError(long handle);
}
