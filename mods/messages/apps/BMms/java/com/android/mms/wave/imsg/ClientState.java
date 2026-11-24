package com.android.mms.wave.imsg;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

/**
 * Atomically persisted client state (no external dependencies, API 27 compatible).
 */
public final class ClientState {
    private long txSeq = 0L;
    private long lastRxSeq = 0L;
    private final TreeMap<Long, byte[]> outbox = new TreeMap<Long, byte[]>();
    private final LinkedHashMap<String, Integer> learnedIntervals = new LinkedHashMap<String, Integer>();
    private final LinkedHashMap<String, Long> lastProbeMs = new LinkedHashMap<String, Long>();
    /** Random id of this state's seq numbering (see Frame.hasEpochs); new when the state is. */
    private long epoch = newEpoch();
    /** The server epoch {@code lastRxSeq} counts in; 0 until the first WELCOME that has one. */
    private long serverEpoch = 0L;

    static long newEpoch() {
        long e = 0L;
        java.security.SecureRandom r = new java.security.SecureRandom();
        while (e == 0L) e = r.nextLong();
        return e;
    }

    public synchronized long getEpoch() {
        return epoch;
    }

    public synchronized long getServerEpoch() {
        return serverEpoch;
    }

    /**
     * Takes the epoch from a WELCOME. A different one than before means the server's state is new
     * (its seqs start at 1 again): forget {@code lastRxSeq} so they aren't dropped as duplicates.
     * Returns true if it was a different one (the caller saves either way when this changed state).
     */
    public synchronized boolean adoptServerEpoch(long e) {
        if (e == 0L || e == serverEpoch) return false;
        boolean reset = serverEpoch != 0L;
        if (reset) lastRxSeq = 0L;
        serverEpoch = e;
        return reset;
    }

    public synchronized long getTxSeq() {
        return txSeq;
    }

    public synchronized long getLastRxSeq() {
        return lastRxSeq;
    }

    public synchronized void setLastRxSeq(long seq) {
        this.lastRxSeq = seq;
    }

    public synchronized long enqueue(byte[] body) {
        txSeq += 1;
        outbox.put(txSeq, body.clone());
        return txSeq;
    }

