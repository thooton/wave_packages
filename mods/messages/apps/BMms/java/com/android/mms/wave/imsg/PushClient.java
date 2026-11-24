package com.android.mms.wave.imsg;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.SSLSocket;

/**
 * Low-power Push Protocol Spec v1 client for Android 8.1 (API 27) and desktop JVM.
 *
 * Uses WakeupClock (elapsedRealtime + AlarmManager.setExactAndAllowWhileIdle + brief partial
 * WakeLock) so the CPU sleeps completely between dynamic keepalives without 30s polling wakeups.
 */
public final class PushClient {

    public enum Status {
        OFFLINE,
        CONNECTING,
        CONNECTED,
        AUTH_FAILED,
        ERROR
    }

    public static final class Config {
        public String mainHost = "127.0.0.1";
        public int mainPort = 443;
        public String tokenHex;
        public File stateFile;
        public double probeScale = 1.0;
        public boolean autoProbe = true;
        public NetworkInfoProvider networkInfoProvider = new NetworkInfoProvider.StaticProvider("default");
        public WakeupClock wakeupClock = new WakeupClock.DefaultClock();
    }

    public interface Listener {
        void onStatusChanged(Status status, String detail);
        void onConnected(int intervalS, String networkKey);
        void onDisconnected(String reason);
        void onBody(long seq, Body body);
        void onIntervalUpdated(int intervalS, String networkKey);
        void onLog(String message);
    }

    private final Config config;
    private final Listener listener;
    private final ClientState state;
    private final WakeupClock clock;
    private final SecureRandom rng = new SecureRandom();

    private final Object writeLock = new Object();
    private final Object watchdogLock = new Object();
    private final Object reconnectLock = new Object();

    private volatile boolean running = false;
    /**
     * Set when we close the main socket on purpose (network change, Reconnect): the loop then
     * reconnects at once instead of treating it as a failure (backoff, ERROR status, dropping a
     * learned interval and re-probing under the old network's key).
     */
    private volatile boolean deliberateClose = false;
    /** Network the running probe measures (guarded by watchdogLock). */
    private String probeNetKey;
    /**
     * The session ended the way a too-long keepalive does (PONG timeout, a PING that couldn't be
     * written, or the socket dying while a PING was out). Only then is a learned interval
     * suspect; a server restart, BYE or unreachable server says nothing about the NAT.
     */
    private volatile boolean keepaliveFailed;
    /**
     * The server ACKs every MSG at once, so a MSG still unACKed after this means the connection
     * is dead without us knowing (a NAT dropped it silently, or the network went away mid-send):
     * reconnect now, and the WELCOME tells us what the server got, instead of finding out at the
     * next keepalive (up to ~48 min) while the sender's 25 s timeout falls back to SMS.
     */
    private static final long ACK_TIMEOUT_MS = 10_000L;
    /** When the oldest unACKed MSG of this connection times out; 0 if none (watchdogLock). */
    private long ackDeadlineElapsedMs = 0L;
    /** Client message id to its outbox seq, for sends still being tracked (bounded). */
    private final Map<String, Long> msgSeqs = java.util.Collections.synchronizedMap(
            new java.util.LinkedHashMap<String, Long>(32, 0.75f, false) {
                @Override
                protected boolean removeEldestEntry(Map.Entry<String, Long> e) {
                    return size() > 500;
                }
            });
    private volatile Status status = Status.OFFLINE;
    private volatile String statusDetail = "";
    private Thread mainThread;
    private Thread watchdogThread;
    private Thread probeThread;

    // Guarded by watchdogLock (timestamps in WakeupClock.elapsedRealtimeMs())
    private SSLSocket activeSocket;
    private OutputStream activeOut;
    private boolean connected = false;
    private long connectedAtElapsedMs = 0L;
    private long lastTrafficElapsedMs = 0L;
    private boolean pingInFlight = false;
    private int pendingPingNonce = 0;
    private long pingDeadlineElapsedMs = 0L;
    private int currentIntervalS = Frame.FALLBACK_INTERVAL_S;
    private boolean usingLearnedInterval = false;
    private String activeNetworkKey = "";
    private boolean probeRunning = false;
    private long nextProbeRetryElapsedMs = 0L;
    private long lastScheduledAlarmElapsedMs = 0L;

    public PushClient(Config config, Listener listener) throws IOException, GeneralSecurityException {
        if (config.tokenHex == null || config.tokenHex.isEmpty()) {
            throw new IllegalArgumentException("tokenHex is required");
        }
        this.config = config;
        this.listener = listener;
        this.clock = config.wakeupClock != null ? config.wakeupClock : new WakeupClock.DefaultClock();
        this.state = ClientState.loadOrDefault(config.stateFile);
    }

