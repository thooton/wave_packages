import java.io.File;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

import org.wave.rcs.RcsCapabilities;
import org.wave.rcs.RcsConfig;
import org.wave.rcs.core.Caps;
import org.wave.rcs.core.Core;
import org.wave.rcs.ft.FileInfo;
import org.wave.rcs.im.Cpim;
import org.wave.rcs.im.GroupXml;
import org.wave.rcs.im.Imdn;
import org.wave.rcs.im.Multipart;
import org.wave.rcs.im.Sdp;
import org.wave.rcs.msrp.MsrpMessage;
import org.wave.rcs.msrp.MsrpSession;
import org.wave.rcs.sip.Dialog;
import org.wave.rcs.sip.NameAddr;
import org.wave.rcs.sip.SipMessage;
import org.wave.rcs.util.Digest;
import org.wave.rcs.util.Log;
import org.wave.rcs.util.U;

import static java.nio.charset.StandardCharsets.UTF_8;

/** Parser/serializer unit tests (no network except loopback MSRP). */
public final class UnitTests {
    static String root = System.getProperty("rcs.root", ".");

    public static void main(String[] a) throws Exception {
        run();
        System.exit(T.summary());
    }

    static void run() throws Exception {
        T.test("sip parse/serialize round trip", () -> {
            String raw = "INVITE tel:+15557770001 SIP/2.0\r\n"
                    + "v: SIP/2.0/TCP 10.0.0.1:5060;branch=z9hG4bKabc;rport, SIP/2.0/TCP 10.0.0.2;branch=z9hG4bKdef\r\n"
                    + "f: <sip:+15551234567@d>;tag=111\r\n"
                    + "t: <tel:+15557770001>\r\n"
                    + "i: call1@x\r\n"
                    + "CSeq: 7 INVITE\r\n"
                    + "m: <sip:+15551234567@10.0.0.1:5060;transport=tcp;ob>;+sip.instance=\"<urn:uuid:1>\";\r\n"
                    + " +g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session\"\r\n"
                    + "Record-Route: <sip:p1;lr>, <sip:p2;lr>\r\n"
                    + "c: application/sdp\r\n"
                    + "l: 4\r\n\r\nv=0\n";
            SipMessage m = SipMessage.parse(raw.getBytes(UTF_8));
            T.check(m.isRequest, "request");
            T.eq("INVITE", m.method, "method");
            T.eq("tel:+15557770001", m.uri, "uri");
            T.eq(2, m.headerValues("Via").size(), "vias");
            T.eq("z9hG4bKabc", m.branch(), "branch");
            T.eq("111", m.fromTag(), "from tag");
            T.eq("call1@x", m.callId(), "call-id");
            T.eq(7L, m.cseq(), "cseq");
            T.eq("INVITE", m.cseqMethod(), "cseq method");
            T.eq(2, m.headerValues("Record-Route").size(), "rr split");
            T.eq("application/sdp", m.mediaType(), "ct");
            T.eq("v=0\n", m.bodyString(), "body");
            NameAddr c = NameAddr.parse(m.header("Contact"));
            T.eq("<urn:uuid:1>", c.param("+sip.instance"), "instance");
            T.contains(c.param("+g.3gpp.icsi-ref"), "cpm.session", "folded icsi");
            SipMessage again = SipMessage.parse(m.toBytes());
            T.eq(m.headers.size(), again.headers.size(), "header count after round trip");
            T.contains(new String(again.toBytes(), UTF_8), "\r\nContent-Length: 4\r\n\r\nv=0\n", "length + body");
            SipMessage resp = SipMessage.parse("SIP/2.0 401 Unauthorized\r\nWWW-Authenticate: Digest realm=\"r\", nonce=\"n,1\", qop=\"auth,auth-int\"\r\nCSeq: 1 REGISTER\r\nContent-Length: 0\r\n\r\n".getBytes(UTF_8));
            T.eq(401, resp.status, "status");
            T.eq(1, resp.headerValues("WWW-Authenticate").size(), "auth not split");
        });

        T.test("name-addr parse/print", () -> {
            NameAddr a = NameAddr.parse("\"Bob, Jr\" <sip:+1555@x;user=phone>;tag=abc;isfocus;+g.oma.sip-im;expires=60");
            T.eq("Bob, Jr", a.display, "display");
            T.eq("sip:+1555@x;user=phone", a.uri, "uri");
            T.eq("abc", a.param("tag"), "tag");
            T.check(a.hasParam("isfocus"), "isfocus");
            T.eq("+1555", a.number(), "number");
            NameAddr b = NameAddr.parse("tel:+1555;tag=9");
            T.eq("tel:+1555", b.uri, "bare uri");
            T.eq("9", b.param("tag"), "bare tag");
            String s = new NameAddr("sip:x@y").setParam("+g.3gpp.icsi-ref", "urn%3Aa").setParam("reg-id", "1").toString();
            T.eq("<sip:x@y>;+g.3gpp.icsi-ref=\"urn%3Aa\";reg-id=1", s, "print");
            T.eq(Arrays.asList("<a>", "\"x,y\" <b>", "<c;p=1>"), SipMessage.splitList("<a>, \"x,y\" <b>,<c;p=1>"), "split");
        });

        T.test("digest RFC 2617 vector", () -> {
            Digest d = Digest.parse("Digest realm=\"testrealm@host.com\", qop=\"auth,auth-int\", nonce=\"dcd98b7102dd2f0e8b11d0f600bfb0c093\", opaque=\"5ccc069c403ebaf9f0171e9517f40e41\"");
            d.withCnonce("0a4f113b");
            String h = d.authorization("GET", "/dir/index.html", "Mufasa", "Circle Of Life", false);
            T.contains(h, "response=\"6629fae49393a05397450978507c4ef1\"", "response");
            T.contains(h, "nc=00000001", "nc");
            T.contains(h, "opaque=\"5ccc069c403ebaf9f0171e9517f40e41\"", "opaque");
            String h2 = d.authorization("GET", "/dir/index.html", "Mufasa", "Circle Of Life", false);
            T.contains(h2, "nc=00000002", "nc increments");
        });

        T.test("numbers and dates", () -> {
            T.eq("+15551234567", U.numberFromUri("<sip:+15551234567@x.y;user=phone>"), "sip");
            T.eq("+15551234567", U.numberFromUri("tel:+1-555-123-4567"), "tel visual separators");
            T.eq(null, U.numberFromUri("sip:chat-abc@conf.x"), "non number");
            T.check(U.sameNumber("+15551234567", "5551234567"), "same number national");
            long t = U.parseIso("2026-11-16T10:20:30.123Z");
            T.eq("2026-11-16T10:20:30.123Z", U.isoDate(t), "iso round trip");
            T.eq(t, U.parseIso("2026-11-16T05:20:30.123-05:00"), "offset");
            T.eq(t - 123, U.parseIso("2026-11-16T10:20:30Z"), "no millis");
            T.eq("urn:gsma:imei:35987654-321098-0", Core.imeiUrn("359876543210987"), "imei urn");
        });

        T.test("msrp serialize/parse, tricky bodies", () -> {
            MsrpMessage m = new MsrpMessage();
            m.tid = "abc123"; m.method = "SEND";
            m.add("To-Path", "msrp://1.2.3.4:2855/s1;tcp").add("From-Path", "msrp://5.6.7.8:9/s2;tcp");
            m.add("Message-ID", "m1").add("Byte-Range", "1-30/30").add("Content-Type", "message/cpim");
            m.body = "x\r\n-------abc12 not end\r\n-------".getBytes(UTF_8);
            m.flag = '$';
            byte[] wire = m.toBytes();
            String w = new String(wire, UTF_8);
            T.check(w.startsWith("MSRP abc123 SEND\r\nTo-Path: "), "start: " + w);
            T.check(w.endsWith("\r\n-------abc123$\r\n"), "end-line");
            MsrpMessage p = MsrpMessage.read(new java.io.ByteArrayInputStream(wire), 1 << 20);
            T.eq("SEND", p.method, "method");
            T.eq(new String(m.body, UTF_8), new String(p.body, UTF_8), "body");
            T.eq('$', p.flag, "flag");
            T.eq(30L, p.byteRange()[2], "total");
            MsrpMessage ok = new MsrpMessage();
            ok.tid = "abc123"; ok.status = 200; ok.comment = "OK";
            ok.add("To-Path", "a").add("From-Path", "b");
            MsrpMessage q = MsrpMessage.read(new java.io.ByteArrayInputStream(ok.toBytes()), 100);
            T.eq(200, q.status, "response status");
            T.eq(null, q.body, "bodiless");
        });

        T.test("msrp loopback chunking + reassembly", () -> {
            ScheduledThreadPoolExecutor ex = new ScheduledThreadPoolExecutor(1);
            Log log = new Log(new NullPlatform(), "t ");
            AtomicReference<byte[]> got = new AtomicReference<>();
            CountDownLatch rx = new CountDownLatch(1), tx = new CountDownLatch(1);
            AtomicReference<Boolean> okRef = new AtomicReference<>();
            MsrpSession server = new MsrpSession(ex, log, new MsrpSession.Listener() {
                public void onMsrpMessage(MsrpSession s, String id, String ct, byte[] body) { got.set(body); rx.countDown(); }
                public void onMsrpClosed(MsrpSession s, Throwable c) {}
            });
            int port = server.listen();
            server.localPath = MsrpSession.path("127.0.0.1", port, server.sessionId, false);
            MsrpSession client = new MsrpSession(ex, log, new MsrpSession.Listener() {
                public void onMsrpMessage(MsrpSession s, String id, String ct, byte[] body) {}
                public void onMsrpClosed(MsrpSession s, Throwable c) {}
            });
            client.localPath = MsrpSession.path("127.0.0.1", 9, client.sessionId, false);
            client.remotePath = server.localPath;
            server.remotePath = client.localPath;
            client.chunkSize = 1000;
            Thread acc = new Thread(() -> { try { server.acceptPeer(5000); } catch (Exception e) { e.printStackTrace(); } });
            acc.start();
            client.connect(null, 5000);
            acc.join();
            byte[] big = new byte[10500];
            for (int i = 0; i < big.length; i++) big[i] = (byte) ("abc\r\n-------xyz$".charAt(i % 16));
            client.send("mid1", "text/plain", big, (ok, code, reason) -> { okRef.set(ok); tx.countDown(); });
            T.check(rx.await(5, TimeUnit.SECONDS), "received");
            T.check(tx.await(5, TimeUnit.SECONDS), "sent result");
            T.check(okRef.get(), "send ok");
            T.check(Arrays.equals(big, got.get()), "reassembled equal (" + (got.get() == null ? -1 : got.get().length) + ")");
            client.close(); server.close(); ex.shutdownNow();
        });

        T.test("cpim round trip + namespaces", () -> {
            Cpim c = Cpim.create("<sip:+1@d>", "<tel:+2>", "id1", "text/plain;charset=UTF-8", "héllo\r\n\r\nx".getBytes(UTF_8), null);
            byte[] b = c.toBytes();
            String s = new String(b, UTF_8);
            T.check(!s.contains("Disposition-Notification"), "no disposition when null");
            T.contains(s, "NS: imdn <urn:ietf:params:imdn>", "ns");
            Cpim p = Cpim.parse(b);
            T.eq("id1", p.messageId, "id");
            T.eq("héllo\r\n\r\nx", p.bodyText(), "body");
            T.eq("text/plain", p.mediaType(), "type");
            T.eq("+1", U.numberFromUri(p.from), "from");
            String other = "From: <sip:+3@d>\r\nTo: <sip:+1@d>\r\nNS: im <urn:ietf:params:imdn>\r\nim.Message-ID: X9\r\n"
                    + "im.Disposition-Notification: positive-delivery, display\r\nDateTime: 2026-01-01T00:00:00Z\r\n\r\n"
                    + "Content-Type: text/plain\r\n\r\nhi";
            Cpim q = Cpim.parse(other.getBytes(UTF_8));
            T.eq("X9", q.messageId, "prefixed id");
            T.check(q.wantsDelivery(), "wants delivery");
            T.check(q.wantsDisplay(), "wants display");
            T.eq("hi", q.bodyText(), "body without length");
        });

        T.test("imdn build/parse", () -> {
            byte[] x = Imdn.delivered("m<1>", "2026-01-01T00:00:00Z");
            Imdn i = Imdn.parse(x);
            T.eq("m<1>", i.messageId, "id escaped");
            T.eq("delivery", i.kind, "kind");
            T.eq("delivered", i.status, "status");
            Imdn d = Imdn.parse(("<imdn xmlns=\"urn:ietf:params:xml:ns:imdn\"><message-id>a</message-id><datetime>x</datetime>"
                    + "<display-notification><status><displayed/></status></display-notification></imdn>").getBytes(UTF_8));
            T.eq("display", d.kind, "display kind");
            T.eq("displayed", d.status, "displayed");
        });

        T.test("sdp build/parse", () -> {
            Sdp s = Sdp.chat("10.1.2.3", 9, "msrp://10.1.2.3:9/abc;tcp", false, "active");
            Sdp p = Sdp.parse(s.toString());
            T.eq(9, p.port, "port");
            T.eq("TCP/MSRP", p.proto, "proto");
            T.eq("msrp://10.1.2.3:9/abc;tcp", p.path, "path");
            T.eq("active", p.setup, "setup");
            T.contains(p.acceptTypes, "message/cpim", "accept");
            T.contains(p.acceptWrappedTypes, "application/vnd.gsma.rcs-ft-http+xml", "wrapped");
            T.eq("10.1.2.3", p.connectionAddress, "c=");
            Sdp tls = Sdp.parse("v=0\r\nm=message 2856 TCP/TLS/MSRP *\r\na=path:msrps://h:2856/x;tcp\r\na=file-selector:name:\"a\"\r\n");
            T.check(tls.tls(), "tls");
            T.check(tls.fileSelector != null, "file-selector");
            T.eq("actpass", tls.setupOrDefault(), "default setup");
            Object[] hop = MsrpSession.firstHop("msrps://h:2856/x;tcp msrp://z:1/y;tcp");
            T.eq("h", hop[0], "hop host"); T.eq(2856, hop[1], "hop port"); T.eq(true, hop[2], "hop tls");
        });

        T.test("multipart round trip", () -> {
            Multipart mp = new Multipart();
            mp.add(new Multipart.Part("application/sdp", "v=0\r\n".getBytes(UTF_8)));
            mp.add(new Multipart.Part(GroupXml.CT_RESOURCE_LISTS, GroupXml.resourceList(Arrays.asList("tel:+1", "tel:+2"))).header("Content-Disposition", "recipient-list"));
            Multipart p = Multipart.parse(mp.contentType(), mp.toBytes());
            T.eq(2, p.parts.size(), "parts");
            T.eq("v=0\r\n", new String(p.find("application/sdp").body, UTF_8), "sdp body exact");
            T.eq(Arrays.asList("tel:+1", "tel:+2"), GroupXml.parseResourceList(p.find(GroupXml.CT_RESOURCE_LISTS).body), "entries");
            T.eq("recipient-list", p.parts.get(1).get("Content-Disposition"), "disposition");
            String foreign = "--b1\r\nContent-Type: application/sdp\r\n\r\nv=0\r\n\r\n--b1\r\nContent-Type: message/cpim\r\n\r\nFrom: <a>\r\n\r\nContent-Type: text/plain\r\n\r\nhey\r\n--b1--\r\n";
            Multipart f = Multipart.parse("multipart/mixed; boundary=\"b1\"", foreign.getBytes(UTF_8));
            T.eq(2, f.parts.size(), "foreign parts");
            T.eq("hey", Cpim.parse(f.find("message/cpim").body).bodyText(), "cpim in multipart");
        });

        T.test("conference-info", () -> {
            String x = "<?xml version=\"1.0\"?><conference-info xmlns=\"urn:ietf:params:xml:ns:conference-info\" entity=\"sip:chat-1@c\" state=\"full\" version=\"3\">"
                    + "<conference-description><subject>Team</subject></conference-description><users>"
                    + "<user entity=\"tel:+1\" state=\"full\"><endpoint entity=\"x\"><status>connected</status></endpoint></user>"
                    + "<user entity=\"sip:+2@d\" state=\"full\"><endpoint><status>disconnected</status><disconnection-method>departed</disconnection-method></endpoint></user>"
                    + "<user entity=\"tel:+3\" state=\"deleted\"/>"
                    + "<user entity=\"tel:+4\"><endpoint><status>pending</status></endpoint></user>"
                    + "</users></conference-info>";
            GroupXml.ConferenceInfo ci = GroupXml.parseConferenceInfo(x.getBytes(UTF_8));
            T.eq("Team", ci.subject, "subject");
            T.eq(4, ci.users.size(), "users");
            T.check(ci.users.get(0).member(), "+1 member");
            T.check(!ci.users.get(1).member(), "+2 departed");
            T.check(!ci.users.get(2).member(), "+3 deleted");
            T.check(ci.users.get(3).member(), "+4 pending member");
            T.eq(3, ci.version, "version");
        });

        T.test("file-info", () -> {
            FileInfo fi = new FileInfo();
            fi.file = new FileInfo.Item();
            fi.file.size = 1234; fi.file.name = "a&b.jpg"; fi.file.contentType = "image/jpeg";
            fi.file.url = "https://x/files/1?a=1&b=2"; fi.file.until = "2026-12-01T00:00:00Z";
            fi.thumbnail = new FileInfo.Item();
            fi.thumbnail.size = 10; fi.thumbnail.contentType = "image/png"; fi.thumbnail.url = "https://x/t/1";
            FileInfo p = FileInfo.parse(fi.toBytes());
            T.eq(1234L, p.file.size, "size");
            T.eq("a&b.jpg", p.file.name, "name");
            T.eq("https://x/files/1?a=1&b=2", p.file.url, "url");
            T.eq("https://x/t/1", p.thumbnail.url, "thumb");
        });

        T.test("caps from feature tags", () -> {
            RcsCapabilities c = Caps.parse(Collections.singletonList(
                    "<sip:x@y>;+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg\";+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""));
            T.check(c.chat && c.groupChat && c.fileTransferHttp && c.rcs, "all caps: " + c);
            RcsCapabilities none = Caps.parse(Collections.singletonList("<sip:x@y>"));
            T.check(!none.chat && !none.rcs, "none");
        });

        T.test("dialog requests", () -> {
            SipMessage inv = SipMessage.parse(("INVITE tel:+2 SIP/2.0\r\nVia: SIP/2.0/TCP a;branch=z9hG4bK1\r\nFrom: <sip:+1@d>;tag=L\r\nTo: <tel:+2>\r\nCall-ID: c1\r\nCSeq: 5 INVITE\r\n\r\n").getBytes(UTF_8));
            SipMessage ok = SipMessage.parse(("SIP/2.0 200 OK\r\nVia: SIP/2.0/TCP a;branch=z9hG4bK1\r\nFrom: <sip:+1@d>;tag=L\r\nTo: <tel:+2>;tag=R\r\nCall-ID: c1\r\nCSeq: 5 INVITE\r\n"
                    + "Contact: <sip:focus@c;transport=tcp>;isfocus\r\nRecord-Route: <sip:p1;lr>\r\nRecord-Route: <sip:p2;lr>\r\n\r\n").getBytes(UTF_8));
            Dialog d = Dialog.fromUac(inv, ok);
            SipMessage bye = d.newRequest("BYE");
            T.eq("sip:focus@c;transport=tcp", bye.uri, "target");
            T.eq(Arrays.asList("<sip:p2;lr>", "<sip:p1;lr>"), bye.headerValues("Route"), "reversed route set");
            T.eq("6 BYE", bye.header("CSeq"), "cseq");
            T.eq("R", bye.toTag(), "to tag");
            T.eq("5 ACK", d.ack(5).header("CSeq"), "ack cseq");
        });

        T.test("config: mock-style document", () -> {
            String xml = "<?xml version=\"1.0\"?><wap-provisioningdoc version=\"1.1\">"
                    + "<characteristic type=\"VERS\"><parm name=\"version\" value=\"3\"/><parm name=\"validity\" value=\"600\"/></characteristic>"
                    + "<characteristic type=\"TOKEN\"><parm name=\"token\" value=\"tok\"/></characteristic>"
                    + "<characteristic type=\"APPLICATION\"><parm name=\"AppID\" value=\"ap2001\"/><parm name=\"Timer_T1\" value=\"2000\"/>"
                    + "<characteristic type=\"Public_user_identity_List\"><parm name=\"Public_user_identity\" value=\"tel:+15551234567\"/><parm name=\"Public_user_identity\" value=\"sip:+15551234567@rcs.mock.test\"/></characteristic>"
                    + "<characteristic type=\"LBO_P-CSCF_Address\"><parm name=\"Address\" value=\"127.0.0.1:5060\"/><parm name=\"AddressType\" value=\"IPv4\"/></characteristic>"
                    + "<characteristic type=\"APPAUTH\"><parm name=\"AuthType\" value=\"Digest\"/><parm name=\"Realm\" value=\"rcs.mock.test\"/><parm name=\"UserName\" value=\"u@rcs.mock.test\"/><parm name=\"UserPwd\" value=\"pw\"/></characteristic>"
                    + "<parm name=\"Private_User_Identity\" value=\"u@rcs.mock.test\"/><parm name=\"Home_network_domain_name\" value=\"rcs.mock.test\"/>"
                    + "<parm name=\"RegRetryBaseTime\" value=\"5\"/></characteristic>"
                    + "<characteristic type=\"APPLICATION\"><parm name=\"AppID\" value=\"ap2002\"/>"
                    + "<characteristic type=\"SERVICES\"><parm name=\"ChatAuth\" value=\"1\"/><parm name=\"ftAuth\" value=\"0\"/></characteristic>"
                    + "<characteristic type=\"IM\"><parm name=\"MaxSize1to1\" value=\"65536\"/><parm name=\"TimerIdle\" value=\"1800\"/><parm name=\"FtWarnSize\" value=\"10240\"/>"
                    + "<parm name=\"ftHTTPCSURI\" value=\"http://127.0.0.1:8080/ft\"/><parm name=\"conf-fcty-uri\" value=\"sip:Conference-Factory@rcs.mock.test\"/><parm name=\"max_adhoc_group_size\" value=\"10\"/></characteristic>"
                    + "<characteristic type=\"OTHER\"><characteristic type=\"transportProto\"><parm name=\"psSignalling\" value=\"SIPoTCP\"/><parm name=\"psMedia\" value=\"MSRP\"/></characteristic></characteristic>"
                    + "</characteristic></wap-provisioningdoc>";
            RcsConfig c = RcsConfig.parse(xml);
            T.eq(3, c.version, "version"); T.eq(600L, c.validity, "validity"); T.eq("tok", c.token, "token");
            T.eq("sip:+15551234567@rcs.mock.test", c.preferredImpu(), "impu");
            T.eq("tel:+15551234567", c.telImpu(), "tel");
            T.eq("127.0.0.1", c.pcscfAddress, "pcscf"); T.eq(5060, c.pcscfPortOrDefault(), "port");
            T.eq("TCP", c.sipTransport, "transport"); T.check(!c.msrpTls, "msrp tcp");
            T.eq("u@rcs.mock.test", c.authUser(), "auth user"); T.eq("pw", c.userPwd, "pwd");
            T.eq("rcs.mock.test", c.domain(), "domain"); T.eq(2000, c.timerT1, "T1"); T.eq(5, c.regRetryBaseTime, "retry base");
            T.check(c.chatAuth && !c.ftAuth, "services");
            T.eq(65536L, c.maxSize1to1, "max 1to1"); T.eq(1800, c.timerIdle, "idle"); T.eq(10240L, c.ftWarnSize, "warn");
            T.eq("sip:Conference-Factory@rcs.mock.test", c.confFactoryUri, "factory"); T.eq(10, c.maxAdhocGroupSize, "max group");
            T.check(c.usable(), "usable");
        });

        T.test("config: Google Jibe document (manual import)", () -> {
            String xml = new String(Files.readAllBytes(new File(root, "tools/rcs/test/data/jibe_config.xml").toPath()), UTF_8);
            RcsConfig c = RcsConfig.parse(xml);
            T.eq(8, c.version, "version");
            T.eq(142731L, c.validity, "validity");
            T.eq("5-AAredactedTOKENredactedTOKENredacted", c.token, "token");
            T.eq(Arrays.asList("tel:+13475550123", "sip:+13475550123@us-tmobile.rcs.telephony.goog"), c.publicUserIdentities, "impus (PhoneContext_List not duplicated)");
            T.eq("sip:+13475550123@us-tmobile.rcs.telephony.goog", c.preferredImpu(), "impu");
            T.eq("us-tmobile.rcs.telephony.goog", c.pcscfAddress, "pcscf fqdn");
            T.eq("FQDN", c.pcscfAddressType, "addr type");
            T.eq("TLS", c.sipTransport, "SIPoTLS");
            T.eq(5061, c.pcscfPortOrDefault(), "default TLS port");
            T.check(c.msrpTls, "MSRPoTLS");
            T.eq("Digest", c.authType, "auth type");
            T.eq("us-tmobile.rcs.telephony.goog", c.realm, "realm");
            T.eq("+13475550123", c.authUser(), "digest user = APPAUTH UserName (not MessageStore UserName)");
            T.eq("JrWIredactedPASSWORDredacted_", c.userPwd, "pwd");
            T.eq("+13475550123@us-tmobile.rcs.telephony.goog", c.privateUserIdentity, "impi");
            T.eq("us-tmobile.rcs.telephony.goog", c.domain(), "domain");
            T.eq(600, c.timerT1, "T1"); T.eq(9500, c.timerT2, "T2");
            T.check(c.keepAliveEnabled, "keepalive");
            T.check(c.chatAuth && c.groupChatAuth && c.ftAuth && !c.standaloneMsgAuth, "services");
            T.check(c.firstMessageInvite, "firstMessageInvite");
            T.eq(8192L, c.maxSize1to1, "MaxSize1to1"); T.eq(8192L, c.maxSize1toM, "MaxSize1toM");
            T.eq(0L, c.maxSizeStandalone, "MaxSizeStandalone");
            T.eq(180, c.timerIdle, "TimerIdle");
            T.eq(104857600L, c.maxSizeFileTr, "MaxSizeFileTr"); T.eq(102400L, c.ftWarnSize, "ftWarnSize");
            T.eq("https://rcs-copper-optimized-us.googleapis.com", c.ftHttpCsUri, "ft uri");
            T.eq("+13475550123", c.ftHttpCsUser, "ft user"); T.eq("KxVredactedFTPASSWORDredactedWy", c.ftHttpCsPwd, "ft pwd");
            T.eq("sip:conference@rcs.google.com", c.confFactoryUri, "factory");
            T.eq(100, c.maxAdhocGroupSize, "max group");
            T.check(c.imCapAlwaysOn, "imCapAlwaysON");
            T.eq(10L, c.msgCapValidity, "msgCapValidity");
            T.eq(60000L, c.capPositiveTtlMs(), "cap ttl floor (capInfoExpiry 0, msgCapValidity 10)");
            T.eq(30, c.regRetryBaseTime, "retry base"); T.eq(1800, c.regRetryMaxTime, "retry max");
            T.check(c.usable(), "usable");
            T.eq("redacted", c.raw.get("authtoken"), "XGOOGLE kept only in raw");
        });
    }

    /** Platform that discards logs (for codec-level tests). */
    static final class NullPlatform implements org.wave.rcs.RcsPlatform {
        public String msisdn() { return null; } public String imsi() { return null; } public String imei() { return null; }
        public String mcc() { return null; } public String mnc() { return null; }
        public String loadState(String k) { return null; } public void saveState(String k, String v) {}
        public File filesDir() { return new File("."); }
        public void log(int level, String msg) { if (level >= 5) System.out.println("  log " + level + " " + msg); }
        public javax.net.ssl.SSLSocketFactory sslSocketFactory() { return null; }
        public boolean networkAvailable() { return true; }
        public String waitForOtp(java.util.regex.Pattern p, long t) { return null; }
        public byte[] simAkaChallenge(byte[] r, byte[] a) { return null; }
        public void acquireWakeLock(long ms) {} public void releaseWakeLock() {}
    }
}
