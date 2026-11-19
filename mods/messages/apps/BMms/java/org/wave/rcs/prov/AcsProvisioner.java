package org.wave.rcs.prov;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.wave.rcs.RcsPlatform;
import org.wave.rcs.util.Http;
import org.wave.rcs.util.Log;
import org.wave.rcs.util.U;

/**
 * GSMA RCC.14 HTTP(S) auto-configuration client.
 *
 * Flow: (optional first HTTP request for network-based authentication) -> HTTPS GET with the
 * client parameters (+token) -> config XML, or "OTP needed" (200 without a provisioning doc, or
 * 511) -> wait for the OTP SMS via RcsPlatform.waitForOtp -> HTTPS GET with OTP=... -> config.
 *
 * State keys read: acs_url (override), terminal_vendor, terminal_model, terminal_sw_version,
 * client_vendor, client_version, otp_pattern, otp_timeout_ms, msisdn (override), user_agent.
 */
public final class AcsProvisioner implements Provisioner {
    public static final String DEFAULT_OTP_PATTERN = "(?<![0-9])([0-9]{4,8})(?![0-9])";
    public static final int SMS_PORT = 37273;

    @Override public String name() { return "acs"; }

    /** Default ACS URL from the SIM operator (RCC.14 section 2.2). null if MCC/MNC unknown. */
    public static String defaultUrl(String mcc, String mnc) {
        if (U.empty(mcc) || U.empty(mnc)) return null;
        String m = mnc.trim();
        while (m.length() < 3) m = "0" + m;
        return "https://config.rcs.mnc" + m + ".mcc" + mcc.trim() + ".pub.3gppnetwork.org/";
    }

    @Override public Result provision(Request rq) {
        RcsPlatform p = rq.platform;
        Log log = rq.log;
        String override = p.loadState("acs_url");
        String url = !U.empty(override) ? override.trim() : defaultUrl(p.mcc(), p.mnc());
        if (url == null) return Result.error(0, "no ACS URL (MCC/MNC unknown, no acs_url)");
        if (!p.networkAvailable()) return Result.retry(-1, "no network");
        Http http = new Http(p.sslSocketFactory());
        String ua = p.loadState("user_agent");
        http.userAgent = !U.empty(ua) ? ua : "IM-client/OMA1.0 Wave/1.0";

        String msisdn = !U.empty(p.loadState("msisdn")) ? p.loadState("msisdn") : p.msisdn();
        String token = rq.token;
        boolean sendMsisdn = msisdn != null;
        try {
            // 1) network-based authentication over plain HTTP (only for https default/override URLs, first time)
            if (url.startsWith("https://") && U.empty(token) && U.parseBool(p.loadState("acs_http_first"), U.empty(override))) {
                String httpUrl = "http://" + url.substring(8);
                try {
                    Http.Response r = http.get(withParams(httpUrl, rq, p, msisdn, null, null), null);
                    log.i("ACS HTTP (network auth) -> " + r.code);
                    if (r.code == 200 && isProvDoc(r.body)) return Result.config(new String(r.body, "UTF-8"));
                } catch (Exception e) {
                    log.d("ACS HTTP step failed (ok): " + Log.describe(e));
                }
            }
            for (int attempt = 0; attempt < 4 && !rq.cancelled; attempt++) {
                Http.Response r = http.get(withParams(url, rq, p, sendMsisdn ? msisdn : null, token, null), null);
                log.i("ACS " + host(url) + " -> " + r.code + (token != null ? " (with token)" : ""));
                if (r.code == 200 && isProvDoc(r.body)) return versionCheck(new String(r.body, "UTF-8"), log);
                if (r.code == 200 || r.code == 511) {
                    if (r.code == 511 && !sendMsisdn && msisdn != null) { sendMsisdn = true; continue; }
                    if (msisdn == null && r.code == 511) return Result.error(511, "ACS needs the MSISDN, which is unknown (set state key msisdn)");
                    // OTP flow
                    Result res = otpFlow(http, url, rq, p, log, msisdn);
                    if (res != null) return res;
                    return Result.error(r.code, "OTP not received");
                }
                if (r.code == 403) {
                    if (token != null) { log.w("ACS 403 with token: dropping token, retrying"); token = null; continue; }
                    return Result.disabled("ACS 403 Forbidden", false, true);
                }
                if (r.code == 503) return Result.retry(retryAfter(r), "ACS 503");
                if (r.code >= 300 && r.code < 400) return Result.error(r.code, "ACS redirect not followed");
                return Result.error(r.code, "ACS HTTP " + r.code);
            }
            return Result.error(0, rq.cancelled ? "cancelled" : "ACS: too many attempts");
        } catch (Exception e) {
            log.w("ACS request failed", e);
            return Result.retry(-1, "ACS unreachable: " + Log.describe(e));
        }
    }

