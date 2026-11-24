import com.android.mms.wave.imsg.*;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;

/**
 * Host-side driver for imessage_interop_test.py: the phone's PushClient itself (threads, outbox,
 * ACK deadline, reconnects) against imsg-server, through a relay that can go silent the way a NAT
 * that forgot the connection does (bytes vanish both ways, nothing closes).
 */
public class PushClientInteropTest {
    static final String HOST = "localhost";

    static void check(boolean cond, String msg) {
        if (!cond) throw new AssertionError("FAIL: " + msg);
        System.out.println("  ok: " + msg);
    }

    /** TCP relay to the server; while {@code dead}, every connection it carries is dead for good. */
    static final class Relay {
        final ServerSocket ss;
        final int upstream;
        volatile boolean dead;
        final AtomicInteger accepted = new AtomicInteger();

        Relay(int upstream) throws IOException {
            this.upstream = upstream;
            ss = new ServerSocket(0, 50, InetAddress.getLoopbackAddress());
            Thread t = new Thread(this::acceptLoop, "relay-accept");
            t.setDaemon(true);
            t.start();
        }

        int port() {
            return ss.getLocalPort();
        }

        void acceptLoop() {
            while (true) {
                try {
                    Socket c = ss.accept();
                    accepted.incrementAndGet();
                    Thread t = new Thread(() -> serve(c), "relay-conn");
                    t.setDaemon(true);
                    t.start();
                } catch (IOException e) {
                    return;
                }
            }
        }

        void serve(Socket c) {
            final boolean[] killed = {dead};
            Socket u = null;
            try {
                if (!killed[0]) u = new Socket(InetAddress.getLoopbackAddress(), upstream);
            } catch (IOException e) {
                closeQuietly(c);
                return;
            }
            if (u != null) {
                final Socket up = u;
                Thread back = new Thread(() -> pump(up, c, killed), "relay-down");
                back.setDaemon(true);
                back.start();
            }
            pump(c, u, killed);
        }

        void pump(Socket from, Socket to, boolean[] killed) {
            byte[] buf = new byte[16384];
            try {
                InputStream in = from.getInputStream();
                int n;
                while ((n = in.read(buf)) > 0) {
                    if (dead) killed[0] = true;
                    if (!killed[0] && to != null) {
                        to.getOutputStream().write(buf, 0, n);
                        to.getOutputStream().flush();
                    }
                }
            } catch (IOException ignored) {
            }
            closeQuietly(from);
            if (!killed[0]) closeQuietly(to);
        }

        static void closeQuietly(Socket s) {
            try {
                if (s != null) s.close();
            } catch (IOException ignored) {
            }
        }
    }

    static final BlockingQueue<Body> bodies = new LinkedBlockingQueue<>();
    static final List<Body> seen = Collections.synchronizedList(new ArrayList<>());
    static final List<String> logs = new CopyOnWriteArrayList<>();

    static PushClient.Listener listener() {
        return new PushClient.Listener() {
            public void onStatusChanged(PushClient.Status status, String detail) {}
            public void onConnected(int intervalS, String networkKey) {}
            public void onDisconnected(String reason) {}
            public void onBody(long seq, Body body) {
                seen.add(body);
                bodies.add(body);
            }
            public void onIntervalUpdated(int intervalS, String networkKey) {}
            public void onLog(String message) {
                logs.add(message);
                System.out.println("    [client] " + message);
            }
        };
    }

    static Body await(int kind, String clientMsgId, long timeoutMs) throws InterruptedException {
        long deadline = System.currentTimeMillis() + timeoutMs;
        while (System.currentTimeMillis() < deadline) {
            Body b = bodies.poll(deadline - System.currentTimeMillis(), TimeUnit.MILLISECONDS);
            if (b == null) break;
            if (b.kind == kind && (clientMsgId == null || clientMsgId.equals(b.clientMsgId))) return b;
        }
        return null;
    }

    static Body awaitEcho(String text, long timeoutMs) throws InterruptedException {
        long deadline = System.currentTimeMillis() + timeoutMs;
        while (System.currentTimeMillis() < deadline) {
            Body b = bodies.poll(deadline - System.currentTimeMillis(), TimeUnit.MILLISECONDS);
            if (b == null) break;
            if (b.kind == Body.KIND_INCOMING_MESSAGE && text.equals(b.text)) return b;
        }
        return null;
    }

    static boolean waitFor(java.util.function.BooleanSupplier cond, long timeoutMs) throws InterruptedException {
        long deadline = System.currentTimeMillis() + timeoutMs;
        while (System.currentTimeMillis() < deadline) {
            if (cond.getAsBoolean()) return true;
            Thread.sleep(50);
        }
        return cond.getAsBoolean();
    }

    static boolean logged(String part) {
        for (String l : logs) if (l.contains(part)) return true;
        return false;
    }

    static long countEchoes(String text) {
        synchronized (seen) {
            return seen.stream().filter(b -> b.kind == Body.KIND_INCOMING_MESSAGE && text.equals(b.text)).count();
        }
    }

