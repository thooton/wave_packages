package org.argon.rcs.sip;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

import org.argon.rcs.util.Digest;
import org.argon.rcs.util.Log;
import org.argon.rcs.util.U;

/**
 * SIP transaction layer + request factory over a single {@link SipTransport} flow.
 * Everything (callbacks, handlers) runs on the engine executor {@code exec}.
 * Reliable transport only: no retransmissions, Timer B/F = 64*T1 as transaction timeout.
 */
public final class SipStack implements SipTransport.Listener {

    /** Response callback. Timeouts arrive as a local 408, transport failures as a local 503 (resp.local = true). */
    public interface Callback { void onResponse(SipMessage resp, SipMessage request); }

    public interface RequestHandler {
        void onRequest(ServerTx tx);
        void onFlowClosed(SipTransport t, Throwable cause);
        void onPong();
    }

    /** Supplies AKA RES for (RAND, AUTN); null if unsupported. */
    public interface AkaProvider { byte[] res(byte[] rand, byte[] autn); }

    // ---- identity / settings (set by the engine) ----
    public String impu;              // sip:+1555@domain (From of our requests)
    public String displayNumber;     // +1555
    public String authUser, authPassword;
    public String instanceId;        // "<urn:uuid:...>" (with angle brackets)
    public java.util.List<String> serviceRoute = new java.util.ArrayList<>();
    public String userAgent = "Argon-RCS/1.0";
    public int t1 = 500;
    public AkaProvider aka;
    /** Feature tag params appended to Contact (without leading ';'). */
    public String featureTags = "";

    public final ScheduledExecutorService exec;
    private final Log log;
    private RequestHandler handler;
    private volatile SipTransport transport;

    private final Map<String, ClientTx> clientTxs = new HashMap<>();
    private final Map<String, ServerTx> serverTxs = new LinkedHashMap<>();
    /** Last challenge per realm, reused for subsequent requests (nc incremented). */
    private final Map<String, Digest> challenges = new HashMap<>();

    public SipStack(ScheduledExecutorService exec, Log log) { this.exec = exec; this.log = log; }

    public void setHandler(RequestHandler h) { handler = h; }

    public void setTransport(SipTransport t) { transport = t; }
    public SipTransport transport() { return transport; }
    public boolean connected() { SipTransport t = transport; return t != null && t.isOpen(); }

    // =============================================================================================
    // Client transactions

    public final class ClientTx {
        public SipMessage request;
        final Callback cb;
        ScheduledFuture<?> timer;
        int authAttempts;
        boolean done;
        boolean gotProvisional;
        final long timeoutMs;

        ClientTx(SipMessage r, Callback cb, long timeoutMs) { this.request = r; this.cb = cb; this.timeoutMs = timeoutMs; }

        /** Stops waiting (e.g. INVITE cancelled); the callback gets no further responses. */
        public void abandon() {
            exec.execute(() -> { done = true; if (timer != null) timer.cancel(false); clientTxs.remove(request.txKey()); });
        }
    }

    /** Sends a request on the engine thread. Adds Via, Max-Forwards, User-Agent if absent. */
    public ClientTx send(SipMessage req, Callback cb) { return send(req, cb, 64L * t1); }

    public ClientTx send(SipMessage req, Callback cb, long timeoutMs) {
        ClientTx tx = new ClientTx(req, cb, timeoutMs);
        exec.execute(() -> start(tx));
        return tx;
    }

    private void start(ClientTx tx) {
        SipMessage req = tx.request;
        prepare(req);
        clientTxs.put(req.txKey(), tx);
        SipTransport t = transport;
        if (t == null || !t.isOpen()) {
            finishLocal(tx, 503, "No flow");
            return;
        }
        try {
            t.send(req);
        } catch (IOException e) {
            log.w("send failed: " + req.brief(), e);
            finishLocal(tx, 503, "Transport error");
            return;
        }
        armTimer(tx);
    }

    private void armTimer(ClientTx tx) {
        if (tx.timer != null) tx.timer.cancel(false);
        tx.timer = exec.schedule(() -> {
            if (!tx.done) { log.w("timeout: " + tx.request.brief()); finishLocal(tx, 408, "Request Timeout"); }
        }, tx.timeoutMs, TimeUnit.MILLISECONDS);
    }

    private void finishLocal(ClientTx tx, int code, String reason) {
        if (tx.done) return;
        tx.done = true;
        if (tx.timer != null) tx.timer.cancel(false);
        clientTxs.remove(tx.request.txKey());
        SipMessage r = new SipMessage();
        r.isRequest = false; r.status = code; r.reason = reason; r.local = true;
        r.add("Call-ID", tx.request.callId()).add("CSeq", tx.request.header("CSeq"));
        deliver(tx, r);
    }

