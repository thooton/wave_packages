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

    /** Executes a loaded method and returns output tensors. */
    Tensor[] execute(String methodName, Tensor[] inputs);

    @Override
    void close();
}
