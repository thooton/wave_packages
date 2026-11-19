package org.argon.rcs.core;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;

import org.argon.rcs.RcsConfig;
import org.argon.rcs.RcsGroup;
import org.argon.rcs.RcsMessage;
import org.argon.rcs.ft.FileInfo;
import org.argon.rcs.ft.FtHttpClient;
import org.argon.rcs.im.Cpim;
import org.argon.rcs.im.GroupXml;
import org.argon.rcs.im.Imdn;
import org.argon.rcs.im.Multipart;
import org.argon.rcs.im.Sdp;
import org.argon.rcs.msrp.MsrpSession;
import org.argon.rcs.sip.Dialog;
import org.argon.rcs.sip.NameAddr;
import org.argon.rcs.sip.SipMessage;
import org.argon.rcs.sip.SipStack;
import org.argon.rcs.util.Log;
import org.argon.rcs.util.U;

/**
 * Chat (1:1 and group, OMA CPM session mode over MSRP, pager mode over SIP MESSAGE), IMDN policy,
 * group membership (conference event package) and FT-over-HTTP. Engine thread only.
 */
public final class Chat implements MsrpSession.Listener {
    private final Core core;
    private final Log log;

    private final Map<String, Session> byPeer = new HashMap<>();      // 1:1 number -> current session
    private final Map<String, Session> byGroup = new HashMap<>();     // conversation id -> current session
    private final Map<String, Session> byDialog = new HashMap<>();    // Call-ID -> session
    private final Map<MsrpSession, Session> byMsrp = new HashMap<>();
    private final Map<String, String> subscriptions = new HashMap<>(); // SUBSCRIBE Call-ID -> conversation id
    private final Map<String, Dialog> subDialogs = new HashMap<>();
    final Map<String, RcsGroup> groups = new LinkedHashMap<>();       // conversation id -> group
    private final Map<String, String> conversationIds = new HashMap<>(); // 1:1 peer -> Conversation-ID
    private final LinkedHashMap<String, Boolean> seen = new LinkedHashMap<String, Boolean>(256, 0.75f, false) {
        @Override protected boolean removeEldestEntry(Map.Entry<String, Boolean> e) { return size() > 2000; }
    };

    Chat(Core core) { this.core = core; this.log = core.log.sub("chat"); }

    // =============================================================================================
    // model

    enum SState { INVITING, CONNECTING, ACTIVE, CLOSED }

    /** An outgoing chat message (text, file-info or IMDN). */
    static final class Out {
        final String id;               // imdn Message-ID == our message id
        final String contentType;      // inner content type
        final byte[] payload;
        final boolean report;          // report result to the listener (false for IMDNs)
        final String cpimTo;           // CPIM To override (IMDN in a group: original sender)
        int attempts;
        boolean inInvite;
        Out(String id, String ct, byte[] payload, boolean report, String cpimTo) {
            this.id = id; this.contentType = ct; this.payload = payload; this.report = report; this.cpimTo = cpimTo;
        }
    }

    final class Session {
        final boolean group;
        final String peer;              // number (1:1)
        RcsGroup g;                     // group
        final boolean outgoing;
        SState state = SState.INVITING;
        Dialog dialog;
        SipMessage invite;              // our INVITE (outgoing)
        long inviteCseq;
        MsrpSession msrp;
        final List<Out> queue = new ArrayList<>();
        ScheduledFuture<?> idle;
        String contributionId = U.uuid();
        String conversationId;
        boolean restartTried;

        Session(boolean group, String peer, RcsGroup g, boolean outgoing) {
            this.group = group; this.peer = peer; this.g = g; this.outgoing = outgoing;
        }

        String key() { return group ? "group " + g.id : "chat " + peer; }

        boolean usable() { return state == SState.ACTIVE && msrp != null && msrp.isOpen(); }

        void touch() {
            if (idle != null) idle.cancel(false);
            RcsConfig c = core.config;
            int s = c == null ? 0 : c.timerIdle;
            String ov = core.st("timer_idle_s");
            if (!U.empty(ov)) s = U.parseInt(ov, s);
            if (s <= 0) return;
            idle = core.schedule(() -> {
                if (state == SState.ACTIVE && queue.isEmpty()) { log.i(key() + ": idle, closing"); close(true, "idle"); }
            }, s * 1000L);
        }

        /** Ends the session; pending messages are retried (pager / new session). */
        void close(boolean sendBye, String why) {
            if (state == SState.CLOSED) return;
            SState prev = state;
            state = SState.CLOSED;
            log.d(key() + ": closed (" + why + ")");
            if (idle != null) idle.cancel(false);
            if (sendBye && dialog != null && core.stack.connected()) {
                if (prev == SState.INVITING && invite != null) core.stack.cancel(invite);
                else core.stack.send(dialog.newRequest("BYE"), null);
            } else if (sendBye && prev == SState.INVITING && invite != null && core.stack.connected()) {
                core.stack.cancel(invite);
            }
            if (msrp != null) { byMsrp.remove(msrp); msrp.close(); }
            if (dialog != null) byDialog.remove(dialog.callId);
            if (invite != null) byDialog.remove(invite.callId());
            if (!group && byPeer.get(peer) == this) byPeer.remove(peer);
            if (group && byGroup.get(g.id) == this) byGroup.remove(g.id);
            unsubscribe(this);
            List<Out> pending = new ArrayList<>(queue);
            queue.clear();
            for (Out o : pending) retryElsewhere(this, o, 0, why);
        }
    }

    // =============================================================================================
    // persistence of groups

    void loadGroups() {
        String s = core.st("groups");
        if (U.empty(s)) return;
        for (String line : s.split("\n")) {
            String[] f = line.split("\t", -1);
            if (f.length < 4) continue;
            RcsGroup g = new RcsGroup();
            g.id = U.dec(f[0]); g.focusUri = U.dec(f[1]); g.subject = U.dec(f[2]);
            for (String n : f[3].split(",")) if (!n.isEmpty()) g.participants.add(U.dec(n));
            if (g.id != null) groups.put(g.id, g);
        }
        log.i("loaded " + groups.size() + " groups");
    }

