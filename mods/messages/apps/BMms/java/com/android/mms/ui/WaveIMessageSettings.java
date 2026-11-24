package com.android.mms.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Handler;
import android.os.Looper;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.text.InputType;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.mms.wave.WaveIMessageConfig;
import com.android.mms.wave.WaveIMessageHost;
import com.android.mms.wave.imsg.Body;
import com.android.mms.wave.imsg.PushClient;
import com.android.mms.wave.imsg.TlsHelper;

import java.util.WeakHashMap;

/**
 * FEAT(imessage): Settings -> Advanced settings -> Apple (iMessage) settings + Setup Wizard.
 *
 * Hosted inside stock MessagingReportsPreferenceActivity (manifest cannot change) using msg_type
 * extras:
 *   - "wave_imessage": shows the settings screen if configured, or launches straight into the
 *     setup wizard on first visit.
 *   - "wave_imessage_wizard": forces the 4-step setup wizard (reconfigure server/cert/token).
 */
public final class WaveIMessageSettings {
    private static final String TAG = "WaveIMsg";
    public static final String MSG_TYPE_SETTINGS = "wave_imessage";
    public static final String MSG_TYPE_WIZARD = "wave_imessage_wizard";
    private static final String HOST_ACTIVITY = "com.android.mms.ui.MessagingReportsPreferenceActivity";
    private static final String TITLE = "iMessage";
    private static final String WIZARD_TITLE = "iMessage setup";

    private static final WeakHashMap<Activity, WizardController> sWizards =
            new WeakHashMap<Activity, WizardController>();

    private WaveIMessageSettings() {}

    /** Hooked in MessagingPreferenceActivity.loadPrefs — placed right at the top of Settings. */
    public static void addEntry(final PreferenceActivity a, PreferenceCategory advanced) {
        try {
            PreferenceScreen root = a.getPreferenceScreen();
            if (root == null && advanced == null) return;
            Preference p = new Preference(a);
            p.setKey("wave_imessage_settings");
            p.setTitle(TITLE);
            p.setSummary(WaveIMessageHost.get(a).formatStatusSummary());
            p.setPersistent(false);
            p.setOrder(-100);
            p.setIntent(new Intent().setClassName(a.getPackageName(), HOST_ACTIVITY)
                    .putExtra("msg_type", MSG_TYPE_SETTINGS));
            if (root != null) {
                root.addPreference(p);
            } else {
                advanced.addPreference(p);
            }
        } catch (Throwable t) {
            Log.w(TAG, "addEntry", t);
        }
    }

    /** Refreshes the summary line on MessagingPreferenceActivity.onResume if present. */
    public static void refreshEntry(PreferenceActivity a) {
        try {
            Preference p = a.findPreference("wave_imessage_settings");
            if (p != null) {
                p.setSummary(WaveIMessageHost.get(a).formatStatusSummary());
            }
        } catch (Throwable ignored) {
        }
    }

