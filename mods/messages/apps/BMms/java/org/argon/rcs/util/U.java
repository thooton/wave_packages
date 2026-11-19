package org.argon.rcs.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/** Misc helpers: ids, numbers, hashing, ISO-8601 dates. */
public final class U {
    private U() {}
    public static final SecureRandom RND = new SecureRandom();

    public static String hex(byte[] b) {
        StringBuilder s = new StringBuilder(b.length * 2);
        for (byte x : b) { s.append(Character.forDigit((x >> 4) & 15, 16)).append(Character.forDigit(x & 15, 16)); }
        return s.toString();
    }

    public static String randHex(int bytes) {
        byte[] b = new byte[bytes]; RND.nextBytes(b); return hex(b);
    }

    public static String uuid() { return UUID.randomUUID().toString(); }

    /** Message ids: short, URL/MSRP safe. */
    public static String msgId() { return randHex(12); }

    public static String md5Hex(String s) { return hex(digest("MD5", s.getBytes(StandardCharsets.UTF_8))); }

    public static byte[] digest(String alg, byte[] data) {
        try { return MessageDigest.getInstance(alg).digest(data); }
        catch (Exception e) { throw new RuntimeException(e); }
    }

    public static boolean empty(String s) { return s == null || s.trim().isEmpty(); }

    public static String nz(String s) { return s == null ? "" : s; }

    public static int parseInt(String s, int def) {
        if (s == null) return def;
        try { return Integer.parseInt(s.trim()); } catch (Exception e) { return def; }
    }

    public static long parseLong(String s, long def) {
        if (s == null) return def;
        try { return Long.parseLong(s.trim()); } catch (Exception e) { return def; }
    }

    public static boolean parseBool(String s, boolean def) {
        if (s == null) return def;
        s = s.trim().toLowerCase(Locale.ROOT);
        if (s.equals("1") || s.equals("true") || s.equals("yes") || s.equals("on")) return true;
        if (s.equals("0") || s.equals("false") || s.equals("no") || s.equals("off")) return false;
        return def;
    }

    private static final Pattern NUM_IN_URI = Pattern.compile("^(?:tel:|sips?:)?([+]?[0-9().\\-]+)(?:[@;].*)?$");

    /**
     * Number from a URI or name-addr: "tel:+1555", "sip:+1555@d;user=phone", "<sip:...>" -> "+1555".
     * Returns null if the URI user part isn't a phone number.
     */
    public static String numberFromUri(String uri) {
        if (uri == null) return null;
        String s = uri.trim();
        int lt = s.indexOf('<');
        if (lt >= 0) { int gt = s.indexOf('>', lt); s = s.substring(lt + 1, gt > lt ? gt : s.length()); }
        Matcher m = NUM_IN_URI.matcher(s);
        if (!m.matches()) return null;
        String n = m.group(1).replaceAll("[().\\-]", "");
        if (n.isEmpty() || n.equals("+")) return null;
        return n;
    }

    /** Normalizes a number for comparison/storage: keeps leading '+' and digits only. */
    public static String normNumber(String n) {
        if (n == null) return null;
        String fromUri = (n.contains(":") || n.contains("<")) ? numberFromUri(n) : null;
        if (fromUri != null) n = fromUri;
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < n.length(); i++) {
            char c = n.charAt(i);
            if (Character.isDigit(c) || (c == '+' && b.length() == 0)) b.append(c);
        }
        return b.length() == 0 ? n : b.toString();
    }

    public static boolean sameNumber(String a, String b) {
        if (a == null || b == null) return false;
        a = normNumber(a); b = normNumber(b);
        if (a.equals(b)) return true;
        // tolerate missing '+'/country code: compare last 10 digits when both are long enough
        String da = a.replace("+", ""), db = b.replace("+", "");
        int n = Math.min(10, Math.min(da.length(), db.length()));
        return n >= 7 && da.endsWith(db.substring(db.length() - n)) && db.endsWith(da.substring(da.length() - n));
    }

    // ---- ISO 8601 (CPIM DateTime, IMDN datetime) ----

    public static String isoNow() { return isoDate(System.currentTimeMillis()); }

    public static String isoDate(long ms) {
        Calendar c = new GregorianCalendar(TimeZone.getTimeZone("UTC"), Locale.ROOT);
        c.setTimeInMillis(ms);
        return String.format(Locale.ROOT, "%04d-%02d-%02dT%02d:%02d:%02d.%03dZ",
                c.get(Calendar.YEAR), c.get(Calendar.MONTH) + 1, c.get(Calendar.DAY_OF_MONTH),
                c.get(Calendar.HOUR_OF_DAY), c.get(Calendar.MINUTE), c.get(Calendar.SECOND), c.get(Calendar.MILLISECOND));
    }

    private static final Pattern ISO = Pattern.compile(
            "(\\d{4})-(\\d{2})-(\\d{2})[Tt ](\\d{2}):(\\d{2})(?::(\\d{2})(?:[.,](\\d+))?)?\\s*(Z|z|[+-]\\d{2}(?::?\\d{2})?)?");

    /** Parses ISO-8601 date-time; returns -1 if unparseable. */
    public static long parseIso(String s) {
        if (s == null) return -1;
        Matcher m = ISO.matcher(s.trim());
        if (!m.lookingAt()) return -1;
        Calendar c = new GregorianCalendar(TimeZone.getTimeZone("UTC"), Locale.ROOT);
        c.clear();
        c.set(Integer.parseInt(m.group(1)), Integer.parseInt(m.group(2)) - 1, Integer.parseInt(m.group(3)),
                Integer.parseInt(m.group(4)), Integer.parseInt(m.group(5)), m.group(6) == null ? 0 : Integer.parseInt(m.group(6)));
        long ms = c.getTimeInMillis();
        if (m.group(7) != null) {
            String f = (m.group(7) + "000").substring(0, 3);
            ms += Integer.parseInt(f);
        }
        String tz = m.group(8);
        if (tz != null && !tz.equalsIgnoreCase("Z")) {
            int sign = tz.charAt(0) == '-' ? -1 : 1;
            String d = tz.substring(1).replace(":", "");
            int hh = Integer.parseInt(d.substring(0, 2));
            int mm = d.length() >= 4 ? Integer.parseInt(d.substring(2, 4)) : 0;
            ms -= sign * (hh * 3600000L + mm * 60000L);
        }
        return ms;
    }

    /** Escapes a string for state serialization (URL encoding). */
    public static String enc(String s) {
        if (s == null) return "~";
        try { return java.net.URLEncoder.encode(s, "UTF-8"); } catch (Exception e) { return s; }
    }

    public static String dec(String s) {
        if (s == null || s.equals("~")) return null;
        try { return java.net.URLDecoder.decode(s, "UTF-8"); } catch (Exception e) { return s; }
    }

    public static String quote(String s) { return "\"" + nz(s).replace("\\", "\\\\").replace("\"", "\\\"") + "\""; }

    public static String unquote(String s) {
        if (s == null) return null;
        s = s.trim();
        if (s.length() >= 2 && s.startsWith("\"") && s.endsWith("\"")) {
            s = s.substring(1, s.length() - 1).replace("\\\"", "\"").replace("\\\\", "\\");
        }
        return s;
    }

    public static void sleep(long ms) {
        try { Thread.sleep(ms); } catch (InterruptedException e) { Thread.currentThread().interrupt(); }
    }

    public static String mask(String secret) {
        if (secret == null) return "null";
        return secret.length() <= 2 ? "**" : secret.charAt(0) + "***(" + secret.length() + ")";
    }
}