    private void deliver(ClientTx tx, SipMessage r) {
        try { if (tx.cb != null) tx.cb.onResponse(r, tx.request); }
        catch (Throwable t) { log.e("response callback failed", t); }
    }

    private void prepare(SipMessage req) {
        SipTransport t = transport;
        String host = t != null ? t.localHost() : "127.0.0.1";
        int port = t != null ? t.localPort() : 0;
        boolean tls = t != null && t.tls;
        req.remove("Via");
        if (!req.method.equals("ACK") || req.branchOverride == null) {
            req.addFirst("Via", "SIP/2.0/" + (tls ? "TLS" : "TCP") + " " + host + ":" + port + ";branch="
                    + (req.branchOverride != null ? req.branchOverride : newBranch()) + ";rport");
        } else {
            req.addFirst("Via", "SIP/2.0/" + (tls ? "TLS" : "TCP") + " " + host + ":" + port + ";branch=" + req.branchOverride + ";rport");
        }
        if (req.header("Max-Forwards") == null) req.add("Max-Forwards", "70");
        if (req.header("User-Agent") == null) req.add("User-Agent", userAgent);
    }

    public static String newBranch() { return "z9hG4bK" + U.randHex(10); }

    private void onResponse(SipMessage r) {
        ClientTx tx = clientTxs.get(r.txKey());
        if (tx == null || tx.done) {
            // stray 2xx to INVITE retransmitted: ACK is the dialog owner's job; just log
            log.d("no transaction for response " + r.brief());
            if (tx == null && r.status >= 200 && r.status < 300 && "INVITE".equals(r.cseqMethod())) strayInvite2xx(r);
            return;
        }
        if (r.status < 200) {
            tx.gotProvisional = true;
            deliver(tx, r);
            return;
        }
        // auth challenge
        if ((r.status == 401 || r.status == 407) && tx.authAttempts < 2 && authUser != null) {
            String chHeader = r.header(r.status == 401 ? "WWW-Authenticate" : "Proxy-Authenticate");
            Digest d = Digest.parse(chHeader);
            if (d != null && (tx.authAttempts == 0 || d.stale())) {
                if (tx.request.method.equals("INVITE")) ackNon2xx(tx.request, r);
                tx.done = true;
                if (tx.timer != null) tx.timer.cancel(false);
                clientTxs.remove(tx.request.txKey());
                challenges.put(U.nz(d.realm()), d);
                SipMessage again = copyForRetry(tx.request);
                String auth = authorize(d, again.method, again.uri);
                if (auth == null) { deliverFinal(tx, r); return; }
                again.remove("Authorization").remove("Proxy-Authorization");
                again.add(r.status == 401 ? "Authorization" : "Proxy-Authorization", auth);
                ClientTx t2 = new ClientTx(again, tx.cb, tx.timeoutMs);
                t2.authAttempts = tx.authAttempts + 1;
                log.d("auth retry " + again.method + " (" + r.status + ")");
                start(t2);
                return;
            }
        }
        if (tx.request.method.equals("INVITE") && r.status >= 300) ackNon2xx(tx.request, r);
        deliverFinal(tx, r);
    }

    private void deliverFinal(ClientTx tx, SipMessage r) {
        tx.done = true;
        if (tx.timer != null) tx.timer.cancel(false);
        clientTxs.remove(tx.request.txKey());
        deliver(tx, r);
    }

    private void strayInvite2xx(SipMessage r) {
        // We no longer want this dialog: ACK + BYE to avoid a hanging session on the far side.
        try {
            SipMessage fakeReq = new SipMessage();
            fakeReq.isRequest = true; fakeReq.method = "INVITE";
            fakeReq.headers.addAll(r.headers);
            Dialog d = Dialog.fromUac(fakeReq, r);
            d.remoteTarget = d.remoteTarget == null ? NameAddr.parse(r.header("To")).uri : d.remoteTarget;
            sendAck(d.ack(r.cseq()));
            send(d.newRequest("BYE"), null);
        } catch (Throwable t) { log.w("stray 2xx handling failed", t); }
    }

    /** Computes an Authorization value from a challenge; null if credentials are missing/AKA failed. */
    public String authorize(Digest d, String method, String uri) {
        if (d.isAka()) {
            byte[][] ra = d.akaRandAutn();
            byte[] res = (ra != null && aka != null) ? aka.res(ra[0], ra[1]) : null;
            if (res == null) { log.w("AKA challenge but no AKA support"); return null; }
            return d.authorization(method, uri, authUser, new String(res, java.nio.charset.StandardCharsets.ISO_8859_1), true);
        }
        if (authPassword == null) return null;
        return d.authorization(method, uri, authUser, authPassword, false);
    }

