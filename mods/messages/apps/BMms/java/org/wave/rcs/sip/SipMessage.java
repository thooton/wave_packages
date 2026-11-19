package org.wave.rcs.sip;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.wave.rcs.util.U;

/** A SIP request or response (RFC 3261 section 7). Header names are normalized to their long form. */
public final class SipMessage {
    public boolean isRequest;
    public String method;      // requests
    public String uri;         // requests
    public int status;         // responses
    public String reason;      // responses
    public final List<String[]> headers = new ArrayList<>();
    public byte[] body = new byte[0];
    /** true for responses synthesized locally (timeouts, transport errors). */
    public boolean local;
    /** For non-2xx ACK: reuse the INVITE branch. */
    public String branchOverride;
    /** Called when the stack re-sends the request with a new CSeq (auth retry). */
    public java.util.function.Consumer<SipMessage> onCseqChanged;

    private static final Map<String, String> COMPACT = new HashMap<>();
    private static final Map<String, String> CANON = new HashMap<>();
    static {
        String[][] c = {{"i", "Call-ID"}, {"m", "Contact"}, {"f", "From"}, {"t", "To"}, {"v", "Via"},
                {"l", "Content-Length"}, {"c", "Content-Type"}, {"k", "Supported"}, {"s", "Subject"},
                {"e", "Content-Encoding"}, {"a", "Accept-Contact"}, {"j", "Reject-Contact"},
                {"d", "Request-Disposition"}, {"x", "Session-Expires"}, {"u", "Allow-Events"},
                {"o", "Event"}, {"r", "Refer-To"}, {"b", "Referred-By"}};
        for (String[] p : c) COMPACT.put(p[0], p[1]);
        String[] canon = {"Call-ID", "CSeq", "WWW-Authenticate", "Contribution-ID", "Conversation-ID",
                "InReplyTo-Contribution-ID", "P-Asserted-Identity", "P-Preferred-Identity", "P-Associated-URI",
                "P-Preferred-Service", "P-Asserted-Service", "Service-Route", "Record-Route", "Max-Forwards",
                "User-Agent", "Retry-After", "Min-Expires", "MIME-Version", "Content-ID", "Session-ID",
                "Proxy-Authenticate", "Proxy-Authorization", "P-Access-Network-Info", "Subscription-State"};
        for (String s : canon) CANON.put(s.toLowerCase(Locale.ROOT), s);
    }

    /** Canonical header name: compact forms expanded, well-known names with their usual case. */
    public static String canonical(String name) {
        String n = name.trim();
        if (n.length() == 1) { String l = COMPACT.get(n.toLowerCase(Locale.ROOT)); if (l != null) return l; }
        String c = CANON.get(n.toLowerCase(Locale.ROOT));
        if (c != null) return c;
        // Title-Case-Each-Part
        StringBuilder b = new StringBuilder(n.length());
        boolean up = true;
        for (int i = 0; i < n.length(); i++) {
            char ch = n.charAt(i);
            b.append(up ? Character.toUpperCase(ch) : Character.toLowerCase(ch));
            up = ch == '-';
        }
        return b.toString();
    }

    public static SipMessage request(String method, String uri) {
        SipMessage m = new SipMessage();
        m.isRequest = true; m.method = method; m.uri = uri;
        return m;
    }

    // ---- headers ----

    public String header(String name) {
        String n = canonical(name);
        for (String[] h : headers) if (h[0].equalsIgnoreCase(n)) return h[1];
        return null;
    }

    /** All values of a header; comma-separated lists are split (except auth headers). */
    public List<String> headerValues(String name) {
        String n = canonical(name);
        List<String> out = new ArrayList<>();
        boolean split = !(n.endsWith("Authenticate") || n.endsWith("Authorization") || n.equals("Date")
                || n.equals("Subject") || n.equals("User-Agent") || n.equals("Server") || n.equals("Retry-After"));
        for (String[] h : headers) {
            if (!h[0].equalsIgnoreCase(n)) continue;
            if (split) out.addAll(splitList(h[1])); else out.add(h[1]);
        }
        return out;
    }

