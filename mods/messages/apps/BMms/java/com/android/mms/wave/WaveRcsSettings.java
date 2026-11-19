package com.android.mms.wave;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.util.Log;

import org.wave.rcs.RcsEngine;

/**
 * RCS settings screen (Settings > Advanced settings > Chat (RCS) messages settings).
 *
 * The manifest can't change, so the screen is hosted by the stock MessagingReportsPreferenceActivity
 * (same theme as the SMS/MMS settings screens) started with msg_type = {@link #MSG_TYPE}; it loads
 * no XML for an unknown type and we build the preferences in code. Resources can't be rebuilt:
 * text reuses the app's own strings by name (with their translations), English fallback otherwise.
 */
public final class WaveRcsSettings {
    private static final String TAG = "Wave";
    public static final String MSG_TYPE = "wave_rcs";
    private static final String HOST_ACTIVITY = "com.android.mms.ui.MessagingReportsPreferenceActivity";

    private WaveRcsSettings() {}

    /** Stock string by name, else the English fallback. */
    private static String s(Context c, String name, String fallback) {
        try {
            int id = c.getResources().getIdentifier(name, "string", c.getPackageName());
            if (id != 0) return c.getString(id);
        } catch (Throwable ignored) {
        }
        return fallback;
    }

    private static String title(Context c) {
        return "Chat (RCS) messages settings";
    }

    /** MessagingPreferenceActivity.loadPrefs: entry below SMS and MMS settings. */
    public static void addEntry(PreferenceActivity a, PreferenceCategory advanced) {
        try {
            if (advanced == null) return;
            Preference p = new Preference(a);
            p.setKey("wave_rcs_settings");
            p.setTitle(title(a));
            p.setPersistent(false);
            p.setIntent(new Intent().setClassName(a.getPackageName(), HOST_ACTIVITY)
                    .putExtra("msg_type", MSG_TYPE));
            advanced.addPreference(p);
        } catch (Throwable t) {
            Log.w(TAG, "rcs settings entry", t);
        }
    }

    /** MessagingReportsPreferenceActivity.onCreate, after the stock createResource(). */
    public static void onCreate(final PreferenceActivity a, String msgType) {
        if (!MSG_TYPE.equals(msgType)) return;
        try {
            build(a);
        } catch (Throwable t) {
            Log.w(TAG, "rcs settings", t);
        }
    }

    private static void build(final PreferenceActivity a) {
        a.setTitle(title(a));
        final RcsHost host = RcsHost.get(a);
        PreferenceScreen screen = a.getPreferenceManager().createPreferenceScreen(a);
        a.setPreferenceScreen(screen);

        final SwitchPreference enable = new SwitchPreference(a);
        enable.setPersistent(false);
        enable.setTitle(s(a, "rcs_immediately_message_title", "RCS IM message"));
        enable.setSummary(s(a, "rcs_immediately_message_summary",
                "When RCS is online, RCS function will be given priority to send message"));
        enable.setChecked(host.isEnabled());
        screen.addPreference(enable);

        final SwitchPreference delivery = new SwitchPreference(a);
        delivery.setPersistent(false);
        delivery.setTitle(s(a, "pref_title_mms_send_delivery_report", "Send delivery report"));
        delivery.setSummary(s(a, "mms_send_delivery_report", "A delivery report will be sent"));
        delivery.setChecked(host.sendDeliveryReports());
        screen.addPreference(delivery);

        final Preference status = new Preference(a);
        status.setPersistent(false);
        status.setSelectable(false);
        status.setTitle(s(a, "status_label", "Status: ").replaceAll("[:\\s]+$", ""));
        screen.addPreference(status);

        final Preference refresh = new Preference(a);
        refresh.setPersistent(false);
        refresh.setTitle("Refresh");
        screen.addPreference(refresh);

        final Handler main = new Handler(Looper.getMainLooper());
        final boolean[] checking = new boolean[1];

        final Runnable update = new Runnable() {
            @Override public void run() {
                boolean on = host.isEnabled();
                if (!checking[0]) status.setSummary(statusText(a, host));
                refresh.setEnabled(on && !checking[0]);
                delivery.setEnabled(on);
            }
        };

        enable.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
            @Override public boolean onPreferenceChange(Preference p, Object v) {
                host.setEnabled(Boolean.TRUE.equals(v));
                main.postDelayed(update, 100);
                return true;
            }
        });
        delivery.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
            @Override public boolean onPreferenceChange(Preference p, Object v) {
                host.setSendDeliveryReports(Boolean.TRUE.equals(v));
                return true;
            }
        });
        refresh.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override public boolean onPreferenceClick(Preference p) {
                if (checking[0]) return true;
                checking[0] = true;
                final long started = android.os.SystemClock.elapsedRealtime();
                status.setSummary(s(a, "refreshing", "Refreshing…"));
                update.run();
                host.check(new RcsHost.CheckCallback() {
                    @Override public void onChecked(RcsEngine.State st, String detail) {
                        long shown = android.os.SystemClock.elapsedRealtime() - started;
                        main.postDelayed(new Runnable() {
                            @Override public void run() {
                                checking[0] = false;
                                update.run();
                            }
                        }, Math.max(0, 1000 - shown));
                    }
                });
                return true;
            }
        });

        update.run();
        // live status while the screen exists
        main.postDelayed(new Runnable() {
            @Override public void run() {
                if (isGone(a)) return;
                update.run();
                main.postDelayed(this, 1000);
            }
        }, 1000);
    }

    private static boolean isGone(Activity a) {
        return a.isFinishing() || a.isDestroyed();
    }

    static String statusText(Context c, RcsHost host) {
        if (!host.isEnabled()) return offline(c);
        RcsEngine.State st = host.state();
        if (st == RcsEngine.State.REGISTERED) return online(c);
        if (!host.configured() && st != RcsEngine.State.PROVISIONING) {
            return s(c, "service_not_activated", "Service not activated on network.");
        }
        switch (st) {
            case OFFLINE:
                return s(c, "rcs_network_unavailable", "Network unavailable");
            case ERROR:
                return s(c, "rcs_service_is_not_available", "RCS Service is not available.");
            default: // starting, provisioning, registering
                // a failed attempt waiting for its retry counts as not working
                String d = host.stateDetail();
                if (d != null && d.contains("retry in")) {
                    return s(c, "rcs_service_is_not_available", "RCS Service is not available.");
                }
                return "Connecting…";
        }
    }

    /** "(online)" -> "Online" */
    private static String online(Context c) {
        return bare(s(c, "rcs_online", "(online)"));
    }

    private static String offline(Context c) {
        return bare(s(c, "rcs_offline", "(offline)"));
    }

    private static String bare(String v) {
        v = v.replaceAll("^[(\\s]+|[)\\s]+$", "");
        return v.isEmpty() ? v : Character.toUpperCase(v.charAt(0)) + v.substring(1);
    }
}