    public synchronized void start() {
        if (running) {
            return;
        }
        running = true;

        String netKey = safeNetworkKey();
        synchronized (watchdogLock) {
            activeNetworkKey = netKey;
            Integer learned = state.getLearnedInterval(netKey);
            if (learned != null && learned > Frame.FALLBACK_INTERVAL_S) {
                currentIntervalS = learned;
                usingLearnedInterval = true;
            } else {
                currentIntervalS = Frame.FALLBACK_INTERVAL_S;
                usingLearnedInterval = false;
            }
            lastScheduledAlarmElapsedMs = 0L;
        }

        setStatus(Status.CONNECTING, "Connecting...");

        mainThread = new Thread(new Runnable() {
            @Override
            public void run() {
                runConnectionLoop();
            }
        }, "imsg-main-reader");
        mainThread.start();

        watchdogThread = new Thread(new Runnable() {
            @Override
            public void run() {
                runWatchdogLoop();
            }
        }, "imsg-watchdog");
        watchdogThread.setDaemon(true);
        watchdogThread.start();
    }

    public synchronized void stop() {
        if (!running) {
            return;
        }
        running = false;
        clock.cancelWakeup();
        sendFrameQuietly(Frame.bye(Frame.BYE_NORMAL));
        closeActiveSocketGracefully();
        synchronized (watchdogLock) {
            watchdogLock.notifyAll();
        }
        synchronized (reconnectLock) {
            reconnectLock.notifyAll();
        }
        if (probeThread != null) {
            probeThread.interrupt();
        }
        if (mainThread != null) {
            mainThread.interrupt();
        }
        if (watchdogThread != null) {
            watchdogThread.interrupt();
        }
        clock.releaseAllWakeLocks();
        setStatus(Status.OFFLINE, "Stopped");
    }

    /** Called by Android's AlarmManager wakeup receiver during Doze/deep sleep. */
    public void onWakeupTick() {
        synchronized (watchdogLock) {
            lastScheduledAlarmElapsedMs = 0L;
            watchdogLock.notifyAll();
        }
        synchronized (reconnectLock) {
            reconnectLock.notifyAll();
        }
    }

    /** Called immediately by ConnectivityManager.NetworkCallback when active network changes. */
    public void notifyNetworkChanged() {
        if (!running) {
            return;
        }
        String newNet = safeNetworkKey();
        boolean wasConnected;
        boolean netChanged;
        synchronized (watchdogLock) {
            wasConnected = connected;
            netChanged = !newNet.equals(activeNetworkKey);
            if (netChanged) {
                activeNetworkKey = newNet;
                Integer learned = state.getLearnedInterval(newNet);
                if (learned != null && learned > Frame.FALLBACK_INTERVAL_S) {
                    currentIntervalS = learned;
                    usingLearnedInterval = true;
                } else {
                    currentIntervalS = Frame.FALLBACK_INTERVAL_S;
                    usingLearnedInterval = false;
                }
            }
            watchdogLock.notifyAll();
        }
        synchronized (reconnectLock) {
            reconnectLock.notifyAll();
        }
        if (netChanged) {
            log("Network changed to " + newNet + " (connected=" + wasConnected + ")");
            if (wasConnected) {
                // Close old socket so we immediately re-bind on the new network interface and re-probe.
                deliberateClose = true;
                closeActiveSocket();
            }
            // A probe of the old network is meaningless now (its sockets die with it). The new one
            // is probed on connect if it's due (maybeScheduleProbe): a network we already have a
            // fresh interval for isn't re-probed on every switch (7 TLS connections, up to an hour).
            Thread stale = null;
            synchronized (watchdogLock) {
                if (probeRunning && !newNet.equals(probeNetKey)) stale = probeThread;
            }
            if (stale != null) {
                log("Stopping the probe of " + probeNetKey + " (network changed)");
                stale.interrupt();
            }
        }
    }

    /** Forces an immediate reconnect (e.g. user pressed Reconnect in settings). */
    public void reconnectNow() {
        if (!running) {
            return;
        }
        synchronized (watchdogLock) {
            deliberateClose = connected;
        }
        closeActiveSocket();
        synchronized (reconnectLock) {
            reconnectLock.notifyAll();
        }
        synchronized (watchdogLock) {
            watchdogLock.notifyAll();
        }
    }

