package org.argon.rcs.msrp;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

import org.argon.rcs.util.Log;

/**
 * One MSRP session over its own TCP/TLS connection (RFC 4975). Active: connects to the peer's
 * path and binds with a (possibly empty) SEND. Passive: listens on a local port for the peer.
 * Callbacks run on {@code exec}.
 */
public final class MsrpSession {
    public interface Listener {
        /** A complete incoming message (all chunks). */
        void onMsrpMessage(MsrpSession s, String messageId, String contentType, byte[] body);
        void onMsrpClosed(MsrpSession s, Throwable cause);
    }

    public interface SendCallback { void onResult(boolean ok, int code, String reason); }

    public static final int MAX_CHUNK_IN = 1024 * 1024;

    private final ScheduledExecutorService exec;
    private final Log log;
    private final Listener listener;
    public final String sessionId = MsrpMessage.newSessionId();
    public String localPath;
    public String remotePath;
    public int chunkSize = 2048;
    public long txTimeoutMs = 30000;
    private Socket socket;
    private ServerSocket server;
    private OutputStream out;
    private volatile boolean closed;
    private final Map<String, Pending> pending = new HashMap<>();
    private final Map<String, ByteArrayOutputStream> incoming = new HashMap<>();
    private final Map<String, String> incomingType = new HashMap<>();

    private static final class Pending {
        final SendCallback cb; final String messageId; final boolean last;
        ScheduledFuture<?> timer;
        Pending(SendCallback cb, String id, boolean last) { this.cb = cb; this.messageId = id; this.last = last; }
    }

    public MsrpSession(ScheduledExecutorService exec, Log log, Listener l) { this.exec = exec; this.log = log; this.listener = l; }

    public static String path(String host, int port, String sessionId, boolean tls) {
        return (tls ? "msrps://" : "msrp://") + host + ":" + port + "/" + sessionId + ";tcp";
    }

    /** Last path in a space-separated path list (the peer itself). */
    public static String lastPathHop(String paths) {
        String[] a = paths.trim().split("\\s+");
        return a[a.length - 1];
    }

    /** host, port, tls of the first hop (where we connect). */
    public static Object[] firstHop(String paths) {
        String p = paths.trim().split("\\s+")[0];
        boolean tls = p.startsWith("msrps://");
        String rest = p.substring(p.indexOf("://") + 3);
        int slash = rest.indexOf('/');
        String hp = slash >= 0 ? rest.substring(0, slash) : rest;
        String host; int port;
        if (hp.startsWith("[")) {
            int rb = hp.indexOf(']');
            host = hp.substring(1, rb);
            port = Integer.parseInt(hp.substring(rb + 2));
        } else {
            int c = hp.lastIndexOf(':');
            host = hp.substring(0, c);
            port = Integer.parseInt(hp.substring(c + 1));
        }
        return new Object[]{host, port, tls};
    }

    /** Passive role: opens a listening socket and returns the port. Call before building the SDP. */
    public int listen() throws IOException {
        server = new ServerSocket();
        server.bind(new InetSocketAddress(0));
        return server.getLocalPort();
    }

    /** Passive role: waits (blocking, on an I/O thread) for the peer's connection. */
    public void acceptPeer(int timeoutMs) throws IOException {
        server.setSoTimeout(timeoutMs);
        try {
            Socket s = server.accept();
            s.setTcpNoDelay(true);
            attach(s);
        } finally {
            try { server.close(); } catch (IOException ignored) {}
        }
    }

    /** Active role: connects (blocking) to the first hop of remotePath. */
    public void connect(SSLSocketFactory sf, int timeoutMs) throws IOException {
        Object[] hop = firstHop(remotePath);
        String host = (String) hop[0]; int port = (Integer) hop[1]; boolean tls = (Boolean) hop[2];
        Socket raw = new Socket();
        raw.connect(new InetSocketAddress(host, port), timeoutMs);
        Socket s = raw;
        if (tls) {
            SSLSocketFactory f = sf != null ? sf : (SSLSocketFactory) SSLSocketFactory.getDefault();
            SSLSocket ss = (SSLSocket) f.createSocket(raw, host, port, true);
            ss.setSoTimeout(timeoutMs);
            ss.startHandshake();
            ss.setSoTimeout(0);
            s = ss;
        }
        s.setTcpNoDelay(true);
        attach(s);
        log.d("MSRP connected to " + host + ":" + port + (tls ? " (TLS)" : ""));
    }

