package com.android.mms.wave;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Environment;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

import com.android.mms.wave.imsg.ClientState;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * Persistent configuration, URL/file parser, address normalization, capability cache,
 * conversation sender_guid store, and message deduplication for Apple (iMessage) support.
 */
public final class WaveIMessageConfig {
    private static final String PREFS = "wave_imessage";
    private static final String PREFS_CAPS = "wave_imessage_caps";
    private static final String PREFS_GUIDS = "wave_imessage_guids";
    private static final String PREFS_DEDUPE = "wave_imessage_dedupe";

    private static final String K_ENABLED = "enabled";
    private static final String K_CONFIGURED = "configured";
    private static final String K_SERVER_URL = "server_url";
    private static final String K_HOST = "host";
    private static final String K_PORT = "port";
    private static final String K_SNI_MAIN = "sni_main";
    private static final String K_SNI_PROBE = "sni_probe";
    private static final String K_TOKEN = "token_hex";
    private static final String K_PIN = "cert_pin_sha256";
    private static final String K_SMS_FALLBACK = "sms_fallback";
    private static final String K_HANDLES = "handles_csv";
    private static final String K_PREFERRED = "preferred_handle";

    public static final int CAP_UNKNOWN = 0;
    public static final int CAP_REGISTERED = 1;
    public static final int CAP_UNREGISTERED = 2;

    private static final long CAP_TTL_MS = 24L * 60L * 60L * 1000L;
    private static final int MAX_DEDUPE_IDS = 400;

    private final Context ctx;
    private final SharedPreferences sp;
    private final SharedPreferences capsSp;
    private final SharedPreferences guidsSp;
    private final SharedPreferences dedupeSp;

    private final Object dedupeLock = new Object();
    private LinkedHashSet<String> recentIds;
    private final LinkedHashMap<String, String> appleIdToUri = new LinkedHashMap<String, String>(128, 0.75f, true) {
        @Override
        protected boolean removeEldestEntry(Map.Entry<String, String> eldest) {
            return size() > 200;
        }
    };

    public WaveIMessageConfig(Context c) {
        this.ctx = c.getApplicationContext();
        this.sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        this.capsSp = ctx.getSharedPreferences(PREFS_CAPS, Context.MODE_PRIVATE);
        this.guidsSp = ctx.getSharedPreferences(PREFS_GUIDS, Context.MODE_PRIVATE);
        this.dedupeSp = ctx.getSharedPreferences(PREFS_DEDUPE, Context.MODE_PRIVATE);
    }

    public boolean isEnabled() {
        return sp.getBoolean(K_ENABLED, false) && isConfigured();
    }

    public boolean isEnabledRaw() {
        return sp.getBoolean(K_ENABLED, false);
    }

    public void setEnabled(boolean on) {
        sp.edit().putBoolean(K_ENABLED, on).apply();
    }

    public boolean isConfigured() {
        return sp.getBoolean(K_CONFIGURED, false)
                && !TextUtils.isEmpty(getHost())
                && !TextUtils.isEmpty(getTokenHex())
                && !TextUtils.isEmpty(getCertPinSha256());
    }

    public String getServerUrl() {
        String u = sp.getString(K_SERVER_URL, "");
        if (!TextUtils.isEmpty(u)) return u;
        String h = getHost();
        if (TextUtils.isEmpty(h)) return "";
        int p = getPort();
        return p == 443 ? h : (h + ":" + p);
    }

    public String getHost() {
        return sp.getString(K_HOST, "");
    }

    public int getPort() {
        return sp.getInt(K_PORT, 443);
    }

    public String getSniMain() {
        String s = sp.getString(K_SNI_MAIN, "");
        return TextUtils.isEmpty(s) ? getHost() : s;
    }

    public String getSniProbe() {
        String s = sp.getString(K_SNI_PROBE, "");
        return TextUtils.isEmpty(s) ? getSniMain() : s;
    }

    public String getTokenHex() {
        return sp.getString(K_TOKEN, "");
    }

    public String getCertPinSha256() {
        return sp.getString(K_PIN, "");
    }

    public boolean isSmsFallbackEnabled() {
        return sp.getBoolean(K_SMS_FALLBACK, true);
    }

    public void setSmsFallbackEnabled(boolean on) {
        sp.edit().putBoolean(K_SMS_FALLBACK, on).apply();
    }

