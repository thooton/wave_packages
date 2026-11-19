package com.android.mms.argon;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.util.Log;

import com.android.mms.transaction.ArgonMmsReceive;

/** Messages Argon startup, called at the end of MmsApp.onCreate. Must never throw. */
public final class ArgonInit {
    private static final String TAG = "Argon";
    private static boolean sDone;

    private ArgonInit() {}

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
            ArgonMmsReceive.sweepAsync(app, false);
            final Context c = app.getApplicationContext();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public void run() {
                    ArgonMmsReceive.sweepAsync(c, false);
                }
            }, 200 * 1000L);
        } catch (Throwable t) {
            Log.w(TAG, "mms sweep", t);
        }
        try {
            ArgonHooks.onAppCreate(app);
        } catch (Throwable t) {
            Log.w(TAG, "hooks", t);
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
        if (p.getInt("argon_prefs_version", 0) < 1) {
            e.putBoolean("pref_key_mms_send_delivery_report", true);
            e.putInt("argon_prefs_version", 1);
        }
        e.apply();
    }

    /** MMS: allow the MMSC to send the sender a delivery report (pref, default on). */
    public static boolean sendMmsDeliveryReports(Context c) {
        return PreferenceManager.getDefaultSharedPreferences(c)
                .getBoolean("pref_key_mms_send_delivery_report", true);
    }
}