    private void saveGroups() {
        StringBuilder b = new StringBuilder();
        for (RcsGroup g : groups.values()) {
            StringBuilder ps = new StringBuilder();
            for (String n : g.participants) { if (ps.length() > 0) ps.append(','); ps.append(U.enc(n)); }
            b.append(U.enc(g.id)).append('\t').append(U.enc(g.focusUri)).append('\t').append(U.enc(g.subject)).append('\t').append(ps).append('\n');
        }
        core.save("groups", b.toString());
    }

    public List<RcsGroup> groupsSnapshot() {
        List<RcsGroup> l = new ArrayList<>();
        for (RcsGroup g : groups.values()) l.add(g.copy());
        return l;
    }

    private void groupChanged(RcsGroup g) {
        saveGroups();
        log.i("group update " + g.id + " participants=" + g.participants.size() + " subject=" + (g.subject != null));
        core.emitGroup(g.copy());
    }

    // =============================================================================================
    // lifecycle hooks

    void onRegistered() {
        // nothing queued survives a flow loss (messages were failed over), so nothing to flush
    }

    /** The SIP flow is gone: sessions' dialogs are unusable. */
    void onFlowLost() {
        for (Session s : new ArrayList<>(allSessions())) s.close(false, "flow lost");
    }

    void shutdown() {
        for (Session s : new ArrayList<>(allSessions())) s.close(true, "stopped");
    }

    private Collection<Session> allSessions() {
        Set<Session> all = new LinkedHashSet<>(byPeer.values());
        all.addAll(byGroup.values());
        all.addAll(byDialog.values());
        all.addAll(byMsrp.values());
        return all;
    }

    // =============================================================================================
    // sending (public API entry points, engine thread)

    public void sendText(String id, String to, String text) {
        String peer = U.normNumber(to);
        byte[] body = text.getBytes(StandardCharsets.UTF_8);
        RcsConfig c = core.config;
        if (!preflight(id, c != null && c.chatAuth, "chat not authorized")) return;
        if (c.maxSize1to1 > 0 && body.length > c.maxSize1to1) { core.emitSendResult(id, false, 0, "message too large"); return; }
        if (core.isSelf(peer)) { core.emitSendResult(id, false, 0, "cannot chat with self"); return; }
        send1to1(peer, new Out(id, "text/plain;charset=UTF-8", body, true, null));
    }

    public void sendGroupText(String id, Set<String> participants, String groupId, String text) {
        byte[] body = text.getBytes(StandardCharsets.UTF_8);
        RcsConfig c = core.config;
        if (!preflight(id, c != null && c.groupChatAuth, "group chat not authorized")) return;
        if (c.maxSize1toM > 0 && body.length > c.maxSize1toM) { core.emitSendResult(id, false, 0, "message too large"); return; }
        RcsGroup g = resolveGroup(id, participants, groupId);
        if (g == null) return;
        sendGroup(g, new Out(id, "text/plain;charset=UTF-8", body, true, null));
    }

    public void sendFile(String id, String to, File f, String mime, boolean group, Set<String> participants, String groupId) {
        RcsConfig c = core.config;
        if (!preflight(id, c != null && c.ftAuth && !U.empty(c.ftHttpCsUri), "file transfer not available")) return;
        if (f == null || !f.isFile()) { core.emitSendResult(id, false, 0, "file not found"); return; }
        if (c.maxSizeFileTr > 0 && f.length() > c.maxSizeFileTr) { core.emitSendResult(id, false, 0, "file too large (max " + c.maxSizeFileTr + ")"); return; }
        RcsGroup g = null;
        String peer = null;
        if (group) { g = resolveGroup(id, participants, groupId); if (g == null) return; }
        else { peer = U.normNumber(to); }
        final RcsGroup fg = g;
        final String fpeer = peer;
        final String user = c.ftHttpCsUser != null ? c.ftHttpCsUser : core.stack.authUser;
        final String pwd = c.ftHttpCsPwd != null ? c.ftHttpCsPwd : c.userPwd;
        final String uri = c.ftHttpCsUri;
        final String type = U.empty(mime) ? "application/octet-stream" : mime;
        core.hold(120000);
        log.i("FT upload " + id + " (" + f.length() + " bytes, " + type + ")");
        core.background(() -> {
            FileInfo fi = null; String err = null; int code = 0;
            try {
                FtHttpClient ft = new FtHttpClient(core.p.sslSocketFactory(), log.sub("ft"), user, pwd);
                ft.userAgent = core.userAgent();
                fi = ft.upload(uri, f, type, f.getName(), null, null);
            } catch (FtHttpClient.FtException e) { err = e.getMessage(); code = e.code; }
            catch (Exception e) { err = Log.describe(e); }
            final FileInfo ffi = fi; final String ferr = err; final int fcode = code;
            core.post(() -> {
                core.release();
                if (ffi == null) { log.w("FT upload failed: " + ferr); core.emitSendResult(id, false, fcode, "upload failed: " + ferr); return; }
                if (ffi.file.name == null) ffi.file.name = f.getName();
                Out o = new Out(id, FileInfo.CT, ffi.toBytes(), true, null);
                if (fg != null) sendGroup(fg, o); else send1to1(fpeer, o);
            });
        });
    }

    private boolean preflight(String id, boolean authorized, String why) {
        if (!core.isRegistered()) { core.emitSendResult(id, false, 0, "not registered"); return false; }
        if (!authorized) { core.emitSendResult(id, false, 0, why); return false; }
        return true;
    }

    private RcsGroup resolveGroup(String id, Set<String> participants, String groupId) {
        Set<String> want = new LinkedHashSet<>();
        if (participants != null) for (String n : participants) { String x = U.normNumber(n); if (x != null && !core.isSelf(x)) want.add(x); }
        RcsGroup g = groupId != null ? groups.get(groupId) : null;
        if (g == null && !want.isEmpty()) {
            // several conversations can have the same people: use the most recently active one
            for (RcsGroup x : groups.values()) if (sameSet(x.participants, want)) g = x;
        }
        if (g != null) touch(g);
        if (g == null) {
            if (want.isEmpty()) { core.emitSendResult(id, false, 0, "no participants"); return null; }
            RcsConfig c = core.config;
            if (c.maxAdhocGroupSize > 0 && want.size() + 1 > c.maxAdhocGroupSize) {
                core.emitSendResult(id, false, 0, "group too large (max " + c.maxAdhocGroupSize + ")");
                return null;
            }
            if (U.empty(c.confFactoryUri)) { core.emitSendResult(id, false, 0, "no conference factory"); return null; }
            g = new RcsGroup(groupId != null ? groupId : U.uuid(), null, null, want);
            groups.put(g.id, g);
            saveGroups();
            log.i("new group " + g.id + " with " + want.size() + " participants");
        }
        return g;
    }

