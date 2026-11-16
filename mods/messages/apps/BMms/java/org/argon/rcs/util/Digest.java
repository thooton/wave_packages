package org.argon.rcs.util;

import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/**
 * HTTP/SIP Digest authentication (RFC 2617 / RFC 3261 / RFC 3310 AKAv1-MD5), MD5, qop=auth.
 */
public final class Digest {
    public final String scheme;
    public final Map<String, String> params;
    private int nc;
    private String cnonce = U.randHex(8);

    /** Tests only: fixed client nonce. */
    public Digest withCnonce(String c) { cnonce = c; return this; }

    private Digest(String scheme, Map<String, String> params) { this.scheme = scheme; this.params = params; }

    /** Parses a WWW-Authenticate / Proxy-Authenticate value. Returns null if not Digest. */
    public static Digest parse(String header) {
        if (header == null) return null;
        String h = header.trim();
        int sp = h.indexOf(' ');
        if (sp < 0) return null;
        String scheme = h.substring(0, sp);
        if (!scheme.equalsIgnoreCase("Digest")) return null;
        return new Digest(scheme, parseParams(h.substring(sp + 1)));
    }

    /** Parses comma-separated name=value (quoted or token) pairs. Keys lowercased. */
    public static Map<String, String> parseParams(String s) {
        Map<String, String> m = new LinkedHashMap<>();
        int i = 0, n = s.length();
        while (i < n) {
            while (i < n && (s.charAt(i) == ',' || Character.isWhitespace(s.charAt(i)))) i++;
            int eq = s.indexOf('=', i);
            if (eq < 0) break;
            String key = s.substring(i, eq).trim().toLowerCase(Locale.ROOT);
            i = eq + 1;
            while (i < n && Character.isWhitespace(s.charAt(i))) i++;
            String val;
            if (i < n && s.charAt(i) == '"') {
                StringBuilder b = new StringBuilder();
                i++;
                while (i < n && s.charAt(i) != '"') {
                    if (s.charAt(i) == '\\' && i + 1 < n) i++;
                    b.append(s.charAt(i++));
                }
                i++;
                val = b.toString();
            } else {
                int c = s.indexOf(',', i);
                if (c < 0) c = n;
                val = s.substring(i, c).trim();
                i = c;
            }
            m.put(key, val);
        }
        return m;
    }

    public String realm() { return params.get("realm"); }
    public String nonce() { return params.get("nonce"); }
    public String algorithm() { return params.containsKey("algorithm") ? params.get("algorithm") : "MD5"; }
    public boolean stale() { return "true".equalsIgnoreCase(params.get("stale")); }
    public boolean isAka() { return algorithm().toUpperCase(Locale.ROOT).startsWith("AKA"); }

    /** For AKAv1: nonce = base64(RAND(16) || AUTN(16) || ...). */
    public byte[][] akaRandAutn() {
        try {
            byte[] n = java.util.Base64.getDecoder().decode(nonce());
            if (n.length < 32) return null;
            byte[] rand = new byte[16], autn = new byte[16];
            System.arraycopy(n, 0, rand, 0, 16);
            System.arraycopy(n, 16, autn, 0, 16);
            return new byte[][]{rand, autn};
        } catch (Exception e) { return null; }
    }

    /**
     * Builds the Authorization value. password may be raw bytes (AKA RES) given as ISO-8859-1 string.
     */
    public synchronized String authorization(String method, String uri, String username, String password, boolean passwordIsBinary) {
        String realm = U.nz(realm());
        String nonce = U.nz(nonce());
        String qopOffer = params.get("qop");
        String qop = null;
        if (qopOffer != null) {
            for (String q : qopOffer.split(",")) if (q.trim().equalsIgnoreCase("auth")) qop = "auth";
        }
        String alg = algorithm();
        byte[] pw = passwordIsBinary ? password.getBytes(StandardCharsets.ISO_8859_1) : U.nz(password).getBytes(StandardCharsets.UTF_8);
        byte[] a1 = concat((username + ":" + realm + ":").getBytes(StandardCharsets.UTF_8), pw);
        String ha1 = U.hex(U.digest("MD5", a1));
        if (alg.toUpperCase(Locale.ROOT).endsWith("MD5-SESS")) ha1 = U.md5Hex(ha1 + ":" + nonce + ":" + cnonce);
        String ha2 = U.md5Hex(method + ":" + uri);
        String ncs = null, response;
        if (qop != null) {
            nc++;
            ncs = String.format(Locale.ROOT, "%08x", nc);
            response = U.md5Hex(ha1 + ":" + nonce + ":" + ncs + ":" + cnonce + ":" + qop + ":" + ha2);
        } else {
            response = U.md5Hex(ha1 + ":" + nonce + ":" + ha2);
        }
        StringBuilder b = new StringBuilder("Digest ");
        b.append("username=").append(U.quote(username));
        b.append(",realm=").append(U.quote(realm));
        b.append(",nonce=").append(U.quote(nonce));
        b.append(",uri=").append(U.quote(uri));
        b.append(",response=").append(U.quote(response));
        b.append(",algorithm=").append(alg);
        if (qop != null) b.append(",cnonce=").append(U.quote(cnonce)).append(",qop=").append(qop).append(",nc=").append(ncs);
        if (params.get("opaque") != null) b.append(",opaque=").append(U.quote(params.get("opaque")));
        return b.toString();
    }

    /** Authorization header for an initial REGISTER without a challenge (IMS style, empty response). */
    public static String initial(String username, String realm, String uri) {
        return "Digest username=" + U.quote(username) + ",realm=" + U.quote(realm) + ",nonce=\"\",uri=" + U.quote(uri) + ",response=\"\"";
    }

    private static byte[] concat(byte[] a, byte[] b) {
        byte[] r = new byte[a.length + b.length];
        System.arraycopy(a, 0, r, 0, a.length);
        System.arraycopy(b, 0, r, a.length, b.length);
        return r;
    }
}
