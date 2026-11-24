package com.dictation.xp3;

import android.content.Context;
import android.content.res.AssetFileDescriptor;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * {@link AsrModel} backed by {@link NativeRuntime} ({@code libasr4all.so}) mapping the
 * uncompressed {@code asr_encoder.pte} straight from the APK via {@link AssetFileDescriptor}.
 */
public final class NativeModel implements AsrModel {

    private final AssetFileDescriptor afd;
    private long handle;
    private final Map<String, MethodMeta> metaCache = new HashMap<String, MethodMeta>();

    private NativeModel(AssetFileDescriptor afd, long handle) {
        this.afd = afd;
        this.handle = handle;
    }

    public static NativeModel openFromAsset(Context context, String assetName, int numThreads) throws IOException {
        if (!NativeRuntime.isAvailable()) {
            Throwable err = NativeRuntime.loadError();
            throw new IOException("Native runtime libasr4all.so unavailable", err);
        }
        NativeRuntime.nativeSetNumThreads(numThreads);
        AssetFileDescriptor afd = context.getAssets().openFd(assetName);
        long handle = 0;
        try {
            handle = NativeRuntime.nativeOpenFd(
                afd.getParcelFileDescriptor().getFd(),
                afd.getStartOffset(),
                afd.getLength()
            );
            if (handle == 0) {
                String msg = NativeRuntime.nativeLastError(0);
                throw new IOException("Failed to open " + assetName + ": " + msg);
            }
            return new NativeModel(afd, handle);
        } catch (IOException e) {
            closeQuietly(afd);
            throw e;
        } catch (RuntimeException e) {
            closeQuietly(afd);
            throw e;
        }
    }

    @Override
    public synchronized void loadMethod(String methodName, String arenaGroup) {
        ensureOpen();
        int rc = NativeRuntime.nativeLoadMethod(handle, methodName, arenaGroup);
        if (rc != 0) {
            throw new IllegalStateException(
                "nativeLoadMethod(" + methodName + ") failed (" + rc + "): " + NativeRuntime.nativeLastError(handle));
        }
    }

    @Override
    public synchronized void unloadMethod(String methodName) {
        if (handle == 0) return;
        NativeRuntime.nativeUnloadMethod(handle, methodName);
    }

    @Override
    public synchronized MethodMeta methodMeta(String methodName) {
        ensureOpen();
        if (metaCache.containsKey(methodName)) {
            return metaCache.get(methodName);
        }
        String json = NativeRuntime.nativeMethodMeta(handle, methodName);
        if (json == null) {
            return null;
        }
        MethodMeta parsed = MethodMeta.parseJson(methodName, json);
        metaCache.put(methodName, parsed);
        return parsed;
    }

    @Override
    public synchronized Tensor[] execute(String methodName, Tensor[] inputs) {
        ensureOpen();
        MethodMeta meta = methodMeta(methodName);
        if (meta == null) {
            throw new IllegalStateException("Unknown method: " + methodName);
        }

        int n = inputs.length;
        int[] dtypes = new int[n];
        int[][] shapes = new int[n][];
        float[][] floats = new float[n][];
        long[][] longs = new long[n][];
        for (int i = 0; i < n; i++) {
            Tensor t = inputs[i];
            dtypes[i] = t.dtype;
            shapes[i] = t.shape();
            if (t.dtype == Tensor.DTYPE_FP32) {
                floats[i] = t.floatData();
            } else if (t.dtype == Tensor.DTYPE_INT64) {
                longs[i] = t.longData();
            } else {
                throw new IllegalArgumentException("Unsupported input dtype: " + t.dtype);
            }
        }

        Object[] raw = NativeRuntime.nativeExecute(handle, methodName, dtypes, shapes, floats, longs);
        if (raw == null) {
            throw new IllegalStateException(
                "nativeExecute(" + methodName + ") failed: " + NativeRuntime.nativeLastError(handle));
        }

        Tensor[] out = new Tensor[raw.length];
        for (int i = 0; i < raw.length; i++) {
            MethodMeta.TensorSpec spec = meta.output(i);
            Object elem = raw[i];
            if (spec.dtype == Tensor.DTYPE_FP32) {
                out[i] = Tensor.ofFloats(spec.shape(), (float[]) elem);
            } else if (spec.dtype == Tensor.DTYPE_INT64) {
                out[i] = Tensor.ofLongs(spec.shape(), (long[]) elem);
            } else {
                throw new IllegalStateException("Unsupported output dtype: " + spec.dtype);
            }
        }
        return out;
    }

    @Override
    public synchronized void close() {
        if (handle != 0) {
            NativeRuntime.nativeClose(handle);
            handle = 0;
        }
        closeQuietly(afd);
        metaCache.clear();
    }

    private void ensureOpen() {
        if (handle == 0) {
            throw new IllegalStateException("NativeModel is closed");
        }
    }

    private static void closeQuietly(AssetFileDescriptor afd) {
        if (afd != null) {
            try {
                afd.close();
            } catch (IOException ignored) {
            }
        }
    }
}
