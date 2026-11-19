import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.argon.rcs.RcsCapabilities;
import org.argon.rcs.RcsEngine;
import org.argon.rcs.RcsGroup;
import org.argon.rcs.RcsListener;
import org.argon.rcs.RcsMessage;

/** Records every listener callback; tests wait on them. */
public final class RecListener implements RcsListener {
    public static final class SendResult {
        public final String id; public final boolean ok; public final int code; public final String reason;
        SendResult(String id, boolean ok, int code, String reason) { this.id = id; this.ok = ok; this.code = code; this.reason = reason; }
        @Override public String toString() { return id + " ok=" + ok + " " + code + " " + reason; }
    }
    public static final class Caps {
        public final String number; public final RcsCapabilities caps;
        Caps(String n, RcsCapabilities c) { number = n; caps = c; }
    }

    public final List<String> states = new ArrayList<>();
    public final List<RcsMessage> messages = new ArrayList<>();
    public final List<SendResult> results = new ArrayList<>();
    public final List<Caps> caps = new ArrayList<>();
    public final List<RcsGroup> groups = new ArrayList<>();
    public volatile RcsEngine.State state;

    @Override public synchronized void onRegistrationState(RcsEngine.State s, String detail) {
        state = s;
        states.add(s + ":" + detail);
        notifyAll();
    }
    @Override public synchronized void onMessage(RcsMessage m) { messages.add(m); notifyAll(); }
    @Override public synchronized void onSendResult(String id, boolean ok, int code, String reason) {
        results.add(new SendResult(id, ok, code, reason)); notifyAll();
    }
    @Override public synchronized void onCapabilities(String number, RcsCapabilities c) { caps.add(new Caps(number, c)); notifyAll(); }
    @Override public synchronized void onGroupUpdate(RcsGroup g) { groups.add(g); notifyAll(); }

    public synchronized <X> X await(List<X> list, Predicate<X> p, long timeoutMs, String what) throws InterruptedException {
        long end = System.currentTimeMillis() + timeoutMs;
        while (true) {
            for (X x : list) if (p.test(x)) return x;
            long left = end - System.currentTimeMillis();
            if (left <= 0) throw new AssertionError("timeout waiting for " + what);
            wait(left);
        }
    }

    public SendResult result(String id, long timeoutMs) throws InterruptedException {
        return await(results, r -> r.id.equals(id), timeoutMs, "send result " + id);
    }

    public void awaitState(RcsEngine.State s, long timeoutMs) throws InterruptedException {
        long end = System.currentTimeMillis() + timeoutMs;
        synchronized (this) {
            while (state != s) {
                long left = end - System.currentTimeMillis();
                if (left <= 0) throw new AssertionError("timeout waiting for state " + s + ", states=" + states);
                wait(left);
            }
        }
    }

    public synchronized int count(List<?> l) { return l.size(); }
}
