package com.dictation.xp3;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/** Pure Java 16 kHz mono 16-bit PCM WAV reader and writer. */
public final class WavUtil {

    public static final int SAMPLE_RATE = 16000;

    private WavUtil() {}

    public static float[] readPcm16kMono(InputStream in) throws IOException {
        return toFloats(readShorts16kMono(readAll(in)));
    }

    public static float[] readPcm16kMono(byte[] wavBytes) {
        return toFloats(readShorts16kMono(wavBytes));
    }

    public static short[] readShorts16kMono(InputStream in) throws IOException {
        return readShorts16kMono(readAll(in));
    }

    public static short[] readShorts16kMono(byte[] wavBytes) {
        if (wavBytes == null || wavBytes.length < 12) {
            throw new IllegalArgumentException("WAV too short");
        }
        ByteBuffer buf = ByteBuffer.wrap(wavBytes).order(ByteOrder.LITTLE_ENDIAN);
        if (buf.get(0) != 'R' || buf.get(1) != 'I' || buf.get(2) != 'F' || buf.get(3) != 'F'
                || buf.get(8) != 'W' || buf.get(9) != 'A' || buf.get(10) != 'V' || buf.get(11) != 'E') {
            throw new IllegalArgumentException("Not a RIFF/WAVE file");
        }

        boolean sawFmt = false;
        int audioFormat = 0;
        int channels = 0;
        int sampleRate = 0;
        int bitsPerSample = 0;
        int dataOffset = -1;
        int dataSize = -1;

        int pos = 12;
        while (pos + 8 <= wavBytes.length) {
            String chunkId = new String(wavBytes, pos, 4);
            int chunkSize = buf.getInt(pos + 4);
            if (chunkSize < 0) {
                throw new IllegalArgumentException("Invalid WAV chunk size: " + chunkSize);
            }
            int payloadStart = pos + 8;
            int payloadEnd = Math.min(wavBytes.length, payloadStart + chunkSize);

            if ("fmt ".equals(chunkId)) {
                if (payloadEnd - payloadStart < 16) {
                    throw new IllegalArgumentException("Truncated fmt chunk");
                }
                audioFormat = buf.getShort(payloadStart) & 0xFFFF;
                channels = buf.getShort(payloadStart + 2) & 0xFFFF;
                sampleRate = buf.getInt(payloadStart + 4);
                bitsPerSample = buf.getShort(payloadStart + 14) & 0xFFFF;
                sawFmt = true;
            } else if ("data".equals(chunkId)) {
                dataOffset = payloadStart;
                dataSize = payloadEnd - payloadStart;
                break;
            }

            // RIFF chunks are word-aligned (padded by 1 byte when chunkSize is odd).
            pos = payloadStart + chunkSize + (chunkSize & 1);
        }

        if (!sawFmt) throw new IllegalArgumentException("WAV missing fmt chunk");
        if (audioFormat != 1) throw new IllegalArgumentException("WAV must be PCM (format 1), got " + audioFormat);
        if (channels != 1) throw new IllegalArgumentException("WAV must be mono, got " + channels + " channels");
        if (sampleRate != SAMPLE_RATE) {
            throw new IllegalArgumentException("WAV must be 16000 Hz, got " + sampleRate);
        }
        if (bitsPerSample != 16) {
            throw new IllegalArgumentException("WAV must be 16-bit PCM, got " + bitsPerSample);
        }
        if (dataOffset < 0) throw new IllegalArgumentException("WAV missing data chunk");

        int numSamples = dataSize / 2;
        short[] samples = new short[numSamples];
        for (int i = 0; i < numSamples; i++) {
            samples[i] = buf.getShort(dataOffset + i * 2);
        }
        return samples;
    }

    public static float[] toFloats(short[] samples) {
        float[] out = new float[samples.length];
        for (int i = 0; i < samples.length; i++) {
            out[i] = samples[i] / 32768.0f;
        }
        return out;
    }

    public static byte[] writePcm16kMono(short[] samples) {
        int dataSize = samples.length * 2;
        byte[] out = new byte[44 + dataSize];
        ByteBuffer buf = ByteBuffer.wrap(out).order(ByteOrder.LITTLE_ENDIAN);
        out[0] = 'R'; out[1] = 'I'; out[2] = 'F'; out[3] = 'F';
        buf.putInt(4, 36 + dataSize);
        out[8] = 'W'; out[9] = 'A'; out[10] = 'V'; out[11] = 'E';
        out[12] = 'f'; out[13] = 'm'; out[14] = 't'; out[15] = ' ';
        buf.putInt(16, 16);
        buf.putShort(20, (short) 1);
        buf.putShort(22, (short) 1);
        buf.putInt(24, SAMPLE_RATE);
        buf.putInt(28, SAMPLE_RATE * 2);
        buf.putShort(32, (short) 2);
        buf.putShort(34, (short) 16);
        out[36] = 'd'; out[37] = 'a'; out[38] = 't'; out[39] = 'a';
        buf.putInt(40, dataSize);
        for (int i = 0; i < samples.length; i++) {
            buf.putShort(44 + i * 2, samples[i]);
        }
        return out;
    }

    private static byte[] readAll(InputStream in) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buf = new byte[8192];
        int n;
        while ((n = in.read(buf)) >= 0) {
            out.write(buf, 0, n);
        }
        return out.toByteArray();
    }
}