    public boolean isConnected() {
        synchronized (watchdogLock) {
            return connected;
        }
    }

    public Status getStatus() {
        return status;
    }

    public String getStatusDetail() {
        return statusDetail;
    }

    public int getCurrentIntervalSeconds() {
        synchronized (watchdogLock) {
            return currentIntervalS;
        }
    }

    public boolean isProbeRunning() {
        synchronized (watchdogLock) {
            return probeRunning;
        }
    }

    public String getActiveNetworkKey() {
        synchronized (watchdogLock) {
            return activeNetworkKey;
        }
    }

    public int getOutboxSize() {
        return state.outboxSize();
    }

    public String getStateSummary() {
        synchronized (watchdogLock) {
            return state.summary() + ", connected=" + connected + ", intervalS=" + currentIntervalS
                    + ", net=" + activeNetworkKey;
        }
    }

    /** Sends a message to {@code participants} (one for a 1:1 chat) with already-uploaded attachments. */
    public String sendMessage(List<String> participants, String text, String senderGuid,
                              List<Body.OutAttachment> attachments) throws IOException {
        String clientMsgId = "c-" + UUID.randomUUID().toString();
        sendBody(Body.sendMessage(clientMsgId, participants, text, senderGuid, attachments));
        return clientMsgId;
    }

    public String sendReaction(List<String> participants, String senderGuid, String targetId, int reaction,
                               String emoji, boolean enable, String targetText) throws IOException {
        String clientMsgId = "r-" + UUID.randomUUID().toString();
        sendBody(Body.sendReaction(clientMsgId, participants, senderGuid, targetId, reaction, emoji, enable, targetText));
        return clientMsgId;
    }

    /** A client for attachment transfers to the same server with the same credentials. */
    public MediaClient mediaClient() {
        return new MediaClient(config.mainHost, config.mainPort, config.tokenHex);
    }

    public String checkTargets(List<String> targets) throws IOException {
        String reqId = "q-" + UUID.randomUUID().toString();
        Body body = Body.checkTargets(reqId, targets);
        sendBody(body);
        return reqId;
    }

    public long requestHandles() throws IOException {
        return sendBody(Body.getHandles());
    }

    public long requestRegInfo() throws IOException {
        return sendBody(Body.regInfoReq());
    }

    public long sendBody(Body body) throws IOException {
        byte[] encoded = body.encode();
        long seq = state.enqueue(encoded);
        state.save(config.stateFile);
        if (body.clientMsgId != null) msgSeqs.put(body.clientMsgId, seq);
        if (isConnected()) {
            try {
                writeFrame(Frame.msg(seq, encoded));
                expectAck();
            } catch (IOException e) {
                log("Write failed while sending seq " + seq + ": " + e.getMessage());
                closeActiveSocket();
            }
        }
        return seq;
    }

    /** A MSG went out: the server must ACK it within ACK_TIMEOUT_MS (the watchdog checks). */
    private void expectAck() {
        synchronized (watchdogLock) {
            if (ackDeadlineElapsedMs == 0L) {
                ackDeadlineElapsedMs = clock.elapsedRealtimeMs() + ACK_TIMEOUT_MS;
                clock.acquireBriefWakeLock(WakeupClock.HOLD_ACK, ACK_TIMEOUT_MS + 5_000L);
                watchdogLock.notifyAll();
            }
        }
    }

    /**
     * True once the server has the message sent as {@code clientMsgId} (it ACKed it): it will send
     * it and its SEND_RESULT will come, even across reconnects. False while it's only in our outbox.
     */
    public boolean isAccepted(String clientMsgId) {
        Long seq = msgSeqs.get(clientMsgId);
        return seq != null && !state.isPending(seq);
    }

    /**
     * Takes {@code clientMsgId} back if the server hasn't ACKed it yet, so it isn't sent later
     * (on the next connect) after the caller has given up on it and sent it another way. Returns
     * true if it was still ours to take back. (If the server got it but its ACK was lost with the
     * connection, the server still sends it; we can't know that until the next WELCOME.)
     */
    public boolean cancelIfPending(String clientMsgId) {
        Long seq = msgSeqs.remove(clientMsgId);
        if (seq == null || !state.remove(seq)) return false;
        try {
            state.save(config.stateFile);
        } catch (IOException e) {
            log("Failed to save state after cancelling seq " + seq + ": " + e.getMessage());
        }
        log("Took back unACKed seq " + seq + " (" + clientMsgId + ")");
        return true;
    }

    public void triggerProbeNow() {
        String netKey = safeNetworkKey();
        startProbeAsync(netKey, true);
    }