    /** Moves g to the end of {@link #groups} (iteration order = least to most recently active; persisted). */
    private void touch(RcsGroup g) {
        if (groups.get(g.id) != g) return;
        java.util.Iterator<String> it = groups.keySet().iterator();
        String last = null;
        while (it.hasNext()) last = it.next();
        if (g.id.equals(last)) return;
        groups.remove(g.id);
        groups.put(g.id, g);
        saveGroups();
    }

    static boolean sameSet(Set<String> a, Set<String> b) {
        if (a.size() != b.size()) return false;
        outer:
        for (String x : a) {
            for (String y : b) if (U.sameNumber(x, y)) continue outer;
            return false;
        }
        return true;
    }

    // ---- 1:1 ----

    private void send1to1(String peer, Out o) {
        Session s = byPeer.get(peer);
        if (s != null && s.usable()) { sendOnSession(s, o); return; }
        if (s != null && (s.state == SState.INVITING || s.state == SState.CONNECTING)) { s.queue.add(o); return; }
        s = new Session(false, peer, null, true);
        s.conversationId = conversationIds.computeIfAbsent(peer, k -> U.uuid());
        byPeer.put(peer, s);
        s.queue.add(o);
        invite(s);
    }

    private void sendGroup(RcsGroup g, Out o) {
        Session s = byGroup.get(g.id);
        if (s != null && s.usable()) { sendOnSession(s, o); return; }
        if (s != null && (s.state == SState.INVITING || s.state == SState.CONNECTING)) { s.queue.add(o); return; }
        s = new Session(true, null, g, true);
        s.conversationId = g.id;
        byGroup.put(g.id, s);
        s.queue.add(o);
        invite(s);
    }

    private String selfUri() { return core.impu(); }

    private byte[] cpimFor(Session s, Out o, String to) {
        String disp = null;
        if (o.report && !o.contentType.startsWith(Imdn.CT_IMDN)) {
            List<String> d = new ArrayList<>();
            if (core.policy.requestDeliveryReports) d.add("positive-delivery");
            if (core.policy.requestDisplayReports) d.add("display");
            if (!d.isEmpty()) disp = String.join(", ", d);
        }
        Cpim c = Cpim.create("<" + selfUri() + ">", "<" + to + ">", o.id, o.contentType, o.payload, disp);
        if (o.contentType.startsWith(Imdn.CT_IMDN)) c.contentHeaders.add(new String[]{"Content-Disposition", "notification"});
        return c.toBytes();
    }

    private String cpimTo(Session s, Out o) {
        if (o.cpimTo != null) return o.cpimTo;
        if (s.group) return s.g.focusUri != null ? s.g.focusUri : core.config.confFactoryUri;
        return core.uriFor(s.peer);
    }

    private void sendOnSession(Session s, Out o) {
        s.touch();
        o.attempts++;
        byte[] cpim = cpimFor(s, o, cpimTo(s, o));
        if (o.report) core.hold(40000);
        boolean[] done = {false};
        s.msrp.send(U.msgId(), "message/cpim", cpim, (ok, code, reason) -> {
            if (done[0]) return;
            done[0] = true;
            if (o.report) core.release();
            if (ok) { if (o.report) core.emitSendResult(o.id, true, code, "msrp"); return; }
            log.w(s.key() + ": MSRP send failed " + code + " " + reason);
            // session is broken: close it and retry the message elsewhere
            if (s.state != SState.CLOSED) s.close(true, "msrp failure");
            retryElsewhere(s, o, code, reason);
        });
    }

    /** A message could not go through session s: retry once with a new session / pager, else fail. */
    private void retryElsewhere(Session s, Out o, int code, String reason) {
        if (!core.isRegistered()) { fail(o, code, "not registered (" + reason + ")"); return; }
        if (o.attempts >= 2) { fail(o, code, reason); return; }
        o.attempts++;
        if (s.group) {
            // group: one new session attempt (rejoin/restart)
            log.i(s.key() + ": retrying " + o.id + " on a new group session");
            sendGroup(s.g, o);
        } else {
            log.i(s.key() + ": retrying " + o.id + " in pager mode");
            pager(s.peer, o);
        }
    }

    private void fail(Out o, int code, String reason) {
        if (o.report) core.emitSendResult(o.id, false, code, reason);
        else log.w("IMDN/aux message " + o.id + " dropped: " + code + " " + reason);
    }

    // ---- INVITE (outgoing) ----

