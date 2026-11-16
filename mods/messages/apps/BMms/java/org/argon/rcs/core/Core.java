package org.argon.rcs.core;

import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

import org.argon.rcs.RcsCapabilities;
import org.argon.rcs.RcsConfig;
import org.argon.rcs.RcsEngine;
import org.argon.rcs.RcsGroup;
import org.argon.rcs.RcsListener;
import org.argon.rcs.RcsMessage;
import org.argon.rcs.RcsPlatform;
import org.argon.rcs.prov.AcsProvisioner;
import org.argon.rcs.prov.Provisioner;
import org.argon.rcs.sip.NameAddr;
import org.argon.rcs.sip.Registration;
import org.argon.rcs.sip.SipMessage;
import org.argon.rcs.sip.SipStack;
import org.argon.rcs.sip.SipTransport;
import org.argon.rcs.util.Log;
import org.argon.rcs.util.U;

/**
 * Engine core: lifecycle, provisioning, SIP flow + registration + keep-alive + reconnect,
 * dispatch of incoming requests. All mutable state is confined to the single-threaded {@link #exec}.
 */
public final class Core implements SipStack.RequestHandler, Registration.Listener {
    public static final String ICSI_SESSION = "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session";
    public static final String ICSI_MSG = "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.msg";
    public static final String IARI_FTHTTP = "urn:urn-7:3gpp-application.ims.iari.rcs.fthttp";
    public static final String FEATURE_TAGS = "+g.3gpp.icsi-ref=\"" + enc(ICSI_MSG) + "," + enc(ICSI_SESSION) + "\""
            + ";+g.3gpp.iari-ref=\"" + enc(IARI_FTHTTP) + "\"";
    public static final String DEFAULT_UA = "IM-client/OMA1.0 Argon/1.0";

    static String enc(String urn) { return urn.replace(":", "%3A"); }

    public final RcsPlatform p;
    private final RcsListener listener;
    public final RcsConfig.Policy policy;
    public final Log log;
    public final ScheduledThreadPoolExecutor exec;
    public final ExecutorService io;
    private final ExecutorService cb;

    public RcsConfig config;
    public boolean manualConfig;
    public Provisioner provisioner = new AcsProvisioner();

    public final SipStack stack;
    public final Chat chat;
    public final Caps caps;

    private volatile RcsEngine.State state = RcsEngine.State.OFFLINE;
    private String stateDetail = "";
    private boolean started;
    private int epoch;
    private SipTransport transport;
    private Registration registration;
    private boolean registered;
    private boolean everRegisteredOnFlow;
    private int failures;
    private ScheduledFuture<?> reconnectTask, keepAliveTask, pongDeadline, validityTask, provRetryTask;
    private Provisioner.Request provRequest;
    private boolean provisioning;
    private boolean connecting;
    private boolean reprovisionedAfter403;
    private boolean manualExpiryReported;
    private final Random rnd = new Random();
    private final AtomicInteger wakeCount = new AtomicInteger();

    public Core(RcsPlatform p, RcsListener l, RcsConfig.Policy policy) {
        this.p = p;
        this.listener = l;
        this.policy = policy != null ? policy : new RcsConfig.Policy();
        this.log = new Log(p, "rcs ");
        this.exec = new ScheduledThreadPoolExecutor(1, named("rcs-engine"));
        this.exec.setRemoveOnCancelPolicy(true);
        this.io = Executors.newCachedThreadPool(named("rcs-io"));
        this.cb = Executors.newSingleThreadExecutor(named("rcs-callback"));
        this.stack = new SipStack(exec, log.sub("sip"));
        this.stack.setHandler(this);
        this.stack.aka = (rand, autn) -> { try { return p.simAkaChallenge(rand, autn); } catch (Throwable t) { return null; } };
        this.chat = new Chat(this);
        this.caps = new Caps(this);
        exec.execute(this::loadPersisted);
    }

    private static ThreadFactory named(String name) {
        AtomicInteger n = new AtomicInteger();
        return r -> {
            Thread t = new Thread(() -> {
                try { r.run(); } catch (Throwable ignored) {}
            }, name + "-" + n.incrementAndGet());
            t.setDaemon(true);
            return t;
        };
    }