    /** Authorization for a request using a cached challenge (e.g. re-REGISTER), or null. */
    public String cachedAuthorization(String realm, String method, String uri) {
        Digest d = challenges.get(U.nz(realm));
        if (d == null && challenges.size() == 1) d = challenges.values().iterator().next();
        if (d == null || d.isAka()) return null;
        return authorize(d, method, uri);
    }

    public void clearChallenges() { challenges.clear(); }

    private SipMessage copyForRetry(SipMessage r) {
        SipMessage m = SipMessage.request(r.method, r.uri);
        for (String[] h : r.headers) {
            if (h[0].equals("Via")) continue;
            if (h[0].equals("CSeq")) { m.add("CSeq", (r.cseq() + 1) + " " + r.method); continue; }
            m.headers.add(new String[]{h[0], h[1]});
        }
        m.body = r.body;
        m.onCseqChanged = r.onCseqChanged;
        if (m.onCseqChanged != null) m.onCseqChanged.accept(m);
        return m;
    }

    /** Sends CANCEL for a pending INVITE client transaction (best effort). */
    public void cancel(SipMessage invite) {
        SipMessage c = SipMessage.request("CANCEL", invite.uri);
        for (String r : invite.headerValues("Route")) c.add("Route", r);
        c.add("From", invite.header("From"));
        c.add("To", invite.header("To"));
        c.add("Call-ID", invite.callId());
        c.add("CSeq", invite.cseq() + " CANCEL");
        c.branchOverride = invite.branch();
        send(c, null);
    }

    private void ackNon2xx(SipMessage inv, SipMessage resp) {
        SipMessage ack = SipMessage.request("ACK", inv.uri);
        for (String r : inv.headerValues("Route")) ack.add("Route", r);
        ack.add("From", inv.header("From"));
        ack.add("To", resp.header("To"));
        ack.add("Call-ID", inv.callId());
        ack.add("CSeq", inv.cseq() + " ACK");
        ack.branchOverride = inv.branch();
        sendAck(ack);
    }

    /** Sends an ACK (no transaction). */
    public void sendAck(SipMessage ack) {
        exec.execute(() -> {
            prepare(ack);
            SipTransport t = transport;
            if (t == null) return;
            try { t.send(ack); } catch (IOException e) { log.w("ACK send failed", e); }
        });
    }

    // =============================================================================================
    // Server transactions

    public final class ServerTx {
        public final SipMessage request;
        public final String toTag = U.randHex(6);
        SipMessage lastResponse;
        public boolean cancelled;
        final SipTransport via;
        Runnable onCancel;

        ServerTx(SipMessage r, SipTransport via) { this.request = r; this.via = via; }

        public boolean answered() { return lastResponse != null && lastResponse.status >= 200; }

        public SipMessage response(int code, String reason) { return createResponse(request, code, reason, toTag); }

        public void respond(int code) { respond(response(code, SipMessage.reasonPhrase(code))); }

        public void respond(SipMessage resp) {
            exec.execute(() -> {
                if (answered()) { log.d("already answered " + request.brief()); return; }
                lastResponse = resp;
                SipTransport t = transport != null && transport.isOpen() ? transport : via;
                try { if (t != null) t.send(resp); } catch (IOException e) { log.w("response send failed", e); }
                if (resp.status >= 200) {
                    // keep for a while to absorb retransmissions, then forget
                    exec.schedule(() -> serverTxs.remove(request.txKey()), 32, TimeUnit.SECONDS);
                }
            });
        }

        public void setOnCancel(Runnable r) { onCancel = r; }
    }

    /** Builds a response to req (Via, From, To(+tag), Call-ID, CSeq copied). */
    public SipMessage createResponse(SipMessage req, int code, String reason, String toTag) {
        SipMessage r = new SipMessage();
        r.isRequest = false; r.status = code; r.reason = reason == null ? SipMessage.reasonPhrase(code) : reason;
        for (String v : req.headerValues("Via")) r.add("Via", v);
        r.add("From", req.header("From"));
        String to = req.header("To");
        if (to != null && code > 100 && NameAddr.parse(to).param("tag") == null && toTag != null) to = to + ";tag=" + toTag;
        r.add("To", to);
        r.add("Call-ID", req.callId());
        r.add("CSeq", req.header("CSeq"));
        if (code >= 200 && code < 300) for (String rr : req.headerValues("Record-Route")) r.add("Record-Route", rr);
        r.add("User-Agent", userAgent);
        return r;
    }