    private void runConnectionLoop() {
        int backoffS = 0;

        while (running) {
            if (!config.networkInfoProvider.isNetworkAvailable()) {
                setStatus(Status.OFFLINE, "No network");
                // No alarm: a network coming up wakes us (notifyNetworkChanged), so the phone can
                // sleep while offline instead of waking every 30 s to look. The timed recheck only
                // covers a missed callback while the CPU is awake anyway.
                clock.releaseWakeLock(WakeupClock.HOLD_ALARM);
                waitReconnect(30_000L, false);
                continue;
            }

            String netKey = safeNetworkKey();
            int connectInterval;
            boolean connectLearned;
            synchronized (watchdogLock) {
                if (!netKey.equals(activeNetworkKey)) {
                    activeNetworkKey = netKey;
                    Integer learned = state.getLearnedInterval(netKey);
                    if (learned != null && learned > Frame.FALLBACK_INTERVAL_S) {
                        currentIntervalS = learned;
                        usingLearnedInterval = true;
                    } else {
                        currentIntervalS = Frame.FALLBACK_INTERVAL_S;
                        usingLearnedInterval = false;
                    }
                }
                connectInterval = currentIntervalS;
                connectLearned = usingLearnedInterval;
            }

            keepaliveFailed = false;
            boolean receivedByeReplaced = false;
            boolean receivedAuthError = false;
            boolean hadConnected = false;
            long sessionStartElapsedMs = 0L;
            String disconnectReason = "connection closed";

            setStatus(Status.CONNECTING, "Connecting...");
            SSLSocket socket = null;
            clock.acquireBriefWakeLock(WakeupClock.HOLD_CONNECT, 20_000L);
            // The attempt now keeps the CPU up itself; the alarm that woke the backoff is handled.
            clock.releaseWakeLock(WakeupClock.HOLD_ALARM);
            try {
                log("Connecting main to " + config.mainHost + ":" + config.mainPort
                        + " (interval=" + connectInterval + "s, net=" + netKey + ")");
                socket = TlsHelper.connect(config.mainHost, config.mainPort, 10_000, 10_000);
                InputStream in = socket.getInputStream();
                OutputStream out = socket.getOutputStream();

                socket.setSoTimeout(15_000);
                Frame hello = Frame.hello(Frame.ROLE_MAIN, config.tokenHex, state.getLastRxSeq(), connectInterval);
                synchronized (writeLock) {
                    hello.writeTo(out);
                }
                Frame first = Frame.readFrom(in);
                if (first == null) {
                    throw new IOException("EOF waiting for WELCOME");
                }
                if (first.type == Frame.TYPE_BYE) {
                    disconnectReason = "server BYE(" + Frame.byeReasonName(first.reason) + ")";
                    if (first.reason == Frame.BYE_AUTH_FAILED || first.reason == Frame.BYE_BAD_VERSION) {
                        receivedAuthError = true;
                    } else if (first.reason == Frame.BYE_REPLACED) {
                        receivedByeReplaced = true;
                    }
                    throw new IOException(disconnectReason);
                }
                if (first.type != Frame.TYPE_WELCOME) {
                    throw new IOException("Expected WELCOME, got " + first);
                }
                socket.setSoTimeout(0);

                long serverLastRxSeq = first.seq;
                if (state.ackUpTo(serverLastRxSeq) > 0) {
                    state.save(config.stateFile);
                }

                long nowElapsed = clock.elapsedRealtimeMs();
                sessionStartElapsedMs = nowElapsed;
                hadConnected = true;
                synchronized (watchdogLock) {
                    activeSocket = socket;
                    activeOut = out;
                    connected = true;
                    connectedAtElapsedMs = nowElapsed;
                    lastTrafficElapsedMs = nowElapsed;
                    pingInFlight = false;
                    pingDeadlineElapsedMs = 0L;
                    lastScheduledAlarmElapsedMs = 0L;
                    watchdogLock.notifyAll();
                }

                setStatus(Status.CONNECTED, "Connected");
                log("Connected (TLS=" + socket.getSession().getProtocol()
                        + ", serverLastRxSeq=" + serverLastRxSeq + ", interval=" + connectInterval + "s)");
                if (listener != null) {
                    listener.onConnected(connectInterval, netKey);
                }

                // Resend any unACKed MSGs with seq > serverLastRxSeq
                Map<Long, byte[]> pending = state.pendingAfter(serverLastRxSeq);
                for (Map.Entry<Long, byte[]> e : pending.entrySet()) {
                    writeFrame(Frame.msg(e.getKey(), e.getValue()));
                }
                if (!pending.isEmpty()) expectAck();

                if (config.autoProbe) {
                    maybeScheduleProbe(netKey);
                }

                // Handshake & pending resend complete: allow CPU to enter deep sleep while blocked on read!
                clock.releaseWakeLock(WakeupClock.HOLD_CONNECT);

                while (running) {
                    Frame frame = Frame.readFrom(in);
                    if (frame == null) {
                        disconnectReason = "EOF";
                        break;
                    }
                    // Radio woke CPU with incoming packet: hold a brief partial wakelock until handled + ACKed.
                    clock.acquireBriefWakeLock(WakeupClock.HOLD_RX, 15_000L);
                    try {
                        recordTraffic();

                        switch (frame.type) {
                            case Frame.TYPE_MSG:
                                handleIncomingMsg(frame.seq, frame.body);
                                break;
                            case Frame.TYPE_ACK:
                                if (state.ackUpTo(frame.seq) > 0) {
                                    state.save(config.stateFile);
                                }
                                synchronized (watchdogLock) {
                                    if (state.outboxSize() == 0) {
                                        ackDeadlineElapsedMs = 0L;
                                        clock.releaseWakeLock(WakeupClock.HOLD_ACK);
                                    } else if (ackDeadlineElapsedMs != 0L) {
                                        // Progress: give the rest a fresh window.
                                        ackDeadlineElapsedMs = clock.elapsedRealtimeMs() + ACK_TIMEOUT_MS;
                                    }
                                    watchdogLock.notifyAll();
                                }
                                break;
                            case Frame.TYPE_PONG:
                                synchronized (watchdogLock) {
                                    if (pingInFlight && frame.nonce == pendingPingNonce) {
                                        pingInFlight = false;
                                        pingDeadlineElapsedMs = 0L;
                                        lastScheduledAlarmElapsedMs = 0L;
                                        watchdogLock.notifyAll();
                                        clock.releaseWakeLock(WakeupClock.HOLD_PING);
                                    }
                                }
                                break;
                            case Frame.TYPE_BYE:
                                disconnectReason = "BYE(" + Frame.byeReasonName(frame.reason) + ")";
                                if (frame.reason == Frame.BYE_REPLACED) {
                                    receivedByeReplaced = true;
                                } else if (frame.reason == Frame.BYE_AUTH_FAILED
                                        || frame.reason == Frame.BYE_BAD_VERSION) {
                                    receivedAuthError = true;
                                }
                                break;
                            default:
                                log("Ignoring unexpected frame from server: " + frame);
                                break;
                        }
                    } finally {
                        clock.releaseWakeLock(WakeupClock.HOLD_RX);
                    }
                    if (frame.type == Frame.TYPE_BYE) {
                        break;
                    }
                }
            } catch (IOException e) {
                if (disconnectReason.equals("connection closed")) {
                    disconnectReason = e.getMessage() != null ? e.getMessage() : e.getClass().getSimpleName();
                }
            } finally {
                clock.releaseWakeLock(WakeupClock.HOLD_CONNECT);
                clock.releaseWakeLock(WakeupClock.HOLD_RX);
                clock.releaseWakeLock(WakeupClock.HOLD_PING);
                boolean wasConnected;
                synchronized (watchdogLock) {
                    if (pingInFlight) keepaliveFailed = true; // died waiting for a PONG
                    ackDeadlineElapsedMs = 0L;
                    clock.releaseWakeLock(WakeupClock.HOLD_ACK);
                    wasConnected = connected;
                    connected = false;
                    activeSocket = null;
                    activeOut = null;
                    pingInFlight = false;
                    pingDeadlineElapsedMs = 0L;
                    lastScheduledAlarmElapsedMs = 0L;
                    watchdogLock.notifyAll();
                }
                closeSocketQuietly(socket);
                if (wasConnected && listener != null) {
                    listener.onDisconnected(disconnectReason);
                }
            }

            if (!running) {
                break;
            }

            if (receivedAuthError) {
                log("Fatal handshake error (" + disconnectReason + "); stopping reconnect loop");
                running = false;
                setStatus(Status.AUTH_FAILED, "Authentication failed");
                if (listener != null) {
                    listener.onDisconnected("fatal: " + disconnectReason);
                }
                break;
            }

            if (hadConnected) {
                long uptimeMs = clock.elapsedRealtimeMs() - sessionStartElapsedMs;
                if (uptimeMs >= 2L * connectInterval * 1000L) {
                    backoffS = 0;
                }
            }

            if (deliberateClose) {
                deliberateClose = false;
                if (hadConnected) {
                    log("Reconnecting (" + disconnectReason + " after a deliberate close)");
                    backoffS = 0;
                    setStatus(Status.CONNECTING, "Reconnecting...");
                    continue;
                }
            }

            if (receivedByeReplaced) {
                log("Disconnected due to replacement; waiting 5s before reconnect");
                setStatus(Status.CONNECTING, "Reconnecting...");
                waitReconnect(5_000L);
                continue;
            }

            if (connectLearned && connectInterval > Frame.FALLBACK_INTERVAL_S && hadConnected && keepaliveFailed) {
                log("Keepalive failed on learned interval (" + connectInterval
                        + "s); falling back to " + Frame.FALLBACK_INTERVAL_S + "s and starting probe");
                synchronized (watchdogLock) {
                    currentIntervalS = Frame.FALLBACK_INTERVAL_S;
                    usingLearnedInterval = false;
                    watchdogLock.notifyAll();
                }
                if (listener != null) {
                    listener.onIntervalUpdated(Frame.FALLBACK_INTERVAL_S, netKey);
                }
                if (config.autoProbe) {
                    startProbeAsync(netKey, true);
                }
                continue;
            }

            backoffS = (backoffS == 0) ? 2 : Math.min(300, backoffS * 2);
            log("Main failed (" + disconnectReason + ", interval=" + connectInterval + "s); reconnecting in "
                    + backoffS + "s");
            setStatus(Status.ERROR, disconnectReason);
            waitReconnect(backoffS * 1000L);
        }
    }