    // =============================================================================================
    // small helpers

    /** Runs on the engine thread, swallowing exceptions. */
    public void post(Runnable r) {
        exec.execute(() -> { try { r.run(); } catch (Throwable t) { log.e("engine task failed", t); } });
    }

    public ScheduledFuture<?> schedule(Runnable r, long ms) {
        return exec.schedule(() -> { try { r.run(); } catch (Throwable t) { log.e("engine timer failed", t); } }, Math.max(0, ms), TimeUnit.MILLISECONDS);
    }

    /** Runs blocking work on the I/O pool. */
    public void background(Runnable r) {
        io.execute(() -> { try { r.run(); } catch (Throwable t) { log.e("background task failed", t); } });
    }

    public String st(String key) { try { return p.loadState(key); } catch (Throwable t) { return null; } }
    public void save(String key, String value) { try { p.saveState(key, value); } catch (Throwable t) { log.w("saveState failed", t); } }

    public void hold(long ms) {
        if (wakeCount.getAndIncrement() == 0) try { p.acquireWakeLock(ms); } catch (Throwable ignored) {}
    }

    private boolean connectHold;
    /** One wake-lock reference from connect() until registered/failed/torn down. */
    private void holdConnect() { if (!connectHold) { connectHold = true; hold(30000); } }
    private void releaseConnect() { if (connectHold) { connectHold = false; release(); } }

    public void release() {
        int n = wakeCount.decrementAndGet();
        if (n == 0) try { p.releaseWakeLock(); } catch (Throwable ignored) {}
        if (n < 0) wakeCount.set(0);
    }

    // ---- listener dispatch (separate thread so the glue can't stall the engine) ----

    void emitState(RcsEngine.State s, String detail) {
        cb.execute(() -> { try { listener.onRegistrationState(s, detail); } catch (Throwable t) { log.e("listener.onRegistrationState", t); } });
    }

    void emitMessage(RcsMessage m) {
        cb.execute(() -> { try { listener.onMessage(m); } catch (Throwable t) { log.e("listener.onMessage", t); } });
    }

    void emitSendResult(String id, boolean ok, int code, String reason) {
        log.i("send result " + id + " ok=" + ok + " code=" + code + " " + reason);
        cb.execute(() -> { try { listener.onSendResult(id, ok, code, reason); } catch (Throwable t) { log.e("listener.onSendResult", t); } });
    }

    void emitCapabilities(String number, RcsCapabilities c) {
        cb.execute(() -> { try { listener.onCapabilities(number, c); } catch (Throwable t) { log.e("listener.onCapabilities", t); } });
    }

    void emitGroup(RcsGroup g) {
        cb.execute(() -> { try { listener.onGroupUpdate(g); } catch (Throwable t) { log.e("listener.onGroupUpdate", t); } });
    }

    private void setState(RcsEngine.State s, String detail) {
        if (s == state && U.nz(detail).equals(stateDetail)) return;
        state = s;
        stateDetail = U.nz(detail);
        log.i("state " + s + (detail != null ? " (" + detail + ")" : ""));
        emitState(s, detail);
    }

    public RcsEngine.State state() { return state; }
    public String stateDetail() { return stateDetail; }
    public boolean isRegistered() { return registered; }
    public boolean isStarted() { return started; }

    // =============================================================================================
    // identity

    public String msisdn() {
        String o = st("msisdn");
        if (!U.empty(o)) return U.normNumber(o);
        String m = null;
        try { m = p.msisdn(); } catch (Throwable ignored) {}
        if (!U.empty(m)) return U.normNumber(m);
        if (config != null) {
            String tel = config.telImpu();
            if (tel != null) return U.numberFromUri(tel);
            String sip = config.preferredImpu();
            if (sip != null) return U.numberFromUri(sip);
        }
        return null;
    }

    public String domain() { return config == null ? null : config.domain(); }

    public String impu() {
        if (config == null) return null;
        String sip = config.preferredImpu();
        if (sip != null && sip.startsWith("sip")) return sip;
        String n = msisdn();
        return "sip:" + n + "@" + domain();
    }

    public boolean isSelf(String number) { return number != null && U.sameNumber(number, msisdn()); }

