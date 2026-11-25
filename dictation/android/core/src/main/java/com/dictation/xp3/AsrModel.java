package com.dictation.xp3;

/**
 * Abstraction over the ExecuTorch program runtime, implemented by the JNI bridge
 * in {@code :app} and by deterministic fixture/synthetic doubles in {@code :core} tests.
 */
public interface AsrModel extends AutoCloseable {

    /**
     * Loads a method into memory if not already loaded.
     *
     * @param methodName method name inside the {@code .pte} program
     * @param arenaGroup optional shared planned-arena group (e.g. {@code "pcec"} so
     *                   {@code pcec_c16} and {@code pcec_c16_flush} share one buffer),
     *                   or {@code null} for a dedicated arena
     */
    void loadMethod(String methodName, String arenaGroup);

    /** Releases a loaded method's execution state and activation arena if loaded. */
    void unloadMethod(String methodName);

    /** Reads tensor metadata for a method without necessarily allocating its arena. */
    MethodMeta methodMeta(String methodName);

    /** Whether the runtime can retain feedback tensors across executions. */
    default boolean supportsFeedback() {
        return false;
    }

    /** Registers output-to-input feedback pairs for a loaded method, starting from zero. */
    default void setFeedback(String methodName, int[] outIdx, int[] inIdx) {
        throw new UnsupportedOperationException("Feedback is not supported");
    }

    /** Zeroes the registered feedback buffers for a method. */
    default void resetFeedback(String methodName) {}

    /**
     * Executes a loaded method and returns output tensors. Null inputs use the registered
     * feedback buffers in those slots; retained feedback outputs are returned as null.
     */
    Tensor[] execute(String methodName, Tensor[] inputs);

    @Override
    void close();
}
