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

    /**
     * The user's receipt policy, enforced in code (see docs/fixes/receipts) and mirrored into
     * the settings so the switches tell the truth:
     * never request delivery or read reports (SMS/MMS), never send read reports, do send
     * MMS delivery reports (X-Mms-Report-Allowed) unless the user switches that off later.
     */
    static void applyReceiptPolicy(Context c) {
        SharedPreferences p = PreferenceManager.getDefaultSharedPreferences(c);
        SharedPreferences.Editor e = p.edit();
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
        for (String k : off) e.putBoolean(k, false);
        // Keep the previous migration level so existing receipt choices aren't reset.
        if (!p.contains("wave_prefs_version") && p.contains("argon_prefs_version")) {
            e.putInt("wave_prefs_version", p.getInt("argon_prefs_version", 0));
            e.remove("argon_prefs_version");
        } else if (p.getInt("wave_prefs_version", 0) < 1) {
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