    private void invite(Session s) {
        RcsConfig c = core.config;
        SipStack st = core.stack;
        boolean tls = c.msrpTls && !"tcp".equalsIgnoreCase(core.st("msrp_transport"));
        s.msrp = new MsrpSession(core.exec, log.sub("msrp"), this);
        byMsrp.put(s.msrp, s);
        String host = st.transport() != null ? st.transport().localHost() : "127.0.0.1";
        s.msrp.localPath = MsrpSession.path(host, 9, s.msrp.sessionId, tls);
        Sdp offer = Sdp.chat(host, 9, s.msrp.localPath, tls, "active");

        String ruri, to;
        boolean create = false, rejoin = false;
        if (s.group) {
            if (s.g.focusUri != null && !s.restartTried) { ruri = s.g.focusUri; rejoin = true; }
            else { ruri = c.confFactoryUri; create = true; }
            to = ruri;
        } else {
            ruri = core.uriFor(s.peer);
            to = ruri;
        }
        SipMessage m = st.newRequest("INVITE", ruri, "<" + to + ">");
        m.add("Contact", st.contact(false));
        m.add("Accept-Contact", "*;+g.3gpp.icsi-ref=\"" + Core.enc(Core.ICSI_SESSION) + "\"");
        m.add("P-Preferred-Service", Core.ICSI_SESSION);
        m.add("Contribution-ID", s.contributionId);
        m.add("Conversation-ID", s.conversationId);
        m.add("Supported", "timer");
        m.add("Allow", "INVITE, ACK, CANCEL, BYE, OPTIONS, MESSAGE, NOTIFY, UPDATE");
        m.add("Accept", "application/sdp");
        if (create) {
            m.add("Require", "recipient-list-invite");
            if (s.g.subject != null) m.add("Subject", s.g.subject);
            Multipart mp = new Multipart();
            mp.add(new Multipart.Part("application/sdp", offer.toBytes()));
            List<String> uris = new ArrayList<>();
            for (String n : s.g.participants) uris.add(core.uriFor(n));
            mp.add(new Multipart.Part(GroupXml.CT_RESOURCE_LISTS, GroupXml.resourceList(uris)).header("Content-Disposition", "recipient-list"));
            m.body(mp.contentType(), mp.toBytes());
        } else if (!s.group && c.firstMessageInvite && !s.queue.isEmpty() && s.queue.get(0).contentType.startsWith("text/plain")) {
            Out first = s.queue.get(0);
            first.inInvite = true;
            first.attempts++;
            Multipart mp = new Multipart();
            mp.add(new Multipart.Part("application/sdp", offer.toBytes()));
            mp.add(new Multipart.Part("message/cpim", cpimFor(s, first, to)));
            m.body(mp.contentType(), mp.toBytes());
        } else {
            m.body("application/sdp", offer.toBytes());
        }
        s.invite = m;
        s.state = SState.INVITING;
        byDialog.put(m.callId(), s);
        log.i(s.key() + ": INVITE " + (create ? "(create group)" : rejoin ? "(rejoin)" : "") + " to " + ruri);
        core.hold(40000);
        final boolean fRejoin = rejoin;
        long timeout = Math.max(64L * st.t1, 30000);
        boolean[] done = {false};
        st.send(m, (resp, req) -> {
            s.invite = req;
            if (resp.status < 200 || done[0]) return;
            done[0] = true;
            core.release();
            if (resp.status < 300) onInviteOk(s, req, resp);
            else onInviteFailed(s, resp, fRejoin);
        }, timeout);
    }

    private void onInviteOk(Session s, SipMessage req, SipMessage resp) {
        Dialog d = Dialog.fromUac(req, resp);
        s.dialog = d;
        core.stack.sendAck(d.ack(req.cseq()));
        if (s.state == SState.CLOSED) { core.stack.send(d.newRequest("BYE"), null); return; }
        byDialog.put(d.callId, s);
        if (s.group) {
            String focus = null;
            for (String c : resp.headerValues("Contact")) {
                NameAddr a = NameAddr.parse(c);
                if (isFocus(a) || focus == null) focus = a.uri;
            }
            boolean changed = false;
            if (focus != null && !focus.equals(s.g.focusUri)) { s.g.focusUri = focus; changed = true; }
            if (changed || req.header("Require") != null) groupChanged(s.g);
            subscribe(s);
        }
        Sdp ans = parseSdp(resp);
        if (ans == null || ans.path == null) {
            log.w(s.key() + ": 200 without usable SDP");
            s.close(true, "bad answer");
            return;
        }
        // first message carried in the INVITE is delivered
        for (Iterator<Out> it = s.queue.iterator(); it.hasNext(); ) {
            Out o = it.next();
            if (o.inInvite) { it.remove(); if (o.report) core.emitSendResult(o.id, true, resp.status, "invite"); }
        }
        s.msrp.remotePath = ans.path;
        s.state = SState.CONNECTING;
        if ("active".equalsIgnoreCase(ans.setup)) {
            // peer connects to us: unusual since we offered active; can't listen on port 9
            log.w(s.key() + ": answer setup:active not supported for our offer");
            s.close(true, "setup mismatch");
            return;
        }
        connectMsrp(s);
    }

    private void connectMsrp(Session s) {
        MsrpSession ms = s.msrp;
        core.background(() -> {
            Exception err = null;
            try { ms.connect(core.p.sslSocketFactory(), 15000); } catch (Exception e) { err = e; }
            final Exception fe = err;
            core.post(() -> {
                if (s.state == SState.CLOSED) { ms.close(); return; }
                if (fe != null) { log.w(s.key() + ": MSRP connect failed", fe); s.close(true, "msrp connect failed"); return; }
                s.state = SState.ACTIVE;
                log.i(s.key() + ": session active");
                if (s.queue.isEmpty()) ms.sendBind();
                flush(s);
                s.touch();
            });
        });
    }

    private void flush(Session s) {
        List<Out> q = new ArrayList<>(s.queue);
        s.queue.clear();
        for (Out o : q) sendOnSession(s, o);
    }

    private void onInviteFailed(Session s, SipMessage resp, boolean wasRejoin) {
        log.w(s.key() + ": INVITE failed " + resp.status + " " + resp.reason + (resp.local ? " (local)" : ""));
        if (s.state == SState.CLOSED) return;
        if (resp.local && resp.status == 408 && s.invite != null) core.stack.cancel(s.invite);
        if (s.group && wasRejoin && !resp.local && (resp.status == 404 || resp.status == 410 || resp.status == 403 || resp.status == 480)) {
            // group gone at the focus: restart via the factory with the same Conversation-ID
            log.i(s.key() + ": rejoin failed, restarting the group");
            s.restartTried = true;
            if (s.msrp != null) { byMsrp.remove(s.msrp); s.msrp.close(); }
            byDialog.remove(s.invite.callId());
            s.g.focusUri = null;
            s.contributionId = U.uuid();
            invite(s);
            return;
        }
        List<Out> pending = new ArrayList<>(s.queue);
        s.queue.clear();
        s.close(false, "invite failed");
        for (Out o : pending) {
            if (s.group) { o.attempts = Math.max(o.attempts, 2); retryElsewhere(s, o, resp.status, "INVITE " + resp.status); }
            else retryElsewhere(s, o, resp.status, "INVITE " + resp.status);
        }
    }

