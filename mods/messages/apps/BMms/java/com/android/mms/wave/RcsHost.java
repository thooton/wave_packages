package com.android.mms.wave;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.SystemClock;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;

import com.android.mms.transaction.WaveRcsStore;

import org.wave.rcs.RcsCapabilities;
import org.wave.rcs.RcsConfig;
import org.wave.rcs.RcsEngine;
import org.wave.rcs.RcsGroup;
import org.wave.rcs.RcsListener;
import org.wave.rcs.RcsMessage;
import org.wave.rcs.RcsPlatform;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * FEAT(rcs): hosts the RCS engine (org.wave.rcs) inside the Messages process.
 *
 * The manifest can't change, so the engine lives in the process and the dormant, already declared
 * com.android.mms.rcs.RcsMessageStatusService is (re)used as a sticky "keep the process alive"
 * service: its onStartCommand is hooked (see {@link #onStartCommand}) for our action
 * {@value #ACTION} (and the null intent of a sticky restart); every other intent goes to the stock
 * code unchanged.
 *
 * RCS is off until a configuration is imported (Bell/Jibe can't provision a phone without Google
 * Play services, see docs/rcs/design.md): files/rcs_import/config.xml (a wap-provisioningdoc) and/or
 * files/rcs_import/state.properties (engine state keys plus enabled/instance_id/clear/reprovision),
 * written by tools/rcs/import_config.sh as root and picked up at app start or on our action.
 * The app's private directory is used on purpose: the service is exported, so only something
 * that can already write our data directory (root) can change the RCS account.
 *
 * Receipt policy: RcsConfig.Policy defaults (no delivery/display requests, send delivery
 * notifications, never send displayed/isComposing).
 */
public final class RcsHost implements RcsListener {
    public static final String TAG = "WaveRcs";
    public static final String ACTION = "org.wave.rcs.HOST";
    static final String HOST_SERVICE = "com.android.mms.rcs.RcsMessageStatusService";
    private static final String PREFS = "wave_rcs";
    private static final String K_ENABLED = "enabled";
    private static final String STATE_PREFIX = "st.";
    private static final int START_STICKY = 1;

    private static RcsHost sHost;

    private final Context ctx;
    private final SharedPreferences sp;
    private final Platform platform = new Platform();
    private final Handler handler;
    private RcsEngine engine;
    private boolean netCallbackRegistered;
    private volatile RcsEngine.State state = RcsEngine.State.DISABLED;
    private volatile String stateDetail = "";

    /** Send results: waiter or finished result per message id. */
    private final Map<String, Object> results = new HashMap<>();
    private final Object capLock = new Object();

    private RcsHost(Context c) {
        ctx = c.getApplicationContext();
        // Migrate carrier configuration and user switches from the previous release.
        sp = org.wave.mod.PreferenceMigration.open(ctx, PREFS, "argon_rcs");
        HandlerThread t = new HandlerThread("wave-rcs-host");
        t.start();
        handler = new Handler(t.getLooper());
    }

    public static synchronized RcsHost get(Context c) {
        if (sHost == null) sHost = new RcsHost(c);
        return sHost;
    }

    /** The host if RCS is registered right now, else null (send paths use this). */
    public static RcsHost registered() {
        RcsHost h;
        synchronized (RcsHost.class) { h = sHost; }
        if (h == null || h.state != RcsEngine.State.REGISTERED) return null;
        return h;
    }

    // ---------------------------------------------------------------------------------------
    // lifecycle

    /** From WaveHooks at app start (main thread): never blocks. */
    static void onAppCreate(Context app) {
        final RcsHost h = get(app);
        h.handler.post(new Runnable() {
            @Override public void run() {
                h.checkImport();
                if (h.enabled()) h.startHostService();
            }
        });
    }

    /**
     * RcsMessageStatusService.onStartCommand hook. Returns -1 to let the stock code handle the
     * intent, else the value onStartCommand must return.
     */
    public static int onStartCommand(Service s, Intent intent) {
        try {
            if (intent != null && !ACTION.equals(intent.getAction())) return -1;
            final RcsHost h = get(s);
            final String cmd = intent != null ? intent.getStringExtra("cmd") : null;
            h.handler.post(new Runnable() {
                @Override public void run() { h.command(cmd); }
            });
            return START_STICKY;
        } catch (Throwable t) {
            Log.w(TAG, "onStartCommand", t);
            return START_STICKY;
        }
    }

    private void command(String cmd) {
        checkImport();
        if ("restart".equals(cmd)) {
            stopEngine();
        }
        if (enabled()) ensureEngine(true);
        else stopEngine();
        writeStatus();
    }

    private void startHostService() {
        try {
            Intent i = new Intent(ACTION).setClassName(ctx.getPackageName(), HOST_SERVICE);
            ctx.startService(i);
        } catch (Throwable t) {
            Log.w(TAG, "start host service", t);
            ensureEngine(true);
        }
    }

    boolean enabled() {
        return sp.getBoolean(K_ENABLED, false);
    }

    /** Must run on the host handler. */
    private void ensureEngine(boolean start) {
        if (engine == null) {
            engine = new RcsEngine(platform, this, policy());
            Log.i(TAG, "engine created");
        }
        if (start) {
            registerNetworkCallback();
            engine.start();
        }
    }

    private void stopEngine() {
        RcsEngine e = engine;
        engine = null;
        if (e != null) {
            e.stopAndWait(4000);
            Log.i(TAG, "engine stopped");
        }
        state = RcsEngine.State.DISABLED;
    }

    public RcsEngine engine() {
        return engine;
    }

    // ---------------------------------------------------------------------------------------
    // configuration import

    private void checkImport() {
        File dir = new File(ctx.getFilesDir(), "rcs_import");
        File props = new File(dir, "state.properties");
        File xml = new File(dir, "config.xml");
        if (!props.exists() && !xml.exists()) return;
        ensureEngine(false);
        SharedPreferences.Editor ed = sp.edit();
        if (props.exists()) {
            Properties p = new Properties();
            try (Reader r = new InputStreamReader(new FileInputStream(props), StandardCharsets.UTF_8)) {
                p.load(r);
            } catch (Throwable t) {
                Log.w(TAG, "import: can't read state.properties", t);
            }
            if ("1".equals(p.getProperty("clear"))) {
                stopEngine();
                for (String k : new ArrayList<>(sp.getAll().keySet())) ed.remove(k);
                ed.commit();
                ed = sp.edit();
                deleteTree(platform.filesDir());
                ensureEngine(false);
                Log.i(TAG, "import: cleared all RCS state");
            }
            for (String k : p.stringPropertyNames()) {
                String v = p.getProperty(k).trim();
                switch (k) {
                    case "clear":
                    case "reprovision":
                        break;
                    case K_ENABLED:
                        ed.putBoolean(K_ENABLED, "1".equals(v) || "true".equalsIgnoreCase(v));
                        break;
                    case "instance_id":
                        engine.setInstanceId(v);
                        break;
                    default:
                        if (v.isEmpty()) ed.remove(STATE_PREFIX + k);
                        else ed.putString(STATE_PREFIX + k, v);
                }
            }
            ed.commit();
            ed = sp.edit();
            if ("1".equals(p.getProperty("reprovision"))) engine.reprovision();
            Log.i(TAG, "import: applied " + p.size() + " state keys");
            props.delete();
        }
        if (xml.exists()) {
            String s = readFile(xml);
            if (s != null && s.contains("wap-provisioningdoc")) {
                engine.setManualConfig(s);
                ed.putBoolean(K_ENABLED, true);
                Log.i(TAG, "import: manual configuration set (" + s.length() + " bytes)");
            } else {
                Log.w(TAG, "import: config.xml is not a wap-provisioningdoc, ignored");
            }
            xml.delete();
        }
        ed.commit();
        dir.delete();
    }

    private static String readFile(File f) {
        try (InputStream in = new FileInputStream(f)) {
            byte[] b = new byte[(int) Math.min(f.length(), 4 << 20)];
            int n = 0, r;
            while (n < b.length && (r = in.read(b, n, b.length - n)) > 0) n += r;
            return new String(b, 0, n, StandardCharsets.UTF_8);
        } catch (Throwable t) {
            Log.w(TAG, "read " + f, t);
            return null;
        }
    }

    private static void deleteTree(File f) {
        File[] kids = f.listFiles();
        if (kids != null) for (File k : kids) deleteTree(k);
        f.delete();
    }

    /** files/rcs_status.txt: state for tools/rcs/device_status.sh (no UI for it). */
    private void writeStatus() {
        try {
            RcsEngine e = engine;
            StringBuilder b = new StringBuilder();
            b.append("enabled=").append(enabled()).append('\n');
            b.append("state=").append(state).append('\n');
            b.append("detail=").append(stateDetail).append('\n');
            if (e != null) b.append("msisdn=").append(e.msisdn()).append('\n');
            File f = new File(ctx.getFilesDir(), "rcs_status.txt");
            try (FileOutputStream o = new FileOutputStream(f)) {
                o.write(b.toString().getBytes(StandardCharsets.UTF_8));
            }
        } catch (Throwable ignored) {
        }
    }

    // ---------------------------------------------------------------------------------------
    // settings screen (WaveRcsSettings)

    private static final String K_SEND_DELIVERY = "send_delivery_reports";

    public boolean isEnabled() { return enabled(); }

    /** An account exists (imported or provisioned configuration). */
    public boolean configured() {
        return !TextUtils.isEmpty(sp.getString(STATE_PREFIX + "config_xml", ""));
    }

    public RcsEngine.State state() { return state; }

    public String stateDetail() { return stateDetail; }

    public void setEnabled(boolean on) {
        sp.edit().putBoolean(K_ENABLED, on).commit();
        handler.post(new Runnable() {
            @Override public void run() {
                if (enabled()) startHostService();
                else { stopEngine(); writeStatus(); }
            }
        });
    }

    public boolean sendDeliveryReports() { return sp.getBoolean(K_SEND_DELIVERY, true); }

    public void setSendDeliveryReports(boolean on) {
        sp.edit().putBoolean(K_SEND_DELIVERY, on).commit();
        RcsEngine e = engine;
        if (e != null) e.core().policy.sendDeliveryReports = on;
    }

    private RcsConfig.Policy policy() {
        RcsConfig.Policy p = new RcsConfig.Policy();
        p.sendDeliveryReports = sendDeliveryReports();
        return p;
    }

    public interface CheckCallback { void onChecked(RcsEngine.State s, String detail); }

    /**
     * Registers again from scratch and reports the outcome (REGISTERED, ERROR, OFFLINE, or the
     * state after 30 s). cb runs on the host thread.
     */
    public void check(final CheckCallback cb) {
        handler.post(new Runnable() {
            @Override public void run() {
                if (!enabled()) { cb.onChecked(RcsEngine.State.DISABLED, "off"); return; }
                stopEngine();
                ensureEngine(true);
                final RcsEngine e = engine;
                final long end = SystemClock.elapsedRealtime() + 30_000;
                handler.post(new Runnable() {
                    @Override public void run() {
                        RcsEngine.State s = e.state();
                        String d = e.stateDetail();
                        boolean done = s == RcsEngine.State.REGISTERED || s == RcsEngine.State.ERROR
                                || (s == RcsEngine.State.OFFLINE && !TextUtils.isEmpty(d))
                                || (d != null && d.contains("retry in")) // attempt failed
                                || engine != e;
                        if (done || SystemClock.elapsedRealtime() > end) {
                            writeStatus();
                            cb.onChecked(s, d == null ? "" : d);
                        } else {
                            handler.postDelayed(this, 250);
                        }
                    }
                });
            }
        });
    }

    // ---------------------------------------------------------------------------------------
    // connectivity

    private void registerNetworkCallback() {
        if (netCallbackRegistered) return;
        try {
            ConnectivityManager cm = (ConnectivityManager) ctx.getSystemService(Context.CONNECTIVITY_SERVICE);
            cm.registerDefaultNetworkCallback(new ConnectivityManager.NetworkCallback() {
                @Override public void onAvailable(Network n) { networkChanged(); }
                @Override public void onLost(Network n) { networkChanged(); }
            }, handler);
            netCallbackRegistered = true;
        } catch (Throwable t) {
            Log.w(TAG, "network callback", t);
        }
    }

    private final Runnable netChanged = new Runnable() {
        @Override public void run() {
            RcsEngine e = engine;
            if (e != null) e.onNetworkChanged();
        }
    };

    private void networkChanged() {
        handler.removeCallbacks(netChanged);
        handler.postDelayed(netChanged, 1500);
    }

    // ---------------------------------------------------------------------------------------
    // helpers for the send paths

    /** Capabilities of an E.164 number; asks the network (waiting up to waitMs) if not cached. */
    public RcsCapabilities capabilities(String number, long waitMs) {
        RcsEngine e = engine;
        if (e == null || number == null) return null;
        RcsCapabilities c = e.cachedCapabilities(number);
        if (c != null || waitMs <= 0) return c;
        long end = System.currentTimeMillis() + waitMs;
        e.refreshCapabilities(number);
        synchronized (capLock) {
            while (true) {
                c = e.cachedCapabilities(number);
                long left = end - System.currentTimeMillis();
                if (c != null || left <= 0) return c;
                try { capLock.wait(Math.min(left, 500)); } catch (InterruptedException ie) { return null; }
            }
        }
    }

    /** Result of a send. */
    public static final class SendResult {
        public final boolean ok;
        public final int code;
        public final String reason;
        SendResult(boolean ok, int code, String reason) { this.ok = ok; this.code = code; this.reason = reason; }
        @Override public String toString() { return (ok ? "ok" : "failed") + " " + code + " " + reason; }
    }

    public interface ResultCallback { void onResult(SendResult r); }

    /** Calls cb once with the outcome of message id (on the engine callback thread or the host thread). */
    public void expect(final String id, final ResultCallback cb, long timeoutMs) {
        Object done;
        synchronized (results) {
            done = results.remove(id);
            if (done == null) results.put(id, cb);
        }
        if (done instanceof SendResult) {
            cb.onResult((SendResult) done);
            return;
        }
        handler.postDelayed(new Runnable() {
            @Override public void run() {
                Object w;
                synchronized (results) {
                    w = results.get(id);
                    if (w == cb) results.remove(id);
                }
                if (w == cb) cb.onResult(new SendResult(false, 0, "no result (timeout)"));
            }
        }, timeoutMs);
    }

    /** Blocking variant for send paths that run on their own thread. */
    public SendResult await(String id, long timeoutMs) {
        final SendResult[] out = new SendResult[1];
        final Object lock = new Object();
        expect(id, new ResultCallback() {
            @Override public void onResult(SendResult r) {
                synchronized (lock) {
                    if (out[0] == null) out[0] = r;
                    lock.notifyAll();
                }
            }
        }, timeoutMs);
        synchronized (lock) {
            while (out[0] == null) {
                try { lock.wait(); } catch (InterruptedException ie) { return new SendResult(false, 0, "interrupted"); }
            }
            return out[0];
        }
    }

    /**
     * MessageUtils.getActivatedIccCardCount hook: the compose screen only allows sending with an
     * active SIM; with RCS registered (manual config) messages can go out without one.
     */
    public static int activatedIccCardCount(int stock) {
        if (stock > 0) return stock;
        try {
            return registered() != null ? 1 : stock;
        } catch (Throwable t) {
            return stock;
        }
    }

    /** Our own number in E.164 (engine view), or null. */
    public String self() {
        RcsEngine e = engine;
        return e != null ? e.msisdn() : null;
    }

    /** Best-effort E.164 for a phone number as stored by the stock app; null for non-numbers. */
    public static String e164(Context c, String n) {
        if (n == null) return null;
        n = n.trim();
        int slash = n.indexOf("/TYPE=");
        if (slash >= 0) n = n.substring(0, slash);
        if (n.indexOf('@') >= 0) return null;
        String s = PhoneNumberUtils.stripSeparators(n);
        if (TextUtils.isEmpty(s)) return null;
        if (s.startsWith("+")) return s.length() > 4 && TextUtils.isDigitsOnly(s.substring(1)) ? s : null;
        if (!TextUtils.isDigitsOnly(s)) return null;
        String iso = countryIso(c);
        if (("CA".equals(iso) || "US".equals(iso))) {
            if (s.length() == 10) return "+1" + s;
            if (s.length() == 11 && s.charAt(0) == '1') return "+" + s;
        }
        String f = PhoneNumberUtils.formatNumberToE164(s, iso);
        return f;
    }

    private static String countryIso(Context c) {
        try {
            TelephonyManager tm = (TelephonyManager) c.getSystemService(Context.TELEPHONY_SERVICE);
            String iso = tm.getSimCountryIso();
            if (TextUtils.isEmpty(iso)) iso = tm.getNetworkCountryIso();
            if (!TextUtils.isEmpty(iso)) return iso.toUpperCase(Locale.ROOT);
        } catch (Throwable ignored) {
        }
        String l = Locale.getDefault().getCountry();
        return TextUtils.isEmpty(l) ? "CA" : l;
    }

    // ---------------------------------------------------------------------------------------
    // RcsListener (single engine callback thread)

    @Override
    public void onRegistrationState(RcsEngine.State s, String detail) {
        RcsEngine.State before = state;
        state = s;
        stateDetail = detail == null ? "" : detail;
        Log.i(TAG, "state " + s + (detail != null ? " (" + detail + ")" : ""));
        writeStatus();
        if (s == RcsEngine.State.REGISTERED && before != s) {
            com.android.mms.transaction.WaveRcsSend.drainQueuedAsync(ctx);
        }
    }

    @Override
    public void onMessage(RcsMessage m) {
        Log.i(TAG, "incoming " + m);
        try {
            WaveRcsStore.store(ctx, m, self());
        } catch (Throwable t) {
            Log.e(TAG, "storing incoming RCS message failed", t);
        }
    }

    @Override
    public void onSendResult(String id, boolean ok, int code, String reason) {
        Log.i(TAG, "send " + id + (ok ? " ok " : " failed ") + code + (reason != null ? " " + reason : ""));
        SendResult r = new SendResult(ok, code, reason);
        Object w;
        synchronized (results) {
            w = results.remove(id);
            if (w == null) {
                if (results.size() > 200) results.clear();
                results.put(id, r);
            }
        }
        if (w instanceof ResultCallback) {
            try {
                ((ResultCallback) w).onResult(r);
            } catch (Throwable t) {
                Log.e(TAG, "send result handler", t);
            }
        }
    }

    @Override
    public void onCapabilities(String number, RcsCapabilities caps) {
        Log.d(TAG, "caps " + caps);
        synchronized (capLock) {
            capLock.notifyAll();
        }
    }

    @Override
    public void onGroupUpdate(RcsGroup group) {
        Log.i(TAG, "group " + group.id + ": " + group.participants.size() + " participants");
    }

    // ---------------------------------------------------------------------------------------
    // RcsPlatform

    private final class Platform implements RcsPlatform {
        private PowerManager.WakeLock wl;

        private TelephonyManager tm() {
            return (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
        }

        @Override public String msisdn() {
            try {
                String n = tm().getLine1Number();
                if (!TextUtils.isEmpty(n)) return e164(ctx, n);
            } catch (Throwable ignored) {
            }
            String f = WaveSelf.fallback();
            return f != null ? e164(ctx, f) : null;
        }

        @Override public String imsi() {
            try { return tm().getSubscriberId(); } catch (Throwable t) { return null; }
        }

        @Override public String imei() {
            try { return tm().getImei(); } catch (Throwable t) { return null; }
        }

        private String op() {
            try {
                String s = tm().getSimOperator();
                return s != null && s.length() >= 5 ? s : null;
            } catch (Throwable t) {
                return null;
            }
        }

        @Override public String mcc() { String o = op(); return o == null ? null : o.substring(0, 3); }
        @Override public String mnc() { String o = op(); return o == null ? null : o.substring(3); }

        @Override public String loadState(String key) {
            return sp.getString(STATE_PREFIX + key, null);
        }

        @Override public void saveState(String key, String value) {
            if (value == null) sp.edit().remove(STATE_PREFIX + key).apply();
            else sp.edit().putString(STATE_PREFIX + key, value).apply();
        }

        @Override public File filesDir() {
            File f = new File(ctx.getFilesDir(), "rcs");
            f.mkdirs();
            return f;
        }

        private boolean verbose;
        private long verboseChecked;

        @Override public void log(int level, String msg) {
            // VERBOSE = full SIP/MSRP traffic (message contents): only with debug.wave.rcs.verbose=1
            if (level <= 2) {
                long now = System.currentTimeMillis();
                if (now - verboseChecked > 10_000 || now < verboseChecked) {
                    verbose = "1".equals(Wave.prop("debug.wave.rcs.verbose"));
                    verboseChecked = now;
                }
                if (!verbose) return;
            }
            Log.println(Math.max(2, Math.min(6, level)), TAG, msg);
        }

        @Override public javax.net.ssl.SSLSocketFactory sslSocketFactory() {
            return null;
        }

        @Override public boolean networkAvailable() {
            if (Wave.rcsTestNet()) return true; // dev: mock network through adb reverse (loopback)
            try {
                ConnectivityManager cm = (ConnectivityManager) ctx.getSystemService(Context.CONNECTIVITY_SERVICE);
                NetworkInfo ni = cm.getActiveNetworkInfo();
                return ni != null && ni.isConnected();
            } catch (Throwable t) {
                return true;
            }
        }

        /** Polls the SMS inbox for a new message matching the pattern. */
        @Override public String waitForOtp(Pattern pattern, long timeoutMs) {
            long start = System.currentTimeMillis() - 10_000;
            long end = System.currentTimeMillis() + timeoutMs;
            while (System.currentTimeMillis() < end) {
                Cursor c = null;
                try {
                    c = ctx.getContentResolver().query(Uri.parse("content://sms/inbox"),
                            new String[] { "body" }, "date >= ?", new String[] { String.valueOf(start) },
                            "date DESC LIMIT 5");
                    while (c != null && c.moveToNext()) {
                        String body = c.getString(0);
                        if (body == null) continue;
                        Matcher m = pattern.matcher(body);
                        if (m.find()) return m.groupCount() > 0 && m.group(1) != null ? m.group(1) : m.group();
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "otp poll", t);
                } finally {
                    if (c != null) c.close();
                }
                try { Thread.sleep(2000); } catch (InterruptedException ie) { return null; }
            }
            return null;
        }

        /** EAP-AKA via the USIM (TelephonyManager.getIccAuthentication, privileged). */
        @Override public byte[] simAkaChallenge(byte[] rand, byte[] autn) {
            try {
                byte[] in = new byte[2 + rand.length + autn.length];
                in[0] = (byte) rand.length;
                System.arraycopy(rand, 0, in, 1, rand.length);
                in[1 + rand.length] = (byte) autn.length;
                System.arraycopy(autn, 0, in, 2 + rand.length, autn.length);
                String r = tm().getIccAuthentication(2 /* APPTYPE_USIM */, 129 /* AUTHTYPE_EAP_AKA */,
                        Base64.encodeToString(in, Base64.NO_WRAP));
                if (r == null) return null;
                byte[] out = Base64.decode(r, Base64.DEFAULT);
                if (out.length < 2 || (out[0] & 0xff) != 0xDB) return null; // 0xDC = sync failure
                int len = out[1] & 0xff;
                byte[] res = new byte[len];
                System.arraycopy(out, 2, res, 0, len);
                return res;
            } catch (Throwable t) {
                Log.w(TAG, "sim aka", t);
                return null;
            }
        }

        @Override public synchronized void acquireWakeLock(long ms) {
            try {
                if (wl == null) {
                    PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
                    wl = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "WaveRcs");
                    wl.setReferenceCounted(false);
                }
                wl.acquire(Math.max(1000, ms));
            } catch (Throwable t) {
                Log.w(TAG, "wakelock", t);
            }
        }

        @Override public synchronized void releaseWakeLock() {
            try {
                if (wl != null && wl.isHeld()) wl.release();
            } catch (Throwable ignored) {
            }
        }
    }
}