    public SipMessage add(String name, String value) {
        if (value != null) headers.add(new String[]{canonical(name), value});
        return this;
    }

    public SipMessage set(String name, String value) {
        remove(name);
        return add(name, value);
    }

    /** Inserts at the top (for Via). */
    public SipMessage addFirst(String name, String value) {
        headers.add(0, new String[]{canonical(name), value});
        return this;
    }

    public SipMessage remove(String name) {
        String n = canonical(name);
        headers.removeIf(h -> h[0].equalsIgnoreCase(n));
        return this;
    }

    public SipMessage body(String contentType, byte[] b) {
        body = b == null ? new byte[0] : b;
        if (contentType != null) set("Content-Type", contentType); else remove("Content-Type");
        return this;
    }

    public String bodyString() { return new String(body, StandardCharsets.UTF_8); }

    public String contentType() {
        String ct = header("Content-Type");
        return ct == null ? null : ct.trim();
    }

    /** Media type without parameters, lowercase. */
    public String mediaType() {
        String ct = contentType();
        if (ct == null) return null;
        int sc = ct.indexOf(';');
        return (sc >= 0 ? ct.substring(0, sc) : ct).trim().toLowerCase(Locale.ROOT);
    }

    // ---- common fields ----

    public String callId() { return header("Call-ID"); }

    public long cseq() {
        String c = header("CSeq");
        if (c == null) return -1;
        return U.parseLong(c.trim().split("\\s+")[0], -1);
    }

    public String cseqMethod() {
        String c = header("CSeq");
        if (c == null) return null;
        String[] p = c.trim().split("\\s+");
        return p.length > 1 ? p[1] : null;
    }

    public NameAddr from() { return NameAddr.parse(header("From")); }
    public NameAddr to() { return NameAddr.parse(header("To")); }
    public String fromTag() { NameAddr a = from(); return a == null ? null : a.param("tag"); }
    public String toTag() { NameAddr a = to(); return a == null ? null : a.param("tag"); }

    public String topVia() {
        List<String> v = headerValues("Via");
        return v.isEmpty() ? null : v.get(0);
    }

    public String branch() {
        String v = topVia();
        if (v == null) return null;
        for (String p : v.split(";")) {
            p = p.trim();
            if (p.toLowerCase(Locale.ROOT).startsWith("branch=")) return p.substring(7).trim();
        }
        return null;
    }

    public int expiresHeader(int def) { return U.parseInt(header("Expires"), def); }

    /** Transaction key: branch + method (CANCEL/ACK have their own). */
    public String txKey() {
        String m = isRequest ? method : cseqMethod();
        return branch() + "|" + m;
    }

    // ---- serialization ----

    public byte[] toBytes() {
        StringBuilder b = new StringBuilder(512);
        if (isRequest) b.append(method).append(' ').append(uri).append(" SIP/2.0\r\n");
        else b.append("SIP/2.0 ").append(status).append(' ').append(reason == null ? "" : reason).append("\r\n");
        for (String[] h : headers) {
            if (h[0].equalsIgnoreCase("Content-Length")) continue;
            b.append(h[0]).append(": ").append(h[1]).append("\r\n");
        }
        b.append("Content-Length: ").append(body.length).append("\r\n\r\n");
        ByteArrayOutputStream o = new ByteArrayOutputStream(b.length() + body.length);
        byte[] head = b.toString().getBytes(StandardCharsets.UTF_8);
        o.write(head, 0, head.length);
        o.write(body, 0, body.length);
        return o.toByteArray();
    }

    @Override public String toString() { return new String(toBytes(), StandardCharsets.UTF_8); }

    /** One-line summary for logs (no bodies). */
    public String brief() {
        return isRequest ? method + " " + uri + " (cseq " + header("CSeq") + ", call " + callId() + ")"
                : status + " " + reason + " (" + header("CSeq") + ", call " + callId() + ")";
    }