    /** URI for a phone number (tel: by default, sip:+n@domain;user=phone if state uri_scheme=sip). */
    public String uriFor(String number) {
        String n = U.normNumber(number);
        if ("sip".equalsIgnoreCase(st("uri_scheme"))) return "sip:" + n + "@" + domain() + ";user=phone";
        return "tel:" + n;
    }

    public String userAgent() { String ua = st("user_agent"); return U.empty(ua) ? DEFAULT_UA : ua; }

    public String instanceId() {
        String id = st("instance_id");
        if (!U.empty(id)) return id.startsWith("<") ? id : "<" + id + ">";
        String imei = null;
        try { imei = p.imei(); } catch (Throwable ignored) {}
        String urn;
        if (imei != null && imei.replaceAll("\\D", "").length() >= 14 && !U.parseBool(st("instance_use_uuid"), false)) {
            urn = imeiUrn(imei);
        } else {
            urn = "urn:uuid:" + U.uuid();
        }
        save("instance_id", urn);
        return "<" + urn + ">";
    }

    /** RFC 7254 / RCC.07: urn:gsma:imei:TTTTTTTT-SSSSSS-0. */
    public static String imeiUrn(String imei) {
        String d = imei.replaceAll("\\D", "");
        return "urn:gsma:imei:" + d.substring(0, 8) + "-" + d.substring(8, 14) + "-0";
    }

    // =============================================================================================
    // persistence

    private void loadPersisted() {
        String xml = st("config_xml");
        if (!U.empty(xml)) {
            try {
                config = RcsConfig.parse(xml);
                String tok = st("prov_token");
                if (!U.empty(tok)) config.token = tok;
                manualConfig = "manual".equals(st("config_source"));
                log.i("loaded stored config (" + (manualConfig ? "manual" : "acs") + "): " + config.summary());
            } catch (Exception e) {
                log.w("stored config unparseable, dropping", e);
                config = null;
            }
        }
        chat.loadGroups();
        caps.load();
    }

    private long configExpiresAt() {
        if (config == null) return 0;
        long at = U.parseLong(st("config_fetched_at"), 0);
        long validity = U.parseLong(st("config_validity"), config.validity);
        if (validity <= 0) return Long.MAX_VALUE;
        return at + validity * 1000L;
    }

    private void storeConfig(RcsConfig c, String source) {
        save("config_xml", c.xml);
        save("config_source", source);
        save("config_fetched_at", String.valueOf(System.currentTimeMillis()));
        save("config_validity", String.valueOf(c.validity));
        save("config_version", String.valueOf(c.version));
        if (c.token != null) save("prov_token", c.token);
    }

    // =============================================================================================
    // lifecycle (engine thread)

    public void start() {
        post(() -> {
            if (started) { log.d("start: already started"); return; }
            started = true;
            epoch++;
            failures = 0;
            log.i("start (policy " + policy + ")");
            proceed();
        });
    }

    public void stop(Runnable done) {
        post(() -> {
            if (!started) { setState(RcsEngine.State.DISABLED, "stopped"); if (done != null) done.run(); return; }
            started = false;
            epoch++;
            log.i("stop");
            cancelTimers();
            if (provRequest != null) provRequest.cancelled = true;
            chat.shutdown();
            Registration r = registration;
            registration = null;
            final boolean[] finished = {false};
            Runnable finish = () -> {
                if (finished[0]) return;
                finished[0] = true;
                teardownFlow();
                setState(RcsEngine.State.DISABLED, "stopped");
                if (done != null) done.run();
            };
            if (r != null && registered && stack.connected()) {
                r.unregister(() -> post(finish));
                schedule(finish, 3000);
            } else {
                if (r != null) r.cancel();
                finish.run();
            }
        });
    }

    private void cancelTimers() {
        for (ScheduledFuture<?> f : new ScheduledFuture<?>[]{reconnectTask, keepAliveTask, pongDeadline, validityTask, provRetryTask})
            if (f != null) f.cancel(false);
        reconnectTask = keepAliveTask = pongDeadline = validityTask = provRetryTask = null;
    }

