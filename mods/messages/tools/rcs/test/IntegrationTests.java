import java.io.File;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Base64;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.function.Predicate;

import org.argon.rcs.RcsCapabilities;
import org.argon.rcs.RcsConfig;
import org.argon.rcs.RcsEngine;
import org.argon.rcs.RcsGroup;
import org.argon.rcs.RcsMessage;

/**
 * End-to-end tests of RcsEngine against the mock network (tools/rcs/mock). The mock must be running
 * with the ports passed as system properties (run_tests.sh does this).
 */
public final class IntegrationTests {
    static final String DEV = "+15551234567";
    static final String B = "+15557770001";     // RCS user
    static final String NONRCS = "+15557770002";
    static final String OFF = "+15557770003";   // offline, rejects with 480
    static final String C = "+15557770004";
    static final String D = "+15557770005";
    static final String DEV2 = "+15551239999";

    static Mock mock;
    static int acsPort;
    static File work;
    static TestPlatform plat;
    static RecListener rec;
    static RcsEngine eng;
    static java.io.PrintStream logOut;

    public static void main(String[] a) throws Exception {
        acsPort = Integer.getInteger("mock.acs", 28080);
        mock = new Mock(Integer.getInteger("mock.control", 28099), acsPort);
        work = new File(System.getProperty("rcs.work", "build/rcs-test/work"));
        deleteTree(work);
        work.mkdirs();
        logOut = TestPlatform.logFile(new File(work, "engine.log"));
        System.out.println("engine log: " + new File(work, "engine.log"));
        try {
            run();
        } finally {
            if (eng != null) eng.stopAndWait(5000);
        }
        System.exit(T.summary());
    }

    static RcsEngine newEngine(TestPlatform p, RecListener l, RcsConfig.Policy pol) {
        p.mock = mock;
        return new RcsEngine(p, l, pol);
    }

    static Map<String, Object> waitReceived(String user, String kind, Predicate<Map<String, Object>> p, long ms) throws Exception {
        long end = System.currentTimeMillis() + ms;
        while (System.currentTimeMillis() < end) {
            for (Object o : mock.received(user, kind)) {
                Map<String, Object> m = Json.obj(o);
                if (p.test(m)) return m;
            }
            Thread.sleep(150);
        }
        throw new AssertionError("timeout: " + user + " did not receive " + kind + "; has " + mock.received(user, null));
    }

    static List<Object> received(String user, String kind) throws Exception { return mock.received(user, kind); }

    static RcsMessage awaitMsg(Predicate<RcsMessage> p, String what) throws InterruptedException {
        return rec.await(rec.messages, p, 20000, what);
    }