    public void saveSetup(String displayUrl, String host, int port, String sniMain, String tokenHex, String certPinSha256) {
        String cleanToken = tokenHex == null ? "" : tokenHex.replaceAll("\\s+", "");
        String cleanPin = normalizePinHex(certPinSha256);
        String sni = TextUtils.isEmpty(sniMain) ? host : sniMain.trim();
        sp.edit()
                .putBoolean(K_CONFIGURED, true)
                .putBoolean(K_ENABLED, true)
                .putString(K_SERVER_URL, displayUrl != null ? displayUrl.trim() : (host + ":" + port))
                .putString(K_HOST, host.trim())
                .putInt(K_PORT, port)
                .putString(K_SNI_MAIN, sni)
                .putString(K_SNI_PROBE, sni)
                .putString(K_TOKEN, cleanToken)
                .putString(K_PIN, cleanPin)
                .commit();
    }

    public void clearAll() {
        sp.edit().clear().commit();
        capsSp.edit().clear().commit();
        guidsSp.edit().clear().commit();
        dedupeSp.edit().clear().commit();
        synchronized (dedupeLock) {
            if (recentIds != null) recentIds.clear();
            appleIdToUri.clear();
        }
        File st = stateFile();
        if (st.exists()) st.delete();
    }

    public File stateFile() {
        return new File(ctx.getFilesDir(), "imsg.state");
    }

    // -----------------------------------------------------------------------------------------
    // Handles

    public void setHandles(List<String> handles, String preferred) {
        StringBuilder sb = new StringBuilder();
        if (handles != null) {
            for (String h : handles) {
                if (TextUtils.isEmpty(h)) continue;
                if (sb.length() > 0) sb.append('\n');
                sb.append(h.trim());
            }
        }
        sp.edit()
                .putString(K_HANDLES, sb.toString())
                .putString(K_PREFERRED, preferred == null ? "" : preferred.trim())
                .apply();
    }

    public List<String> getHandles() {
        String raw = sp.getString(K_HANDLES, "");
        if (TextUtils.isEmpty(raw)) return Collections.emptyList();
        String[] parts = raw.split("\n");
        List<String> out = new ArrayList<String>(parts.length);
        for (String p : parts) {
            String t = p.trim();
            if (!t.isEmpty()) out.add(t);
        }
        return out;
    }

    public String getPreferredHandle() {
        String pref = sp.getString(K_PREFERRED, "");
        if (!TextUtils.isEmpty(pref)) return pref;
        List<String> list = getHandles();
        return list.isEmpty() ? null : list.get(0);
    }

    public String formatHandlesSummary() {
        List<String> list = getHandles();
        if (list.isEmpty()) return "None reported yet";
        StringBuilder sb = new StringBuilder();
        for (String h : list) {
            if (sb.length() > 0) sb.append(", ");
            sb.append(stripHandlePrefix(h));
        }
        return sb.toString();
    }

    // -----------------------------------------------------------------------------------------
    // Capability cache

    public int getCapability(String normalizedTarget) {
        if (TextUtils.isEmpty(normalizedTarget)) return CAP_UNKNOWN;
        String key = normalizedTarget.toLowerCase(Locale.ROOT);
        String raw = capsSp.getString(key, null);
        if (raw == null) return CAP_UNKNOWN;
        int colon = raw.indexOf(':');
        if (colon <= 0) return CAP_UNKNOWN;
        try {
            int val = Integer.parseInt(raw.substring(0, colon));
            long ts = Long.parseLong(raw.substring(colon + 1));
            long now = System.currentTimeMillis();
            // Handle 1970 clock safely: only expire if now >= ts and elapsed > TTL.
            if (now >= ts && (now - ts) > CAP_TTL_MS) {
                return CAP_UNKNOWN;
            }
            return val;
        } catch (NumberFormatException e) {
            return CAP_UNKNOWN;
        }
    }

    public void setCapability(String normalizedTarget, boolean registered) {
        if (TextUtils.isEmpty(normalizedTarget)) return;
        String key = normalizedTarget.toLowerCase(Locale.ROOT);
        int val = registered ? CAP_REGISTERED : CAP_UNREGISTERED;
        capsSp.edit().putString(key, val + ":" + System.currentTimeMillis()).apply();
    }

    public void clearCapabilities() {
        capsSp.edit().clear().apply();
    }

    // -----------------------------------------------------------------------------------------
    // Conversation sender_guid tracking

    public String getSenderGuid(String conversationKey) {
        if (TextUtils.isEmpty(conversationKey)) return null;
        String g = guidsSp.getString(conversationKey.toLowerCase(Locale.ROOT), null);
        return TextUtils.isEmpty(g) ? null : g;
    }