    /** Next step: provision if needed, else connect. */
    private void proceed() {
        if (!started) return;
        if (config == null || !config.usable()) {
            if (config != null && !config.usable()) log.w("stored config not usable (no P-CSCF/identity): " + config.summary());
            provision(false);
            return;
        }
        long exp = configExpiresAt();
        if (System.currentTimeMillis() >= exp) {
            if (manualConfig) {
                reportManualExpiry();
            } else {
                log.i("config validity expired, re-provisioning (using old config meanwhile)");
                provision(true);
            }
        } else scheduleValidity(exp);
        connect();
    }

    private void reportManualExpiry() {
        if (manualExpiryReported) return;
        manualExpiryReported = true;
        log.w("manual config validity expired; still using it (re-provisioning a manual config is not possible)");
        emitState(state, "manual config validity expired (still in use)");
    }

    private void scheduleValidity(long expAt) {
        if (validityTask != null) validityTask.cancel(false);
        if (expAt == Long.MAX_VALUE) return;
        long ms = expAt - System.currentTimeMillis();
        if (ms > 30L * 24 * 3600 * 1000) ms = 30L * 24 * 3600 * 1000; // re-check monthly at most
        validityTask = schedule(() -> {
            if (!started) return;
            if (System.currentTimeMillis() < configExpiresAt()) { scheduleValidity(configExpiresAt()); return; }
            if (manualConfig) reportManualExpiry();
            else { log.i("config validity expired"); provision(true); }
        }, ms);
    }

    // =============================================================================================
    // provisioning

    public void setManualConfig(String xml) {
        post(() -> {
            RcsConfig c;
            try {
                c = RcsConfig.parse(xml);
            } catch (Exception e) {
                log.e("manual config: not a valid provisioning document", e);
                setState(RcsEngine.State.ERROR, "manual config invalid: " + Log.describe(e));
                return;
            }
            if (!c.usable()) log.w("manual config lacks P-CSCF or public identity: " + c.summary());
            config = c;
            manualConfig = true;
            manualExpiryReported = false;
            storeConfig(c, "manual");
            log.i("manual config set: " + c.summary());
            restartFlow("config changed");
        });
    }

    public void reprovision() {
        post(() -> {
            log.i("reprovision requested");
            manualConfig = false;
            save("config_source", "acs");
            save("config_fetched_at", "0");
            if (started) provision(config != null && config.usable());
        });
    }

    /** @param background keep the current flow while provisioning. */
    private void provision(boolean background) {
        if (provisioning) return;
        if (manualConfig && config != null) { connect(); return; }
        provisioning = true;
        if (!background || !registered) setState(RcsEngine.State.PROVISIONING, provisioner.name());
        Provisioner.Request rq = new Provisioner.Request();
        rq.platform = p;
        rq.log = log.sub("prov");
        rq.currentVersion = config != null ? Math.max(0, config.version) : U.parseInt(st("config_version"), 0);
        rq.token = st("prov_token");
        if (config == null) rq.currentVersion = 0;
        provRequest = rq;
        final int ep = epoch;
        hold(180000);
        background(() -> {
            Provisioner.Result r;
            try { r = provisioner.provision(rq); }
            catch (Throwable t) { r = Provisioner.Result.error(0, Log.describe(t)); }
            final Provisioner.Result res = r;
            post(() -> { release(); provisioning = false; if (ep == epoch) onProvisioned(res, background); });
        });
    }