    /** Parses the head (start line + headers, without the blank line) and attaches the body. */
    public static SipMessage parseHead(String head) {
        String[] lines = head.split("\r?\n");
        SipMessage m = new SipMessage();
        String first = lines[0].trim();
        if (first.startsWith("SIP/")) {
            m.isRequest = false;
            int sp1 = first.indexOf(' ');
            int sp2 = first.indexOf(' ', sp1 + 1);
            m.status = Integer.parseInt(first.substring(sp1 + 1, sp2 < 0 ? first.length() : sp2).trim());
            m.reason = sp2 < 0 ? "" : first.substring(sp2 + 1);
        } else {
            String[] p = first.split(" ");
            if (p.length < 3 || !p[2].startsWith("SIP/")) throw new IllegalArgumentException("bad start line: " + first);
            m.isRequest = true; m.method = p[0]; m.uri = p[1];
        }
        String cur = null;
        for (int i = 1; i < lines.length; i++) {
            String l = lines[i];
            if (l.isEmpty()) continue;
            if ((l.charAt(0) == ' ' || l.charAt(0) == '\t') && cur != null) { // folding
                String[] last = m.headers.get(m.headers.size() - 1);
                last[1] = last[1] + " " + l.trim();
                continue;
            }
            int c = l.indexOf(':');
            if (c <= 0) continue;
            cur = canonical(l.substring(0, c));
            m.headers.add(new String[]{cur, l.substring(c + 1).trim()});
        }
        return m;
    }

    /** Parses a complete message (head + body) from bytes; used by tests and the mock-free paths. */
    public static SipMessage parse(byte[] data) {
        int end = indexOf(data, "\r\n\r\n".getBytes(StandardCharsets.ISO_8859_1), 0);
        int bodyStart;
        if (end < 0) { end = data.length; bodyStart = data.length; } else bodyStart = end + 4;
        SipMessage m = parseHead(new String(data, 0, end, StandardCharsets.UTF_8));
        int len = U.parseInt(m.header("Content-Length"), data.length - bodyStart);
        len = Math.min(len, data.length - bodyStart);
        m.body = new byte[Math.max(0, len)];
        System.arraycopy(data, bodyStart, m.body, 0, m.body.length);
        return m;
    }

    static int indexOf(byte[] h, byte[] n, int from) {
        outer:
        for (int i = from; i <= h.length - n.length; i++) {
            for (int j = 0; j < n.length; j++) if (h[i + j] != n[j]) continue outer;
            return i;
        }
        return -1;
    }

    /** Splits a header value on commas that are not inside quotes or angle brackets. */
    public static List<String> splitList(String v) {
        List<String> out = new ArrayList<>();
        int depth = 0; boolean q = false; int start = 0;
        for (int i = 0; i < v.length(); i++) {
            char c = v.charAt(i);
            if (c == '"' && (i == 0 || v.charAt(i - 1) != '\\')) q = !q;
            else if (!q && c == '<') depth++;
            else if (!q && c == '>') depth--;
            else if (!q && depth == 0 && c == ',') {
                String s = v.substring(start, i).trim();
                if (!s.isEmpty()) out.add(s);
                start = i + 1;
            }
        }
        String s = v.substring(start).trim();
        if (!s.isEmpty()) out.add(s);
        return out;
    }

    public static String reasonPhrase(int code) {
        switch (code) {
            case 100: return "Trying";
            case 180: return "Ringing";
            case 200: return "OK";
            case 202: return "Accepted";
            case 400: return "Bad Request";
            case 403: return "Forbidden";
            case 404: return "Not Found";
            case 405: return "Method Not Allowed";
            case 415: return "Unsupported Media Type";
            case 420: return "Bad Extension";
            case 481: return "Call/Transaction Does Not Exist";
            case 486: return "Busy Here";
            case 487: return "Request Terminated";
            case 488: return "Not Acceptable Here";
            case 489: return "Bad Event";
            case 500: return "Server Internal Error";
            case 501: return "Not Implemented";
            case 503: return "Service Unavailable";
            case 603: return "Decline";
            default: return code < 300 ? "OK" : "Error";
        }
    }
}