    public void setSenderGuid(String conversationKey, String senderGuid) {
        if (TextUtils.isEmpty(conversationKey) || TextUtils.isEmpty(senderGuid)) return;
        guidsSp.edit().putString(conversationKey.toLowerCase(Locale.ROOT), senderGuid).apply();
    }

    public static String conversationKeyForTargets(List<String> normalizedTargets) {
        if (normalizedTargets == null || normalizedTargets.isEmpty()) return "";
        List<String> sorted = new ArrayList<String>(normalizedTargets.size());
        for (String t : normalizedTargets) {
            if (!TextUtils.isEmpty(t)) sorted.add(t.toLowerCase(Locale.ROOT));
        }
        Collections.sort(sorted);
        StringBuilder sb = new StringBuilder();
        for (String s : sorted) {
            if (sb.length() > 0) sb.append(',');
            sb.append(s);
        }
        return sb.toString();
    }

    // -----------------------------------------------------------------------------------------
    // Deduplication and sent message tracking

    public boolean markAppleMsgIdSeen(String appleMsgId) {
        if (TextUtils.isEmpty(appleMsgId)) return true;
        synchronized (dedupeLock) {
            ensureDedupeLoadedLocked();
            if (recentIds.contains(appleMsgId)) {
                return false;
            }
            recentIds.add(appleMsgId);
            while (recentIds.size() > MAX_DEDUPE_IDS) {
                String first = recentIds.iterator().next();
                recentIds.remove(first);
            }
            persistDedupeLocked();
            return true;
        }
    }

    public void recordSentAppleMsgId(String appleMsgId, Uri uri) {
        if (TextUtils.isEmpty(appleMsgId)) return;
        markAppleMsgIdSeen(appleMsgId);
        if (uri != null) {
            synchronized (dedupeLock) {
                appleIdToUri.put(appleMsgId, uri.toString());
            }
        }
    }

    public Uri getSentUriForAppleMsgId(String appleMsgId) {
        if (TextUtils.isEmpty(appleMsgId)) return null;
        synchronized (dedupeLock) {
            String u = appleIdToUri.get(appleMsgId);
            return u == null ? null : Uri.parse(u);
        }
    }

    private void ensureDedupeLoadedLocked() {
        if (recentIds != null) return;
        recentIds = new LinkedHashSet<String>();
        String raw = dedupeSp.getString("ids", "");
        if (!TextUtils.isEmpty(raw)) {
            for (String line : raw.split("\n")) {
                if (!line.isEmpty()) recentIds.add(line);
            }
        }
    }

    private void persistDedupeLocked() {
        StringBuilder sb = new StringBuilder();
        for (String id : recentIds) {
            if (sb.length() > 0) sb.append('\n');
            sb.append(id);
        }
        dedupeSp.edit().putString("ids", sb.toString()).apply();
    }

    // -----------------------------------------------------------------------------------------
    // Address & handle normalization

    public static String stripHandlePrefix(String handle) {
        if (handle == null) return "";
        String s = handle.trim();
        if (s.regionMatches(true, 0, "tel:", 0, 4)) {
            return s.substring(4).trim();
        }
        if (s.regionMatches(true, 0, "mailto:", 0, 7)) {
            return s.substring(7).trim();
        }
        return s;
    }

    public static String toIMessageTarget(Context c, String rawAddress) {
        if (rawAddress == null) return null;
        String s = rawAddress.trim();
        if (s.isEmpty()) return null;
        int slash = s.indexOf("/TYPE=");
        if (slash >= 0) s = s.substring(0, slash).trim();
        if (s.regionMatches(true, 0, "tel:", 0, 4)) {
            String num = toE164(c, s.substring(4));
            return num == null ? null : ("tel:" + num);
        }
        if (s.regionMatches(true, 0, "mailto:", 0, 7)) {
            String em = s.substring(7).trim().toLowerCase(Locale.ROOT);
            return em.contains("@") ? ("mailto:" + em) : null;
        }
        if (s.indexOf('@') > 0) {
            return "mailto:" + s.toLowerCase(Locale.ROOT);
        }
        String num = toE164(c, s);
        return num == null ? null : ("tel:" + num);
    }