    private void onRequest(SipMessage req, SipTransport via) {
        String key = req.txKey();
        if (req.method.equals("ACK")) { dispatch(new ServerTx(req, via)); return; }
        if (req.method.equals("CANCEL")) {
            ServerTx inv = serverTxs.get(req.branch() + "|INVITE");
            SipMessage ok = createResponse(req, inv != null ? 200 : 481, null, inv != null ? inv.toTag : U.randHex(6));
            try { via.send(ok); } catch (IOException ignored) {}
            if (inv != null && !inv.answered()) {
                inv.cancelled = true;
                inv.respond(inv.response(487, "Request Terminated"));
                if (inv.onCancel != null) try { inv.onCancel.run(); } catch (Throwable t) { log.e("cancel handler", t); }
            }
            return;
        }
        ServerTx existing = serverTxs.get(key);
        if (existing != null) {
            log.d("retransmission " + req.brief());
            if (existing.lastResponse != null) try { via.send(existing.lastResponse); } catch (IOException ignored) {}
            return;
        }
        ServerTx tx = new ServerTx(req, via);
        serverTxs.put(key, tx);
        trimServerTxs();
        dispatch(tx);
    }

    private void trimServerTxs() {
        if (serverTxs.size() < 500) return;
        Iterator<Map.Entry<String, ServerTx>> it = serverTxs.entrySet().iterator();
        while (serverTxs.size() > 400 && it.hasNext()) { it.next(); it.remove(); }
    }

    private void dispatch(ServerTx tx) {
        try {
            if (handler != null) handler.onRequest(tx);
            else tx.respond(503);
        } catch (Throwable t) {
            log.e("request handler failed for " + tx.request.brief(), t);
            if (!tx.request.method.equals("ACK") && !tx.answered()) tx.respond(500);
        }
    }

    // =============================================================================================
    // Transport listener (reader thread -> exec)

    @Override public void onSipMessage(SipTransport t, SipMessage m) {
        exec.execute(() -> {
            if (m.isRequest) onRequest(m, t);
            else onResponse(m);
        });
    }

    @Override public void onPong(SipTransport t) {
        exec.execute(() -> { if (handler != null && t == transport) handler.onPong(); });
    }

    @Override public void onClosed(SipTransport t, Throwable cause) {
        exec.execute(() -> {
            if (t != transport) return;
            // fail pending client transactions on that flow
            for (ClientTx tx : new java.util.ArrayList<>(clientTxs.values())) finishLocal(tx, 503, "Flow closed");
            if (handler != null) handler.onFlowClosed(t, cause);
        });
    }

    /** Fails all pending transactions (used on shutdown). */
    public void failAll() {
        exec.execute(() -> { for (ClientTx tx : new java.util.ArrayList<>(clientTxs.values())) finishLocal(tx, 503, "Stopped"); });
    }

    // =============================================================================================
    // Request factory

    /** Our Contact header value (with feature tags; registration adds reg-id). */
    public String contact(boolean forRegister) {
        SipTransport t = transport;
        String host = t != null ? t.localHost() : "127.0.0.1";
        int port = t != null ? t.localPort() : 0;
        String user = displayNumber != null ? displayNumber : "rcs";
        StringBuilder b = new StringBuilder();
        b.append("<sip:").append(user).append('@').append(host).append(':').append(port)
                .append(";transport=").append(t != null && t.tls ? "tls" : "tcp").append(";ob>");
        if (instanceId != null) b.append(";+sip.instance=\"").append(instanceId).append('"');
        if (forRegister) b.append(";reg-id=1");
        if (!featureTags.isEmpty()) b.append(';').append(featureTags);
        return b.toString();
    }

    /** Out-of-dialog request (Route = Service-Route). */
    public SipMessage newRequest(String method, String requestUri, String toValue) {
        SipMessage m = SipMessage.request(method, requestUri);
        if (!method.equals("REGISTER")) for (String r : serviceRoute) m.add("Route", r);
        m.add("From", "<" + impu + ">;tag=" + U.randHex(6));
        m.add("To", toValue.startsWith("<") ? toValue : "<" + toValue + ">");
        m.add("Call-ID", U.randHex(16) + "@argon");
        m.add("CSeq", "1 " + method);
        m.add("Max-Forwards", "70");
        if (!method.equals("REGISTER")) m.add("P-Preferred-Identity", "<" + impu + ">");
        return m;
    }
}