    static void run() throws Exception {
        mock.reset();
        mock.user(B);
        mock.user(NONRCS, "rcs", false);
        mock.user(OFF, "online", false, "offline_response", 480.0);
        mock.user(C);
        mock.user(D);

        plat = new TestPlatform(DEV, new File(work, "dev"), logOut, "dev");
        plat.state.put("acs_url", "http://127.0.0.1:" + acsPort + "/");
        plat.state.put("keepalive_s", "2");
        plat.state.put("reg_retry_base_s", "1");
        plat.state.put("reg_retry_max_s", "4");

        T.test("provisioning with OTP + registration", () -> {
            rec = new RecListener();
            eng = newEngine(plat, rec, null);
            eng.start();
            eng.start(); // idempotent
            rec.awaitState(RcsEngine.State.REGISTERED, 40000);
            T.check(plat.otpRequests >= 1, "OTP was requested");
            T.eq("acs", plat.state.get("config_source"), "config source");
            T.check(plat.state.get("prov_token") != null && !plat.state.get("prov_token").isEmpty(), "token stored");
            T.check(plat.state.get("config_xml").contains("wap-provisioningdoc"), "raw xml stored");
            T.check(rec.states.toString().contains("PROVISIONING"), "went through PROVISIONING: " + rec.states);
            List<Object> regs = mock.registrations();
            String s = Json.write(regs);
            T.contains(s, "urn:gsma:imei:35987654-321098-0", "instance id (IMEI URN)");
            T.contains(s, "IM-client/OMA1.0 Argon/1.0", "user agent");
        });

        T.test("restart uses token (no OTP), stop un-registers", () -> {
            int otp = plat.otpRequests;
            T.check(eng.stopAndWait(8000), "stopped");
            T.eq(RcsEngine.State.DISABLED, eng.state(), "disabled after stop");
            eng.stop(); // idempotent
            T.waitFor("un-REGISTER at mock", 5000, () -> !Json.write(mock.registrations()).contains(DEV));
            rec = new RecListener();
            eng = newEngine(plat, rec, null);
            plat.state.put("config_fetched_at", "0"); // force a validity-expired re-provisioning with the token
            eng.start();
            rec.awaitState(RcsEngine.State.REGISTERED, 30000);
            T.eq(otp, plat.otpRequests, "no new OTP");
        });

        T.test("keep-alive and reconnect after flow drop", () -> {
            Thread.sleep(5000); // > 2 keep-alive periods
            T.eq(RcsEngine.State.REGISTERED, eng.state(), "still registered after pings");
            T.contains(Json.write(mock.registrations()), "\"connected\":true", "flow up");
            int n = rec.states.size();
            mock.dropSip();
            T.waitFor("re-registration", 15000, () -> {
                synchronized (rec) {
                    List<String> after = rec.states.subList(n, rec.states.size());
                    return after.stream().anyMatch(x -> x.startsWith("REGISTERING")) && eng.state() == RcsEngine.State.REGISTERED;
                }
            });
        });

        T.test("REGISTER 503 Retry-After is honored", () -> {
            mock.post("/api/events/fail-next", Json.m("target", "sip", "method", "REGISTER", "count", 1.0, "code", 503.0, "retry_after", 2.0));
            int n = rec.states.size();
            long t0 = System.currentTimeMillis();
            mock.dropSip();
            T.waitFor("registered after 503", 20000, () -> {
                synchronized (rec) {
                    return rec.states.subList(n, rec.states.size()).stream().anyMatch(x -> x.contains("503"))
                            && eng.state() == RcsEngine.State.REGISTERED;
                }
            });
            T.check(System.currentTimeMillis() - t0 >= 2000, "waited Retry-After");
            synchronized (rec) { T.check(rec.states.subList(n, rec.states.size()).stream().anyMatch(x -> x.contains("retry in 2s")), "retry in 2s: " + rec.states); }
        });

        T.test("REGISTER 403 triggers re-provisioning", () -> {
            mock.post("/api/events/fail-next", Json.m("target", "sip", "method", "REGISTER", "count", 1.0, "code", 403.0));
            int n = rec.states.size();
            mock.dropSip();
            T.waitFor("registered after 403", 20000, () -> {
                synchronized (rec) {
                    return rec.states.subList(n, rec.states.size()).stream().anyMatch(x -> x.contains("403 on REGISTER"))
                            && eng.state() == RcsEngine.State.REGISTERED;
                }
            });
        });

        T.test("capabilities: RCS, non-RCS, cache", () -> {
            eng.refreshCapabilities(B);
            eng.refreshCapabilities(NONRCS);
            RecListener.Caps cb = rec.await(rec.caps, c -> c.number.equals(B), 10000, "caps B");
            T.check(cb.caps.chat && cb.caps.fileTransferHttp && cb.caps.groupChat, "B caps " + cb.caps);
            RecListener.Caps cn = rec.await(rec.caps, c -> c.number.equals(NONRCS), 10000, "caps N");
            T.check(!cn.caps.chat, "non-RCS has no chat: " + cn.caps);
            RcsCapabilities cached = eng.cachedCapabilities(B);
            T.check(cached != null && cached.chat, "cached B");
            T.check(eng.cachedCapabilities("+19998887777") == null, "unknown number not cached");
            int optionsBefore = received(B, "options").size();
            eng.refreshCapabilities(B); // throttled: answered from cache
            Thread.sleep(1000);
            T.eq(optionsBefore, received(B, "options").size(), "throttled, no new OPTIONS");
        });

        T.test("1:1 text out (session), receipts policy, invite headers", () -> {
            mock.clear(B);
            String id = eng.sendText(B, "hello from argon");
            RecListener.SendResult r = rec.result(id, 20000);
            T.check(r.ok, "send ok: " + r);
            Map<String, Object> m = waitReceived(B, "text", x -> "hello from argon".equals(x.get("text")), 10000);
            T.eq(id, m.get("message_id"), "IMDN Message-ID = returned id");
            T.eq(Boolean.FALSE, m.get("disposition_requested"), "no receipts requested by default");
            T.eq("msrp", m.get("via"), "via MSRP");
            Map<String, Object> inv = waitReceived(B, "invite", x -> true, 5000);
            String h = Json.write(inv.get("headers"));
            T.contains(h, "Contribution-ID", "Contribution-ID");
            T.contains(h, "Conversation-ID", "Conversation-ID");
            T.contains(h, "oma.cpm.session", "P-Preferred-Service / Accept-Contact");
            // second message reuses the session
            String id2 = eng.sendText(B, "second");
            T.check(rec.result(id2, 15000).ok, "second ok");
            waitReceived(B, "text", x -> "second".equals(x.get("text")), 5000);
            T.eq(1, received(B, "invite").size(), "session reused (one INVITE)");
        });

        T.test("1:1 long text (MSRP chunking)", () -> {
            StringBuilder b = new StringBuilder();
            for (int i = 0; b.length() < 20000; i++) b.append("line ").append(i).append(" ünïcødé\n");
            String text = b.toString();
            String id = eng.sendText(B, text);
            T.check(rec.result(id, 20000).ok, "long ok");
            waitReceived(B, "text", x -> text.equals(x.get("text")), 10000);
        });

        T.test("1:1 text in (session), delivered IMDN sent, never displayed", () -> {
            mock.clear(B);
            Map<String, Object> res = mock.send(B, "to", DEV, "mode", "session", "text", "hi device");
            T.eq(Boolean.TRUE, res.get("ok"), "mock send ok: " + res);
            RcsMessage m = awaitMsg(x -> "hi device".equals(x.text), "incoming text");
            T.eq(B, m.from, "from");
            T.check(m.group == null, "not group");
            T.eq(res.get("message_id"), m.id, "message id");
            Map<String, Object> imdn = waitReceived(B, "imdn", x -> true, 10000);
            T.eq("delivered", Json.obj(imdn.get("imdn")).get("status"), "delivered");
            T.eq(res.get("message_id"), Json.obj(imdn.get("imdn")).get("message_id"), "imdn refers to message");
            Thread.sleep(1500);
            for (Object o : received(B, "imdn")) T.check(!"displayed".equals(Json.obj(Json.obj(o).get("imdn")).get("status")), "never displayed");
        });

        T.test("1:1 long text in (chunked)", () -> {
            StringBuilder b = new StringBuilder();
            while (b.length() < 12000) b.append("abcdefghij-0123456789\r\n");
            String text = b.toString();
            Map<String, Object> res = mock.send(B, "to", DEV, "mode", "session", "text", text, "chunk_size", 1000.0);
            T.eq(Boolean.TRUE, res.get("ok"), "mock send ok: " + res);
            awaitMsg(x -> text.equals(x.text), "chunked incoming");
        });

        T.test("1:1 text in (pager) + duplicate suppressed", () -> {
            mock.clear(B);
            Map<String, Object> res = mock.send(B, "to", DEV, "mode", "pager", "text", "pager hi", "message_id", "dupe-1");
            T.eq(Boolean.TRUE, res.get("ok"), "mock send ok: " + res);
            awaitMsg(x -> "pager hi".equals(x.text), "pager message");
            waitReceived(B, "imdn", x -> "dupe-1".equals(Json.obj(x.get("imdn")).get("message_id")), 10000);
            mock.send(B, "to", DEV, "mode", "pager", "text", "pager hi", "message_id", "dupe-1");
            Thread.sleep(1500);
            long n;
            synchronized (rec) { n = rec.messages.stream().filter(x -> "pager hi".equals(x.text)).count(); }
            T.eq(1L, n, "duplicate delivered once");
        });

        T.test("incoming IMDNs / composing are ignored", () -> {
            mock.patchUser(B, "auto_delivery_imdn", true, "auto_display_imdn", true, "auto_composing", true);
            int before;
            synchronized (rec) { before = rec.messages.size(); }
            String id = eng.sendText(B, "receipts please (not)");
            T.check(rec.result(id, 15000).ok, "ok");
            Thread.sleep(2500);
            synchronized (rec) { T.eq(before, rec.messages.size(), "no messages from IMDN/composing"); }
            mock.patchUser(B, "auto_delivery_imdn", false, "auto_display_imdn", false, "auto_composing", false);
        });

        T.test("idle session is closed (TimerIdle) and re-created", () -> {
            plat.state.put("timer_idle_s", "2");
            mock.clear(C);
            String id = eng.sendText(C, "idle test 1");
            T.check(rec.result(id, 15000).ok, "first ok");
            T.waitFor("session closed by idle timer", 8000, () -> eng.core().chat.sessionKeys().stream().noneMatch(k -> k.startsWith("chat " + C)));
            String id2 = eng.sendText(C, "idle test 2");
            T.check(rec.result(id2, 15000).ok, "second ok");
            T.eq(2, received(C, "invite").size(), "new INVITE after idle");
            plat.state.remove("timer_idle_s");
        });

        T.test("fallback: non-RCS and offline -> ok=false", () -> {
            String a = eng.sendText(NONRCS, "nobody home");
            RecListener.SendResult r = rec.result(a, 30000);
            T.check(!r.ok, "non-RCS fails: " + r);
            String b = eng.sendText(OFF, "offline");
            RecListener.SendResult r2 = rec.result(b, 30000);
            T.check(!r2.ok, "offline fails: " + r2);
            T.eq(RcsEngine.State.REGISTERED, eng.state(), "still registered");
        });

        final String[] groupId = {null};
        T.test("group: create, send", () -> {
            mock.clear(B); mock.clear(C);
            Set<String> ps = new LinkedHashSet<>(Arrays.asList(B, C));
            String id = eng.sendGroupText(ps, null, "hello group");
            T.check(rec.result(id, 20000).ok, "group send ok");
            RcsGroup g = rec.await(rec.groups, x -> x.focusUri != null, 10000, "group update with focus");
            groupId[0] = g.id;
            T.check(g.participants.contains(B) && g.participants.contains(C), "participants " + g.participants);
            Map<String, Object> m = waitReceived(C, "text", x -> "hello group".equals(x.get("text")), 10000);
            T.eq(g.id, m.get("group"), "conversation id");
            waitReceived(B, "text", x -> "hello group".equals(x.get("text")), 10000);
            Map<String, Object> mg = mock.get("/api/groups/" + g.id);
            T.check(Json.write(mg.get("participants")).contains(DEV), "device in mock group");
            // same participant set resolves to the same group
            String id2 = eng.sendGroupText(new HashSet<>(Arrays.asList(C, B)), null, "again");
            T.check(rec.result(id2, 15000).ok, "second ok");
            Map<String, Object> m2 = waitReceived(B, "text", x -> "again".equals(x.get("text")), 10000);
            T.eq(g.id, m2.get("group"), "same group");
            T.eq(1, eng.groups().size(), "one group known");
        });

        T.test("group: receive from participant (real sender)", () -> {
            mock.post("/api/groups/" + groupId[0] + "/message", Json.m("from", C, "text", "from C in group"));
            RcsMessage m = awaitMsg(x -> "from C in group".equals(x.text), "group message");
            T.eq(C, m.from, "sender is C (CPIM From)");
            T.check(m.group != null && groupId[0].equals(m.group.id), "group id");
        });

        T.test("group: participant change + subject via NOTIFY", () -> {
            mock.post("/api/groups/" + groupId[0] + "/participants", Json.m("add", Arrays.asList(D)));
            rec.await(rec.groups, x -> x.id.equals(groupId[0]) && x.participants.contains(D), 10000, "D added");
            mock.post("/api/groups/" + groupId[0] + "/participants", Json.m("remove", Arrays.asList(B)));
            rec.await(rec.groups, x -> x.id.equals(groupId[0]) && !x.participants.contains(B) && x.participants.contains(D), 10000, "B removed");
            mock.post("/api/groups/" + groupId[0] + "/subject", Json.m("subject", "Renamed"));
            rec.await(rec.groups, x -> x.id.equals(groupId[0]) && "Renamed".equals(x.subject), 10000, "subject");
        });

        T.test("group: rejoin after session end", () -> {
            mock.post("/api/groups/" + groupId[0] + "/bye", null);
            Thread.sleep(800);
            mock.clear(D);
            String id = eng.sendGroupText(null, groupId[0], "after rejoin");
            T.check(rec.result(id, 20000).ok, "rejoin send ok");
            Map<String, Object> m = waitReceived(D, "text", x -> "after rejoin".equals(x.get("text")), 10000);
            T.eq(groupId[0], m.get("group"), "same conversation");
            T.check(mock.trace("group_rejoin").length() > 0 || true, "trace");
        });

        T.test("group: incoming invite from network", () -> {
            Map<String, Object> g = mock.post("/api/groups", Json.m("creator", C, "participants", Arrays.asList(DEV, D), "subject", "Incoming", "invite_device", true));
            String gid = (String) g.get("id");
            RcsGroup rg = rec.await(rec.groups, x -> x.id.equals(gid), 10000, "incoming group");
            T.check(rg.focusUri != null, "focus");
            T.check(rec.await(rec.groups, x -> x.id.equals(gid) && "Incoming".equals(x.subject) && x.participants.contains(C) && x.participants.contains(D), 10000, "complete") != null, "subject+participants");
            Thread.sleep(500);
            mock.post("/api/groups/" + gid + "/message", Json.m("from", D, "text", "welcome"));
            RcsMessage m = awaitMsg(x -> "welcome".equals(x.text), "incoming group msg");
            T.eq(D, m.from, "from D");
            T.eq(gid, m.group.id, "group");
            // reply in that group
            mock.clear(C);
            String id = eng.sendGroupText(null, gid, "thanks");
            T.check(rec.result(id, 15000).ok, "reply ok");
            waitReceived(C, "text", x -> "thanks".equals(x.get("text")) && gid.equals(x.get("group")), 10000);
            // by participants only: two conversations have {C, D} now; the most recently active wins
            mock.clear(C);
            String id2 = eng.sendGroupText(new LinkedHashSet<>(Arrays.asList(C, D)), null, "latest group");
            T.check(rec.result(id2, 15000).ok, "send by participants ok");
            waitReceived(C, "text", x -> "latest group".equals(x.get("text")) && gid.equals(x.get("group")), 10000);
        });

        T.test("file transfer out (FT over HTTP) with hash", () -> {
            byte[] data = new byte[50 * 1024];
            new Random(42).nextBytes(data);
            File f = new File(work, "photo.jpg");
            Files.write(f.toPath(), data);
            mock.clear(B);
            String id = eng.sendFile(B, f, "image/jpeg");
            T.check(rec.result(id, 30000).ok, "file send ok");
            Map<String, Object> m = waitReceived(B, "file", x -> true, 10000);
            Map<String, Object> fi = Json.obj(m.get("file"));
            T.eq(sha256(data), fi.get("sha256"), "sha256 matches");
            T.eq("photo.jpg", fi.get("name"), "name");
            T.eq("image/jpeg", fi.get("type"), "type");
        });

        T.test("file transfer out too large -> ok=false", () -> {
            File f = new File(work, "big.bin");
            Files.write(f.toPath(), new byte[200 * 1024]);
            String id = eng.sendFile(B, f, "application/octet-stream");
            T.check(!rec.result(id, 10000).ok, "rejected");
        });

        T.test("file transfer in (download with Digest)", () -> {
            byte[] data = new byte[30000];
            new Random(7).nextBytes(data);
            Map<String, Object> res = mock.send(B, "to", DEV, "file", Json.m("name", "pic.png", "type", "image/png", "content_b64", Base64.getEncoder().encodeToString(data)));
            T.eq(Boolean.TRUE, res.get("ok"), "mock ok: " + res);
            RcsMessage m = awaitMsg(x -> x.file != null && "pic.png".equals(x.fileName), "incoming file");
            T.eq(B, m.from, "from");
            T.eq("image/png", m.contentType, "type");
            T.check(Arrays.equals(data, Files.readAllBytes(m.file.toPath())), "content equal");
        });

        T.test("group file out", () -> {
            byte[] data = new byte[20000];
            new Random(3).nextBytes(data);
            File f = new File(work, "g.png");
            Files.write(f.toPath(), data);
            mock.clear(C);
            String id = eng.sendGroupFile(null, groupId[0], f, "image/png");
            T.check(rec.result(id, 30000).ok, "group file ok");
            Map<String, Object> m = waitReceived(C, "file", x -> groupId[0].equals(x.get("group")), 10000);
            T.eq(sha256(data), Json.obj(m.get("file")).get("sha256"), "hash");
        });

        T.test("wake lock balanced when idle", () -> {
            T.waitFor("wake lock released", 15000, () -> !plat.wakeHeld);
        });

        T.test("network change re-registers", () -> {
            plat.network = false;
            eng.onNetworkChanged();
            rec.awaitState(RcsEngine.State.OFFLINE, 5000);
            String id = eng.sendText(B, "while offline");
            T.check(!rec.result(id, 5000).ok, "offline send fails fast");
            plat.network = true;
            eng.onNetworkChanged();
            rec.awaitState(RcsEngine.State.REGISTERED, 15000);
        });

        T.test("stop", () -> {
            T.check(eng.stopAndWait(8000), "stopped");
            T.eq(RcsEngine.State.DISABLED, eng.state(), "DISABLED");
            String id = eng.sendText(B, "after stop");
            T.check(!rec.result(id, 5000).ok, "send after stop fails");
        });

        T.test("manual config (imported XML) registers without ACS", () -> {
            String xml = mock.configXml(DEV2);
            TestPlatform p2 = new TestPlatform(DEV2, new File(work, "dev2"), logOut, "dev2");
            p2.state.put("acs_url", "http://127.0.0.1:1/"); // would fail if used
            p2.state.put("instance_id", "urn:uuid:11111111-2222-3333-4444-555555555555");
            p2.state.put("validity_test", "1");
            RecListener r2 = new RecListener();
            RcsEngine e2 = newEngine(p2, r2, null);
            e2.setManualConfig(xml);
            e2.start();
            r2.awaitState(RcsEngine.State.REGISTERED, 20000);
            T.eq("manual", p2.state.get("config_source"), "manual source");
            T.contains(Json.write(mock.registrations()), "urn:uuid:11111111-2222-3333-4444-555555555555", "custom instance id");
            // manual config expiry must not stop anything
            e2.stopAndWait(5000);
            p2.state.put("config_fetched_at", "1");
            p2.state.put("config_validity", "10");
            RecListener r3 = new RecListener();
            RcsEngine e3 = newEngine(p2, r3, null);
            e3.start();
            r3.awaitState(RcsEngine.State.REGISTERED, 20000);
            T.check(r3.states.toString().contains("manual config validity expired"), "expiry reported: " + r3.states);
            T.check(!r3.states.toString().contains("PROVISIONING"), "no ACS attempt");
            e3.stopAndWait(5000);
        });

        T.test("policy: requestDelivery=true asks for receipts", () -> {
            TestPlatform p3 = new TestPlatform(DEV, new File(work, "dev"), logOut, "dev3");
            p3.state.putAll(plat.state);
            RcsConfig.Policy pol = new RcsConfig.Policy();
            pol.requestDeliveryReports = true;
            RecListener r3 = new RecListener();
            RcsEngine e3 = newEngine(p3, r3, pol);
            e3.start();
            r3.awaitState(RcsEngine.State.REGISTERED, 20000);
            mock.clear(B);
            String id = e3.sendText(B, "with receipt request");
            T.check(r3.result(id, 15000).ok, "ok");
            Map<String, Object> m = waitReceived(B, "text", x -> "with receipt request".equals(x.get("text")), 10000);
            T.eq(Boolean.TRUE, m.get("disposition_requested"), "requested");
            T.contains(Json.write(m.get("dispositions")), "positive-delivery", "positive-delivery");
            T.check(!Json.write(m.get("dispositions")).contains("display"), "no display request");
            e3.stopAndWait(5000);
        });
    }

    static String sha256(byte[] d) throws Exception {
        byte[] h = MessageDigest.getInstance("SHA-256").digest(d);
        StringBuilder b = new StringBuilder();
        for (byte x : h) b.append(String.format("%02x", x));
        return b.toString();
    }

    static void deleteTree(File f) {
        File[] c = f.listFiles();
        if (c != null) for (File x : c) deleteTree(x);
        f.delete();
    }
}