    public static String toE164(Context c, String n) {
        if (n == null) return null;
        String s = PhoneNumberUtils.stripSeparators(n.trim());
        if (TextUtils.isEmpty(s)) return null;
        if (s.startsWith("+")) {
            return s.length() > 4 && TextUtils.isDigitsOnly(s.substring(1)) ? s : null;
        }
        if (!TextUtils.isDigitsOnly(s)) return null;
        // Short codes (<= 6 digits) are never iMessage targets.
        if (s.length() <= 6) return null;
        String iso = countryIso(c);
        if ("US".equals(iso) || "CA".equals(iso)) {
            if (s.length() == 10) return "+1" + s;
            if (s.length() == 11 && s.charAt(0) == '1') return "+" + s;
        }
        String formatted = PhoneNumberUtils.formatNumberToE164(s, iso);
        if (!TextUtils.isEmpty(formatted)) return formatted;
        if (s.length() >= 10) return "+" + s;
        return null;
    }

    private static String countryIso(Context c) {
        try {
            TelephonyManager tm = (TelephonyManager) c.getSystemService(Context.TELEPHONY_SERVICE);
            if (tm != null) {
                String iso = tm.getSimCountryIso();
                if (TextUtils.isEmpty(iso)) iso = tm.getNetworkCountryIso();
                if (!TextUtils.isEmpty(iso)) return iso.toUpperCase(Locale.ROOT);
            }
        } catch (Throwable ignored) {
        }
        String l = Locale.getDefault().getCountry();
        return TextUtils.isEmpty(l) ? "US" : l.toUpperCase(Locale.ROOT);
    }