    private Sdp parseSdp(SipMessage m) {
        try {
            String mt = m.mediaType();
            if (mt == null) return null;
            if (mt.equals("application/sdp")) return Sdp.parse(m.bodyString());
            if (mt.startsWith("multipart/")) {
                Multipart mp = Multipart.parse(m.contentType(), m.body);
                Multipart.Part p = mp.find("application/sdp");
                return p == null ? null : Sdp.parse(new String(p.body, StandardCharsets.UTF_8));
            }
        } catch (Exception e) { log.w("SDP parse failed", e); }
        return null;
    }

    // ---- pager mode ----

    private void pager(String peer, Out o) {
        RcsConfig c = core.config;
        if (o.report && !c.standaloneMsgAuth && !U.parseBool(core.st("force_pager"), false)) { fail(o, 0, "pager mode not authorized (standaloneMsgAuth=0)"); return; }
        if (c.maxSizeStandalone > 0 && o.payload.length > c.maxSizeStandalone) { fail(o, 0, "too large for pager mode"); return; }
        SipStack st = core.stack;
        String uri = core.uriFor(peer);
        SipMessage m = st.newRequest("MESSAGE", uri, "<" + uri + ">");
        m.add("P-Preferred-Service", Core.ICSI_MSG);
        m.add("Accept-Contact", "*;+g.3gpp.icsi-ref=\"" + Core.enc(Core.ICSI_MSG) + "\"");
        m.add("Contribution-ID", U.uuid());
        m.add("Conversation-ID", conversationIds.computeIfAbsent(peer, k -> U.uuid()));
        Session fake = new Session(false, peer, null, true);
        m.body("message/cpim", cpimFor(fake, o, o.cpimTo != null ? o.cpimTo : uri));
        if (o.report) core.hold(40000);
        log.i("MESSAGE (pager) " + o.id + " to " + peer);
        boolean[] done = {false};
        st.send(m, (resp, req) -> {
            if (resp.status < 200 || done[0]) return;
            done[0] = true;
            if (o.report) core.release();
            if (resp.status < 300) { if (o.report) core.emitSendResult(o.id, true, resp.status, "pager"); }
            else fail(o, resp.status, "MESSAGE " + resp.status + " " + U.nz(resp.reason));
        });
    }

    // =============================================================================================
    // incoming requests

    void onInvite(SipStack.ServerTx tx) {
        SipMessage req = tx.request;
        if (req.toTag() != null) { onReInvite(tx); return; }
        RcsConfig c = core.config;
        Sdp offer = parseSdp(req);
        if (offer == null || offer.path == null || offer.proto == null) {
            log.w("INVITE without MSRP offer: 488");
            tx.respond(488);
            return;
        }
        if (offer.fileSelector != null) { log.i("MSRP file transfer offer rejected (FT over HTTP only)"); tx.respond(488); return; }
        NameAddr contact = req.headerValues("Contact").isEmpty() ? null : NameAddr.parse(req.headerValues("Contact").get(0));
        boolean isGroup = contact != null && isFocus(contact);
        Session s;
        if (isGroup) {
            if (c != null && !c.autAcceptGroupChat) log.d("AutAcceptGroupChat=0 but auto-accepting anyway");
            String conv = req.header("Conversation-ID");
            if (conv == null) conv = contact.uri; // degenerate: key by focus
            RcsGroup g = groups.get(conv);
            boolean changed = false;
            if (g == null) {
                for (RcsGroup x : groups.values()) if (contact.uri.equals(x.focusUri)) { g = x; break; }
            }
            if (g == null) { g = new RcsGroup(conv, contact.uri, null, null); groups.put(conv, g); changed = true; }
            else touch(g);
            if (!contact.uri.equals(g.focusUri)) { g.focusUri = contact.uri; changed = true; }
            String subj = req.header("Subject");
            if (subj != null && !subj.equals(g.subject)) { g.subject = subj; changed = true; }
            // participants from a resource-list body, plus the inviter
            Set<String> ps = new LinkedHashSet<>();
            if (req.mediaType() != null && req.mediaType().startsWith("multipart/")) {
                try {
                    Multipart mp = Multipart.parse(req.contentType(), req.body);
                    Multipart.Part rl = mp.find(GroupXml.CT_RESOURCE_LISTS);
                    if (rl != null) for (String u : GroupXml.parseResourceList(rl.body)) { String n = U.numberFromUri(u); if (n != null && !core.isSelf(n)) ps.add(n); }
                } catch (Exception e) { log.w("resource-list parse failed", e); }
            }
            String inviter = inviterNumber(req);
            if (inviter != null && !core.isSelf(inviter)) ps.add(inviter);
            for (String n : ps) if (!containsNumber(g.participants, n)) { g.participants.add(n); changed = true; }
            if (changed) groupChanged(g);
            s = new Session(true, null, g, false);
            s.conversationId = g.id;
            Session old = byGroup.get(g.id);
            byGroup.put(g.id, s);
            if (old != null && old.state == SState.ACTIVE) old.close(true, "replaced by incoming session");
        } else {
            if (c != null && !c.autAccept) log.d("AutAccept=0 but auto-accepting anyway");
            String peer = inviterNumber(req);
            if (peer == null) { log.w("INVITE from unknown identity: 403"); tx.respond(403); return; }
            s = new Session(false, peer, null, false);
            s.conversationId = req.header("Conversation-ID");
            if (s.conversationId != null) conversationIds.put(peer, s.conversationId);
            Session old = byPeer.get(peer);
            if (old == null || old.state != SState.INVITING) byPeer.put(peer, s);
            if (old != null && old.state == SState.ACTIVE && old.queue.isEmpty()) old.close(true, "replaced by incoming session");
        }
        if (req.header("Contribution-ID") != null) s.contributionId = req.header("Contribution-ID");
        s.dialog = Dialog.fromUas(req, tx.toTag);
        byDialog.put(s.dialog.callId, s);
        // MSRP role (RFC 6135): offer active -> we are passive (listen); actpass/passive -> we connect
        boolean passive = "active".equalsIgnoreCase(offer.setupOrDefault());
        boolean tls = offer.tls();
        String host = core.stack.transport() != null ? core.stack.transport().localHost() : "127.0.0.1";
        s.msrp = new MsrpSession(core.exec, log.sub("msrp"), this);
        byMsrp.put(s.msrp, s);
        s.msrp.remotePath = offer.path;
        int port = 9;
        if (passive) {
            if (tls) log.w("passive MSRP over TLS is not supported; offering plain TCP");
            try { port = s.msrp.listen(); } catch (Exception e) { log.w("listen failed", e); tx.respond(500); s.close(false, "listen failed"); return; }
        }
        s.msrp.localPath = MsrpSession.path(host, port, s.msrp.sessionId, tls && !passive);
        Sdp ans = Sdp.chat(host, port, s.msrp.localPath, tls && !passive, passive ? "passive" : "active");
        SipMessage r = tx.response(200, "OK");
        r.add("Contact", core.stack.contact(false));
        r.add("Allow", "INVITE, ACK, CANCEL, BYE, OPTIONS, MESSAGE, NOTIFY, UPDATE");
        r.add("Supported", "timer");
        if (req.header("Contribution-ID") != null) r.add("Contribution-ID", req.header("Contribution-ID"));
        if (req.header("Conversation-ID") != null) r.add("Conversation-ID", req.header("Conversation-ID"));
        r.add("P-Preferred-Service", Core.ICSI_SESSION);
        String se = req.header("Session-Expires");
        if (se != null) { r.add("Session-Expires", se.contains("refresher") ? se : se + ";refresher=uac"); r.add("Require", "timer"); }
        r.body("application/sdp", ans.toBytes());
        tx.setOnCancel(() -> s.close(false, "cancelled"));
        tx.respond(r);
        log.i(s.key() + ": accepted incoming session (" + (passive ? "passive" : "active") + ")");
        s.state = SState.CONNECTING;
        if (passive) {
            MsrpSession ms = s.msrp;
            core.background(() -> {
                Exception err = null;
                try { ms.acceptPeer(30000); } catch (Exception e) { err = e; }
                final Exception fe = err;
                core.post(() -> {
                    if (s.state == SState.CLOSED) { ms.close(); return; }
                    if (fe != null) { log.w(s.key() + ": MSRP accept failed", fe); s.close(true, "msrp accept failed"); return; }
                    s.state = SState.ACTIVE;
                    flush(s);
                    s.touch();
                });
            });
        } else connectMsrp(s);
        if (isGroup) subscribe(s);
        // first message inside the INVITE (multipart with message/cpim)
        if (req.mediaType() != null && req.mediaType().startsWith("multipart/")) {
            try {
                Multipart mp = Multipart.parse(req.contentType(), req.body);
                Multipart.Part cp = mp.find("message/cpim");
                if (cp != null) onCpim(Cpim.parse(cp.body), s, s.group ? null : s.peer);
            } catch (Exception e) { log.w("first message parse failed", e); }
        }
    }