    private void handleIncomingMsg(long seq, byte[] rawBody) throws IOException {
        long lastRx = state.getLastRxSeq();
        if (seq <= lastRx) {
            writeFrame(Frame.ack(lastRx));
            return;
        }
        if (seq > lastRx + 1) {
            log("Incoming MSG seq gap: expected " + (lastRx + 1) + ", got " + seq);
        }
        // The listener persists what it must keep (the inbox queue) before we ACK, so a crash
        // between the two re-delivers the body instead of losing it (stores dedupe by Apple id).
        try {
            Body decoded = Body.decode(rawBody);
            if (listener != null) {
                listener.onBody(seq, decoded);
            }
        } catch (Exception e) {
            log("Failed to handle incoming body seq " + seq + ": " + e.getMessage());
        }
        state.setLastRxSeq(seq);
        // Persist BEFORE sending ACK!
        state.save(config.stateFile);
        writeFrame(Frame.ack(seq));
    }

    private void runWatchdogLoop() {
        while (running) {
            boolean shouldSendPing = false;
            int pingNonce = 0;
            boolean pongTimedOut = false;
            boolean ackTimedOut = false;
            long waitMs = 0L; // 0 = wait indefinitely until notified
            long alarmTargetElapsed = 0L;
            long ackWaitMs = 0L;

            synchronized (watchdogLock) {
                if (!running) {
                    break;
                }
                long now = clock.elapsedRealtimeMs();
                if (connected && ackDeadlineElapsedMs != 0L) {
                    // HOLD_ACK keeps the CPU up meanwhile, so a plain timed wait is enough.
                    if (now >= ackDeadlineElapsedMs) {
                        ackTimedOut = true;
                        ackDeadlineElapsedMs = 0L;
                    } else {
                        ackWaitMs = ackDeadlineElapsedMs - now;
                    }
                }
                if (connected) {
                    if (pingInFlight) {
                        if (now >= pingDeadlineElapsedMs) {
                            pongTimedOut = true;
                        } else {
                            waitMs = Math.max(100L, pingDeadlineElapsedMs - now);
                            alarmTargetElapsed = pingDeadlineElapsedMs;
                        }
                    } else {
                        long nextPingAt = lastTrafficElapsedMs + (currentIntervalS * 1000L);
                        if (now >= nextPingAt) {
                            shouldSendPing = true;
                            pingInFlight = true;
                            pendingPingNonce = rng.nextInt();
                            pingNonce = pendingPingNonce;
                            pingDeadlineElapsedMs = now + (Frame.PONG_TIMEOUT_S * 1000L);
                            waitMs = Frame.PONG_TIMEOUT_S * 1000L;
                            alarmTargetElapsed = pingDeadlineElapsedMs;
                        } else {
                            waitMs = Math.max(100L, nextPingAt - now);
                            alarmTargetElapsed = nextPingAt;
                        }
                    }
                } else {
                    waitMs = 0L;
                }
            }

            if (ackTimedOut) {
                log("No ACK for " + ACK_TIMEOUT_MS / 1000L + "s; the connection is dead, reconnecting");
                clock.releaseWakeLock(WakeupClock.HOLD_ACK);
                closeActiveSocket();
                continue;
            }
            if (ackWaitMs > 0L && (waitMs == 0L || ackWaitMs < waitMs)) {
                waitMs = Math.max(100L, ackWaitMs);
            }

            if (pongTimedOut) {
                log("PONG timeout (" + Frame.PONG_TIMEOUT_S + "s); closing main socket");
                keepaliveFailed = true;
                clock.releaseWakeLock(WakeupClock.HOLD_PING);
                closeActiveSocket();
                continue;
            }

            if (shouldSendPing) {
                clock.acquireBriefWakeLock(WakeupClock.HOLD_PING, (Frame.PONG_TIMEOUT_S + 5) * 1000L);
                try {
                    clock.scheduleWakeup(Frame.PONG_TIMEOUT_S * 1000L);
                    writeFrame(Frame.ping(pingNonce));
                } catch (IOException e) {
                    log("Failed to write PING: " + e.getMessage());
                    keepaliveFailed = true;
                    clock.releaseWakeLock(WakeupClock.HOLD_PING);
                    closeActiveSocket();
                }
                continue;
            }

            if (waitMs > 0L && alarmTargetElapsed > 0L) {
                boolean needSchedule;
                synchronized (watchdogLock) {
                    needSchedule = Math.abs(alarmTargetElapsed - lastScheduledAlarmElapsedMs) > 1000L;
                    if (needSchedule) {
                        lastScheduledAlarmElapsedMs = alarmTargetElapsed;
                    }
                }
                if (needSchedule) {
                    // The alarm is for the keepalive/PONG deadline; waitMs may be the shorter
                    // ACK wait, which runs awake under HOLD_ACK and needs no alarm.
                    clock.scheduleWakeup(Math.max(100L, alarmTargetElapsed - clock.elapsedRealtimeMs()));
                }
                // The next wakeup is scheduled: the alarm that woke us is handled (an in-flight PING
                // keeps its own wakelock until the PONG), so the CPU can sleep until the alarm.
                clock.releaseWakeLock(WakeupClock.HOLD_ALARM);
            }

            synchronized (watchdogLock) {
                if (!running) {
                    break;
                }
                try {
                    if (waitMs > 0L) {
                        watchdogLock.wait(waitMs);
                    } else {
                        watchdogLock.wait();
                    }
                } catch (InterruptedException ignored) {
                }
            }
        }
    }