    public static void main(String[] args) throws Exception {
        int port = Integer.parseInt(args[0]);
        String token = args[1];
        File work = new File(args[2]);
        String mode = args.length > 3 ? args[3] : "main";
        HttpsURLConnection.setDefaultHostnameVerifier((h, s) -> HOST.equals(h));
        Relay relay = new Relay(port);
        List<String> peer = Collections.singletonList("tel:+15557654321");

        PushClient.Config cfg = new PushClient.Config();
        cfg.mainHost = HOST;
        cfg.mainPort = relay.port();
        cfg.tokenHex = token;
        cfg.stateFile = new File(work, "pushclient.state");
        cfg.autoProbe = false;

        if ("server-reset".equals(mode)) {
            // The server lost its state for us (new VPS, wiped state_dir) and numbers its messages
            // from 1 again; ours still says we have up to N. They must not be dropped as duplicates.
            ClientState before = ClientState.loadOrDefault(cfg.stateFile);
            check(before.getLastRxSeq() > 2 && before.getServerEpoch() != 0,
                    "kept client state: lastRxSeq " + before.getLastRxSeq());
            PushClient pc = new PushClient(cfg, listener());
            pc.start();
            check(waitFor(pc::isConnected, 15_000), "connected to the wiped server");
            check(waitFor(() -> logged("Server state is new"), 5_000), "client noticed the server's new epoch");
            String id = pc.sendMessage(peer, "pc after server reset", "guid-pc", null);
            Body r = await(Body.KIND_SEND_RESULT, id, 15_000);
            check(r != null && r.ok, "send result from the wiped server arrives (seq 1 not dropped)");
            check(awaitEcho("pc after server reset", 10_000) != null, "its echo arrives too");
            pc.stop();
            System.out.println("PASS: PushClient after a server state reset");
            return;
        }

        PushClient pc = new PushClient(cfg, listener());
        pc.start();
        check(waitFor(pc::isConnected, 15_000), "PushClient connected through the relay");

        String id1 = pc.sendMessage(peer, "pc hello", "guid-pc", null);
        Body r1 = await(Body.KIND_SEND_RESULT, id1, 15_000);
        check(r1 != null && r1.ok, "send result for a normal send");
        check(awaitEcho("pc hello", 15_000) != null, "echo of a normal send");
        check(pc.isAccepted(id1) && pc.getOutboxSize() == 0, "a normal send is ACKed (accepted, outbox empty)");

        // The NAT forgets the connection: the MSG vanishes, nothing tells us. The ACK deadline must
        // notice and reconnect (instead of the next keepalive), and the resend must get through.
        relay.dead = true;
        int before = relay.accepted.get();
        String id2 = pc.sendMessage(peer, "pc through a dead link", "guid-pc", null);
        Thread.sleep(1500);
        check(!pc.isAccepted(id2) && pc.getOutboxSize() == 1, "unACKed send stays in the outbox, not accepted");
        check(waitFor(() -> logged("No ACK"), 15_000), "ACK deadline declares the connection dead");
        relay.dead = false;
        Body r2 = await(Body.KIND_SEND_RESULT, id2, 30_000);
        check(r2 != null && r2.ok && relay.accepted.get() > before, "resent on a new connection and sent");
        check(waitFor(() -> pc.isAccepted(id2), 5_000), "the resend is accepted");
        check(awaitEcho("pc through a dead link", 10_000) != null, "echo of the resend");

        // The sender gives up on a send the server never got: taking it back means it is never sent,
        // even though the connection comes back afterwards.
        relay.dead = true;
        String id3 = pc.sendMessage(peer, "pc taken back", "guid-pc", null);
        Thread.sleep(1000);
        check(pc.cancelIfPending(id3) && pc.getOutboxSize() == 0, "unACKed send taken back");
        check(!pc.cancelIfPending(id3), "taking it back twice is a no-op");
        check(waitFor(() -> !pc.isConnected(), 15_000), "dead connection dropped");
        relay.dead = false;
        check(waitFor(pc::isConnected, 30_000), "reconnected");
        String id4 = pc.sendMessage(peer, "pc after", "guid-pc", null);
        Body r4 = await(Body.KIND_SEND_RESULT, id4, 15_000);
        check(r4 != null && r4.ok, "next send goes out");
        check(awaitEcho("pc after", 10_000) != null, "echo of the next send");
        Thread.sleep(1500);
        boolean leaked;
        synchronized (seen) {
            leaked = seen.stream().anyMatch(b -> id3.equals(b.clientMsgId));
        }
        check(!leaked && countEchoes("pc taken back") == 0, "the taken-back send never reached the server");
        check(countEchoes("pc through a dead link") == 1, "the resent message went out exactly once");
        pc.stop();

        // The phone loses its state (app data cleared, unreadable file): its seqs start at 1 again,
        // which the server has seen. They must be taken as new, not dropped as duplicates (and
        // the WELCOME must not ACK them away).
        check(cfg.stateFile.delete(), "client state deleted");
        bodies.clear();
        PushClient fresh = new PushClient(cfg, listener());
        fresh.start();
        check(waitFor(fresh::isConnected, 15_000), "fresh client state connected");
        String id5 = fresh.sendMessage(peer, "pc fresh state", "guid-pc", null);
        Body r5 = await(Body.KIND_SEND_RESULT, id5, 15_000);
        check(r5 != null && r5.ok, "send from a fresh client state goes out (seq 1 not dropped)");
        check(awaitEcho("pc fresh state", 10_000) != null, "its echo arrives");
        check(waitFor(() -> fresh.getOutboxSize() == 0, 5_000), "and is ACKed");
        fresh.stop();
        System.out.println("PASS: PushClient ACK deadline, resend, take-back and a client state reset against imsg-server");
    }
}
