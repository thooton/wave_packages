package com.dictation.xp3;

import com.xp3.common.Json;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/** Input and output tensor specifications for one ExecuTorch method. */
public final class MethodMeta {

    public static final class TensorSpec {
        public final int dtype;
        private final int[] shape;

        public TensorSpec(int dtype, int[] shape) {
            this.dtype = dtype;
            this.shape = shape.clone();
        }

        public int[] shape() {
            return shape.clone();
        }

        public int rank() {
            return shape.length;
        }

        public int dim(int index) {
            int i = index < 0 ? shape.length + index : index;
            return shape[i];
        }

        @Override
        public String toString() {
            return dtype + Arrays.toString(shape);
        }
    }

    public final String name;
    public final List<TensorSpec> inputs;
    public final List<TensorSpec> outputs;

    public MethodMeta(String name, List<TensorSpec> inputs, List<TensorSpec> outputs) {
        this.name = name;
        this.inputs = Collections.unmodifiableList(new ArrayList<TensorSpec>(inputs));
        this.outputs = Collections.unmodifiableList(new ArrayList<TensorSpec>(outputs));
    }

    public int numInputs() {
        return inputs.size();
    }

    public int numOutputs() {
        return outputs.size();
    }

    public TensorSpec input(int index) {
        return inputs.get(index);
    }

    public TensorSpec output(int index) {
        return outputs.get(index);
    }

    /**
     * Parses JSON returned by {@code NativeRuntime.nativeMethodMeta}.
     * Expected shape: {@code {"inputs":[{"dtype":6,"shape":[1,22400]},...],"outputs":[...]}}.
     * Also accepts {@code "sizes"} as an alias for {@code "shape"} and string dtype names.
     */
    public static MethodMeta parseJson(String name, String json) {
        Map<String, Object> root = Json.object(Json.parse(json));
        List<TensorSpec> ins = parseSpecs(Json.children(root, "inputs"));
        List<TensorSpec> outs = parseSpecs(Json.children(root, "outputs"));
        return new MethodMeta(name, ins, outs);
    }

    private static List<TensorSpec> parseSpecs(List<Object> list) {
        List<TensorSpec> specs = new ArrayList<TensorSpec>(list.size());
        for (int i = 0; i < list.size(); i++) {
            Map<String, Object> entry = Json.object(list.get(i));
            int dtype = parseDtype(entry.get("dtype"));
            Object rawShape = entry.containsKey("shape") ? entry.get("shape") : entry.get("sizes");
            List<Object> dims = Json.array(rawShape);
            int[] shape = new int[dims.size()];
            for (int j = 0; j < dims.size(); j++) {
                shape[j] = ((Number) dims.get(j)).intValue();
            }
            specs.add(new TensorSpec(dtype, shape));
        }
        return specs;
    }

    public static int parseDtype(Object raw) {
        if (raw instanceof Number) {
            return ((Number) raw).intValue();
        }
        if (raw instanceof String) {
            String s = ((String) raw).trim().toLowerCase();
            if ("int64".equals(s) || "long".equals(s)) return Tensor.DTYPE_INT64;
            if ("float16".equals(s) || "fp16".equals(s) || "half".equals(s)) return Tensor.DTYPE_FP16;
            if ("float32".equals(s) || "fp32".equals(s) || "float".equals(s)) return Tensor.DTYPE_FP32;
        }
        throw new IllegalArgumentException("Unsupported dtype: " + raw);
    }
}
