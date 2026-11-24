package com.dictation.xp3;

import java.util.Arrays;

/**
 * Immutable tensor value exchanged with {@link AsrModel}.
 *
 * Dtype codes follow ExecuTorch scalar-type IDs: 4 = INT64, 5 = FP16, 6 = FP32.
 */
public final class Tensor {

    public static final int DTYPE_INT64 = 4;
    public static final int DTYPE_FP16 = 5;
    public static final int DTYPE_FP32 = 6;

    public final int dtype;
    private final int[] shape;
    private final float[] floats;
    private final long[] longs;

    private Tensor(int dtype, int[] shape, float[] floats, long[] longs) {
        this.dtype = dtype;
        this.shape = shape.clone();
        this.floats = floats;
        this.longs = longs;
    }

    public static int numel(int[] shape) {
        long n = 1;
        for (int i = 0; i < shape.length; i++) {
            if (shape[i] < 0) {
                throw new IllegalArgumentException("Negative dimension at " + i + ": " + shape[i]);
            }
            n *= shape[i];
            if (n > Integer.MAX_VALUE) {
                throw new IllegalArgumentException("Tensor size overflow: " + Arrays.toString(shape));
            }
        }
        return (int) n;
    }

    public static Tensor ofFloats(int[] shape, float[] data) {
        int expected = numel(shape);
        if (data == null || data.length != expected) {
            throw new IllegalArgumentException(
                "FP32 length mismatch: expected " + expected + " for " + Arrays.toString(shape)
                    + ", got " + (data == null ? -1 : data.length));
        }
        return new Tensor(DTYPE_FP32, shape, data, null);
    }

    public static Tensor ofLongs(int[] shape, long[] data) {
        int expected = numel(shape);
        if (data == null || data.length != expected) {
            throw new IllegalArgumentException(
                "INT64 length mismatch: expected " + expected + " for " + Arrays.toString(shape)
                    + ", got " + (data == null ? -1 : data.length));
        }
        return new Tensor(DTYPE_INT64, shape, null, data);
    }

    /** 0-D scalar INT64 tensor (shape []), used for pcec_*_flush n_real. */
    public static Tensor scalarLong(long value) {
        return new Tensor(DTYPE_INT64, new int[0], null, new long[] {value});
    }

    public static Tensor zeros(int[] shape, int dtype) {
        int n = numel(shape);
        if (dtype == DTYPE_FP32) {
            return new Tensor(DTYPE_FP32, shape, new float[n], null);
        }
        if (dtype == DTYPE_INT64) {
            return new Tensor(DTYPE_INT64, shape, null, new long[n]);
        }
        throw new IllegalArgumentException("Unsupported tensor dtype: " + dtype);
    }

    public static Tensor fullLong(int[] shape, long value) {
        int n = numel(shape);
        long[] data = new long[n];
        Arrays.fill(data, value);
        return new Tensor(DTYPE_INT64, shape, null, data);
    }

    public int rank() {
        return shape.length;
    }

    public int dim(int index) {
        int i = index < 0 ? shape.length + index : index;
        return shape[i];
    }

    public int[] shape() {
        return shape.clone();
    }

    public int numel() {
        return floats != null ? floats.length : longs.length;
    }

    public float[] floatData() {
        if (dtype != DTYPE_FP32 || floats == null) {
            throw new IllegalStateException("Tensor is not FP32 (dtype=" + dtype + ")");
        }
        return floats;
    }

    public long[] longData() {
        if (dtype != DTYPE_INT64 || longs == null) {
            throw new IllegalStateException("Tensor is not INT64 (dtype=" + dtype + ")");
        }
        return longs;
    }

    /** Defensive copy, matching torch Tensor.clone() for arena-backed outputs. */
    public Tensor copy() {
        if (dtype == DTYPE_FP32) {
            return new Tensor(DTYPE_FP32, shape, floats.clone(), null);
        }
        if (dtype == DTYPE_INT64) {
            return new Tensor(DTYPE_INT64, shape, null, longs.clone());
        }
        throw new IllegalStateException("Unsupported tensor dtype: " + dtype);
    }

    @Override
    public String toString() {
        String type = dtype == DTYPE_FP32 ? "FP32" : dtype == DTYPE_INT64 ? "INT64" : ("dtype=" + dtype);
        return type + Arrays.toString(shape);
    }
}
