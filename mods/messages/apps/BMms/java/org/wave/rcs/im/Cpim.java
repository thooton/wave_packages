package org.wave.rcs.im;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.wave.rcs.util.U;

/** message/cpim (RFC 3862) with the IMDN namespace (RFC 5438). */
public final class Cpim {
    public static final String IMDN_NS = "urn:ietf:params:imdn";

    public String from;            // name-addr as found, e.g. "<sip:+1555@d>"
    public String to;
    public String dateTime;
    public String messageId;       // imdn.Message-ID
    public String dispositionNotification; // imdn.Disposition-Notification (null = none)
    /** All message headers in order (name as written, value). */
    public final List<String[]> headers = new ArrayList<>();
    /** Encapsulated MIME headers (Content-Type, Content-Disposition...). */
    public final List<String[]> contentHeaders = new ArrayList<>();
    public byte[] body = new byte[0];

    public String contentType() { return get(contentHeaders, "Content-Type"); }

    /** Media type without parameters, lowercase. */
    public String mediaType() {
        String ct = contentType();
        if (ct == null) return "text/plain";
        int sc = ct.indexOf(';');
        return (sc >= 0 ? ct.substring(0, sc) : ct).trim().toLowerCase(Locale.ROOT);
    }

    public String bodyText() { return new String(body, StandardCharsets.UTF_8); }

    public String header(String name) { return get(headers, name); }

    private static String get(List<String[]> l, String name) {
        for (String[] h : l) if (h[0].equalsIgnoreCase(name)) return h[1];
        return null;
    }

    /** Builds a CPIM message (IMDN namespace always declared). */
    public static Cpim create(String from, String to, String messageId, String contentType, byte[] body, String disposition) {
        Cpim c = new Cpim();
        c.from = from; c.to = to; c.messageId = messageId; c.dateTime = U.isoNow();
        c.dispositionNotification = disposition;
        c.contentHeaders.add(new String[]{"Content-Type", contentType});
        c.body = body;
        return c;
    }

    public byte[] toBytes() {
        StringBuilder b = new StringBuilder(256);
        b.append("From: ").append(wrap(from)).append("\r\n");
        b.append("To: ").append(wrap(to)).append("\r\n");
        b.append("NS: imdn <").append(IMDN_NS).append(">\r\n");
        b.append("imdn.Message-ID: ").append(messageId).append("\r\n");
        b.append("DateTime: ").append(dateTime != null ? dateTime : U.isoNow()).append("\r\n");
        if (dispositionNotification != null && !dispositionNotification.isEmpty())
            b.append("imdn.Disposition-Notification: ").append(dispositionNotification).append("\r\n");
        for (String[] h : headers) {
            String n = h[0].toLowerCase(Locale.ROOT);
            if (n.equals("from") || n.equals("to") || n.equals("ns") || n.endsWith(".message-id") || n.equals("datetime")
                    || n.endsWith(".disposition-notification")) continue;
            b.append(h[0]).append(": ").append(h[1]).append("\r\n");
        }
        b.append("\r\n");
        boolean hasLen = false;
        for (String[] h : contentHeaders) {
            if (h[0].equalsIgnoreCase("Content-Length")) { hasLen = true; continue; }
            b.append(h[0]).append(": ").append(h[1]).append("\r\n");
        }
        b.append("Content-Length: ").append(body.length).append("\r\n");
        b.append("\r\n");
        ByteArrayOutputStream o = new ByteArrayOutputStream(b.length() + body.length);
        byte[] head = b.toString().getBytes(StandardCharsets.UTF_8);
        o.write(head, 0, head.length);
        o.write(body, 0, body.length);
        return o.toByteArray();
    }

    private static String wrap(String a) {
        if (a == null) return "<sip:anonymous@anonymous.invalid>";
        a = a.trim();
        return a.contains("<") ? a : "<" + a + ">";
    }

    /** Parses message/cpim. Throws IllegalArgumentException if malformed. */
    public static Cpim parse(byte[] data) {
        Cpim c = new Cpim();
        int[] pos = {0};
        List<String> msgLines = readHeaderBlock(data, pos);
        List<String> mimeLines = readHeaderBlock(data, pos);
        Map<String, String> ns = new HashMap<>();
        for (String l : msgLines) {
            int i = l.indexOf(':');
            if (i <= 0) continue;
            String n = l.substring(0, i).trim(), v = l.substring(i + 1).trim();
            c.headers.add(new String[]{n, v});
            if (n.equalsIgnoreCase("NS")) {
                // NS: prefix <uri>
                int lt = v.indexOf('<');
                String prefix = lt > 0 ? v.substring(0, lt).trim() : "";
                String uri = lt >= 0 ? v.substring(lt + 1, v.indexOf('>', lt) > 0 ? v.indexOf('>', lt) : v.length()) : v;
                ns.put(prefix.toLowerCase(Locale.ROOT), uri.trim());
            }
        }
        for (String[] h : c.headers) {
            String n = h[0];
            String ln = n.toLowerCase(Locale.ROOT);
            if (ln.equals("from")) c.from = h[1];
            else if (ln.equals("to")) c.to = h[1];
            else if (ln.equals("datetime")) c.dateTime = h[1];
            else {
                int dot = n.indexOf('.');
                if (dot > 0) {
                    String prefix = ln.substring(0, dot);
                    String uri = ns.get(prefix);
                    boolean imdn = (uri != null && uri.equalsIgnoreCase(IMDN_NS)) || (uri == null && prefix.equals("imdn"));
                    if (imdn) {
                        String local = ln.substring(dot + 1);
                        if (local.equals("message-id")) c.messageId = h[1];
                        else if (local.equals("disposition-notification")) c.dispositionNotification = h[1];
                    }
                }
            }
        }
        int len = -1;
        for (String l : mimeLines) {
            int i = l.indexOf(':');
            if (i <= 0) continue;
            String n = l.substring(0, i).trim(), v = l.substring(i + 1).trim();
            c.contentHeaders.add(new String[]{n, v});
            if (n.equalsIgnoreCase("Content-Length")) len = U.parseInt(v, -1);
        }
        int remaining = data.length - pos[0];
        if (len < 0 || len > remaining) len = remaining;
        c.body = new byte[len];
        System.arraycopy(data, pos[0], c.body, 0, len);
        if (c.from == null && c.messageId == null && c.contentHeaders.isEmpty()) throw new IllegalArgumentException("not CPIM");
        return c;
    }

    /** Reads lines until an empty line (consumed). */
    private static List<String> readHeaderBlock(byte[] d, int[] pos) {
        List<String> out = new ArrayList<>();
        int i = pos[0];
        while (i < d.length) {
            int start = i;
            while (i < d.length && d[i] != '\n') i++;
            int end = i;
            if (end > start && d[end - 1] == '\r') end--;
            i = Math.min(d.length, i + 1);
            String line = new String(d, start, end - start, StandardCharsets.UTF_8);
            if (line.isEmpty()) break;
            if ((line.startsWith(" ") || line.startsWith("\t")) && !out.isEmpty()) {
                out.set(out.size() - 1, out.get(out.size() - 1) + " " + line.trim());
            } else out.add(line);
        }
        pos[0] = i;
        return out;
    }

    public boolean wantsDelivery() {
        return dispositionNotification != null && dispositionNotification.toLowerCase(Locale.ROOT).contains("positive-delivery");
    }

    public boolean wantsDisplay() {
        return dispositionNotification != null && dispositionNotification.toLowerCase(Locale.ROOT).contains("display");
    }
}