    public static boolean isOwnHandle(String handle, List<String> myHandles) {
        if (TextUtils.isEmpty(handle) || myHandles == null || myHandles.isEmpty()) return false;
        String stripped = stripHandlePrefix(handle);
        for (String mine : myHandles) {
            if (TextUtils.isEmpty(mine)) continue;
            if (handle.equalsIgnoreCase(mine)) return true;
            String mineStripped = stripHandlePrefix(mine);
            if (stripped.equalsIgnoreCase(mineStripped)) return true;
            if (stripped.indexOf('@') < 0 && mineStripped.indexOf('@') < 0
                    && PhoneNumberUtils.compare(stripped, mineStripped)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidPinHex(String pin) {
        if (pin == null) return false;
        try {
            byte[] b = ClientState.fromHex(pin);
            return b.length == 32;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    public static String normalizePinHex(String pin) {
        if (pin == null) return "";
        return pin.replace(":", "").replace("-", "").replaceAll("\\s+", "").toLowerCase(Locale.ROOT);
    }

    // -----------------------------------------------------------------------------------------
    // Server URL & setup file parser (used by Setup Wizard)

    public static final class ParsedSetup {
        public String host;
        public int port = 443;
        public String sni;
        public String token;
        public String pin;
        public String displayUrl;
    }

    /**
     * Parses user-entered server addresses such as:
     *   imsg.example.com
     *   imsg.example.com:8443
     *   https://imsg.example.com:8443
     *   imsg://imsg.example.com:443?token=...&pin=...
     *   [::1]:8443
     * Returns null if invalid.
     */
    public static ParsedSetup parseServerInput(String rawInput) {
        if (rawInput == null) return null;
        String s = rawInput.trim();
        if (s.isEmpty()) return null;

        ParsedSetup out = new ParsedSetup();
        String rest = s;
        int schemeIdx = rest.indexOf("://");
        if (schemeIdx > 0) {
            rest = rest.substring(schemeIdx + 3);
        }

        String query = null;
        int qIdx = rest.indexOf('?');
        if (qIdx >= 0) {
            query = rest.substring(qIdx + 1);
            rest = rest.substring(0, qIdx);
        }
        int slashIdx = rest.indexOf('/');
        if (slashIdx >= 0) {
            rest = rest.substring(0, slashIdx);
        }
        rest = rest.trim();
        if (rest.isEmpty()) return null;

        String host;
        int port = 443;
        if (rest.startsWith("[")) {
            int close = rest.indexOf(']');
            if (close <= 1) return null;
            host = rest.substring(1, close);
            if (close + 1 < rest.length()) {
                if (rest.charAt(close + 1) != ':') return null;
                port = parsePort(rest.substring(close + 2));
                if (port <= 0) return null;
            }
        } else {
            int colon = rest.lastIndexOf(':');
            if (colon > 0 && rest.indexOf(':') == colon) {
                host = rest.substring(0, colon).trim();
                port = parsePort(rest.substring(colon + 1).trim());
                if (port <= 0) return null;
            } else {
                host = rest;
            }
        }
        if (host.isEmpty() || host.contains(" ")) return null;

        out.host = host;
        out.port = port;
        out.displayUrl = port == 443 ? host : (host + ":" + port);

        if (query != null && !query.isEmpty()) {
            for (String pair : query.split("&")) {
                int eq = pair.indexOf('=');
                if (eq <= 0) continue;
                String k = decodeQuery(pair.substring(0, eq)).toLowerCase(Locale.ROOT);
                String v = decodeQuery(pair.substring(eq + 1)).trim();
                if ("token".equals(k) && !v.isEmpty()) out.token = v;
                else if (("pin".equals(k) || "sha256".equals(k) || "fingerprint".equals(k)) && !v.isEmpty()) out.pin = normalizePinHex(v);
                else if ("sni".equals(k) && !v.isEmpty()) out.sni = v;
            }
        }
        return out;
    }

    private static int parsePort(String s) {
        try {
            int p = Integer.parseInt(s);
            return (p >= 1 && p <= 65535) ? p : -1;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private static String decodeQuery(String s) {
        try {
            return URLDecoder.decode(s, "UTF-8");
        } catch (Exception e) {
            return s;
        }
    }

    /**
     * Reads optional setup helper file from /sdcard/imessage.txt or /sdcard/Download/imessage.txt.
     * Supports:
     *  - single line imsg://host:port?token=...&pin=...
     *  - key=value lines (url/server, host, port, token, pin, sni)
     *  - raw token line
     */
    public static ParsedSetup loadSetupFile() {
        File ext = Environment.getExternalStorageDirectory();
        File[] candidates = new File[]{
                new File(ext, "imessage.txt"),
                new File(ext, "Download/imessage.txt")
        };
        for (File f : candidates) {
            if (!f.exists() || !f.isFile() || !f.canRead()) continue;
            ParsedSetup parsed = parseSetupFile(f);
            if (parsed != null) return parsed;
        }
        return null;
    }

    static ParsedSetup parseSetupFile(File f) {
        BufferedReader br = null;
        try {
            br = new BufferedReader(new InputStreamReader(new FileInputStream(f), StandardCharsets.UTF_8));
            ParsedSetup out = new ParsedSetup();
            boolean any = false;
            String line;
            while ((line = br.readLine()) != null) {
                line = line.trim();
                if (line.isEmpty() || line.startsWith("#")) continue;
                if (line.startsWith("imsg://") || line.startsWith("https://") || line.startsWith("tls://")) {
                    ParsedSetup u = parseServerInput(line);
                    if (u != null) {
                        if (u.host != null) out.host = u.host;
                        out.port = u.port;
                        out.displayUrl = u.displayUrl;
                        if (u.sni != null) out.sni = u.sni;
                        if (u.token != null) out.token = u.token;
                        if (u.pin != null) out.pin = u.pin;
                        any = true;
                    }
                    continue;
                }
                int eq = line.indexOf('=');
                if (eq > 0) {
                    String k = line.substring(0, eq).trim().toLowerCase(Locale.ROOT);
                    String v = line.substring(eq + 1).trim();
                    if (v.isEmpty()) continue;
                    any = true;
                    if ("url".equals(k) || "server".equals(k)) {
                        ParsedSetup u = parseServerInput(v);
                        if (u != null) {
                            out.host = u.host;
                            out.port = u.port;
                            out.displayUrl = u.displayUrl;
                            if (u.sni != null) out.sni = u.sni;
                            if (u.token != null) out.token = u.token;
                            if (u.pin != null) out.pin = u.pin;
                        }
                    } else if ("host".equals(k)) {
                        out.host = v;
                    } else if ("port".equals(k)) {
                        int p = parsePort(v);
                        if (p > 0) out.port = p;
                    } else if ("token".equals(k)) {
                        out.token = v.replaceAll("\\s+", "");
                    } else if ("pin".equals(k) || "sha256".equals(k) || "fingerprint".equals(k)) {
                        out.pin = normalizePinHex(v);
                    } else if ("sni".equals(k)) {
                        out.sni = v;
                    }
                } else if (line.length() >= 32 && line.matches("[0-9a-fA-F]+")) {
                    out.token = line;
                    any = true;
                }
            }
            if (out.host != null && out.displayUrl == null) {
                out.displayUrl = out.port == 443 ? out.host : (out.host + ":" + out.port);
            }
            return any ? out : null;
        } catch (Throwable t) {
            return null;
        } finally {
            if (br != null) {
                try { br.close(); } catch (Throwable ignored) {}
            }
        }
    }
}
