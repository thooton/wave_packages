import java.io.File;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.wave.rcs.RcsEngine;
import org.wave.rcs.RcsMessage;

/** SIPoTLS + MSRPoTLS against a mock started with --tls --no-otp (run_tests.sh starts it). */
public final class TlsTests {
    static final String DEV = "+15551234000";
    static final String B = "+15557770001";

    public static void main(String[] a) throws Exception {
        int acs = Integer.getInteger("mock.acs", 38080);
        Mock mock = new Mock(Integer.getInteger("mock.control", 38099), acs);
        File work = new File(System.getProperty("rcs.work", "build/rcs-test/work-tls"));
        IntegrationTests.deleteTree(work);
        work.mkdirs();
        java.io.PrintStream log = TestPlatform.logFile(new File(work, "engine.log"));
        mock.reset();
        mock.user(B);
        TestPlatform p = new TestPlatform(DEV, new File(work, "dev"), log, "tls");
        p.mock = mock;
        p.ssl = trustAll();
        p.state.put("acs_url", "https://127.0.0.1:" + Integer.getInteger("mock.acss", 38443) + "/");
        RecListener rec = new RecListener();
        RcsEngine eng = new RcsEngine(p, rec, null);
        try {
            T.test("tls: HTTPS provisioning + SIPoTLS registration", () -> {
                eng.start();
                rec.awaitState(RcsEngine.State.REGISTERED, 30000);
                T.eq("TLS", eng.config().sipTransport, "provisioned TLS");
                T.check(eng.config().msrpTls, "MSRPoTLS");
                String regs = Json.write(mock.registrations());
                T.contains(regs.toLowerCase(), "tls", "registered over TLS: " + regs);
            });
            T.test("tls: 1:1 text out over MSRPS", () -> {
                String id = eng.sendText(B, "secure hello");
                T.check(rec.result(id, 20000).ok, "ok");
                Map<String, Object> m = null;
                for (int i = 0; i < 50 && m == null; i++) {
                    for (Object o : mock.received(B, "text")) if ("secure hello".equals(Json.obj(o).get("text"))) m = Json.obj(o);
                    Thread.sleep(100);
                }
                T.check(m != null, "B got it");
                List<Object> inv = mock.received(B, "invite");
                T.contains(Json.write(inv), "TCP/TLS/MSRP", "TLS media in SDP");
            });
            T.test("tls: 1:1 text in over MSRPS", () -> {
                Map<String, Object> res = mock.send(B, "to", DEV, "mode", "session", "text", "secure in");
                T.eq(Boolean.TRUE, res.get("ok"), "mock ok " + res);
                RcsMessage m = rec.await(rec.messages, x -> "secure in".equals(x.text), 20000, "incoming");
                T.eq(B, m.from, "from");
            });
        } finally {
            eng.stopAndWait(5000);
        }
        System.exit(T.summary());
    }

    static javax.net.ssl.SSLSocketFactory trustAll() throws Exception {
        TrustManager[] tm = {new X509TrustManager() {
            public void checkClientTrusted(X509Certificate[] c, String a) {}
            public void checkServerTrusted(X509Certificate[] c, String a) {}
            public X509Certificate[] getAcceptedIssuers() { return new X509Certificate[0]; }
        }};
        SSLContext ctx = SSLContext.getInstance("TLS");
        ctx.init(null, tm, new SecureRandom());
        return ctx.getSocketFactory();
    }
}