    private void onProvisioned(Provisioner.Result r, boolean background) {
        log.i("provisioning result: " + r);
        switch (r.kind) {
            case CONFIG: {
                RcsConfig c;
                try { c = RcsConfig.parse(r.xml); }
                catch (Exception e) { onProvFailure("bad config XML: " + Log.describe(e), -1); return; }
                boolean changed = true;
                if (!c.usable() && config != null && config.xml != null) {
                    // short VERS/TOKEN-only doc: configuration unchanged, refresh validity/token
                    try {
                        RcsConfig merged = RcsConfig.parse(config.xml);
                        merged.validity = c.validity > 0 ? c.validity : merged.validity;
                        if (c.version != 0) merged.version = c.version;
                        if (c.token != null) merged.token = c.token;
                        c = merged;
                        changed = false;
                        log.i("config unchanged (short document), validity " + c.validity + "s");
                    } catch (Exception e) { log.w("merge failed", e); }
                } else if (config != null && config.xml != null && config.xml.equals(c.xml)) changed = false;
                if (!c.usable()) { onProvFailure("config lacks P-CSCF/identity", -1); return; }
                config = c;
                manualConfig = false;
                storeConfig(c, "acs");
                if (c.xml != null && !changed) save("config_xml", c.xml);
                failures = 0;
                scheduleValidity(configExpiresAt());
                if (changed) restartFlow("provisioned");
                else if (!registered && !connecting && registration == null) connect();
                return;
            }
            case DISABLED:
                if (r.resetConfig) {
                    config = null;
                    save("config_xml", "");
                    save("prov_token", "");
                }
                teardownAll();
                setState(RcsEngine.State.DISABLED, r.detail);
                if (!r.permanent && r.retryAfterMs > 0) provRetryTask = schedule(() -> proceed(), r.retryAfterMs);
                return;
            case RETRY:
            case ERROR:
            default:
                onProvFailure(r.detail, r.retryAfterMs);
        }
    }

    private void onProvFailure(String detail, long retryAfterMs) {
        failures++;
        long wait = retryAfterMs > 0 ? retryAfterMs : backoffMs();
        if (config != null && config.usable()) {
            log.w("provisioning failed (" + detail + "), keeping old config; retry in " + wait / 1000 + "s");
            if (!registered && !connecting) connect();
        } else {
            setState(p.networkAvailable() ? RcsEngine.State.ERROR : RcsEngine.State.OFFLINE, "provisioning: " + detail);
        }
        if (provRetryTask != null) provRetryTask.cancel(false);
        provRetryTask = schedule(() -> { if (started) provision(config != null && config.usable()); }, wait);
    }

    // =============================================================================================
    // connection / registration

    private int retryBase() { return U.parseInt(st("reg_retry_base_s"), config != null ? config.regRetryBaseTime : 30); }
    private int retryMax() { return U.parseInt(st("reg_retry_max_s"), config != null ? config.regRetryMaxTime : 1800); }

    /** RFC 5626 section 4.5 backoff: min(max, base * 2^failures), random 50..100%. */
    long backoffMs() {
        double w = Math.min(retryMax(), retryBase() * Math.pow(2, Math.max(0, failures - 1)));
        return (long) (1000 * w * (0.5 + 0.5 * rnd.nextDouble()));
    }

    private void restartFlow(String why) {
        if (!started) return;
        log.i("restarting flow: " + why);
        teardownAll();
        failures = 0;
        connect();
    }

    private void teardownAll() {
        chat.onFlowLost();
        Registration r = registration;
        registration = null;
        if (r != null) r.cancel();
        teardownFlow();
    }

    private void teardownFlow() {
        releaseConnect();
        registered = false;
        if (keepAliveTask != null) keepAliveTask.cancel(false);
        if (pongDeadline != null) pongDeadline.cancel(false);
        keepAliveTask = pongDeadline = null;
        SipTransport t = transport;
        transport = null;
        stack.setTransport(null);
        if (t != null) t.close();
        stack.failAll();
    }

    private void connect() {
        if (!started || config == null || connecting) return;
        if (reconnectTask != null) { reconnectTask.cancel(false); reconnectTask = null; }
        boolean net;
        try { net = p.networkAvailable(); } catch (Throwable t) { net = true; }
        if (!net) { setState(RcsEngine.State.OFFLINE, "no network"); return; }
        if (!registered) setState(RcsEngine.State.REGISTERING, null);
        String host = config.pcscfAddress;
        int port = config.pcscfPortOrDefault();
        boolean tls = config.tls();
        String ov = st("pcscf");
        if (!U.empty(ov)) {
            String[] hp = NameAddr.hostPort("sip:" + ov.trim());
            host = hp[0];
            if (hp[1] != null) port = U.parseInt(hp[1], port);
        }
        String trOv = st("sip_transport");
        if (!U.empty(trOv)) tls = trOv.toUpperCase(java.util.Locale.ROOT).contains("TLS");
        connecting = true;
        final int ep = epoch;
        final String h = host; final int pt = port; final boolean tl = tls;
        SipTransport t = new SipTransport(log.sub("sip"), stack, tls);
        holdConnect();
        log.i("connecting to P-CSCF " + host + ":" + port + (tls ? " (TLS)" : " (TCP)"));
        background(() -> {
            Exception err = null;
            try { t.connect(h, pt, p.sslSocketFactory(), 15000); } catch (Exception e) { err = e; }
            final Exception fe = err;
            post(() -> {
                connecting = false;
                if (ep != epoch || !started) { t.close(); releaseConnect(); return; }
                if (fe != null) {
                    releaseConnect();
                    log.w("connect to " + h + ":" + pt + " failed", fe);
                    scheduleReconnect("connect failed: " + Log.describe(fe), -1);
                    return;
                }
                onConnected(t);
            });
        });
    }

