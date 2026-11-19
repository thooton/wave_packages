package org.argon.rcs.sip;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

import org.argon.rcs.util.U;

/**
 * name-addr / addr-spec with header parameters: {@code "Bob" <sip:bob@x;transport=tcp>;tag=1;+sip.instance="<urn:..>"}.
 * Parameter keys are kept as given (lookups are case-insensitive); values keep their quotes stripped.
 */
public final class NameAddr {
    public String display;
    public String uri;
    public final Map<String, String> params = new LinkedHashMap<>();

    public NameAddr() {}
    public NameAddr(String uri) { this.uri = uri; }

    public static NameAddr parse(String s) {
        if (s == null) return null;
        s = s.trim();
        NameAddr a = new NameAddr();
        String rest;
        int lt = indexOutsideQuotes(s, '<');
        if (lt >= 0) {
            int gt = s.indexOf('>', lt);
            if (gt < 0) gt = s.length();
            String d = s.substring(0, lt).trim();
            a.display = d.isEmpty() ? null : U.unquote(d);
            a.uri = s.substring(lt + 1, gt).trim();
            rest = gt < s.length() ? s.substring(gt + 1) : "";
        } else {
            int sc = s.indexOf(';');
            a.uri = sc >= 0 ? s.substring(0, sc).trim() : s;
            rest = sc >= 0 ? s.substring(sc) : "";
        }
        parseParams(rest, a.params);
        return a;
    }

    private static int indexOutsideQuotes(String s, char c) {
        boolean q = false;
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (ch == '"') q = !q;
            else if (!q && ch == c) return i;
        }
        return -1;
    }

    /** Parses ";a=b;c;d="x"" into the map (quotes stripped). */
    public static void parseParams(String rest, Map<String, String> into) {
        int i = 0, n = rest.length();
        while (i < n) {
            while (i < n && (rest.charAt(i) == ';' || Character.isWhitespace(rest.charAt(i)))) i++;
            if (i >= n) break;
            int j = i;
            while (j < n && rest.charAt(j) != '=' && rest.charAt(j) != ';') j++;
            String key = rest.substring(i, j).trim();
            String val = "";
            if (j < n && rest.charAt(j) == '=') {
                j++;
                while (j < n && Character.isWhitespace(rest.charAt(j))) j++;
                if (j < n && rest.charAt(j) == '"') {
                    int k = j + 1;
                    StringBuilder b = new StringBuilder();
                    while (k < n && rest.charAt(k) != '"') { if (rest.charAt(k) == '\\' && k + 1 < n) k++; b.append(rest.charAt(k++)); }
                    val = b.toString();
                    j = k + 1;
                } else {
                    int k = j;
                    while (k < n && rest.charAt(k) != ';') k++;
                    val = rest.substring(j, k).trim();
                    j = k;
                }
            }
            if (!key.isEmpty()) into.put(key, val);
            i = j;
        }
    }

    public String param(String name) {
        for (Map.Entry<String, String> e : params.entrySet()) if (e.getKey().equalsIgnoreCase(name)) return e.getValue();
        return null;
    }

    public boolean hasParam(String name) {
        for (String k : params.keySet()) if (k.equalsIgnoreCase(name)) return true;
        return false;
    }

    public NameAddr setParam(String name, String value) {
        params.keySet().removeIf(k -> k.equalsIgnoreCase(name));
        params.put(name, value);
        return this;
    }

    /** Number in the URI (tel:/sip:+...), or null. */
    public String number() { return U.numberFromUri(uri); }

    /** URI host[:port] for sip URIs. */
    public static String[] hostPort(String uri) {
        String u = uri;
        int c = u.indexOf(':');
        if (c >= 0 && (u.startsWith("sip") || u.startsWith("msrp"))) u = u.substring(c + 1);
        if (u.startsWith("//")) u = u.substring(2);
        int at = u.indexOf('@');
        if (at >= 0) u = u.substring(at + 1);
        int end = u.length();
        for (char ch : new char[]{';', '/', '?', '>'}) { int k = u.indexOf(ch); if (k >= 0 && k < end) end = k; }
        u = u.substring(0, end);
        String host = u, port = null;
        if (u.startsWith("[")) {
            int rb = u.indexOf(']');
            host = u.substring(1, rb);
            if (rb + 1 < u.length() && u.charAt(rb + 1) == ':') port = u.substring(rb + 2);
        } else {
            int pc = u.lastIndexOf(':');
            if (pc >= 0) { host = u.substring(0, pc); port = u.substring(pc + 1); }
        }
        return new String[]{host, port};
    }

    /** Value with a param whose value needs quoting (feature tags) quoted. */
    @Override public String toString() {
        StringBuilder b = new StringBuilder();
        if (display != null) b.append(U.quote(display)).append(' ');
        b.append('<').append(uri).append('>');
        for (Map.Entry<String, String> e : params.entrySet()) {
            b.append(';').append(e.getKey());
            String v = e.getValue();
            if (v != null && !v.isEmpty()) {
                boolean token = v.matches("[A-Za-z0-9.!%*_+`'~\\-]+") && !e.getKey().startsWith("+");
                b.append('=').append(token ? v : U.quote(v));
            }
        }
        return b.toString();
    }

    /** Lowercased feature tag view: key -> value (for capability parsing). */
    public Map<String, String> featureTags() {
        Map<String, String> m = new LinkedHashMap<>();
        for (Map.Entry<String, String> e : params.entrySet()) {
            String k = e.getKey().toLowerCase(Locale.ROOT);
            if (k.startsWith("+") || k.equals("automata") || k.equals("isfocus") || k.equals("video") || k.equals("audio"))
                m.put(k, e.getValue());
        }
        return m;
    }
}
