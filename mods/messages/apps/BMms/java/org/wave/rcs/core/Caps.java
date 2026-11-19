package org.wave.rcs.core;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import org.wave.rcs.RcsCapabilities;
import org.wave.rcs.RcsConfig;
import org.wave.rcs.sip.NameAddr;
import org.wave.rcs.sip.SipMessage;
import org.wave.rcs.sip.SipStack;
import org.wave.rcs.util.Log;
import org.wave.rcs.util.U;

/** Capability discovery via SIP OPTIONS (RCC.07 section 2.6.1.1), with a cache. Engine thread only. */
public final class Caps {
    private final Core core;
    private final Log log;
    private final Map<String, RcsCapabilities> cache = new HashMap<>();
    private final Set<String> inflight = new HashSet<>();
    private static final long THROTTLE_MS = 60000;
    private boolean dirty;

    Caps(Core core) { this.core = core; this.log = core.log.sub("caps"); }

    void load() {
        String s = core.st("caps");
        if (U.empty(s)) return;
        for (String line : s.split("\n")) {
            String[] f = line.split(",");
            if (f.length < 6) continue;
            RcsCapabilities c = new RcsCapabilities();
            c.chat = f[1].equals("1"); c.fileTransferHttp = f[2].equals("1"); c.groupChat = f[3].equals("1");
            c.rcs = f[4].equals("1"); c.fetchedAt = U.parseLong(f[5], 0);
            c.code = f.length > 6 ? U.parseInt(f[6], 0) : 0;
            cache.put(f[0], c);
        }
    }

    private void persistSoon() {
        if (dirty) return;
        dirty = true;
        core.schedule(() -> {
            dirty = false;
            StringBuilder b = new StringBuilder();
            long now = System.currentTimeMillis();
            for (Map.Entry<String, RcsCapabilities> e : cache.entrySet()) {
                RcsCapabilities c = e.getValue();
                if (now - c.fetchedAt > 7L * 24 * 3600 * 1000) continue;
                b.append(e.getKey()).append(',').append(c.chat ? 1 : 0).append(',').append(c.fileTransferHttp ? 1 : 0).append(',')
                        .append(c.groupChat ? 1 : 0).append(',').append(c.rcs ? 1 : 0).append(',').append(c.fetchedAt).append(',').append(c.code).append('\n');
            }
            core.save("caps", b.toString());
        }, 2000);
    }

    private boolean fresh(RcsCapabilities c) {
        RcsConfig cfg = core.config;
        long ttl = cfg == null ? (c.rcs ? 86400000L : 3600000L) : (c.rcs ? cfg.capPositiveTtlMs() : cfg.capNegativeTtlMs());
        return System.currentTimeMillis() - c.fetchedAt < ttl;
    }

    /** Thread-safe read: caller is any thread, so copy under the engine lock-free path via a snapshot. */
    public RcsCapabilities cached(String number) {
        String n = U.normNumber(number);
        synchronized (cache) {
            RcsCapabilities c = cache.get(n);
            return c != null && fresh(c) ? c.copy() : null;
        }
    }

    public void refresh(String number) {
        String n = U.normNumber(number);
        RcsCapabilities c;
        synchronized (cache) { c = cache.get(n); }
        if (c != null && System.currentTimeMillis() - c.fetchedAt < THROTTLE_MS) {
            log.d("caps for " + n + " fetched recently, answering from cache");
            core.emitCapabilities(n, c.copy());
            return;
        }
        if (inflight.contains(n)) { log.d("caps query for " + n + " already in flight"); return; }
        if (!core.isRegistered()) {
            RcsCapabilities r = c != null ? c.copy() : unknown();
            core.emitCapabilities(n, r);
            return;
        }
        inflight.add(n);
        SipStack st = core.stack;
        String uri = core.uriFor(n);
        SipMessage m = st.newRequest("OPTIONS", uri, "<" + uri + ">");
        m.add("Contact", st.contact(false));
        m.add("Accept", "application/sdp");
        m.add("Accept-Contact", "*;+g.3gpp.icsi-ref=\"" + Core.enc(Core.ICSI_SESSION) + "\"");
        log.d("OPTIONS " + n);
        st.send(m, (resp, req) -> {
            if (resp.status < 200) return;
            inflight.remove(n);
            onResponse(n, resp);
        });
    }

    private static RcsCapabilities unknown() {
        RcsCapabilities r = new RcsCapabilities();
        r.fetchedAt = 0; r.code = 0;
        return r;
    }

    private void onResponse(String n, SipMessage resp) {
        RcsCapabilities prev;
        synchronized (cache) { prev = cache.get(n); }
        RcsCapabilities c;
        if (resp.status >= 200 && resp.status < 300) {
            c = parse(resp.headerValues("Contact"));
            c.rcs = true;
        } else if (resp.local) {
            log.w("OPTIONS " + n + " failed locally (" + resp.status + "), not cached");
            core.emitCapabilities(n, prev != null ? prev.copy() : unknown());
            return;
        } else {
            c = new RcsCapabilities();
            boolean offline = resp.status == 480 || resp.status == 408 || resp.status == 486 || resp.status == 503;
            RcsConfig cfg = core.config;
            if (offline && cfg != null && cfg.imCapAlwaysOn && prev != null && prev.rcs) {
                // known RCS user that's offline: store & forward still delivers chat
                c.chat = prev.chat || true; c.groupChat = prev.groupChat; c.fileTransferHttp = prev.fileTransferHttp; c.rcs = true;
                log.i(n + " offline (" + resp.status + "), imCapAlwaysON keeps chat");
            }
        }
        c.code = resp.status;
        c.fetchedAt = System.currentTimeMillis();
        synchronized (cache) { cache.put(n, c); }
        persistSoon();
        log.i("caps " + n + ": " + c);
        core.emitCapabilities(n, c.copy());
    }

    /** Feature tags of Contact headers -> capabilities. */
    public static RcsCapabilities parse(Iterable<String> contacts) {
        RcsCapabilities c = new RcsCapabilities();
        for (String ct : contacts) {
            NameAddr a = NameAddr.parse(ct);
            for (Map.Entry<String, String> e : a.featureTags().entrySet()) {
                String k = e.getKey();
                String v = U.nz(e.getValue()).replace("%3A", ":").replace("%3a", ":").toLowerCase(Locale.ROOT);
                if (k.equals("+g.3gpp.icsi-ref")) {
                    if (v.contains("oma.cpm.session") || v.contains("oma.cpm.msg")) c.chat = true;
                    if (v.contains("oma.cpm.session")) c.groupChat = true;
                    c.rcs = true;
                } else if (k.equals("+g.3gpp.iari-ref")) {
                    if (v.contains("rcs.fthttp")) c.fileTransferHttp = true;
                    if (v.contains("rcse.im") || v.contains("rcs.im")) c.chat = true;
                    c.rcs = true;
                } else if (k.equals("+g.oma.sip-im")) {
                    c.chat = true; c.groupChat = true; c.rcs = true;
                }
            }
        }
        return c;
    }

    void fromIncomingOptions(SipMessage req) {
        String n = U.numberFromUri(req.from() != null ? req.from().uri : null);
        if (n == null) return;
        RcsCapabilities c = parse(req.headerValues("Contact"));
        if (!c.rcs) return;
        c.code = 200;
        c.fetchedAt = System.currentTimeMillis();
        synchronized (cache) { cache.put(n, c); }
        persistSoon();
    }
}