    private void attach(Socket s) throws IOException {
        socket = s;
        out = s.getOutputStream();
        final InputStream in = new BufferedInputStream(s.getInputStream(), 16384);
        Thread t = new Thread(() -> readLoop(in), "rcs-msrp-rx");
        t.setDaemon(true);
        t.start();
    }

    public boolean isOpen() { return socket != null && !closed; }

    /** Binding SEND without body (active side, RFC 4975 section 5.4). */
    public void sendBind() {
        MsrpMessage m = base("SEND");
        m.add("Message-ID", MsrpMessage.newTid());
        m.add("Byte-Range", "1-0/0");
        m.add("Failure-Report", "no");
        try { write(m); } catch (IOException e) { log.w("MSRP bind SEND failed", e); }
    }

    private MsrpMessage base(String method) {
        MsrpMessage m = new MsrpMessage();
        m.tid = MsrpMessage.newTid();
        m.method = method;
        m.add("To-Path", remotePath);
        m.add("From-Path", localPath);
        return m;
    }

    /** Sends a message, chunked; cb (on exec) when the last chunk got 200 or anything failed. */
    public void send(String messageId, String contentType, byte[] body, SendCallback cb) {
        exec.execute(() -> {
            if (!isOpen()) { cb.onResult(false, 0, "MSRP not connected"); return; }
            int total = body.length;
            int off = 0;
            boolean[] failed = {false};
            do {
                int len = Math.min(chunkSize, total - off);
                boolean last = off + len >= total;
                MsrpMessage m = base("SEND");
                m.add("Message-ID", messageId);
                m.add("Byte-Range", (off + 1) + "-" + (off + len) + "/" + total);
                m.add("Success-Report", "no");
                m.add("Failure-Report", "yes");
                m.add("Content-Type", contentType);
                byte[] chunk = new byte[len];
                System.arraycopy(body, off, chunk, 0, len);
                m.body = chunk;
                m.flag = last ? '$' : '+';
                Pending p = new Pending((ok, code, reason) -> {
                    if (failed[0]) return;
                    if (!ok) { failed[0] = true; cb.onResult(false, code, reason); }
                    else if (last) cb.onResult(true, code, reason);
                }, messageId, last);
                pending.put(m.tid, p);
                p.timer = exec.schedule(() -> {
                    Pending q = pending.remove(m.tid);
                    if (q != null) { log.w("MSRP transaction timeout " + m.tid); q.cb.onResult(false, 408, "MSRP timeout"); }
                }, txTimeoutMs, TimeUnit.MILLISECONDS);
                try {
                    write(m);
                } catch (IOException e) {
                    pending.remove(m.tid);
                    p.timer.cancel(false);
                    p.cb.onResult(false, 0, "MSRP write failed: " + Log.describe(e));
                    return;
                }
                off += len;
            } while (off < total);
        });
    }

    private void write(MsrpMessage m) throws IOException {
        OutputStream o = out;
        if (o == null || closed) throw new IOException("MSRP closed");
        log.d("MSRP >> " + m.brief());
        byte[] b = m.toBytes();
        synchronized (this) { o.write(b); o.flush(); }
    }

    private void readLoop(InputStream in) {
        Throwable cause = null;
        try {
            while (!closed) {
                MsrpMessage m = MsrpMessage.read(in, MAX_CHUNK_IN);
                if (m == null) break;
                log.d("MSRP << " + m.brief());
                exec.execute(() -> handle(m));
            }
        } catch (Throwable t) { cause = t; }
        boolean was = closed;
        close();
        final Throwable c = cause;
        if (!was) log.i("MSRP connection closed" + (c != null ? ": " + Log.describe(c) : ""));
        try {
            exec.execute(() -> {
                for (Pending p : pending.values()) { if (p.timer != null) p.timer.cancel(false); p.cb.onResult(false, 0, "MSRP connection closed"); }
                pending.clear();
                if (!was) listener.onMsrpClosed(this, c);
            });
        } catch (java.util.concurrent.RejectedExecutionException ignored) { /* engine shut down */ }
    }