    private void onConnected(SipTransport t) {
        transport = t;
        everRegisteredOnFlow = false;
        stack.setTransport(t);
        stack.t1 = config.timerT1 > 0 ? config.timerT1 : 500;
        stack.impu = impu();
        stack.displayNumber = msisdn();
        String au = st("auth_user");
        stack.authUser = !U.empty(au) ? au : config.authUser();
        if (stack.authUser == null) stack.authUser = U.numberFromUri(stack.impu);
        stack.authPassword = config.userPwd;
        stack.instanceId = instanceId();
        stack.userAgent = userAgent();
        stack.featureTags = FEATURE_TAGS;
        stack.clearChallenges();
        Registration r = new Registration(stack, log.sub("reg"), this, "sip:" + domain(), config.registrationExpires, config.realm);
        registration = r;
        r.register();
    }

    @Override public void onRegistered(Registration r, int expires) {
        if (r != registration) return;
        boolean first = !registered;
        registered = true;
        everRegisteredOnFlow = true;
        failures = 0;
        reprovisionedAfter403 = false;
        if (first) {
            releaseConnect();
            setState(RcsEngine.State.REGISTERED, r.associatedUris.isEmpty() ? stack.impu : String.join(",", r.associatedUris));
            startKeepAlive(r);
            chat.onRegistered();
        }
    }

    @Override public void onRegistrationFailed(Registration r, int code, String reason, long retryAfterMs) {
        if (r != registration) return;
        boolean wasRegistered = registered;
        registered = false;
        releaseConnect();
        if (code == 403 && !manualConfig && !reprovisionedAfter403) {
            reprovisionedAfter403 = true;
            log.w("REGISTER 403: re-provisioning");
            teardownAll();
            setState(RcsEngine.State.PROVISIONING, "403 on REGISTER");
            save("config_fetched_at", "0");
            provision(false);
            return;
        }
        teardownAll();
        String d = "REGISTER " + code + " " + U.nz(reason);
        if (code == 403 || code == 404) setState(RcsEngine.State.ERROR, d);
        scheduleReconnect(d, retryAfterMs);
    }

    private void scheduleReconnect(String why, long retryAfterMs) {
        if (!started) return;
        teardownFlow();
        failures++;
        long wait = retryAfterMs > 0 ? retryAfterMs : backoffMs();
        if (state != RcsEngine.State.ERROR || retryAfterMs > 0) setState(p.networkAvailable() ? RcsEngine.State.REGISTERING : RcsEngine.State.OFFLINE, why + ", retry in " + wait / 1000 + "s");
        log.w("reconnect in " + wait + "ms (" + why + ", failures=" + failures + ")");
        if (reconnectTask != null) reconnectTask.cancel(false);
        reconnectTask = schedule(this::connect, wait);
    }

    @Override public void onFlowClosed(SipTransport t, Throwable cause) {
        if (t != transport) return;
        boolean was = registered && everRegisteredOnFlow;
        log.w("SIP flow lost" + (cause != null ? ": " + Log.describe(cause) : ""));
        Registration r = registration;
        registration = null;
        if (r != null) r.cancel();
        chat.onFlowLost();
        teardownFlow();
        if (!started) return;
        if (was) {
            // the flow worked before: try again right away (RFC 5626 allows an immediate first retry)
            failures = 0;
            setState(RcsEngine.State.REGISTERING, "flow lost, reconnecting");
            if (reconnectTask != null) reconnectTask.cancel(false);
            reconnectTask = schedule(this::connect, 500 + rnd.nextInt(1000));
        } else scheduleReconnect("flow lost", -1);
    }