    /** isfocus as a Contact header parameter (RFC 4579) or, as some servers send it, a URI parameter. */
    static boolean isFocus(NameAddr a) {
        if (a == null) return false;
        if (a.hasParam("isfocus")) return true;
        String u = a.uri == null ? "" : a.uri.toLowerCase(java.util.Locale.ROOT);
        return u.contains(";isfocus");
    }

    private static boolean containsNumber(Set<String> set, String n) {
        for (String x : set) if (U.sameNumber(x, n)) return true;
        return false;
    }

    /** The real originator: P-Asserted-Identity (tel or sip with number), Referred-By, From. */
    private String inviterNumber(SipMessage req) {
        for (String pai : req.headerValues("P-Asserted-Identity")) { String n = U.numberFromUri(NameAddr.parse(pai).uri); if (n != null) return n; }
        String rb = req.header("Referred-By");
        if (rb != null) { String n = U.numberFromUri(NameAddr.parse(rb).uri); if (n != null) return n; }
        NameAddr f = req.from();
        return f == null ? null : U.numberFromUri(f.uri);
    }

    private void onReInvite(SipStack.ServerTx tx) {
        Session s = byDialog.get(tx.request.callId());
        if (s == null || s.msrp == null) { tx.respond(481); return; }
        SipMessage r = tx.response(200, "OK");
        r.add("Contact", core.stack.contact(false));
        String host = core.stack.transport() != null ? core.stack.transport().localHost() : "127.0.0.1";
        Sdp sdp = Sdp.chat(host, 9, s.msrp.localPath, s.msrp.localPath.startsWith("msrps"), s.outgoing ? "active" : "active");
        r.body("application/sdp", sdp.toBytes());
        tx.respond(r);
    }

    void onAck(SipMessage req) {
        Session s = byDialog.get(req.callId());
        if (s != null) log.d(s.key() + ": ACK");
    }

    void onBye(SipStack.ServerTx tx) {
        Session s = byDialog.get(tx.request.callId());
        tx.respond(s != null ? 200 : 481);
        if (s != null) { log.i(s.key() + ": BYE from peer"); s.close(false, "bye"); }
    }

    void onUpdate(SipStack.ServerTx tx) {
        Session s = byDialog.get(tx.request.callId());
        if (s == null) { tx.respond(481); return; }
        SipMessage r = tx.response(200, "OK");
        String se = tx.request.header("Session-Expires");
        if (se != null) { r.add("Session-Expires", se); r.add("Require", "timer"); }
        r.add("Contact", core.stack.contact(false));
        tx.respond(r);
    }

    void onMessage(SipStack.ServerTx tx) {
        SipMessage req = tx.request;
        tx.respond(200);
        String mt = req.mediaType();
        String from = inviterNumber(req);
        if (mt == null) return;
        // group pager message (from a focus with a known Conversation-ID)?
        Session viaSession = null;
        String conv = req.header("Conversation-ID");
        RcsGroup g = conv != null ? groups.get(conv) : null;
        NameAddr contact = req.headerValues("Contact").isEmpty() ? null : NameAddr.parse(req.headerValues("Contact").get(0));
        boolean fromFocus = contact != null && isFocus(contact);
        try {
            if (mt.equals("message/cpim")) {
                Cpim c = Cpim.parse(req.body);
                if (g != null && fromFocus) onGroupCpim(c, g, null);
                else onCpim(c, viaSession, from);
            } else if (mt.equals(Imdn.CT_IMDN)) {
                log.d("IMDN (raw) ignored");
            } else if (mt.equals(Imdn.CT_COMPOSING)) {
                log.d("isComposing ignored");
            } else if (mt.startsWith("text/")) {
                deliverText(U.msgId(), from, null, System.currentTimeMillis(), req.bodyString());
            } else log.w("MESSAGE with unsupported content " + mt);
        } catch (Exception e) {
            log.w("bad MESSAGE body", e);
        }
    }