    private Result otpFlow(Http http, String url, Request rq, RcsPlatform p, Log log, String msisdn) throws Exception {
        String pat = p.loadState("otp_pattern");
        Pattern pattern = Pattern.compile(U.empty(pat) ? DEFAULT_OTP_PATTERN : pat);
        long timeout = U.parseLong(p.loadState("otp_timeout_ms"), 120000);
        for (int tries = 0; tries < 2 && !rq.cancelled; tries++) {
            log.i("ACS: waiting for OTP SMS (" + timeout / 1000 + "s)");
            String raw = p.waitForOtp(pattern, timeout);
            if (raw == null) { log.w("ACS: no OTP received"); return null; }
            String otp = raw;
            Matcher m = pattern.matcher(raw);
            if (m.find()) otp = m.groupCount() >= 1 && m.group(1) != null ? m.group(1) : m.group();
            log.i("ACS: got OTP " + U.mask(otp));
            Http.Response r = http.get(withParams(url, rq, p, msisdn, null, otp), null);
            log.i("ACS (OTP) -> " + r.code);
            if (r.code == 200 && isProvDoc(r.body)) return versionCheck(new String(r.body, "UTF-8"), log);
            if (r.code == 503) return Result.retry(retryAfter(r), "ACS 503");
            if (r.code == 403) {
                log.w("ACS rejected the OTP");
                if (tries == 0) continue; // a second SMS may arrive (resend); wait once more
                return Result.error(403, "OTP rejected");
            }
            return Result.error(r.code, "ACS OTP step HTTP " + r.code);
        }
        return null;
    }

    /** Handles the special VERS values (RCC.14 table "version"). */
    static Result versionCheck(String xml, Log log) {
        int vers = 1;
        try {
            org.wave.rcs.RcsConfig.Node n = org.wave.rcs.RcsConfig.parseTree(xml).find("VERS");
            if (n != null) vers = U.parseInt(n.parm("version"), 1);
        } catch (Exception e) {
            log.w("ACS: unparseable document", e);
            return Result.error(200, "unparseable provisioning document");
        }
        switch (vers) {
            case 0: log.w("ACS: version 0, RCS disabled (config reset, retry next start)");
                return Result.disabled("disabled by network (vers 0)", true, false);
            case -1: log.w("ACS: version -1, RCS permanently disabled (config reset)");
                return Result.disabled("disabled by network (vers -1)", true, true);
            case -2: log.w("ACS: version -2, RCS disabled, config kept");
                return Result.disabled("disabled by network (vers -2)", false, true);
            case -3: log.w("ACS: version -3, RCS dormant");
                return Result.disabled("dormant (vers -3)", false, true);
            default:
                Result r = Result.config(xml);
                r.code = vers;
                return r;
        }
    }

    static boolean isProvDoc(byte[] body) {
        if (body == null || body.length == 0) return false;
        String s = new String(body, 0, Math.min(body.length, 4096), java.nio.charset.StandardCharsets.UTF_8);
        return s.contains("wap-provisioningdoc");
    }

    private static long retryAfter(Http.Response r) {
        String h = r.header("retry-after");
        return h == null ? -1 : 1000L * U.parseLong(h.trim(), 0);
    }

    private static String host(String url) {
        try { return new java.net.URL(url).getHost(); } catch (Exception e) { return url; }
    }

    private static String withParams(String url, Request rq, RcsPlatform p, String msisdn, String token, String otp) {
        Map<String, String> q = new LinkedHashMap<>();
        String v = String.valueOf(rq.currentVersion);
        q.put("vers", v);
        q.put("rcs_state", v);
        if (p.imsi() != null) q.put("IMSI", p.imsi());
        if (p.imei() != null) q.put("IMEI", p.imei());
        if (msisdn != null) q.put("msisdn", msisdn);
        q.put("terminal_vendor", st(p, "terminal_vendor", "Sonim"));
        q.put("terminal_model", st(p, "terminal_model", "XP3800"));
        q.put("terminal_sw_version", st(p, "terminal_sw_version", "8.1.0"));
        q.put("client_vendor", st(p, "client_vendor", "Argn"));
        q.put("client_version", st(p, "client_version", "1.0"));
        q.put("rcs_version", st(p, "rcs_version", "9.0"));
        q.put("rcs_profile", st(p, "rcs_profile", "UP_2.4"));
        q.put("provisioning_version", "5.0");
        q.put("SMS_port", String.valueOf(SMS_PORT));
        q.put("default_sms_app", "1");
        if (token != null) q.put("token", token);
        if (otp != null) q.put("OTP", otp);
        StringBuilder b = new StringBuilder(url);
        b.append(url.contains("?") ? '&' : '?');
        boolean first = true;
        for (Map.Entry<String, String> e : q.entrySet()) {
            if (!first) b.append('&');
            first = false;
            b.append(e.getKey()).append('=').append(Http.urlEncode(e.getValue()));
        }
        return b.toString();
    }

    private static String st(RcsPlatform p, String key, String def) {
        String v = p.loadState(key);
        return U.empty(v) ? def : v;
    }

    static String lower(String s) { return s == null ? null : s.toLowerCase(Locale.ROOT); }
}
