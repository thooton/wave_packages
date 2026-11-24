package com.android.mms.wave;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

import com.android.mms.wave.imsg.ClientState;

import java.io.File;
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
    private static final String K_HOST = "host";
    private static final String K_PORT = "port";
    private static final String K_TOKEN = "token_hex";
    private static final String K_CLIENT_ID = "client_id";
    private static final String K_SMS_FALLBACK = "sms_fallback";
    private static final String K_SEND = "send_imessage";
    private static final String K_NOTIFICATION = "connection_notification";
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
                && !TextUtils.isEmpty(getTokenHex());
    }

    public String getServerUrl() {
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

    public String getTokenHex() {
        return sp.getString(K_TOKEN, "");
    }

    public String getClientId() {
        return sp.getString(K_CLIENT_ID, "");
    }

    public boolean isSmsFallbackEnabled() {
        return sp.getBoolean(K_SMS_FALLBACK, true);
    }

    public void setSmsFallbackEnabled(boolean on) {
        sp.edit().putBoolean(K_SMS_FALLBACK, on).apply();
    }

    /**
     * Whether outgoing messages may go over iMessage. When off, everything is sent as SMS/MMS and
     * the phone never asks the server whether a contact is on iMessage; receiving is unaffected.
     */
    public boolean isSendEnabled() {
        return sp.getBoolean(K_SEND, true);
    }

    public void setSendEnabled(boolean on) {
        sp.edit().putBoolean(K_SEND, on).apply();
    }

    /**
     * Whether the connection runs as a foreground service with its ongoing notification. Off by
     * default: the module's service.sh puts Messages on the Doze whitelist instead.
     */
    public boolean isConnectionNotificationShown() {
        return sp.getBoolean(K_NOTIFICATION, false);
    }

    public void setConnectionNotificationShown(boolean on) {
        sp.edit().putBoolean(K_NOTIFICATION, on).apply();
    }

    /** Saves a successful pairing. Clears the previous server's message state. */
    public void savePairing(String host, int port, String clientId, String tokenHex) {
        clearAll();
        sp.edit()
                .putBoolean(K_CONFIGURED, true)
                .putBoolean(K_ENABLED, true)
                .putString(K_HOST, host.trim())
                .putInt(K_PORT, port)
                .putString(K_CLIENT_ID, clientId)
                .putString(K_TOKEN, tokenHex)
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

    /** True if this id was already stored or sent (doesn't mark it). */
    public boolean isAppleMsgIdSeen(String appleMsgId) {
        if (TextUtils.isEmpty(appleMsgId)) return false;
        synchronized (dedupeLock) {
            ensureDedupeLoadedLocked();
            return recentIds.contains(appleMsgId);
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

    // -----------------------------------------------------------------------------------------
    // Server address parser (used by the pairing screen)

    public static final class ServerAddress {
        public final String host;
        public final int port;

        ServerAddress(String host, int port) {
            this.host = host;
            this.port = port;
        }
    }

    /**
     * Parses a typed server address: {@code imsg.example.com}, {@code imsg.example.com:8443} or
     * {@code https://imsg.example.com}. Returns null if invalid.
     */
    public static ServerAddress parseServerInput(String rawInput) {
        if (rawInput == null) return null;
        String rest = rawInput.trim();
        int schemeIdx = rest.indexOf("://");
        if (schemeIdx > 0) rest = rest.substring(schemeIdx + 3);
        int slashIdx = rest.indexOf('/');
        if (slashIdx >= 0) rest = rest.substring(0, slashIdx);
        rest = rest.trim();
        if (rest.isEmpty()) return null;

        String host = rest;
        int port = 443;
        int colon = rest.lastIndexOf(':');
        if (colon > 0 && rest.indexOf(':') == colon) {
            host = rest.substring(0, colon).trim();
            try {
                port = Integer.parseInt(rest.substring(colon + 1).trim());
            } catch (NumberFormatException e) {
                return null;
            }
            if (port < 1 || port > 65535) return null;
        }
        if (host.isEmpty() || host.contains(" ") || host.indexOf(':') >= 0) return null;
        return new ServerAddress(host.toLowerCase(Locale.ROOT), port);
    }

    // -----------------------------------------------------------------------------------------
    // Sends whose result we're still waiting for, kept across process restarts

    private static final String PREFS_PENDING = "wave_imessage_pending";
    private static final int MAX_PENDING = 64;

    /**
     * A message handed to the server whose SEND_RESULT we haven't handled yet. Its waiter lives in
     * memory only, so after the process dies this record is what lets a result that comes later
     * still mark the SMS sent (or failed), and lets stock MMS's retry wait for the earlier send
     * instead of sending it a second time.
     */
    public static final class PendingSend {
        public final String id;
        /** "sms" or "mms". */
        public final String kind;
        /** Process that sent it (see WaveIMessageSend.SESSION). */
        public final String session;
        public final Uri uri;
        public final long createdMs;
        /** Result that came with no waiter: "ok:&lt;apple id&gt;", "err:&lt;message&gt;", or null. */
        public final String result;

        PendingSend(String id, String kind, String session, Uri uri, long createdMs, String result) {
            this.id = id;
            this.kind = kind;
            this.session = session;
            this.uri = uri;
            this.createdMs = createdMs;
            this.result = result;
        }

        String encode() {
            return kind + "\t" + session + "\t" + uri + "\t" + createdMs + "\t" + (result == null ? "" : result);
        }

        static PendingSend decode(String id, String raw) {
            if (raw == null) return null;
            String[] f = raw.split("\t", 5);
            if (f.length < 4) return null;
            try {
                return new PendingSend(id, f[0], f[1], Uri.parse(f[2]), Long.parseLong(f[3]),
                        f.length > 4 && !f[4].isEmpty() ? f[4] : null);
            } catch (NumberFormatException e) {
                return null;
            }
        }
    }

    private SharedPreferences pendingSp() {
        return ctx.getSharedPreferences(PREFS_PENDING, Context.MODE_PRIVATE);
    }

    /** Records a send (synchronously: it must survive the process dying right after). */
    public synchronized void putPendingSend(String id, String kind, String session, Uri uri) {
        if (TextUtils.isEmpty(id) || uri == null) return;
        SharedPreferences p = pendingSp();
        SharedPreferences.Editor e = p.edit();
        Map<String, ?> all = p.getAll();
        if (all.size() >= MAX_PENDING) {
            // Drop the oldest; a result that old isn't coming.
            String oldest = null;
            long oldestMs = Long.MAX_VALUE;
            for (Map.Entry<String, ?> en : all.entrySet()) {
                PendingSend ps = PendingSend.decode(en.getKey(), String.valueOf(en.getValue()));
                long ms = ps == null ? 0L : ps.createdMs;
                if (ms < oldestMs) {
                    oldestMs = ms;
                    oldest = en.getKey();
                }
            }
            if (oldest != null) e.remove(oldest);
        }
        e.putString(id, new PendingSend(id, kind, session, uri, System.currentTimeMillis(), null).encode());
        e.commit();
    }

    public synchronized PendingSend getPendingSend(String id) {
        if (TextUtils.isEmpty(id)) return null;
        return PendingSend.decode(id, pendingSp().getString(id, null));
    }

    /** The newest pending send of {@code uri}, or null. */
    public synchronized PendingSend pendingSendForUri(Uri uri) {
        if (uri == null) return null;
        PendingSend best = null;
        for (Map.Entry<String, ?> en : pendingSp().getAll().entrySet()) {
            PendingSend ps = PendingSend.decode(en.getKey(), String.valueOf(en.getValue()));
            if (ps != null && sameRow(uri, ps.uri) && (best == null || ps.createdMs > best.createdMs)) best = ps;
        }
        return best;
    }

    /** content://mms/5 and content://mms/outbox/5 are the same message. */
    static boolean sameRow(Uri a, Uri b) {
        if (a == null || b == null) return false;
        return a.equals(b) || (TextUtils.equals(a.getAuthority(), b.getAuthority())
                && TextUtils.equals(a.getLastPathSegment(), b.getLastPathSegment()));
    }

    public synchronized List<PendingSend> pendingSends() {
        List<PendingSend> out = new ArrayList<PendingSend>();
        for (Map.Entry<String, ?> en : pendingSp().getAll().entrySet()) {
            PendingSend ps = PendingSend.decode(en.getKey(), String.valueOf(en.getValue()));
            if (ps != null) out.add(ps);
        }
        return out;
    }

    public synchronized void setPendingSendResult(String id, String result) {
        PendingSend ps = getPendingSend(id);
        if (ps == null) return;
        pendingSp().edit().putString(id,
                new PendingSend(id, ps.kind, ps.session, ps.uri, ps.createdMs, result).encode()).commit();
    }

    public synchronized void removePendingSend(String id) {
        if (TextUtils.isEmpty(id)) return;
        SharedPreferences p = pendingSp();
        if (p.contains(id)) p.edit().remove(id).apply();
    }
}