    /** Hooked in MessagingReportsPreferenceActivity.onCreate after createResource(). */
    public static void onCreate(PreferenceActivity a, String msgType) {
        if (!MSG_TYPE_SETTINGS.equals(msgType) && !MSG_TYPE_WIZARD.equals(msgType)) return;
        try {
            WaveIMessageHost host = WaveIMessageHost.get(a);
            if (MSG_TYPE_WIZARD.equals(msgType) || !host.config().isConfigured()) {
                WizardController wizard = new WizardController(a, host);
                sWizards.put(a, wizard);
                wizard.start();
            } else {
                buildSettingsScreen(a, host);
            }
        } catch (Throwable t) {
            Log.e(TAG, "onCreate", t);
            Toast.makeText(a, "iMessage settings error: " + t.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    /**
     * Hooked in MessagingReportsPreferenceActivity.onBackPressed().
     * Returns true if the wizard handled Back (moving to previous step).
     */
    public static boolean onBackPressed(Activity a) {
        WizardController w = sWizards.get(a);
        return w != null && w.handleBack();
    }

    // =========================================================================================
    // Settings screen (shown once configured)
    // =========================================================================================

    private static void buildSettingsScreen(final PreferenceActivity a, final WaveIMessageHost host) {
        a.setTitle(TITLE);
        final WaveIMessageConfig cfg = host.config();
        PreferenceScreen screen = a.getPreferenceManager().createPreferenceScreen(a);
        a.setPreferenceScreen(screen);

        final SwitchPreference enable = new SwitchPreference(a);
        enable.setPersistent(false);
        enable.setTitle("iMessage");
        enable.setSummary("Receive and send via your Apple server");
        enable.setChecked(cfg.isEnabledRaw());
        screen.addPreference(enable);

        final Preference statusPref = new Preference(a);
        statusPref.setPersistent(false);
        statusPref.setTitle("Status");
        screen.addPreference(statusPref);

        final Preference handlesPref = new Preference(a);
        handlesPref.setPersistent(false);
        handlesPref.setSelectable(false);
        handlesPref.setTitle("Apple handles");
        screen.addPreference(handlesPref);

        final Preference renewalPref = new Preference(a);
        renewalPref.setPersistent(false);
        renewalPref.setSelectable(false);
        renewalPref.setTitle("Renewal");
        screen.addPreference(renewalPref);

        PreferenceCategory msgCat = new PreferenceCategory(a);
        msgCat.setTitle("Messaging");
        screen.addPreference(msgCat);

        final SwitchPreference sendPref = new SwitchPreference(a);
        sendPref.setPersistent(false);
        sendPref.setTitle("Send with iMessage");
        sendPref.setChecked(cfg.isSendEnabled());
        msgCat.addPreference(sendPref);

        final SwitchPreference smsFallback = new SwitchPreference(a);
        smsFallback.setPersistent(false);
        smsFallback.setTitle("Send as SMS");
        smsFallback.setSummary("Use SMS when iMessage is unavailable");
        smsFallback.setChecked(cfg.isSmsFallbackEnabled());
        msgCat.addPreference(smsFallback);

        PreferenceCategory connCat = new PreferenceCategory(a);
        connCat.setTitle("Connection");
        screen.addPreference(connCat);

        final SwitchPreference notifPref = new SwitchPreference(a);
        notifPref.setPersistent(false);
        notifPref.setTitle("Connection notification");
        notifPref.setSummary("Keep an ongoing status bar notification");
        notifPref.setChecked(cfg.isConnectionNotificationShown());
        connCat.addPreference(notifPref);

        final Preference serverPref = new Preference(a);
        serverPref.setPersistent(false);
        serverPref.setTitle("Server & connection");
        serverPref.setSummary(cfg.getServerUrl());
        connCat.addPreference(serverPref);

        final Preference reconnectPref = new Preference(a);
        reconnectPref.setPersistent(false);
        reconnectPref.setTitle("Reconnect");
        reconnectPref.setSummary("Refresh connection and Apple handles");
        connCat.addPreference(reconnectPref);

        PreferenceCategory setupCat = new PreferenceCategory(a);
        setupCat.setTitle("Setup");
        screen.addPreference(setupCat);

        final Preference wizardPref = new Preference(a);
        wizardPref.setPersistent(false);
        wizardPref.setTitle("Pair again");
        wizardPref.setSummary("Connect with a new pairing code");
        setupCat.addPreference(wizardPref);

        final Preference clearPref = new Preference(a);
        clearPref.setPersistent(false);
        clearPref.setTitle("Clear setup");
        clearPref.setSummary("Disconnect and forget saved server");
        setupCat.addPreference(clearPref);

        final Handler main = new Handler(Looper.getMainLooper());
        final Runnable update = new Runnable() {
            @Override
            public void run() {
                boolean on = cfg.isEnabled();
                statusPref.setSummary(host.formatStatusSummary());
                handlesPref.setSummary(cfg.formatHandlesSummary());
                renewalPref.setSummary(host.formatRenewalSummary());
                serverPref.setSummary(cfg.getServerUrl());
                boolean send = cfg.isSendEnabled();
                reconnectPref.setEnabled(on);
                sendPref.setEnabled(on);
                sendPref.setSummary(send
                        ? "Use iMessage when the contact has it"
                        : "Off: replies go as SMS (iMessages still arrive)");
                smsFallback.setEnabled(on && send);
            }
        };

        statusPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference p) {
                showConnectionDetailsDialog(a, host);
                return true;
            }
        });

        enable.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
            @Override
            public boolean onPreferenceChange(Preference p, Object val) {
                boolean on = Boolean.TRUE.equals(val);
                cfg.setEnabled(on);
                if (on) host.startOrRestart();
                else host.stopAll();
                main.postDelayed(update, 150);
                return true;
            }
        });

        sendPref.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
            @Override
            public boolean onPreferenceChange(Preference p, Object val) {
                cfg.setSendEnabled(Boolean.TRUE.equals(val));
                WaveIMessageUi.refreshActiveComposeHint();
                main.post(update);
                return true;
            }
        });

        notifPref.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
            @Override
            public boolean onPreferenceChange(Preference p, Object val) {
                cfg.setConnectionNotificationShown(Boolean.TRUE.equals(val));
                host.applyNotificationSetting();
                return true;
            }
        });

        smsFallback.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() {
            @Override
            public boolean onPreferenceChange(Preference p, Object val) {
                cfg.setSmsFallbackEnabled(Boolean.TRUE.equals(val));
                return true;
            }
        });

        serverPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference p) {
                showConnectionDetailsDialog(a, host);
                return true;
            }
        });

        reconnectPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference p) {
                host.reconnectNow();
                host.refreshHandles();
                host.refreshRegInfo();
                Toast.makeText(a, "Reconnecting...", Toast.LENGTH_SHORT).show();
                main.postDelayed(update, 300);
                return true;
            }
        });

        wizardPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference p) {
                Intent i = new Intent().setClassName(a.getPackageName(), HOST_ACTIVITY)
                        .putExtra("msg_type", MSG_TYPE_WIZARD);
                a.startActivity(i);
                a.finish();
                return true;
            }
        });

        clearPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference p) {
                new AlertDialog.Builder(a)
                        .setTitle("Clear iMessage setup?")
                        .setMessage("This disconnects from your server and forgets it on this phone.")
                        .setPositiveButton("Clear", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface d, int w) {
                                host.stopAll();
                                cfg.clearAll();
                                Toast.makeText(a, "iMessage setup cleared", Toast.LENGTH_SHORT).show();
                                a.finish();
                            }
                        })
                        .setNegativeButton("Cancel", null)
                        .show();
                return true;
            }
        });

        update.run();
        main.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (a.isFinishing() || a.isDestroyed()) return;
                update.run();
                main.postDelayed(this, 1000L);
            }
        }, 1000L);
    }

    private static void showConnectionDetailsDialog(final Activity a, final WaveIMessageHost host) {
        WaveIMessageConfig cfg = host.config();
        float den = a.getResources().getDisplayMetrics().density;
        int padH = Math.round(16 * den);
        int padV = Math.round(6 * den);

        ScrollView sv = new ScrollView(a);
        LinearLayout body = new LinearLayout(a);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(padH, Math.round(4 * den), padH, Math.round(4 * den));

        addDetailRow(a, body, "Server", cfg.getHost() + ":" + cfg.getPort());
        addDetailRow(a, body, "Connection", host.formatStatusSummary());
        addDetailRow(a, body, "Renewal", host.formatRenewalSummary());
        String net = TextUtils.isEmpty(host.getActiveNetworkKey()) ? "-" : host.getActiveNetworkKey();
        addDetailRow(a, body, "Network", net);
        addDetailRow(a, body, "Queued outbox", String.valueOf(host.getOutboxSize()));
        sv.addView(body);

        AlertDialog.Builder b = new AlertDialog.Builder(a)
                .setTitle("Connection details")
                .setView(sv)
                .setPositiveButton("Close", null);
        if (cfg.isEnabled()) {
            b.setNeutralButton("Optimize", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface d, int w) {
                    host.triggerProbeNow();
                    Toast.makeText(a, "Keepalive optimization started", Toast.LENGTH_SHORT).show();
                }
            });
        }
        b.show();
    }

    private static void addDetailRow(Activity a, LinearLayout parent, String label, String value) {
        float den = a.getResources().getDisplayMetrics().density;
        TextView lbl = new TextView(a);
        lbl.setText(label);
        lbl.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10.5f);
        lbl.setTextColor(0xFF8E8E93);
        lbl.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        parent.addView(lbl);

        TextView val = new TextView(a);
        val.setText(value);
        val.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        val.setTextColor(0xFF1C1C1E);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Math.round(4 * den);
        parent.addView(val, lp);
    }

    // =========================================================================================
    // Pairing (server address + one-time code), then automatic phone-number setup
    // =========================================================================================

    private static final class WizardController {
        private final PreferenceActivity activity;
        private final WaveIMessageHost host;
        private final WaveIMessageConfig cfg;
        private final Handler main = new Handler(Looper.getMainLooper());

        private int step = 1; // 1=pair form, 2=setup progress
        private boolean busy = false;
        private String inputServer;
        private String inputCode;
        private String errorText;
        private String shownKey;

        WizardController(PreferenceActivity activity, WaveIMessageHost host) {
            this.activity = activity;
            this.host = host;
            this.cfg = host.config();
            if (cfg.isConfigured()) this.inputServer = cfg.getServerUrl();
        }

        void start() {
            activity.setTitle(WIZARD_TITLE);
            showPairForm();
        }

        boolean handleBack() {
            if (busy) return true;
            if (step == 2) {
                // Setup carries on in the background.
                openSettingsAndFinish();
                return true;
            }
            return false;
        }

        // --- Step 1: server address + pairing code ---
        private void showPairForm() {
            step = 1;
            LinearLayout root = createPageLayout("Step 1 of 2", "Pair with your server");
            addBody(root, "Run imsg-server pair on your server, then enter the code below.");

            addFieldLabel(root, "Server");
            final EditText serverField = addEditField(root, "imsg.example.com", inputServer,
                    InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_URI);
            addFieldLabel(root, "Pairing code");
            final EditText codeField = addEditField(root, "6-digit code", inputCode,
                    InputType.TYPE_CLASS_NUMBER);

            if (!TextUtils.isEmpty(errorText)) addError(root, errorText);

            addPrimaryButton(root, "Pair", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    inputServer = serverField.getText().toString().trim();
                    inputCode = codeField.getText().toString().trim();
                    WaveIMessageConfig.ServerAddress addr = WaveIMessageConfig.parseServerInput(inputServer);
                    if (addr == null) {
                        errorText = "Enter the server name, e.g. imsg.example.com";
                        showPairForm();
                        return;
                    }
                    if (TlsHelper.digitsOnly(inputCode).length() < 6) {
                        errorText = "Enter the code shown by imsg-server pair";
                        showPairForm();
                        return;
                    }
                    errorText = null;
                    pair(addr.host, addr.port, inputCode);
                }
            });
            addSecondaryButton(root, "Cancel", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (cfg.isConfigured()) openSettingsAndFinish();
                    else activity.finish();
                }
            });
            setPage(root, TextUtils.isEmpty(inputServer) ? serverField : codeField);
        }

        private void pair(final String h, final int p, final String code) {
            busy = true;
            LinearLayout loading = createPageLayout("Step 1 of 2", "Pairing");
            addBody(loading, "Connecting to " + (p == 443 ? h : h + ":" + p) + "...");
            addSpinner(loading);
            setPage(loading, null);

            new Thread(new Runnable() {
                @Override
                public void run() {
                    String err = null;
                    try {
                        TlsHelper.PairResult r = TlsHelper.pair(h, p, code, 15_000);
                        cfg.savePairing(h, p, r.clientId, r.tokenHex);
                        host.startOrRestart();
                    } catch (Exception e) {
                        String m = e.getMessage();
                        err = TextUtils.isEmpty(m) ? e.getClass().getSimpleName() : m;
                    }
                    final String error = err;
                    main.post(new Runnable() {
                        @Override
                        public void run() {
                            if (isGone()) return;
                            busy = false;
                            if (error != null) {
                                errorText = "Pairing failed: " + error;
                                inputCode = "";
                                showPairForm();
                            } else {
                                showSetup();
                            }
                        }
                    });
                }
            }, "wave-imsg-pair").start();
        }

        // --- Step 2: phone-number setup, driven by the server ---
        private void showSetup() {
            step = 2;
            shownKey = null;
            renderSetup();
            main.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (isGone() || step != 2) return;
                    renderSetup();
                    main.postDelayed(this, 1000L);
                }
            }, 1000L);
        }

        private void renderSetup() {
            boolean connected = host.getStatus() == PushClient.Status.CONNECTED;
            int state = host.getSetupState();
            String detail = host.getSetupDetail();
            String key = connected + "/" + state + "/" + detail;
            if (key.equals(shownKey)) return;
            shownKey = key;

            LinearLayout root;
            View focus = null;
            if (state == Body.SETUP_READY) {
                root = createPageLayout("All set", "iMessage is ready");
                addSuccess(root, TextUtils.isEmpty(detail) ? cfg.formatHandlesSummary() : detail);
                addBody(root, "Messages to iPhones now go as iMessage.");
                focus = addPrimaryButton(root, "Done", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        openSettingsAndFinish();
                    }
                });
            } else if (state == Body.SETUP_FAILED) {
                root = createPageLayout("Step 2 of 2", "Setup failed");
                addError(root, TextUtils.isEmpty(detail) ? "Registration failed." : detail);
                focus = addPrimaryButton(root, "Try again", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        host.sendSimInfo();
                        shownKey = null;
                        renderSetup();
                    }
                });
                addSecondaryButton(root, "Close", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        openSettingsAndFinish();
                    }
                });
            } else {
                root = createPageLayout("Step 2 of 2", "Setting up your number");
                String msg = !connected ? "Connecting to your server..."
                        : (TextUtils.isEmpty(detail) ? "Waiting for the server..." : detail);
                addBody(root, msg);
                addSpinner(root);
                addBody(root, "This can take a minute. You can leave this screen.");
            }
            setPage(root, focus);
        }

        private void addSpinner(LinearLayout parent) {
            ProgressBar pb = new ProgressBar(activity);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.gravity = Gravity.CENTER_HORIZONTAL;
            lp.topMargin = dp(8);
            parent.addView(pb, lp);
        }

        private void openSettingsAndFinish() {
            Intent i = new Intent().setClassName(activity.getPackageName(), HOST_ACTIVITY)
                    .putExtra("msg_type", MSG_TYPE_SETTINGS);
            activity.startActivity(i);
            activity.finish();
        }

        // --- Compact 240x320 D-pad friendly UI builders ---

        private LinearLayout createPageLayout(String stepLabel, String heading) {
            LinearLayout col = new LinearLayout(activity);
            col.setOrientation(LinearLayout.VERTICAL);
            col.setPadding(dp(10), dp(8), dp(10), dp(12));

            TextView stepView = new TextView(activity);
            stepView.setText(stepLabel.toUpperCase());
            stepView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10.5f);
            stepView.setTextColor(Color.parseColor("#0066CC"));
            stepView.setTypeface(Typeface.DEFAULT_BOLD);
            col.addView(stepView);

            TextView titleView = new TextView(activity);
            titleView.setText(heading);
            titleView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15.5f);
            titleView.setTextColor(Color.parseColor("#111111"));
            titleView.setTypeface(Typeface.DEFAULT_BOLD);
            LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            tlp.topMargin = dp(2);
            tlp.bottomMargin = dp(6);
            col.addView(titleView, tlp);

            return col;
        }

        private void addBody(LinearLayout parent, String text) {
            TextView tv = new TextView(activity);
            tv.setText(text);
            tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.5f);
            tv.setTextColor(Color.parseColor("#333333"));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.bottomMargin = dp(6);
            parent.addView(tv, lp);
        }

        private void addSuccess(LinearLayout parent, String text) {
            TextView tv = new TextView(activity);
            tv.setText(text);
            tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.5f);
            tv.setTextColor(Color.parseColor("#1E7B34"));
            tv.setTypeface(Typeface.DEFAULT_BOLD);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.bottomMargin = dp(6);
            parent.addView(tv, lp);
        }

        private void addError(LinearLayout parent, String text) {
            TextView tv = new TextView(activity);
            tv.setText(text);
            tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
            tv.setTextColor(Color.parseColor("#B3261E"));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.bottomMargin = dp(6);
            parent.addView(tv, lp);
        }

        private void addMonoBox(LinearLayout parent, String text) {
            TextView tv = new TextView(activity);
            tv.setText(text);
            tv.setTypeface(Typeface.MONOSPACE);
            tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10.5f);
            tv.setTextColor(Color.parseColor("#111111"));
            tv.setBackgroundColor(Color.parseColor("#F0F2F5"));
            tv.setPadding(dp(6), dp(6), dp(6), dp(6));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.bottomMargin = dp(8);
            parent.addView(tv, lp);
        }

        private void addFieldLabel(LinearLayout parent, String text) {
            TextView tv = new TextView(activity);
            tv.setText(text);
            tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
            tv.setTextColor(0xFF636366);
            tv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.bottomMargin = dp(3);
            parent.addView(tv, lp);
        }

        private EditText addEditField(LinearLayout parent, String hint, String initial, int inputType) {
            EditText et = new EditText(activity);
            et.setHint(hint);
            et.setHintTextColor(0xFF8E8E93);
            et.setTextColor(0xFF1C1C1E);
            if (!TextUtils.isEmpty(initial)) {
                et.setText(initial);
                et.setSelection(initial.length());
            }
            et.setInputType(inputType);
            et.setSingleLine(true);
            et.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
            et.setPadding(dp(10), dp(7), dp(10), dp(7));
            et.setFocusable(true);
            et.setFocusableInTouchMode(true);

            GradientDrawable foc = new GradientDrawable();
            foc.setColor(Color.WHITE);
            foc.setCornerRadius(dp(10));
            foc.setStroke(dp(2), 0xFF007AFF);
            GradientDrawable idle = new GradientDrawable();
            idle.setColor(0xFFF7F7F9);
            idle.setCornerRadius(dp(10));
            idle.setStroke(1, 0xFFD1D1D6);
            StateListDrawable bg = new StateListDrawable();
            bg.addState(new int[]{android.R.attr.state_focused}, foc);
            bg.addState(new int[]{}, idle);
            et.setBackground(bg);

            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.bottomMargin = dp(9);
            parent.addView(et, lp);
            return et;
        }

        private Button addPrimaryButton(LinearLayout parent, String label, View.OnClickListener onClick) {
            Button b = new Button(activity);
            b.setText(label);
            b.setAllCaps(false);
            b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
            b.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
            b.setTextColor(Color.WHITE);
            b.setMinHeight(dp(36));
            b.setMinimumHeight(dp(36));
            b.setPadding(dp(12), dp(6), dp(12), dp(6));
            b.setFocusable(true);
            b.setOnClickListener(onClick);

            GradientDrawable foc = new GradientDrawable();
            foc.setColor(0xFF0062CC);
            foc.setCornerRadius(dp(12));
            foc.setStroke(dp(2), 0xFF1C1C1E);
            GradientDrawable norm = new GradientDrawable();
            norm.setColor(0xFF007AFF);
            norm.setCornerRadius(dp(12));
            StateListDrawable bg = new StateListDrawable();
            bg.addState(new int[]{android.R.attr.state_focused}, foc);
            bg.addState(new int[]{android.R.attr.state_pressed}, foc);
            bg.addState(new int[]{}, norm);
            b.setBackground(bg);

            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.topMargin = dp(4);
            parent.addView(b, lp);
            return b;
        }

        private Button addSecondaryButton(LinearLayout parent, String label, View.OnClickListener onClick) {
            Button b = new Button(activity);
            b.setText(label);
            b.setAllCaps(false);
            b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
            b.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
            b.setTextColor(0xFF3A3A3C);
            b.setMinHeight(dp(34));
            b.setMinimumHeight(dp(34));
            b.setPadding(dp(12), dp(6), dp(12), dp(6));
            b.setFocusable(true);
            b.setOnClickListener(onClick);

            GradientDrawable foc = new GradientDrawable();
            foc.setColor(0xFFE5E5EA);
            foc.setCornerRadius(dp(12));
            foc.setStroke(dp(2), 0xFF007AFF);
            GradientDrawable norm = new GradientDrawable();
            norm.setColor(0xFFF2F2F7);
            norm.setCornerRadius(dp(12));
            StateListDrawable bg = new StateListDrawable();
            bg.addState(new int[]{android.R.attr.state_focused}, foc);
            bg.addState(new int[]{android.R.attr.state_pressed}, foc);
            bg.addState(new int[]{}, norm);
            b.setBackground(bg);

            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.topMargin = dp(6);
            parent.addView(b, lp);
            return b;
        }

        private void setPage(LinearLayout content, final View initialFocus) {
            FrameLayout container = new FrameLayout(activity);
            container.setBackgroundColor(Color.WHITE);

            // PreferenceActivity extends ListActivity, which requires a view with id android.R.id.list.
            ListView hiddenList = new ListView(activity);
            hiddenList.setId(android.R.id.list);
            hiddenList.setVisibility(View.GONE);
            hiddenList.setFocusable(false);
            container.addView(hiddenList, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

            ScrollView sv = new ScrollView(activity);
            sv.setFillViewport(true);
            sv.setBackgroundColor(Color.WHITE);
            sv.addView(content, new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
            container.addView(sv, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

            activity.setContentView(container);
            if (initialFocus != null) {
                initialFocus.post(new Runnable() {
                    @Override
                    public void run() {
                        initialFocus.requestFocus();
                    }
                });
            }
        }

        private int dp(int v) {
            return Math.round(v * activity.getResources().getDisplayMetrics().density);
        }

        private boolean isGone() {
            return activity.isFinishing() || activity.isDestroyed();
        }

    }
}