    private void handle(MsrpMessage m) {
        if (!m.isRequest()) {
            Pending p = pending.remove(m.tid);
            if (p == null) return;
            if (p.timer != null) p.timer.cancel(false);
            p.cb.onResult(m.status == 200, m.status, m.comment);
            return;
        }
        if (m.method.equals("SEND")) onSend(m);
        else if (m.method.equals("REPORT")) { /* we never ask for success reports; ignore */ }
        else respond(m, 501, "Not Implemented");
    }

    private void onSend(MsrpMessage m) {
        String fr = m.header("Failure-Report");
        boolean respond = fr == null || fr.equalsIgnoreCase("yes");
        if (respond) respond(m, 200, "OK");
        String id = m.header("Message-ID");
        if (id == null) id = m.tid;
        if (m.flag == '#') { incoming.remove(id); incomingType.remove(id); return; }
        long[] br = m.byteRange();
        byte[] body = m.body == null ? new byte[0] : m.body;
        ByteArrayOutputStream acc = incoming.get(id);
        if (acc == null) {
            if (m.flag == '$' && br[0] <= 1) { deliver(m, id, body); return; }
            acc = new ByteArrayOutputStream();
            incoming.put(id, acc);
        }
        if (m.header("Content-Type") != null) incomingType.put(id, m.header("Content-Type"));
        long start = br[0] - 1;
        if (start == acc.size()) acc.write(body, 0, body.length);
        else if (start < acc.size()) {
            // overlap/retransmission: rewrite from offset
            byte[] cur = acc.toByteArray();
            acc.reset();
            acc.write(cur, 0, (int) start);
            acc.write(body, 0, body.length);
        } else {
            log.w("MSRP gap in " + id + " at " + start + " have " + acc.size());
            acc.write(new byte[(int) (start - acc.size())], 0, (int) (start - acc.size()));
            acc.write(body, 0, body.length);
        }
        boolean complete = m.flag == '$' && (br[2] < 0 || acc.size() >= br[2]);
        if (complete) {
            incoming.remove(id);
            MsrpMessage meta = m;
            String ct = incomingType.remove(id);
            if (meta.header("Content-Type") == null && ct != null) meta.add("Content-Type", ct);
            deliver(meta, id, acc.toByteArray());
        }
    }

    private void deliver(MsrpMessage m, String id, byte[] body) {
        if (body.length == 0) return; // binding/empty SEND
        String sr = m.header("Success-Report");
        if (sr != null && sr.equalsIgnoreCase("yes")) {
            MsrpMessage r = base("REPORT");
            r.add("Message-ID", id);
            r.add("Byte-Range", "1-" + body.length + "/" + body.length);
            r.add("Status", "000 200 OK");
            try { write(r); } catch (IOException e) { log.w("REPORT failed", e); }
        }
        try { listener.onMsrpMessage(this, id, m.header("Content-Type"), body); }
        catch (Throwable t) { log.e("MSRP message handler failed", t); }
    }

    private void respond(MsrpMessage req, int code, String comment) {
        MsrpMessage r = new MsrpMessage();
        r.tid = req.tid;
        r.status = code;
        r.comment = comment;
        // To-Path of a response = From-Path of the request (first hop only per RFC 4975 7.1.2)
        String from = req.header("From-Path");
        r.add("To-Path", from == null ? remotePath : from.trim().split("\\s+")[0]);
        r.add("From-Path", localPath);
        try { write(r); } catch (IOException e) { log.w("MSRP response failed", e); }
    }

    public void close() {
        if (closed) return;
        closed = true;
        try { if (socket != null) socket.close(); } catch (IOException ignored) {}
        try { if (server != null) server.close(); } catch (IOException ignored) {}
    }
}
