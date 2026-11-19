package org.wave.rcs.im;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.wave.rcs.util.U;

/** multipart/mixed (RFC 2046) bodies for SIP (INVITE with SDP + resource-lists / CPIM). */
public final class Multipart {
    public static final class Part {
        public final List<String[]> headers = new ArrayList<>();
        public byte[] body = new byte[0];

        public Part() {}
        public Part(String contentType, byte[] body) { headers.add(new String[]{"Content-Type", contentType}); this.body = body; }

        public Part header(String n, String v) { headers.add(new String[]{n, v}); return this; }

        public String get(String name) {
            for (String[] h : headers) if (h[0].equalsIgnoreCase(name)) return h[1];
            return null;
        }

        public String mediaType() {
            String ct = get("Content-Type");
            if (ct == null) return "text/plain";
            int sc = ct.indexOf(';');
            return (sc >= 0 ? ct.substring(0, sc) : ct).trim().toLowerCase(Locale.ROOT);
        }
    }

    public final String boundary;
    public final List<Part> parts = new ArrayList<>();

    public Multipart() { this("boundary_" + U.randHex(8)); }
    public Multipart(String boundary) { this.boundary = boundary; }

    public String contentType() { return "multipart/mixed;boundary=" + boundary; }

    public Multipart add(Part p) { parts.add(p); return this; }

    public Part find(String mediaType) {
        for (Part p : parts) if (p.mediaType().equals(mediaType)) return p;
        return null;
    }

    public byte[] toBytes() {
        ByteArrayOutputStream o = new ByteArrayOutputStream();
        for (Part p : parts) {
            w(o, "--" + boundary + "\r\n");
            for (String[] h : p.headers) w(o, h[0] + ": " + h[1] + "\r\n");
            w(o, "Content-Length: " + p.body.length + "\r\n\r\n");
            o.write(p.body, 0, p.body.length);
            w(o, "\r\n");
        }
        w(o, "--" + boundary + "--\r\n");
        return o.toByteArray();
    }

    private static void w(ByteArrayOutputStream o, String s) { byte[] b = s.getBytes(StandardCharsets.UTF_8); o.write(b, 0, b.length); }

    /** Extracts boundary= from a Content-Type value. */
    public static String boundaryOf(String contentType) {
        if (contentType == null) return null;
        for (String p : contentType.split(";")) {
            p = p.trim();
            if (p.toLowerCase(Locale.ROOT).startsWith("boundary=")) return U.unquote(p.substring(9).trim());
        }
        return null;
    }

    public static Multipart parse(String contentType, byte[] body) {
        String b = boundaryOf(contentType);
        if (b == null) throw new IllegalArgumentException("no boundary");
        Multipart m = new Multipart(b);
        byte[] delim = ("--" + b).getBytes(StandardCharsets.ISO_8859_1);
        int i = indexOf(body, delim, 0);
        if (i < 0) return m;
        while (true) {
            int after = i + delim.length;
            if (after + 1 < body.length && body[after] == '-' && body[after + 1] == '-') break; // close delimiter
            // skip to end of the delimiter line
            while (after < body.length && body[after] != '\n') after++;
            after++;
            int next = indexOf(body, delim, after);
            if (next < 0) next = body.length;
            int end = next;
            // the CRLF before the delimiter belongs to it
            if (end >= 2 && body[end - 2] == '\r' && body[end - 1] == '\n') end -= 2;
            else if (end >= 1 && body[end - 1] == '\n') end -= 1;
            if (after <= end) m.parts.add(parsePart(body, after, end));
            if (next >= body.length) break;
            i = next;
        }
        return m;
    }

    private static Part parsePart(byte[] d, int start, int end) {
        Part p = new Part();
        int i = start;
        while (i < end) {
            int ls = i;
            while (i < end && d[i] != '\n') i++;
            int le = i;
            if (le > ls && d[le - 1] == '\r') le--;
            i = Math.min(end, i + 1);
            String line = new String(d, ls, le - ls, StandardCharsets.UTF_8);
            if (line.isEmpty()) break;
            int c = line.indexOf(':');
            if (c > 0) p.headers.add(new String[]{line.substring(0, c).trim(), line.substring(c + 1).trim()});
        }
        int len = end - i;
        String cl = p.get("Content-Length");
        if (cl != null) { int n = U.parseInt(cl, len); if (n >= 0 && n <= len) len = n; }
        p.body = new byte[Math.max(0, len)];
        System.arraycopy(d, i, p.body, 0, p.body.length);
        p.headers.removeIf(h -> h[0].equalsIgnoreCase("Content-Length"));
        return p;
    }

    static int indexOf(byte[] h, byte[] n, int from) {
        outer:
        for (int i = Math.max(0, from); i <= h.length - n.length; i++) {
            for (int j = 0; j < n.length; j++) if (h[i + j] != n[j]) continue outer;
            return i;
        }
        return -1;
    }
}