    void onNotify(SipStack.ServerTx tx) {
        SipMessage req = tx.request;
        String event = U.nz(req.header("Event")).toLowerCase(java.util.Locale.ROOT);
        String conv = subscriptions.get(req.callId());
        tx.respond(200);
        if (!event.startsWith("conference")) { log.d("NOTIFY " + event + " ignored"); return; }
        if (conv == null) {
            // NOTIFY inside the INVITE dialog (some focuses do that)
            Session s = byDialog.get(req.callId());
            if (s != null && s.group) conv = s.g.id;
        }
        String ss = U.nz(req.header("Subscription-State")).toLowerCase(java.util.Locale.ROOT);
        if (ss.startsWith("terminated")) { subscriptions.remove(req.callId()); subDialogs.remove(req.callId()); }
        if (conv == null || req.body.length == 0) return;
        RcsGroup g = groups.get(conv);
        if (g == null) return;
        GroupXml.ConferenceInfo ci = GroupXml.parseConferenceInfo(req.body);
        if (ci == null) { log.w("bad conference-info"); return; }
        applyConferenceInfo(g, ci);
    }

    void applyConferenceInfo(RcsGroup g, GroupXml.ConferenceInfo ci) {
        boolean full = ci.state == null || ci.state.equalsIgnoreCase("full");
        Set<String> next = full ? new LinkedHashSet<>() : new LinkedHashSet<>(g.participants);
        for (GroupXml.User u : ci.users) {
            String n = U.numberFromUri(u.entity);
            if (n == null || core.isSelf(n)) continue;
            if (u.member()) { if (!containsNumber(next, n)) next.add(n); }
            else next.removeIf(x -> U.sameNumber(x, n));
        }
        boolean changed = !sameSet(next, g.participants);
        if (ci.subject != null && !ci.subject.equals(g.subject)) { g.subject = ci.subject; changed = true; }
        if (changed) {
            g.participants = next;
            groupChanged(g);
        }
    }

    // ---- conference subscription ----

    private void subscribe(Session s) {
        if (!s.group || s.g.focusUri == null) return;
        if (U.parseBool(core.st("no_conference_subscribe"), false)) return;
        SipStack st = core.stack;
        SipMessage m = st.newRequest("SUBSCRIBE", s.g.focusUri, "<" + s.g.focusUri + ">");
        m.add("Contact", st.contact(false));
        m.add("Event", "conference");
        m.add("Accept", GroupXml.CT_CONFERENCE_INFO);
        m.add("Expires", "3600");
        m.add("Supported", "eventlist");
        final String conv = s.g.id;
        subscriptions.put(m.callId(), conv);
        st.send(m, (resp, req) -> {
            if (resp.status < 200) return;
            if (resp.status < 300) {
                subDialogs.put(req.callId(), Dialog.fromUac(req, resp));
                log.d("conference subscription active for " + conv);
            } else {
                subscriptions.remove(req.callId());
                log.w("conference SUBSCRIBE failed " + resp.status);
            }
        });
    }

    private void unsubscribe(Session s) {
        if (!s.group) return;
        for (Iterator<Map.Entry<String, String>> it = subscriptions.entrySet().iterator(); it.hasNext(); ) {
            Map.Entry<String, String> e = it.next();
            if (!e.getValue().equals(s.g.id)) continue;
            Dialog d = subDialogs.remove(e.getKey());
            it.remove();
            if (d != null && core.stack.connected()) {
                SipMessage m = d.newRequest("SUBSCRIBE");
                m.add("Event", "conference");
                m.add("Expires", "0");
                m.add("Contact", core.stack.contact(false));
                core.stack.send(m, null);
            }
        }
    }

    // =============================================================================================
    // MSRP

    @Override public void onMsrpMessage(MsrpSession ms, String messageId, String contentType, byte[] body) {
        Session s = byMsrp.get(ms);
        if (s == null) return;
        s.touch();
        String ct = contentType == null ? "" : contentType.toLowerCase(java.util.Locale.ROOT);
        try {
            if (ct.startsWith("message/cpim")) {
                Cpim c = Cpim.parse(body);
                if (s.group) onGroupCpim(c, s.g, s);
                else onCpim(c, s, s.peer);
            } else if (ct.startsWith("text/")) {
                if (!s.group) deliverText(messageId, s.peer, null, System.currentTimeMillis(), new String(body, StandardCharsets.UTF_8));
            } else if (ct.startsWith(Imdn.CT_COMPOSING)) {
                log.d("isComposing ignored");
            } else log.d("MSRP content " + ct + " ignored");
        } catch (Exception e) {
            log.w(s.key() + ": bad MSRP content", e);
        }
    }

    @Override public void onMsrpClosed(MsrpSession ms, Throwable cause) {
        Session s = byMsrp.get(ms);
        if (s != null && s.state != SState.CLOSED) s.close(true, "msrp closed");
    }

    // =============================================================================================
    // content handling

    /** 1:1 CPIM (session or pager). fallbackFrom: the session peer / SIP originator. */
    private void onCpim(Cpim c, Session s, String fallbackFrom) {
        String from = U.numberFromUri(c.from);
        if (from == null) from = fallbackFrom;
        handleContent(c, from, null, s);
    }

    private void onGroupCpim(Cpim c, RcsGroup g, Session s) {
        String from = U.numberFromUri(c.from);
        if (from != null && core.isSelf(from)) { log.d("own group message echoed, ignored"); return; }
        touch(g);
        if (from == null) { log.w("group message without sender identity"); from = "unknown"; }
        if (!containsNumber(g.participants, from) && !from.equals("unknown")) {
            g.participants.add(from);
            groupChanged(g);
        }
        handleContent(c, from, g, s);
    }

