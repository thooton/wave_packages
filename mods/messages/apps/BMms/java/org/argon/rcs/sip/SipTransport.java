package org.argon.rcs.sip;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;

import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

import org.argon.rcs.util.Log;
import org.argon.rcs.util.U;

/**
 * One persistent SIP flow (TCP or TLS) to the P-CSCF. A reader thread parses messages and
 * CRLF keep-alives (RFC 5626 section 4.4.1: client sends CRLFCRLF, server answers CRLF).
 */
public final class SipTransport {
    public interface Listener {
        void onSipMessage(SipTransport t, SipMessage m);
        void onPong(SipTransport t);
        void onClosed(SipTransport t, Throwable cause);
    }

    private final Log log;
    private final Listener listener;
    public final boolean tls;
    private Socket socket;
    private OutputStream out;
    private volatile boolean closed;
    private Thread reader;
    public volatile long lastRx;
    private static final int MAX_HEAD = 64 * 1024, MAX_BODY = 4 * 1024 * 1024;

    public SipTransport(Log log, Listener l, boolean tls) { this.log = log; this.listener = l; this.tls = tls; }

    /** Blocking connect. */
    public void connect(String host, int port, SSLSocketFactory sf, int timeoutMs) throws IOException {
        Socket s;
        if (tls) {
            Socket raw = new Socket();
            raw.connect(new InetSocketAddress(host, port), timeoutMs);
            SSLSocketFactory f = sf != null ? sf : (SSLSocketFactory) SSLSocketFactory.getDefault();
            SSLSocket ss = (SSLSocket) f.createSocket(raw, host, port, true);
            ss.setSoTimeout(timeoutMs);
            ss.startHandshake();
            ss.setSoTimeout(0);
            s = ss;
        } else {
            s = new Socket();
            s.connect(new InetSocketAddress(host, port), timeoutMs);
        }
        s.setTcpNoDelay(true);
        s.setKeepAlive(true);
        socket = s;
        out = s.getOutputStream();
        lastRx = System.currentTimeMillis();
        log.i("connected " + (tls ? "TLS" : "TCP") + " " + host + ":" + port + " local " + localHost() + ":" + localPort());
        final InputStream in = new BufferedInputStream(s.getInputStream(), 16384);
        reader = new Thread(() -> readLoop(in), "rcs-sip-rx");
        reader.setDaemon(true);
        reader.start();
    }

    public String localHost() {
        Socket s = socket;
        if (s == null) return "127.0.0.1";
        String h = s.getLocalAddress().getHostAddress();
        int pct = h.indexOf('%');
        if (pct >= 0) h = h.substring(0, pct);
        return h.contains(":") ? "[" + h + "]" : h;
    }

    public int localPort() { Socket s = socket; return s == null ? 0 : s.getLocalPort(); }

    public boolean isOpen() { return socket != null && !closed; }

    public void send(SipMessage m) throws IOException {
        byte[] b = m.toBytes();
        if (log != null) log.d(">> " + m.brief());
        if (log != null) log.v(">> " + new String(b, StandardCharsets.UTF_8));
        write(b);
    }

    public void sendPing() throws IOException { write("\r\n\r\n".getBytes(StandardCharsets.ISO_8859_1)); }

    private void write(byte[] b) throws IOException {
        OutputStream o = out;
        if (o == null || closed) throw new IOException("transport closed");
        synchronized (this) {
            o.write(b);
            o.flush();
        }
    }

    public void close() {
        if (closed) return;
        closed = true;
        try { if (socket != null) socket.close(); } catch (IOException ignored) {}
    }

    private void readLoop(InputStream in) {
        Throwable cause = null;
        try {
            while (!closed) {
                SipMessage m = readMessage(in);
                if (m == null) break;
                lastRx = System.currentTimeMillis();
                log.d("<< " + m.brief());
                log.v("<< " + m);
                try { listener.onSipMessage(this, m); } catch (Throwable t) { log.e("dispatch failed", t); }
            }
        } catch (Throwable t) {
            cause = t;
        }
        boolean wasClosed = closed;
        close();
        if (!wasClosed) log.w("flow closed" + (cause != null ? ": " + Log.describe(cause) : " by peer"));
        try { listener.onClosed(this, cause); } catch (Throwable ignored) {}
    }

    /** Reads one message; answers pings and reports pongs in between. null on EOF. */
    private SipMessage readMessage(InputStream in) throws IOException {
        ByteArrayOutputStream head = new ByteArrayOutputStream(1024);
        // skip CRLF keep-alives at the message boundary
        int crlf = 0;
        int b;
        while (true) {
            b = in.read();
            if (b < 0) return null;
            if (b == '\r') continue;
            if (b == '\n') {
                crlf++;
                lastRx = System.currentTimeMillis();
                // decide ping (CRLFCRLF) vs pong (CRLF) once the burst is over
                if (in.available() == 0) {
                    if (crlf >= 2) { try { write("\r\n".getBytes(StandardCharsets.ISO_8859_1)); } catch (IOException ignored) {} }
                    else listener.onPong(this);
                    crlf = 0;
                }
                continue;
            }
            if (crlf > 0) {
                if (crlf >= 2) { try { write("\r\n".getBytes(StandardCharsets.ISO_8859_1)); } catch (IOException ignored) {} }
                else listener.onPong(this);
                crlf = 0;
            }
            break;
        }
        head.write(b);
        int p1 = b, p2 = 0;
        while (true) {
            b = in.read();
            if (b < 0) return null;
            head.write(b);
            if (b == '\n' && (p1 == '\n' || (p1 == '\r' && p2 == '\n'))) break; // CRLFCRLF or LFLF
            p2 = p1; p1 = b;
            if (head.size() > MAX_HEAD) throw new IOException("SIP head too large");
        }
        String h = new String(head.toByteArray(), StandardCharsets.UTF_8).trim();
        SipMessage m = SipMessage.parseHead(h);
        int len = U.parseInt(m.header("Content-Length"), 0);
        if (len < 0 || len > MAX_BODY) throw new IOException("bad Content-Length " + len);
        byte[] body = new byte[len];
        int off = 0;
        while (off < len) {
            int r = in.read(body, off, len - off);
            if (r < 0) throw new IOException("EOF in body");
            off += r;
        }
        m.body = body;
        return m;
    }
}
