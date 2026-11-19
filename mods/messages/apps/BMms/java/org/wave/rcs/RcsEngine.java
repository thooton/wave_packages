package org.wave.rcs;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

import org.wave.rcs.core.Core;
import org.wave.rcs.prov.Provisioner;
import org.wave.rcs.util.U;

/**
 * GSMA RCS Universal Profile client engine (pure Java, no android.*). Every method returns
 * immediately and never throws; work happens on engine threads, results come through
 * {@link RcsListener}. See docs/rcs/engine.md.
 */
public final class RcsEngine {
    public enum State { DISABLED, PROVISIONING, REGISTERING, REGISTERED, OFFLINE, ERROR }

    private final Core core;

    public RcsEngine(RcsPlatform p, RcsListener l, RcsConfig.Policy policy) {
        core = new Core(p, l, policy);
    }

    /** Provision if needed, register, keep alive, reconnect. Idempotent. */
    public void start() { core.start(); }

    /** Un-REGISTERs (waits up to ~3 s on the engine thread), closes sessions; state DISABLED "stopped". Idempotent. */
    public void stop() { core.stop(null); }

    /** stop() and wait until done (at most timeoutMs). For tests / service shutdown. */
    public boolean stopAndWait(long timeoutMs) {
        CountDownLatch l = new CountDownLatch(1);
        core.stop(l::countDown);
        try { return l.await(timeoutMs, TimeUnit.MILLISECONDS); } catch (InterruptedException e) { return false; }
    }

    public State state() { return core.state(); }

    /** Detail string of the last state change. */
    public String stateDetail() { return core.stateDetail(); }

    /** Use this wap-provisioningdoc instead of the ACS (persisted; never expires, see docs). */
    public void setManualConfig(String provisioningXml) {
        if (provisioningXml == null) return;
        core.setManualConfig(provisioningXml);
    }

    /** Forces provisioning through the configured Provisioner (switches a manual config back to ACS). */
    public void reprovision() { core.reprovision(); }

    /** Replace the provisioning method (default: RCC.14 ACS). Call before start(). */
    public void setProvisioner(Provisioner prov) { if (prov != null) core.post(() -> core.provisioner = prov); }

    /**
     * +sip.instance for the Contact, e.g. "urn:gsma:imei:35123456-789012-0" or "urn:uuid:...".
     * null/empty = default (IMEI URN if the IMEI is known, else a stable random UUID). Applies at the next registration.
     */
    public void setInstanceId(String urn) { core.save("instance_id", urn == null ? "" : urn.trim()); }

    /** Re-register on the current network (call on connectivity changes). */
    public void onNetworkChanged() { core.onNetworkChanged(); }

    /** null if unknown or expired. */
    public RcsCapabilities cachedCapabilities(String number) {
        try { return number == null ? null : core.caps.cached(number); } catch (Throwable t) { return null; }
    }

    /** Async SIP OPTIONS -> onCapabilities (throttled; answers from cache if queried within the last minute). */
    public void refreshCapabilities(String number) {
        if (number == null) return;
        core.post(() -> core.caps.refresh(number));
    }

    /** 1:1 chat text. Returns the message id (IMDN Message-ID); outcome via onSendResult. */
    public String sendText(String to, String text) {
        String id = U.msgId();
        if (to == null || text == null) { core.post(() -> fail(id, "bad arguments")); return id; }
        core.post(() -> core.chat.sendText(id, to, text));
        return id;
    }

    /** 1:1 file over FT-HTTP. */
    public String sendFile(String to, File f, String mime) {
        String id = U.msgId();
        if (to == null || f == null) { core.post(() -> fail(id, "bad arguments")); return id; }
        core.post(() -> core.chat.sendFile(id, to, f, mime, false, null, null));
        return id;
    }

    /** groupId null = find a group with exactly these participants, else create one. */
    public String sendGroupText(Set<String> participants, String groupId, String text) {
        String id = U.msgId();
        if (text == null) { core.post(() -> fail(id, "bad arguments")); return id; }
        Set<String> ps = participants == null ? new LinkedHashSet<>() : new LinkedHashSet<>(participants);
        core.post(() -> core.chat.sendGroupText(id, ps, groupId, text));
        return id;
    }

    public String sendGroupFile(Set<String> participants, String groupId, File f, String mime) {
        String id = U.msgId();
        if (f == null) { core.post(() -> fail(id, "bad arguments")); return id; }
        Set<String> ps = participants == null ? new LinkedHashSet<>() : new LinkedHashSet<>(participants);
        core.post(() -> core.chat.sendFile(id, null, f, mime, true, ps, groupId));
        return id;
    }

    private void fail(String id, String why) { core.failSend(id, why); }

    /** Known groups (copies). Blocks briefly on the engine thread. */
    public List<RcsGroup> groups() {
        final List<RcsGroup> out = new ArrayList<>();
        CountDownLatch l = new CountDownLatch(1);
        core.post(() -> { out.addAll(core.chat.groupsSnapshot()); l.countDown(); });
        try { l.await(2, TimeUnit.SECONDS); } catch (InterruptedException ignored) {}
        return out;
    }

    /** Current configuration (null if not provisioned). Treat as read-only. */
    public RcsConfig config() { return core.currentConfig(); }

    /** Our E.164 number as the engine sees it (platform, override or provisioned identity). */
    public String msisdn() { return core.msisdn(); }

    /** For tests/diagnostics. */
    public Core core() { return core; }
}
