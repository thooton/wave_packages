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
        try {
            applyReceiptPolicy(app);
        } catch (Throwable t) {
            Log.w(TAG, "receipt policy", t);
        }
        try {
            // Held MMS notifications whose download never reported back (killed/rebooted).
            WaveMmsReceive.sweepAsync(app, false);
            final Context c = app.getApplicationContext();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public void run() {
                    WaveMmsReceive.sweepAsync(c, false);
                }
            }, 200 * 1000L);
        } catch (Throwable t) {
            Log.w(TAG, "mms sweep", t);
        }
        try {
            WaveIMessageHost.onAppCreate(app);
        } catch (Throwable t) {
            Log.w(TAG, "imessage init", t);
        }
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