    private void waitReconnect(long delayMs) {
        waitReconnect(delayMs, true);
    }

    private void waitReconnect(long delayMs, boolean wake) {
        long deadline = clock.elapsedRealtimeMs() + delayMs;
        if (wake) {
            clock.scheduleWakeup(delayMs);
        }
        synchronized (reconnectLock) {
            while (running) {
                long left = deadline - clock.elapsedRealtimeMs();
                if (left <= 0L) {
                    break;
                }
                try {
                    reconnectLock.wait(left);
                } catch (InterruptedException ignored) {
                    break;
                }
                // If network became available or reconnectNow() was invoked, exit early.
                if (config.networkInfoProvider.isNetworkAvailable() && (deadline - clock.elapsedRealtimeMs()) < delayMs - 200L) {
                    break;
                }
            }
        }
    }

    private void maybeScheduleProbe(String netKey) {
        long nowWall = System.currentTimeMillis();
        long lastProbe = state.getLastProbeMs(netKey);
        boolean due = (lastProbe == 0L) || (nowWall > lastProbe && (nowWall - lastProbe) >= Frame.PROBE_PERIOD_MS);
        if (!due) {
            return;
        }
        synchronized (watchdogLock) {
            if (probeRunning || clock.elapsedRealtimeMs() < nextProbeRetryElapsedMs) {
                return;
            }
        }
        startProbeAsync(netKey, false);
    }

