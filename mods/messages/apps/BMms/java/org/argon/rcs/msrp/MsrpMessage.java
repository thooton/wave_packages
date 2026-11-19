package org.argon.rcs.msrp;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

import org.argon.rcs.util.U;

/** An MSRP request or response (RFC 4975). */
public final class MsrpMessage {
    public String tid;
    public String method;      // SEND, REPORT, ... (null for responses)
    public int status;         // responses
    public String comment;
    public final List<String[]> headers = new ArrayList<>();
    public byte[] body;        // null = no body
    public char flag = '$';    // $ complete, + more chunks, # aborted

    public boolean isRequest() { return method != null; }

    public String header(String name) {
        for (String[] h : headers) if (h[0].equalsIgnoreCase(name)) return h[1];
        return null;
    }

    public MsrpMessage add(String name, String value) { if (value != null) headers.add(new String[]{name, value}); return this; }

    /** Byte-Range as {start, end, total}; end/total = -1 for '*'. */
    public long[] byteRange() {
        String br = header("Byte-Range");
        if (br == null) return new long[]{1, -1, -1};
        try {
            String[] a = br.trim().split("/");
            String[] se = a[0].split("-");
            long start = Long.parseLong(se[0].trim());
            long end = se[1].trim().equals("*") ? -1 : Long.parseLong(se[1].trim());
            long total = a.length < 2 || a[1].trim().equals("*") ? -1 : Long.parseLong(a[1].trim());
            return new long[]{start, end, total};
        } catch (Exception e) { return new long[]{1, -1, -1}; }
    }

    public byte[] toBytes() {
        StringBuilder b = new StringBuilder(256);
        b.append("MSRP ").append(tid).append(' ');
        if (method != null) b.append(method);
        else { b.append(status); if (comment != null) b.append(' ').append(comment); }
        b.append("\r\n");
        // To-Path and From-Path must come first
        for (String n : new String[]{"To-Path", "From-Path"}) { String v = header(n); if (v != null) b.append(n).append(": ").append(v).append("\r\n"); }
        String ct = null;
        for (String[] h : headers) {
            if (h[0].equalsIgnoreCase("To-Path") || h[0].equalsIgnoreCase("From-Path")) continue;
            if (h[0].equalsIgnoreCase("Content-Type")) { ct = h[1]; continue; }
            b.append(h[0]).append(": ").append(h[1]).append("\r\n");
        }
        ByteArrayOutputStream o = new ByteArrayOutputStream(b.length() + (body == null ? 0 : body.length) + 64);
        if (body != null) {
            if (ct != null) b.append("Content-Type: ").append(ct).append("\r\n");
            b.append("\r\n");
            write(o, b.toString());
            o.write(body, 0, body.length);
            write(o, "\r\n");
        } else {
            write(o, b.toString());
        }
        write(o, "-------" + tid + flag + "\r\n");
        return o.toByteArray();
    }

    private static void write(ByteArrayOutputStream o, String s) { byte[] x = s.getBytes(StandardCharsets.UTF_8); o.write(x, 0, x.length); }

    public String brief() {
        return method != null ? method + " tid=" + tid + " id=" + header("Message-ID") + " range=" + header("Byte-Range") + flag
                : status + " tid=" + tid;
    }

    /** Reads one MSRP message; null on clean EOF. maxBody bounds the chunk size. */
    public static MsrpMessage read(InputStream in, int maxBody) throws IOException {
        String first;
        do {
            first = readLine(in);
            if (first == null) return null;
        } while (first.isEmpty());
        String[] p = first.split(" ", 4);
        if (p.length < 3 || !p[0].equals("MSRP")) throw new IOException("bad MSRP start line: " + first);
        MsrpMessage m = new MsrpMessage();
        m.tid = p[1];
        if (p[2].matches("\\d{3}")) {
            m.status = Integer.parseInt(p[2]);
            m.comment = p.length > 3 ? p[3] : null;
        } else m.method = p[2];
        String end = "-------" + m.tid;
        while (true) {
            String l = readLine(in);
            if (l == null) throw new IOException("EOF in MSRP headers");
            if (l.startsWith(end) && l.length() == end.length() + 1) { m.flag = l.charAt(end.length()); return m; }
            if (l.isEmpty()) break;
            int c = l.indexOf(':');
            if (c > 0) m.headers.add(new String[]{l.substring(0, c).trim(), l.substring(c + 1).trim()});
        }
        // body until CRLF + end-line
        byte[] marker = ("\r\n" + end).getBytes(StandardCharsets.ISO_8859_1);
        byte[] buf = new byte[4096];
        int n = 0;
        byte last = marker[marker.length - 1];
        while (true) {
            int b = in.read();
            if (b < 0) throw new IOException("EOF in MSRP body");
            if (n == buf.length) buf = java.util.Arrays.copyOf(buf, buf.length * 2);
            buf[n++] = (byte) b;
            if ((byte) b == last && n >= marker.length && endsWith(buf, n, marker)) {
                int flag = in.read();
                int cr = in.read(), lf = in.read();
                if (flag == '$' || flag == '+' || flag == '#') {
                    if (cr != '\r' || lf != '\n') throw new IOException("bad MSRP end-line");
                    m.body = java.util.Arrays.copyOf(buf, n - marker.length);
                    m.flag = (char) flag;
                    return m;
                }
                // not really the end: keep the bytes
                for (int x : new int[]{flag, cr, lf}) {
                    if (x < 0) throw new IOException("EOF in MSRP body");
                    if (n == buf.length) buf = java.util.Arrays.copyOf(buf, buf.length * 2);
                    buf[n++] = (byte) x;
                }
            }
            if (n > maxBody + marker.length + 16) throw new IOException("MSRP chunk too large");
        }
    }

    private static boolean endsWith(byte[] a, int n, byte[] m) {
        int off = n - m.length;
        for (int i = 0; i < m.length; i++) if (a[off + i] != m[i]) return false;
        return true;
    }

    static String readLine(InputStream in) throws IOException {
        ByteArrayOutputStream b = new ByteArrayOutputStream(128);
        int c;
        while ((c = in.read()) >= 0) {
            if (c == '\n') break;
            if (c != '\r') b.write(c);
            if (b.size() > 16384) throw new IOException("MSRP line too long");
        }
        if (c < 0 && b.size() == 0) return null;
        return new String(b.toByteArray(), StandardCharsets.UTF_8);
    }

    /** Session id for paths. */
    public static String newSessionId() { return U.randHex(10); }
    public static String newTid() { return U.randHex(8); }
}