    private void handleContent(Cpim c, String from, RcsGroup g, Session s) {
        String mt = c.mediaType();
        if (mt.equals(Imdn.CT_IMDN)) {
            Imdn i = Imdn.parse(c.body);
            log.d("incoming IMDN ignored: " + i);
            return;
        }
        if (mt.equals(Imdn.CT_COMPOSING)) { log.d("isComposing ignored"); return; }
        String id = c.messageId != null ? c.messageId : U.msgId();
        String dedupeKey = (from == null ? "" : from) + "|" + id;
        if (seen.containsKey(dedupeKey)) { log.i("duplicate message " + id + " ignored"); maybeDeliveryReport(c, from, g, s); return; }
        seen.put(dedupeKey, Boolean.TRUE);
        long ts = U.parseIso(c.dateTime);
        if (ts <= 0) ts = System.currentTimeMillis();
        if (mt.equals(FileInfo.CT)) {
            FileInfo fi = FileInfo.parse(c.body);
            if (fi == null) { log.w("bad file-info from " + from); return; }
            maybeDeliveryReport(c, from, g, s);
            download(id, from, g, ts, fi);
            return;
        }
        if (mt.startsWith("text/")) {
            maybeDeliveryReport(c, from, g, s);
            deliverText(id, from, g, ts, c.bodyText());
            return;
        }
        log.w("unsupported chat content " + mt + " from " + from);
    }

    private void deliverText(String id, String from, RcsGroup g, long ts, String text) {
        RcsMessage m = new RcsMessage();
        m.id = id; m.from = from; m.to = core.msisdn(); m.group = g == null ? null : g.copy();
        m.timestamp = ts; m.contentType = "text/plain"; m.text = text;
        log.i("incoming text " + id + " from " + from + (g != null ? " in group " + g.id : "") + " (" + text.length() + " chars)");
        core.emitMessage(m);
    }

    /** Sends IMDN 'delivered' if asked and allowed by policy. Never 'displayed'. */
    private void maybeDeliveryReport(Cpim c, String from, RcsGroup g, Session s) {
        if (!c.wantsDelivery()) return;
        if (!core.policy.sendDeliveryReports) { log.d("delivery report requested, policy says no"); return; }
        if (c.messageId == null || from == null || from.equals("unknown")) return;
        String senderUri = U.numberFromUri(c.from) != null ? NameAddr.parse(c.from).uri : core.uriFor(from);
        Out o = new Out(U.msgId(), Imdn.CT_IMDN, Imdn.delivered(c.messageId, c.dateTime), false, senderUri);
        o.attempts = 1; // one fallback at most
        if (s != null && s.usable()) { log.d("IMDN delivered for " + c.messageId + " via session"); sendOnSession(s, o); }
        else if (s != null && (s.state == SState.CONNECTING || s.state == SState.INVITING)) s.queue.add(o);
        else { log.d("IMDN delivered for " + c.messageId + " via MESSAGE"); pager(from, o); }
    }

    // ---- FT download ----

    private void download(String id, String from, RcsGroup g, long ts, FileInfo fi) {
        RcsConfig c = core.config;
        long max = c.maxSizeFileTr;
        String ovMax = core.st("max_incoming_file");
        if (!U.empty(ovMax)) max = U.parseLong(ovMax, max);
        if (max > 0 && fi.file.size > max) {
            log.w("incoming file " + fi.file.size + " bytes exceeds MaxSizeFileTr " + max + ": not downloaded");
            deliverText(id, from, g, ts, "[File not received: " + U.nz(fi.file.name) + " (" + fi.file.size + " bytes) is too large]");
            return;
        }
        if (c.ftWarnSize > 0 && fi.file.size > c.ftWarnSize) log.i("incoming file above ftWarnSize, auto-accepting");
        File dir = new File(core.p.filesDir(), "rcs_ft");
        dir.mkdirs();
        String name = U.empty(fi.file.name) ? "file" : fi.file.name.replaceAll("[^A-Za-z0-9._-]", "_");
        File dest = new File(dir, id.replaceAll("[^A-Za-z0-9]", "") + "_" + name);
        final String user = c.ftHttpCsUser != null ? c.ftHttpCsUser : core.stack.authUser;
        final String pwd = c.ftHttpCsPwd != null ? c.ftHttpCsPwd : c.userPwd;
        final long fmax = max;
        core.hold(120000);
        log.i("downloading file " + id + " (" + fi.file.size + " bytes, " + fi.file.contentType + ")");
        core.background(() -> {
            long n = -1;
            Exception last = null;
            for (int attempt = 0; attempt < 3 && n < 0; attempt++) {
                try {
                    FtHttpClient ft = new FtHttpClient(core.p.sslSocketFactory(), log.sub("ft"), user, pwd);
                    ft.userAgent = core.userAgent();
                    n = ft.download(fi.file.url, dest, fmax > 0 ? fmax : 0);
                } catch (Exception e) {
                    last = e;
                    log.w("download attempt " + (attempt + 1) + " failed", e);
                    if (e instanceof FtHttpClient.FtException && ((FtHttpClient.FtException) e).code == 404) break;
                    U.sleep(2000L * (attempt + 1));
                }
            }
            final long size = n;
            final Exception err = last;
            core.post(() -> {
                core.release();
                if (size < 0) {
                    log.e("file " + id + " could not be downloaded: " + Log.describe(err));
                    return;
                }
                RcsMessage m = new RcsMessage();
                m.id = id; m.from = from; m.to = core.msisdn(); m.group = g == null ? null : g.copy();
                m.timestamp = ts;
                m.contentType = U.empty(fi.file.contentType) ? "application/octet-stream" : fi.file.contentType;
                m.file = dest; m.fileName = fi.file.name; m.fileSize = size;
                log.i("incoming file " + id + " from " + from + " saved (" + size + " bytes)");
                core.emitMessage(m);
            });
        });
    }

    // =============================================================================================
    // debugging / tests

    public int openSessions() { return allSessions().size(); }

    public Set<String> sessionKeys() {
        Set<String> k = new HashSet<>();
        for (Session s : allSessions()) k.add(s.key() + ":" + s.state);
        return k;
    }
}
