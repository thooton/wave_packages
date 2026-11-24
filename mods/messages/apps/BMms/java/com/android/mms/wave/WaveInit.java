package com.android.mms.wave;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.util.Log;

import com.android.mms.transaction.WaveMmsReceive;

/** Messages Improved startup, called at the end of MmsApp.onCreate. Must never throw. */
public final class WaveInit {
    private static final String TAG = "Wave";
    private static boolean sDone;

    private WaveInit() {}

    public static synchronized void onAppCreate(Application app) {
        if (sDone) return;
        sDone = true;
        final Context c = app.getApplicationContext();
        final Handler main = new Handler(Looper.getMainLooper());
        // PERF: run SharedPreferences receipt-policy check off the main thread.
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    applyReceiptPolicy(c);
                } catch (Throwable ex) {
                    Log.w(TAG, "receipt policy", ex);
                }
            }
        }, "wave-receipt-policy");
        t.setDaemon(true);
        t.start();
        try {
            // PERF: defer held-MMS TelephonyProvider sweep 2s past initial frame #1 so it never
            // contends with cold inbox/conversation SQLite queries.
            main.postDelayed(new Runnable() {
                @Override
                public void run() {
                    try {
                        WaveMmsReceive.sweepAsync(c, false);
                    } catch (Throwable ignored) {}
                }
            }, 2000L);
            main.postDelayed(new Runnable() {
                @Override
                public void run() {
                    WaveMmsReceive.sweepAsync(c, false);
                }
            }, 200 * 1000L);
        } catch (Throwable ex) {
            Log.w(TAG, "mms sweep", ex);
        }
        try {
            WaveIMessageHost.onAppCreate(app);
        } catch (Throwable ex) {
            Log.w(TAG, "imessage init", ex);
        }
    }

    private static volatile long sSmsEnabledAtMs;
    private static volatile boolean sSmsEnabledVal;

    /** Short-TTL cache for MmsConfig.isSmsEnabled() to avoid repeated Binder IPCs during launch. */
    public static boolean isSmsEnabledCached(Context c) {
        long now = android.os.SystemClock.uptimeMillis();
        if (now - sSmsEnabledAtMs < 2000L && sSmsEnabledAtMs != 0L) {
            return sSmsEnabledVal;
        }
        String pkg = android.provider.Telephony.Sms.getDefaultSmsPackage(c);
        boolean enabled = "com.android.mms".equals(pkg);
        sSmsEnabledVal = enabled;
        sSmsEnabledAtMs = now;
        return enabled;
    }

    /** Run PreferenceManager.setDefaultValues off the main thread during cold startup. */
    public static void setDefaultValuesAsync(final Context c, final int xmlResId) {
        final Context app = c.getApplicationContext();
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    PreferenceManager.setDefaultValues(app, xmlResId, false);
                } catch (Throwable ignored) {}
            }
        }, "wave-def-prefs");
        t.setDaemon(true);
        t.start();
    }

    private static volatile long sAirplaneCheckedAt;
    private static volatile boolean sAirplaneCached;

    private static final android.util.SparseIntArray BOOL_RES_CACHE = new android.util.SparseIntArray(16);

    /** Cached Resources.getBoolean(resId) for immutable XML config flags read on every Activity open. */
    public static boolean getBoolResCached(Context c, int resId) {
        synchronized (BOOL_RES_CACHE) {
            int v = BOOL_RES_CACHE.get(resId, -1);
            if (v >= 0) return v == 1;
        }
        boolean b = c.getResources().getBoolean(resId);
        synchronized (BOOL_RES_CACHE) {
            BOOL_RES_CACHE.put(resId, b ? 1 : 0);
        }
        return b;
    }

    /** Cached Settings.Global.AIRPLANE_MODE_ON (2s TTL) to avoid SettingsProvider IPC on every onResume/keystroke. */
    public static boolean isAirplaneModeCached(Context c) {
        long now = android.os.SystemClock.uptimeMillis();
        if (sAirplaneCheckedAt != 0L && (now - sAirplaneCheckedAt) < 2000L) {
            return sAirplaneCached;
        }
        boolean on = false;
        try {
            on = android.provider.Settings.Global.getInt(
                    c.getContentResolver(), "airplane_mode_on", 0) == 1;
        } catch (Throwable ignored) {}
        sAirplaneCached = on;
        sAirplaneCheckedAt = now;
        return on;
    }

    /** Run PackageManager.setComponentEnabledSetting off the main thread, only if state differs. */
    public static void applyComponentStateAsync(final Context c, final Class<?> cls, final int state) {
        final Context app = c.getApplicationContext();
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    android.content.pm.PackageManager pm = app.getPackageManager();
                    android.content.ComponentName cn = new android.content.ComponentName(app, cls);
                    if (pm.getComponentEnabledSetting(cn) != state) {
                        pm.setComponentEnabledSetting(cn, state, android.content.pm.PackageManager.DONT_KILL_APP);
                    }
                } catch (Throwable ignored) {}
            }
        }, "wave-pm-state");
        t.setDaemon(true);
        t.start();
    }

    /** Defer Conversation.init() cacheAllThreads past frame #1 to avoid TelephonyProvider SQLite contention. */
    public static void deferConversationInit(final Context c) {
        final Context app = c.getApplicationContext();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    Class<?> cls = Class.forName("com.android.mms.data.Conversation");
                    cls.getMethod("init", Context.class).invoke(null, app);
                } catch (Throwable ignored) {}
            }
        }, 600L);
    }

    /** Defer MmsApp.registerMobileDataObserver() ContentService IPC past initial launch. */
    public static void deferMobileDataObserver(final Context c) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    java.lang.reflect.Method m = c.getClass().getDeclaredMethod("registerMobileDataObserver");
                    m.setAccessible(true);
                    m.invoke(c);
                } catch (Throwable ignored) {}
            }
        }, 400L);
    }

    /** Defer CountryDetector.addCountryListener() Binder IPC off the critical cold-start path. */
    public static void deferCountryListener(final Object detector, final Object listener, final Looper looper) {
        if (detector == null || listener == null) return;
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    Class<?> listenerCls = Class.forName("android.location.CountryListener");
                    detector.getClass()
                            .getMethod("addCountryListener", listenerCls, Looper.class)
                            .invoke(detector, listener, looper);
                } catch (Throwable ignored) {}
            }
        }, 500L);
    }

    /** Defer cold-start pending-message broadcast/service wakeup past the initial UI launch. */
    public static void deferActivePending(final Context c) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    java.lang.reflect.Method m = c.getClass().getDeclaredMethod("activePendingMessages");
                    m.setAccessible(true);
                    m.invoke(c);
                } catch (Throwable ignored) {}
            }
        }, 1500L);
    }

    /**
     * The user's receipt policy, enforced in code (see docs/fixes/receipts) and mirrored into
     * the settings so the switches tell the truth:
     * never request delivery or read reports (SMS/MMS), never send read reports, do send
     * MMS delivery reports (X-Mms-Report-Allowed) unless the user switches that off later.
     */
    static void applyReceiptPolicy(Context c) {
        SharedPreferences p = PreferenceManager.getDefaultSharedPreferences(c);
        String[] off = {
                "pref_key_sms_delivery_reports", "pref_key_sms_delivery_reports_no_multi",
                "pref_key_sms_delivery_reports_slot1", "pref_key_sms_delivery_reports_slot2",
                "pref_key_sms_delivery_reports_sim1", "pref_key_sms_delivery_reports_sim2",
                "pref_key_mms_delivery_reports", "pref_key_mms_delivery_reports_ss",
                "pref_key_mms_delivery_reports_card1", "pref_key_mms_delivery_reports_card2",
                "pref_key_mms_read_reports", "pref_key_mms_read_reports_ss",
                "pref_key_mms_read_reports_card1", "pref_key_mms_read_reports_card2",
                "pref_key_mms_send_read_report",
        };
        boolean dirty = false;
        for (String k : off) {
            if (!p.contains(k) || p.getBoolean(k, true)) {
                dirty = true;
                break;
            }
        }
        boolean migrateArgon = !p.contains("wave_prefs_version") && p.contains("argon_prefs_version");
        boolean needsInit = !migrateArgon && p.getInt("wave_prefs_version", 0) < 1;
        if (!dirty && !migrateArgon && !needsInit) return;

        SharedPreferences.Editor e = p.edit();
        for (String k : off) e.putBoolean(k, false);
        // Keep the previous migration level so existing receipt choices aren't reset.
        if (migrateArgon) {
            e.putInt("wave_prefs_version", p.getInt("argon_prefs_version", 0));
            e.remove("argon_prefs_version");
        } else if (needsInit) {
            e.putBoolean("pref_key_mms_send_delivery_report", true);
            e.putInt("wave_prefs_version", 1);
        }
        e.apply();
    }

    /** MMS: allow the MMSC to send the sender a delivery report (pref, default on). */
    public static boolean sendMmsDeliveryReports(Context c) {
        return PreferenceManager.getDefaultSharedPreferences(c)
                .getBoolean("pref_key_mms_send_delivery_report", true);
    }
}
