import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.net.ssl.SSLSocketFactory;

import org.wave.rcs.RcsPlatform;

/** Host implementation of RcsPlatform for tests: in-memory state, OTP from the mock control API. */
public final class TestPlatform implements RcsPlatform {
    public final String number;
    public final Map<String, String> state = new ConcurrentHashMap<>();
    public final File dir;
    public volatile boolean network = true;
    public volatile Mock mock;
    public final AtomicInteger wakeAcquires = new AtomicInteger(), wakeReleases = new AtomicInteger();
    public volatile boolean wakeHeld;
    public volatile int otpRequests;
    private final PrintStream logOut;
    private final String tag;
    public volatile int minLevel = 3;

    public TestPlatform(String number, File dir, PrintStream log, String tag) {
        this.number = number; this.dir = dir; this.logOut = log; this.tag = tag;
        dir.mkdirs();
    }

    @Override public String msisdn() { return number; }
    @Override public String imsi() { return "302610" + number.substring(number.length() - 9); }
    @Override public String imei() { return "359876543210987"; }
    @Override public String mcc() { return "302"; }
    @Override public String mnc() { return "610"; }
    @Override public String loadState(String key) { return state.get(key); }
    @Override public void saveState(String key, String value) { if (value == null) state.remove(key); else state.put(key, value); }
    @Override public File filesDir() { return dir; }

    @Override public void log(int level, String msg) {
        if (level < minLevel) return;
        String l = "VDIWE".substring(Math.max(0, Math.min(4, level - 2)), Math.max(1, Math.min(5, level - 1)));
        synchronized (logOut) { logOut.println(String.format("%tT.%<tL %s %s %s", System.currentTimeMillis(), tag, l, msg)); }
    }

    @Override public SSLSocketFactory sslSocketFactory() { return ssl; }
    public volatile SSLSocketFactory ssl;
    @Override public boolean networkAvailable() { return network; }

    @Override public String waitForOtp(Pattern pattern, long timeoutMs) {
        otpRequests++;
        long end = System.currentTimeMillis() + Math.min(timeoutMs, 15000);
        while (System.currentTimeMillis() < end) {
            try {
                String otp = mock.otp(number);
                if (otp != null) {
                    String sms = "Your RCS verification code is " + otp + ".";
                    Matcher m = pattern.matcher(sms);
                    if (m.find()) return m.groupCount() >= 1 ? m.group(1) : m.group();
                }
            } catch (Exception ignored) {}
            try { Thread.sleep(200); } catch (InterruptedException e) { return null; }
        }
        return null;
    }

    @Override public byte[] simAkaChallenge(byte[] rand, byte[] autn) { return null; }

    @Override public void acquireWakeLock(long ms) { wakeAcquires.incrementAndGet(); wakeHeld = true; }
    @Override public void releaseWakeLock() { wakeReleases.incrementAndGet(); wakeHeld = false; }

    public static PrintStream logFile(File f) throws Exception {
        f.getParentFile().mkdirs();
        return new PrintStream(new FileOutputStream(f, true), true, "UTF-8");
    }
}
