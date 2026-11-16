package org.argon.rcs.sip;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

import org.argon.rcs.util.Digest;
import org.argon.rcs.util.Log;
import org.argon.rcs.util.U;

/** REGISTER client (RFC 3261 section 10, RFC 5626 outbound, RFC 3608 Service-Route). Runs on the stack executor. */
public final class Registration {
    public interface Listener {
        void onRegistered(Registration r, int expires);
        /** retryAfterMs: server-provided Retry-After (ms) or -1. */
        void onRegistrationFailed(Registration r, int code, String reason, long retryAfterMs);
    }

    private final SipStack stack;
    private final Log log;
    private final Listener listener;
    public final String registrarUri;  // sip:domain
    private final String callId = U.randHex(16) + "@argon";
    private long cseq = 0;
    private int requestedExpires;
    private ScheduledFuture<?> refresh;
    public boolean registered;
    public boolean outboundSupported;
    public List<String> associatedUris = new ArrayList<>();
    public int expires;
    /** RFC 5626 Flow-Timer from the registrar (s), 0 if none. */
    public int flowTimer;
    public String realm;
    private boolean stopped;

    public Registration(SipStack stack, Log log, Listener l, String registrarUri, int expires, String realm) {
        this.stack = stack; this.log = log; this.listener = l; this.registrarUri = registrarUri;
        this.requestedExpires = expires; this.realm = realm;
    }

    public void register() {
        stack.exec.execute(() -> { if (!stopped) sendRegister(requestedExpires, null); });
    }

    private SipMessage build(int exp) {
        SipMessage m = stack.newRequest("REGISTER", registrarUri, "<" + stack.impu + ">");
        m.set("Call-ID", callId);
        m.set("CSeq", (++cseq) + " REGISTER");
        m.add("Contact", stack.contact(true));
        m.add("Expires", String.valueOf(exp));
        m.add("Supported", "path, gruu, outbound");
        m.add("Allow", "INVITE, ACK, CANCEL, BYE, OPTIONS, MESSAGE, NOTIFY, UPDATE");
        String auth = stack.cachedAuthorization(realm, "REGISTER", registrarUri);
        if (auth != null) m.add("Authorization", auth);
        m.onCseqChanged = req -> cseq = req.cseq();
        return m;
    }

    private void sendRegister(int exp, Runnable done) {
        SipMessage m = build(exp);
        log.i("REGISTER " + stack.impu + " expires=" + exp);
        stack.send(m, (resp, req) -> {
            if (resp.status < 200) return;
            if (exp == 0) {
                registered = false;
                log.i("unREGISTER -> " + resp.status);
                if (done != null) done.run();
                return;
            }
            if (stopped) return;
            if (resp.status >= 200 && resp.status < 300) onOk(resp);
            else if (resp.status == 423) {
                int min = U.parseInt(resp.header("Min-Expires"), requestedExpires * 2);
                log.w("423 Interval Too Brief, Min-Expires=" + min);
                requestedExpires = Math.max(min, requestedExpires);
                sendRegister(requestedExpires, null);
            } else {
                registered = false;
                if (resp.status == 401 || resp.status == 403) stack.clearChallenges();
                long ra = -1;
                String raH = resp.header("Retry-After");
                if (raH != null) ra = 1000L * U.parseInt(raH.trim().split("[\\s;(]")[0], 0);
                log.w("REGISTER failed " + resp.status + " " + resp.reason + (resp.local ? " (local)" : ""));
                listener.onRegistrationFailed(this, resp.status, resp.reason, ra);
            }
        });
    }

    private void onOk(SipMessage resp) {
        int exp = -1;
        for (String c : resp.headerValues("Contact")) {
            NameAddr a = NameAddr.parse(c);
            String inst = a.param("+sip.instance");
            boolean ours = inst != null && stack.instanceId != null && inst.equals(stack.instanceId);
            if (ours || resp.headerValues("Contact").size() == 1) {
                String e = a.param("expires");
                if (e != null) exp = U.parseInt(e, -1);
            }
        }
        if (exp < 0) exp = resp.expiresHeader(requestedExpires);
        if (exp <= 0) exp = requestedExpires;
        expires = exp;
        stack.serviceRoute = resp.headerValues("Service-Route");
        associatedUris = new ArrayList<>();
        for (String u : resp.headerValues("P-Associated-URI")) associatedUris.add(NameAddr.parse(u).uri);
        String req = resp.header("Require"), sup = resp.header("Supported");
        outboundSupported = (req != null && req.contains("outbound")) || (sup != null && sup.contains("outbound"));
        flowTimer = U.parseInt(resp.header("Flow-Timer"), 0);
        registered = true;
        long refreshMs = Math.max(5000L, exp * 1000L / 2);
        if (exp > 1200) refreshMs = Math.max(refreshMs, (exp - 600) * 1000L); // big expiries: refresh 10 min early
        if (exp <= 1200) refreshMs = exp * 1000L / 2;
        refreshMs = Math.max(refreshMs, 2000L);
        if (refresh != null) refresh.cancel(false);
        refresh = stack.exec.schedule(() -> { if (!stopped) sendRegister(requestedExpires, null); }, refreshMs, TimeUnit.MILLISECONDS);
        log.i("registered, expires=" + exp + "s refresh in " + refreshMs / 1000 + "s, routes=" + stack.serviceRoute.size()
                + " outbound=" + outboundSupported + " associated=" + associatedUris);
        listener.onRegistered(this, exp);
    }

    /** Stops refreshing; if registered, sends REGISTER Expires: 0 and runs done after (or on timeout). */
    public void unregister(Runnable done) {
        stack.exec.execute(() -> {
            stopped = true;
            if (refresh != null) refresh.cancel(false);
            if (registered && stack.connected()) sendRegister(0, done);
            else if (done != null) done.run();
        });
    }

    /** Stops refreshing without sending anything (flow lost). */
    public void cancel() {
        stack.exec.execute(() -> { stopped = true; registered = false; if (refresh != null) refresh.cancel(false); });
    }
}
