package com.dictation.xp3;

/**
 * Tracks continuous silence duration for automatic dictation stop (~8 s default).
 * Uses wake-VAD speech probabilities when available, with an RMS energy fallback.
 */
public final class SilenceTracker {

    public static final long DEFAULT_TIMEOUT_MS = 8000L;
    public static final float DEFAULT_SPEECH_THRESHOLD = 0.5f;
    public static final float DEFAULT_RMS_THRESHOLD = 0.015f;

    private final long timeoutMs;
    private final float speechThreshold;
    private final float rmsThreshold;

    private double silenceMs;
    private double totalMs;
    private boolean heardSpeech;

    public SilenceTracker() {
        this(DEFAULT_TIMEOUT_MS, DEFAULT_SPEECH_THRESHOLD, DEFAULT_RMS_THRESHOLD);
    }

    public SilenceTracker(long timeoutMs, float speechThreshold, float rmsThreshold) {
        if (timeoutMs <= 0) throw new IllegalArgumentException("timeoutMs must be > 0");
        this.timeoutMs = timeoutMs;
        this.speechThreshold = speechThreshold;
        this.rmsThreshold = rmsThreshold;
    }

    public void reset() {
        silenceMs = 0.0;
        totalMs = 0.0;
        heardSpeech = false;
    }

    /** Feeds per-window VAD speech probabilities spaced {@code hopMs} apart. */
    public boolean feedVadScores(float[] scores, double hopMs) {
        for (int i = 0; i < scores.length; i++) {
            totalMs += hopMs;
            if (scores[i] >= speechThreshold) {
                silenceMs = 0.0;
                heardSpeech = true;
            } else {
                silenceMs += hopMs;
            }
        }
        return isTimedOut();
    }

    /** Fallback when no VAD method is available: evaluates chunk RMS amplitude. */
    public boolean feedPcmFallback(float[] pcm, int offset, int length, int sampleRate) {
        if (length <= 0) return isTimedOut();
        double sumSq = 0.0;
        for (int i = 0; i < length; i++) {
            double s = pcm[offset + i];
            sumSq += s * s;
        }
        double rms = Math.sqrt(sumSq / length);
        double chunkMs = (length * 1000.0) / sampleRate;
        totalMs += chunkMs;
        if (rms >= rmsThreshold) {
            silenceMs = 0.0;
            heardSpeech = true;
        } else {
            silenceMs += chunkMs;
        }
        return isTimedOut();
    }

    public boolean isTimedOut() {
        return silenceMs >= timeoutMs;
    }

    public long silenceMs() {
        return Math.round(silenceMs);
    }

    public long totalMs() {
        return Math.round(totalMs);
    }

    public boolean heardSpeech() {
        return heardSpeech;
    }

    public long timeoutMs() {
        return timeoutMs;
    }
}
