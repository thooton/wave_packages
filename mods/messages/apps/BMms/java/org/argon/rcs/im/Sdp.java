package org.argon.rcs.im;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/** SDP offer/answer for MSRP chat sessions (RFC 4975 section 8, RFC 6135 a=setup). */
public final class Sdp {
    public String connectionAddress;   // c=
    public int port;                   // m=message <port>
    public String proto;               // TCP/MSRP or TCP/TLS/MSRP
    public String path;                // a=path
    public String setup;               // active / passive / actpass (null = passive per RFC 4975 default... see setupOrDefault)
    public String acceptTypes;
    public String acceptWrappedTypes;
    public String fileSelector;        // MSRP file transfer (not supported)
    public String direction = "sendrecv";
    public final List<String> otherAttributes = new ArrayList<>();

    public static final String ACCEPT_TYPES = "message/cpim application/im-iscomposing+xml";
    public static final String ACCEPT_WRAPPED = "text/plain message/imdn+xml application/vnd.gsma.rcs-ft-http+xml application/im-iscomposing+xml";

    public boolean tls() { return proto != null && proto.toUpperCase(Locale.ROOT).contains("TLS"); }

    /** RFC 6135: offerer default actpass is common; absent a=setup the answerer side defaults to active. */
    public String setupOrDefault() { return setup == null ? "actpass" : setup.toLowerCase(Locale.ROOT); }

    public static Sdp chat(String host, int port, String path, boolean tls, String setup) {
        Sdp s = new Sdp();
        s.connectionAddress = host; s.port = port; s.path = path;
        s.proto = tls ? "TCP/TLS/MSRP" : "TCP/MSRP";
        s.setup = setup;
        s.acceptTypes = ACCEPT_TYPES;
        s.acceptWrappedTypes = ACCEPT_WRAPPED;
        return s;
    }

    public String toString() {
        String host = connectionAddress == null ? "127.0.0.1" : connectionAddress.replace("[", "").replace("]", "");
        String ipv = host.contains(":") ? "IP6" : "IP4";
        long sid = System.currentTimeMillis() / 1000;
        StringBuilder b = new StringBuilder();
        b.append("v=0\r\n");
        b.append("o=- ").append(sid).append(' ').append(sid).append(" IN ").append(ipv).append(' ').append(host).append("\r\n");
        b.append("s=-\r\n");
        b.append("c=IN ").append(ipv).append(' ').append(host).append("\r\n");
        b.append("t=0 0\r\n");
        b.append("m=message ").append(port).append(' ').append(proto).append(" *\r\n");
        b.append("a=accept-types:").append(acceptTypes).append("\r\n");
        if (acceptWrappedTypes != null) b.append("a=accept-wrapped-types:").append(acceptWrappedTypes).append("\r\n");
        b.append("a=path:").append(path).append("\r\n");
        if (setup != null) b.append("a=setup:").append(setup).append("\r\n");
        b.append("a=").append(direction).append("\r\n");
        for (String a : otherAttributes) b.append("a=").append(a).append("\r\n");
        return b.toString();
    }

    public byte[] toBytes() { return toString().getBytes(java.nio.charset.StandardCharsets.UTF_8); }

    public static Sdp parse(String text) {
        Sdp s = new Sdp();
        boolean inMessage = false;
        for (String raw : text.split("\r?\n")) {
            String l = raw.trim();
            if (l.length() < 2 || l.charAt(1) != '=') continue;
            char t = l.charAt(0);
            String v = l.substring(2);
            if (t == 'c') {
                String[] p = v.split("\\s+");
                if (p.length >= 3) s.connectionAddress = p[2];
            } else if (t == 'm') {
                String[] p = v.split("\\s+");
                inMessage = p[0].equals("message");
                if (inMessage && p.length >= 3) { s.port = Integer.parseInt(p[1]); s.proto = p[2]; }
            } else if (t == 'a' && (inMessage || s.proto == null)) {
                int c = v.indexOf(':');
                String name = (c >= 0 ? v.substring(0, c) : v).toLowerCase(Locale.ROOT);
                String val = c >= 0 ? v.substring(c + 1).trim() : "";
                switch (name) {
                    case "path": s.path = val; break;
                    case "setup": s.setup = val; break;
                    case "accept-types": s.acceptTypes = val; break;
                    case "accept-wrapped-types": s.acceptWrappedTypes = val; break;
                    case "file-selector": s.fileSelector = val; break;
                    case "sendrecv": case "sendonly": case "recvonly": case "inactive": s.direction = name; break;
                    default: s.otherAttributes.add(v);
                }
            }
        }
        return s;
    }
}