    public synchronized int ackUpTo(long seq) {
        int removed = 0;
        Iterator<Map.Entry<Long, byte[]>> it = outbox.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Long, byte[]> entry = it.next();
            if (entry.getKey() <= seq) {
                it.remove();
                removed++;
            } else {
                break;
            }
        }
        return removed;
    }

    public synchronized Map<Long, byte[]> pendingAfter(long peerLastRxSeq) {
        TreeMap<Long, byte[]> copy = new TreeMap<Long, byte[]>();
        for (Map.Entry<Long, byte[]> entry : outbox.tailMap(peerLastRxSeq, false).entrySet()) {
            copy.put(entry.getKey(), entry.getValue().clone());
        }
        return copy;
    }

    /** True while {@code seq} is in the outbox (sent or not, not ACKed yet). */
    public synchronized boolean isPending(long seq) {
        return outbox.containsKey(seq);
    }

    /** Drops {@code seq} from the outbox (it won't be resent); true if it was there. */
    public synchronized boolean remove(long seq) {
        return outbox.remove(seq) != null;
    }

    public synchronized int outboxSize() {
        return outbox.size();
    }

    public synchronized Integer getLearnedInterval(String networkKey) {
        return learnedIntervals.get(networkKey);
    }

    public synchronized void setLearnedInterval(String networkKey, int intervalS) {
        learnedIntervals.put(networkKey, intervalS);
    }

    public synchronized long getLastProbeMs(String networkKey) {
        Long v = lastProbeMs.get(networkKey);
        return v == null ? 0L : v;
    }

    public synchronized void setLastProbeMs(String networkKey, long epochMs) {
        lastProbeMs.put(networkKey, epochMs);
    }

    public synchronized String summary() {
        return "txSeq=" + txSeq + ", lastRxSeq=" + lastRxSeq + ", epoch=" + Long.toHexString(epoch)
                + ", serverEpoch=" + Long.toHexString(serverEpoch) + ", outbox=" + outbox.size()
                + ", learned=" + learnedIntervals;
    }

    public static ClientState loadOrDefault(File file) throws IOException {
        ClientState st = new ClientState();
        if (file == null || !file.exists()) {
            return st;
        }
        BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file), StandardCharsets.UTF_8));
        try {
            String line;
            while ((line = br.readLine()) != null) {
                line = line.trim();
                if (line.isEmpty() || line.startsWith("#")) {
                    continue;
                }
                int eq = line.indexOf('=');
                if (eq <= 0) {
                    continue;
                }
                String key = line.substring(0, eq);
                String val = line.substring(eq + 1);
                try {
                    if ("tx_seq".equals(key)) {
                        st.txSeq = Long.parseLong(val);
                    } else if ("last_rx_seq".equals(key)) {
                        st.lastRxSeq = Long.parseLong(val);
                    } else if ("epoch".equals(key)) {
                        long e = new java.math.BigInteger(val, 16).longValue();
                        if (e != 0L) st.epoch = e;
                    } else if ("server_epoch".equals(key)) {
                        st.serverEpoch = new java.math.BigInteger(val, 16).longValue();
                    } else if (key.startsWith("outbox.")) {
                        long seq = Long.parseLong(key.substring("outbox.".length()));
                        st.outbox.put(seq, fromHex(val));
                    } else if (key.startsWith("interval.")) {
                        String netKey = unescapeKey(key.substring("interval.".length()));
                        st.learnedIntervals.put(netKey, Integer.parseInt(val));
                    } else if (key.startsWith("probe_ms.")) {
                        String netKey = unescapeKey(key.substring("probe_ms.".length()));
                        st.lastProbeMs.put(netKey, Long.parseLong(val));
                    }
                } catch (IllegalArgumentException ignored) {
                }
            }
        } finally {
            br.close();
        }
        return st;
    }

    public synchronized void save(File file) throws IOException {
        if (file == null) {
            return;
        }
        File parent = file.getAbsoluteFile().getParentFile();
        if (parent != null && !parent.exists()) {
            if (!parent.mkdirs() && !parent.exists()) {
                throw new IOException("Failed to create directory: " + parent);
            }
        }
        File tmp = new File(parent, "." + file.getName() + ".tmp." + System.nanoTime());
        FileOutputStream fos = new FileOutputStream(tmp);
        try {
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(fos, StandardCharsets.UTF_8));
            bw.write("# imsg-client state v1\n");
            bw.write("tx_seq=" + txSeq + "\n");
            bw.write("last_rx_seq=" + lastRxSeq + "\n");
            bw.write("epoch=" + Long.toHexString(epoch) + "\n");
            bw.write("server_epoch=" + Long.toHexString(serverEpoch) + "\n");
            for (Map.Entry<Long, byte[]> e : outbox.entrySet()) {
                bw.write("outbox." + e.getKey() + "=" + toHex(e.getValue()) + "\n");
            }
            for (Map.Entry<String, Integer> e : learnedIntervals.entrySet()) {
                bw.write("interval." + escapeKey(e.getKey()) + "=" + e.getValue() + "\n");
            }
            for (Map.Entry<String, Long> e : lastProbeMs.entrySet()) {
                bw.write("probe_ms." + escapeKey(e.getKey()) + "=" + e.getValue() + "\n");
            }
            bw.flush();
            fos.getFD().sync();
        } finally {
            fos.close();
        }
        // POSIX atomic rename on Android internal storage.
        if (!tmp.renameTo(file)) {
            if (file.exists()) {
                file.delete();
            }
            if (!tmp.renameTo(file)) {
                tmp.delete();
                throw new IOException("Failed to replace state file: " + file);
            }
        }
    }

    private static String escapeKey(String k) {
        return toHex(k.getBytes(StandardCharsets.UTF_8));
    }

    private static String unescapeKey(String hex) {
        return new String(fromHex(hex), StandardCharsets.UTF_8);
    }

    public static String toHex(byte[] bytes) {
        char[] hexChars = "0123456789abcdef".toCharArray();
        char[] out = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) {
            int v = bytes[i] & 0xFF;
            out[i * 2] = hexChars[v >>> 4];
            out[i * 2 + 1] = hexChars[v & 0x0F];
        }
        return new String(out);
    }

    public static String toColonHex(byte[] bytes) {
        char[] hexChars = "0123456789ABCDEF".toCharArray();
        StringBuilder sb = new StringBuilder(bytes.length * 3);
        for (int i = 0; i < bytes.length; i++) {
            if (i > 0) sb.append(':');
            int v = bytes[i] & 0xFF;
            sb.append(hexChars[v >>> 4]);
            sb.append(hexChars[v & 0x0F]);
        }
        return sb.toString();
    }

    public static byte[] fromHex(String hex) {
        String clean = hex.replace(":", "").replace("-", "").replace(" ", "").trim();
        if ((clean.length() & 1) != 0) {
            throw new IllegalArgumentException("Odd-length hex string");
        }
        byte[] out = new byte[clean.length() / 2];
        for (int i = 0; i < out.length; i++) {
            int hi = Character.digit(clean.charAt(i * 2), 16);
            int lo = Character.digit(clean.charAt(i * 2 + 1), 16);
            if (hi < 0 || lo < 0) {
                throw new IllegalArgumentException("Invalid hex character");
            }
            out[i] = (byte) ((hi << 4) | lo);
        }
        return out;
    }
}