    private void startProbeAsync(final String netKey, boolean force) {
        synchronized (watchdogLock) {
            if (probeRunning) {
                return;
            }
            if (!force && clock.elapsedRealtimeMs() < nextProbeRetryElapsedMs) {
                return;
            }
            probeRunning = true;
            probeNetKey = netKey;
        }


        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Prober prober = new Prober(
                            config.mainHost,
                            config.mainPort,
                            config.tokenHex,
                            config.probeScale,
                            clock,
                            watchdogLock,
                            new Prober.Logger() {
                                @Override
                                public void log(String msg) {
                                    PushClient.this.log(msg);
                                }
                            }
                    );
                    Prober.ProbeResult res = prober.run();
                    if (res.connectFailed) {
                        synchronized (watchdogLock) {
                            nextProbeRetryElapsedMs = clock.elapsedRealtimeMs() + 5L * 60L * 1000L;
                        }
                        return;
                    }
                    state.setLearnedInterval(netKey, res.recommendedIntervalS);
                    state.setLastProbeMs(netKey, System.currentTimeMillis());
                    try {
                        state.save(config.stateFile);
                    } catch (IOException ioe) {
                        log("Failed to save probe state: " + ioe.getMessage());
                    }

                    boolean applyNow;
                    synchronized (watchdogLock) {
                        applyNow = netKey.equals(activeNetworkKey);
                        if (applyNow) {
                            currentIntervalS = res.recommendedIntervalS;
                            usingLearnedInterval = (res.recommendedIntervalS > Frame.FALLBACK_INTERVAL_S);
                            lastScheduledAlarmElapsedMs = 0L;
                            watchdogLock.notifyAll();
                        }
                    }
                    if (applyNow) {
                        sendFrameQuietly(Frame.setInterval(res.recommendedIntervalS));
                        if (listener != null) {
                            listener.onIntervalUpdated(res.recommendedIntervalS, netKey);
                        }
                    }
                } catch (InterruptedException ignored) {
                } finally {
                    String probeNow = null;
                    synchronized (watchdogLock) {
                        probeRunning = false;
                        probeNetKey = null;
                        watchdogLock.notifyAll();
                        // The network changed while we probed: its connect couldn't start a probe.
                        if (running && connected && !netKey.equals(activeNetworkKey)) {
                            probeNow = activeNetworkKey;
                        }
                    }
                    if (probeNow != null && config.autoProbe) {
                        maybeScheduleProbe(probeNow);
                    }
                }
            }
        }, "imsg-prober");
        t.setDaemon(true);
        synchronized (watchdogLock) {
            probeThread = t;
        }
        t.start();
    }

    private String safeNetworkKey() {
        try {
            String k = config.networkInfoProvider.getNetworkKey();
            return (k == null || k.isEmpty()) ? "unknown" : k;
        } catch (Throwable t) {
            return "unknown";
        }
    }

    private void setStatus(Status s, String detail) {
        status = s;
        statusDetail = detail == null ? "" : detail;
        if (listener != null) {
            listener.onStatusChanged(status, statusDetail);
        }
    }

    private void recordTraffic() {
        synchronized (watchdogLock) {
            lastTrafficElapsedMs = clock.elapsedRealtimeMs();
            watchdogLock.notifyAll();
        }
    }

    private void writeFrame(Frame frame) throws IOException {
        OutputStream out;
        synchronized (watchdogLock) {
            out = activeOut;
        }
        if (out == null) {
            throw new IOException("Not connected");
        }
        synchronized (writeLock) {
            frame.writeTo(out);
        }
        recordTraffic();
    }

    private void sendFrameQuietly(Frame frame) {
        try {
            writeFrame(frame);
        } catch (IOException ignored) {
        }
    }

    /**
     * Drops the main connection we've given up on (dead, or on a network that's gone). Abortive
     * (SO_LINGER 0, RST): a plain close keeps retransmitting the unsent part of the socket buffer
     * after we've moved on, so a MSG we already took back (cancelIfPending) and sent another way
     * could still reach the server minutes later and go out twice. Seen on the phone: a MSG written
     * into a dead connection arrived when the network came back, after its SMS fallback.
     */
    private void closeActiveSocket() {
        SSLSocket s;
        synchronized (watchdogLock) {
            s = activeSocket;
        }
        if (s != null) {
            try {
                s.setSoLinger(true, 0);
            } catch (IOException ignored) {
            }
        }
        closeSocketQuietly(s);
    }

    /** Ends the main connection normally (after a BYE), letting the BYE go out. */
    private void closeActiveSocketGracefully() {
        SSLSocket s;
        synchronized (watchdogLock) {
            s = activeSocket;
        }
        closeSocketQuietly(s);
    }

    private static void closeSocketQuietly(SSLSocket s) {
        if (s != null) {
            try {
                s.close();
            } catch (IOException ignored) {
            }
        }
    }

    private void log(String msg) {
        if (listener != null) {
            listener.onLog(msg);
        }
    }
}