    public void onNetworkChanged() {
        post(() -> {
            if (!started) return;
            boolean net = p.networkAvailable();
            log.i("network changed, available=" + net);
            if (!net) {
                teardownAll();
                if (reconnectTask != null) reconnectTask.cancel(false);
                setState(RcsEngine.State.OFFLINE, "no network");
                return;
            }
            failures = 0;
            if (config == null || !config.usable()) { proceed(); return; }
            restartFlow("network changed");
        });
    }

    // ---- keep-alive (RFC 5626 CRLF) ----

    private int keepAliveSeconds(Registration r) {
        int o = U.parseInt(st("keepalive_s"), 0);
        if (o > 0) return o;
        if (r.flowTimer > 0) return Math.max(5, r.flowTimer - 5);
        return config.keepAliveInterval > 0 ? config.keepAliveInterval : 30;
    }

    private void startKeepAlive(Registration r) {
        if (!config.keepAliveEnabled && U.parseInt(st("keepalive_s"), 0) <= 0) return;
        int s = keepAliveSeconds(r);
        if (keepAliveTask != null) keepAliveTask.cancel(false);
        final SipTransport t = transport;
        keepAliveTask = exec.scheduleWithFixedDelay(() -> {
            try { ping(t); } catch (Throwable e) { log.e("keepalive", e); }
        }, s, s, TimeUnit.SECONDS);
        log.i("keep-alive every " + s + "s");
    }

    private void ping(SipTransport t) {
        if (t != transport || t == null) return;
        try {
            t.sendPing();
        } catch (Exception e) {
            log.w("ping failed", e);
            t.close(); // reader thread reports onFlowClosed
            return;
        }
        if (pongDeadline == null) {
            final long sentAt = System.currentTimeMillis();
            pongDeadline = schedule(() -> {
                pongDeadline = null;
                if (t != transport) return;
                if (t.lastRx >= sentAt) return; // any traffic counts
                log.w("no pong within 10s: flow is dead");
                t.close();
            }, 10000);
        }
    }

    @Override public void onPong() {
        if (pongDeadline != null) { pongDeadline.cancel(false); pongDeadline = null; }
    }

    // =============================================================================================
    // incoming requests

    @Override public void onRequest(SipStack.ServerTx tx) {
        SipMessage req = tx.request;
        hold(10000);
        try {
            switch (req.method) {
                case "OPTIONS": onOptions(tx); break;
                case "INVITE": chat.onInvite(tx); break;
                case "ACK": chat.onAck(req); break;
                case "BYE": chat.onBye(tx); break;
                case "MESSAGE": chat.onMessage(tx); break;
                case "NOTIFY": chat.onNotify(tx); break;
                case "UPDATE": chat.onUpdate(tx); break;
                case "CANCEL": break; // handled by the stack
                case "SUBSCRIBE": case "REFER": case "PUBLISH": case "INFO": case "PRACK": case "REGISTER": {
                    SipMessage r = tx.response(405, "Method Not Allowed");
                    r.add("Allow", "INVITE, ACK, CANCEL, BYE, OPTIONS, MESSAGE, NOTIFY, UPDATE");
                    tx.respond(r);
                    break;
                }
                default: tx.respond(501);
            }
        } finally {
            release();
        }
    }

    private void onOptions(SipStack.ServerTx tx) {
        SipMessage r = tx.response(200, "OK");
        r.add("Contact", stack.contact(false));
        r.add("Accept", "application/sdp");
        r.add("Allow", "INVITE, ACK, CANCEL, BYE, OPTIONS, MESSAGE, NOTIFY, UPDATE");
        r.add("Supported", "timer");
        tx.respond(r);
        // their capabilities come for free
        caps.fromIncomingOptions(tx.request);
    }

    // =============================================================================================

    public RcsConfig currentConfig() { return config; }

    public void failSend(String id, String why) { emitSendResult(id, false, 0, why); }
}
