package com.dictation.xp3;

import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.os.Process;
import android.os.SystemClock;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/**
 * 16 kHz mono 16-bit PCM capture feeding a thread-safe circular ring buffer (15 s capacity).
 *
 * Started immediately on dictation start so opening words are buffered while the model warms up.
 * Releases {@link AudioRecord} immediately on {@link #stop()}. Never writes audio to disk.
 * Also supports an explicit debug-only WAV source (OFF by default) feeding the same ring buffer.
 */
final class AudioCapture {

    public static final int SAMPLE_RATE = 16000;
    public static final int FRAME_SAMPLES = 640; // 40 ms
    private static final int RING_CAPACITY = SAMPLE_RATE * 15; // 15 seconds = 480 KB

    private final short[] ring = new short[RING_CAPACITY];
    private int head;
    private int count;
    private long droppedSamples;

    private AudioRecord recorder;
    private Thread producerThread;
    private volatile boolean running;
    private boolean eof;
    private boolean stopImmediate;
    private volatile long eofAtMs;

    synchronized void startMic() throws IOException {
        stop();
        resetBufferLocked();

        int minBuf = AudioRecord.getMinBufferSize(
            SAMPLE_RATE, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
        if (minBuf <= 0) {
            throw new IOException("AudioRecord unavailable (minBuf=" + minBuf + ")");
        }
        int bufBytes = Math.max(minBuf * 2, FRAME_SAMPLES * 8 * 2);
        AudioRecord rec = new AudioRecord(
            MediaRecorder.AudioSource.VOICE_RECOGNITION,
            SAMPLE_RATE,
            AudioFormat.CHANNEL_IN_MONO,
            AudioFormat.ENCODING_PCM_16BIT,
            bufBytes
        );
        if (rec.getState() != AudioRecord.STATE_INITIALIZED) {
            rec.release();
            throw new IOException("AudioRecord failed to initialize");
        }
        try {
            rec.startRecording();
        } catch (RuntimeException e) {
            rec.release();
            throw new IOException("AudioRecord.startRecording failed", e);
        }

        recorder = rec;
        running = true;
        producerThread = new Thread(new Runnable() {
            @Override
            public void run() {
                Process.setThreadPriority(Process.THREAD_PRIORITY_URGENT_AUDIO);
                short[] tmp = new short[FRAME_SAMPLES];
                try {
                    while (running) {
                        int n = rec.read(tmp, 0, tmp.length);
                        if (n > 0) {
                            pushSamples(tmp, 0, n);
                        } else if (n < 0) {
                            break;
                        }
                    }
                } finally {
                    markEof();
                }
            }
        }, "dictation-mic");
        producerThread.start();
    }

    /** Explicit debug-only WAV input source (OFF by default). */
    synchronized void startDebugWav(File wavFile, final boolean realtime) throws IOException {
        stop();
        resetBufferLocked();

        final short[] samples;
        try (FileInputStream in = new FileInputStream(wavFile)) {
            samples = WavUtil.readShorts16kMono(in);
        }

        running = true;
        producerThread = new Thread(new Runnable() {
            @Override
            public void run() {
                // Same priority as dictation-mic, so raised decode configs are compared fairly.
                Process.setThreadPriority(Process.THREAD_PRIORITY_URGENT_AUDIO);
                long startMs = SystemClock.elapsedRealtime();
                int pos = 0;
                try {
                    while (running && pos < samples.length) {
                        int n = Math.min(FRAME_SAMPLES, samples.length - pos);
                        pushSamples(samples, pos, n);
                        pos += n;
                        if (realtime && running && pos < samples.length) {
                            long targetMs = startMs + (pos * 1000L) / SAMPLE_RATE;
                            long wait = targetMs - SystemClock.elapsedRealtime();
                            if (wait > 0) {
                                try {
                                    Thread.sleep(wait);
                                } catch (InterruptedException e) {
                                    break;
                                }
                            }
                        }
                    }
                } finally {
                    markEof();
                }
            }
        }, "dictation-wav");
        producerThread.start();
    }

    /** Stops capture and releases {@link AudioRecord} immediately. */
    void stop() {
        stop(false);
    }

    /**
     * Stops capture immediately. When {@code discardBuffered} is true (cancellation), any buffered
     * audio is discarded so readers unblock with {@code -1} at once.
     */
    void stop(boolean discardBuffered) {
        AudioRecord rec;
        Thread prod;
        synchronized (this) {
            running = false;
            eof = true;
            if (discardBuffered) {
                stopImmediate = true;
                count = 0;
                head = 0;
            }
            rec = recorder;
            recorder = null;
            prod = producerThread;
            producerThread = null;
            notifyAll();
        }
        if (rec != null) {
            try {
                rec.stop();
            } catch (RuntimeException ignored) {
            }
            try {
                rec.release();
            } catch (RuntimeException ignored) {
            }
        }
        if (prod != null) {
            prod.interrupt();
        }
    }

    /**
     * Reads up to {@code maxSamples} float32 samples in {@code [-1, 1]}.
     * Returns {@code 0} on timeout if still running, or {@code -1} once stopped/EOF and drained.
     */
    synchronized int read(float[] dst, int maxSamples, long waitMs) {
        if (stopImmediate) return -1;
        if (count == 0 && !eof) {
            try {
                wait(waitMs);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return -1;
            }
        }
        if (stopImmediate) return -1;
        if (count == 0) {
            return eof ? -1 : 0;
        }
        int n = Math.min(count, Math.min(maxSamples, dst.length));
        for (int i = 0; i < n; i++) {
            dst[i] = ring[head] / 32768.0f;
            head++;
            if (head == RING_CAPACITY) head = 0;
        }
        count -= n;
        return n;
    }

    synchronized boolean isRunning() {
        return running;
    }

    /** Samples still buffered for the reader (0 when drained). */
    synchronized int availableSamples() {
        return count;
    }

    /** elapsedRealtime of the last producer EOF, or 0 when none has happened. Bench only. */
    long eofAtMs() {
        return eofAtMs;
    }

    synchronized long droppedSamples() {
        return droppedSamples;
    }

    private synchronized void resetBufferLocked() {
        head = 0;
        count = 0;
        droppedSamples = 0;
        eof = false;
        stopImmediate = false;
        eofAtMs = 0;
    }

    private synchronized void pushSamples(short[] src, int offset, int length) {
        if (!running) return;
        for (int i = 0; i < length; i++) {
            if (count == RING_CAPACITY) {
                // Overwrite oldest sample if consumer fell behind by > 15 s.
                head++;
                if (head == RING_CAPACITY) head = 0;
                count--;
                droppedSamples++;
            }
            int tail = head + count;
            if (tail >= RING_CAPACITY) tail -= RING_CAPACITY;
            ring[tail] = src[offset + i];
            count++;
        }
        notifyAll();
    }

    private synchronized void markEof() {
        running = false;
        eof = true;
        eofAtMs = SystemClock.elapsedRealtime();
        notifyAll();
    }
}
