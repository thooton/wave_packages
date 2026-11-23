package com.android.mms.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
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
    private static final String TITLE = "Apple (iMessage) settings";
    private static final String WIZARD_TITLE = "iMessage setup";

    private static final WeakHashMap<Activity, WizardController> sWizards =
            new WeakHashMap<Activity, WizardController>();

    private WaveIMessageSettings() {}

    /** Hooked in MessagingPreferenceActivity.loadPrefs under Advanced settings. */
    public static void addEntry(final PreferenceActivity a, PreferenceCategory advanced) {
        try {
            if (advanced == null) return;
            Preference p = new Preference(a);
            p.setKey("wave_imessage_settings");
            p.setTitle(TITLE);
            p.setSummary(WaveIMessageHost.get(a).formatStatusSummary());
            p.setPersistent(false);
            p.setIntent(new Intent().setClassName(a.getPackageName(), HOST_ACTIVITY)
                    .putExtra("msg_type", MSG_TYPE_SETTINGS));
            advanced.addPreference(p);
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
        enable.setSummary("Use iMessage when connected to your server");
        enable.setChecked(cfg.isEnabledRaw());
        screen.addPreference(enable);

        final Preference statusPref = new Preference(a);
        statusPref.setPersistent(false);
        statusPref.setSelectable(false);
        statusPref.setTitle("Status");
        screen.addPreference(statusPref);

        final Preference handlesPref = new Preference(a);
        handlesPref.setPersistent(false);
        handlesPref.setSelectable(false);
        handlesPref.setTitle("Apple handles");
        screen.addPreference(handlesPref);

        final SwitchPreference smsFallback = new SwitchPreference(a);
        smsFallback.setPersistent(false);
        smsFallback.setTitle("Send as SMS");
        smsFallback.setSummary("Fall back to SMS when iMessage is unavailable");
        smsFallback.setChecked(cfg.isSmsFallbackEnabled());
        screen.addPreference(smsFallback);

        final Preference serverPref = new Preference(a);
        serverPref.setPersistent(false);
        serverPref.setTitle("Server & connection");
        serverPref.setSummary(cfg.getServerUrl());
        screen.addPreference(serverPref);

        final Preference reconnectPref = new Preference(a);
        reconnectPref.setPersistent(false);
        reconnectPref.setTitle("Reconnect");
        reconnectPref.setSummary("Reconnect and refresh Apple handles");
        screen.addPreference(reconnectPref);

        final Preference wizardPref = new Preference(a);
        wizardPref.setPersistent(false);
        wizardPref.setTitle("Run setup wizard");
        wizardPref.setSummary("Change server URL, certificate, or token");
        screen.addPreference(wizardPref);

        final Preference clearPref = new Preference(a);
        clearPref.setPersistent(false);
        clearPref.setTitle("Clear setup");
        clearPref.setSummary("Disconnect and remove saved server settings");
        screen.addPreference(clearPref);

        final Handler main = new Handler(Looper.getMainLooper());
        final Runnable update = new Runnable() {
            @Override
            public void run() {
                boolean on = cfg.isEnabled();
                statusPref.setSummary(host.formatStatusSummary());
                handlesPref.setSummary(cfg.formatHandlesSummary());
                serverPref.setSummary(cfg.getServerUrl());
                reconnectPref.setEnabled(on);
                smsFallback.setEnabled(on);
            }
        };

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
                        .setMessage("This disconnects from your server and removes the saved URL, certificate pin, and token.")
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
        String pin = cfg.getCertPinSha256();
        String shortPin = pin.length() >= 16
                ? (pin.substring(0, 8) + "..." + pin.substring(pin.length() - 8))
                : pin;
        String msg = "Server: " + cfg.getHost() + ":" + cfg.getPort() + "\n"
                + "Status: " + host.formatStatusSummary() + "\n"
                + "Keepalive: " + WaveIMessageHost.formatInterval(host.getCurrentIntervalSeconds()) + "\n"
                + "Network: " + (TextUtils.isEmpty(host.getActiveNetworkKey()) ? "-" : host.getActiveNetworkKey()) + "\n"
                + "Queued outbox: " + host.getOutboxSize() + "\n"
                + "Cert SHA-256: " + shortPin;

        AlertDialog.Builder b = new AlertDialog.Builder(a)
                .setTitle("Connection details")
                .setMessage(msg)
                .setPositiveButton("OK", null);
        if (cfg.isEnabled()) {
            b.setNeutralButton("Optimize keepalive", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface d, int w) {
                    host.triggerProbeNow();
                    Toast.makeText(a, "Keepalive optimization started", Toast.LENGTH_SHORT).show();
                }
            });
        }
        b.show();
    }

    // =========================================================================================
    // Setup Wizard (4 simple steps, designed for 240x320 D-pad flip phone)
    // =========================================================================================

    private static final class WizardController {
        private final PreferenceActivity activity;
        private final WaveIMessageHost host;
        private final WaveIMessageConfig cfg;
        private final Handler main = new Handler(Looper.getMainLooper());

        private int step = 1; // 1=Server URL, 2=Verify Cert, 3=Access Token, 4=Connect & Done
        private boolean busy = false;
        private boolean finishedSuccess = false;

        private String inputUrl;
        private String hostName;
        private int port = 443;
        private String sniMain;
        private String fetchedPinHex;
        private String fetchedPinColon;
        private String fetchedSubject;
        private String fetchedTlsProto;
        private String pinHex;
        private String tokenHex;
        private String errorText;

        WizardController(PreferenceActivity activity, WaveIMessageHost host) {
            this.activity = activity;
            this.host = host;
            this.cfg = host.config();
            // Pre-fill existing values when re-running wizard.
            if (cfg.isConfigured()) {
                this.inputUrl = cfg.getServerUrl();
                this.hostName = cfg.getHost();
                this.port = cfg.getPort();
                this.sniMain = cfg.getSniMain();
                this.pinHex = cfg.getCertPinSha256();
                this.tokenHex = cfg.getTokenHex();
            }
        }

        void start() {
            activity.setTitle(WIZARD_TITLE);
            showStep1Server();
        }

        boolean handleBack() {
            if (busy) return true;
            if (finishedSuccess) {
                openSettingsAndFinish();
                return true;
            }
            if (step == 2) {
                errorText = null;
                showStep1Server();
                return true;
            }
            if (step == 3) {
                errorText = null;
                showStep2Cert(false);
                return true;
            }
            if (step == 4) {
                errorText = null;
                showStep3Token();
                return true;
            }
            return false;
        }

        // --- Step 1: Server URL ---
        private void showStep1Server() {
            step = 1;
            LinearLayout root = createPageLayout("Step 1 of 4", "Bridge server");
            addBody(root, "Enter your iMessage server URL (host or host:port).");

            final EditText urlField = addEditField(root, "imsg.example.com:443", inputUrl,
                    InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_URI);

            if (!TextUtils.isEmpty(errorText)) {
                addError(root, errorText);
            }

            Button nextBtn = addPrimaryButton(root, "Next", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    String raw = urlField.getText().toString().trim();
                    WaveIMessageConfig.ParsedSetup parsed = WaveIMessageConfig.parseServerInput(raw);
                    if (parsed == null) {
                        errorText = "Enter a valid server address, e.g. myserver.com or myserver.com:443";
                        inputUrl = raw;
                        showStep1Server();
                        return;
                    }
                    inputUrl = parsed.displayUrl;
                    hostName = parsed.host;
                    port = parsed.port;
                    sniMain = parsed.sni;
                    if (!TextUtils.isEmpty(parsed.token)) tokenHex = parsed.token;
                    if (!TextUtils.isEmpty(parsed.pin)) pinHex = parsed.pin;
                    errorText = null;
                    showStep2Cert(true);
                }
            });

            addSecondaryButton(root, "Load from file", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    WaveIMessageConfig.ParsedSetup file = WaveIMessageConfig.loadSetupFile();
                    if (file == null) {
                        Toast.makeText(activity, "Put setup in /sdcard/imessage.txt", Toast.LENGTH_LONG).show();
                        return;
                    }
                    if (!TextUtils.isEmpty(file.host)) {
                        hostName = file.host;
                        port = file.port;
                        inputUrl = file.displayUrl;
                    }
                    if (!TextUtils.isEmpty(file.sni)) sniMain = file.sni;
                    if (!TextUtils.isEmpty(file.token)) tokenHex = file.token;
                    if (!TextUtils.isEmpty(file.pin)) pinHex = file.pin;
                    errorText = null;
                    Toast.makeText(activity, "Loaded from imessage.txt", Toast.LENGTH_SHORT).show();
                    if (!TextUtils.isEmpty(hostName)) {
                        showStep2Cert(true);
                    } else {
                        showStep1Server();
                    }
                }
            });

            addSecondaryButton(root, "Cancel", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    activity.finish();
                }
            });

            setPage(root, TextUtils.isEmpty(inputUrl) ? urlField : nextBtn);
        }

        // --- Step 2: Verify TLS certificate (auto-fetch + trust or manual pin) ---
        private void showStep2Cert(boolean fetchNow) {
            step = 2;
            if (fetchNow) {
                busy = true;
                LinearLayout loading = createPageLayout("Step 2 of 4", "Checking server");
                addBody(loading, "Connecting to " + hostName + ":" + port + "...");
                ProgressBar pb = new ProgressBar(activity);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.gravity = Gravity.CENTER_HORIZONTAL;
                lp.topMargin = dp(8);
                loading.addView(pb, lp);
                setPage(loading, null);

                final String h = hostName;
                final int p = port;
                final String sni = !TextUtils.isEmpty(sniMain) ? sniMain : hostName;
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            final TlsHelper.ServerCertInfo info = TlsHelper.fetchServerCertInfo(h, p, sni, 10_000);
                            main.post(new Runnable() {
                                @Override
                                public void run() {
                                    if (isGone()) return;
                                    busy = false;
                                    fetchedPinHex = info.sha256Hex;
                                    fetchedPinColon = info.sha256Colon;
                                    fetchedSubject = info.subject;
                                    fetchedTlsProto = info.tlsProtocol;
                                    errorText = null;
                                    showStep2Cert(false);
                                }
                            });
                        } catch (final Exception e) {
                            main.post(new Runnable() {
                                @Override
                                public void run() {
                                    if (isGone()) return;
                                    busy = false;
                                    fetchedPinHex = null;
                                    fetchedPinColon = null;
                                    String msg = e.getMessage();
                                    errorText = "Could not reach server: " + (TextUtils.isEmpty(msg) ? e.getClass().getSimpleName() : msg);
                                    showStep2Cert(false);
                                }
                            });
                        }
                    }
                }, "wave-imsg-cert").start();
                return;
            }

            LinearLayout root = createPageLayout("Step 2 of 4", "Verify certificate");
            if (!TextUtils.isEmpty(fetchedPinHex)) {
                boolean matchesPreloaded = !TextUtils.isEmpty(pinHex) && pinHex.equalsIgnoreCase(fetchedPinHex);
                addBody(root, hostName + ":" + port + " (" + fetchedTlsProto + ")");
                if (matchesPreloaded) {
                    addSuccess(root, "Certificate matches setup pin.");
                } else {
                    addBody(root, "Confirm this SHA-256 fingerprint matches your server:");
                }
                addMonoBox(root, formatFingerprintBlocks(fetchedPinColon));

                Button trustBtn = addPrimaryButton(root, "Trust & Continue", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        pinHex = fetchedPinHex;
                        errorText = null;
                        showStep3Token();
                    }
                });
                addSecondaryButton(root, "Enter pin manually", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        showManualPinDialog();
                    }
                });
                addSecondaryButton(root, "Back", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        errorText = null;
                        showStep1Server();
                    }
                });
                setPage(root, trustBtn);
            } else {
                addError(root, TextUtils.isEmpty(errorText) ? "Could not fetch certificate." : errorText);
                Button retryBtn = addPrimaryButton(root, "Retry", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        showStep2Cert(true);
                    }
                });
                addSecondaryButton(root, "Enter pin manually", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        showManualPinDialog();
                    }
                });
                addSecondaryButton(root, "Back", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        errorText = null;
                        showStep1Server();
                    }
                });
                setPage(root, retryBtn);
            }
        }

        private void showManualPinDialog() {
            final EditText input = new EditText(activity);
            input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
            input.setHint("64-char SHA-256 hex");
            if (!TextUtils.isEmpty(pinHex)) input.setText(pinHex);
            new AlertDialog.Builder(activity)
                    .setTitle("Certificate SHA-256")
                    .setView(input)
                    .setPositiveButton("Use pin", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface d, int w) {
                            String raw = input.getText().toString().trim();
                            if (!WaveIMessageConfig.isValidPinHex(raw)) {
                                Toast.makeText(activity, "Invalid SHA-256 (need 64 hex chars)", Toast.LENGTH_LONG).show();
                                return;
                            }
                            pinHex = WaveIMessageConfig.normalizePinHex(raw);
                            errorText = null;
                            showStep3Token();
                        }
                    })
                    .setNegativeButton("Cancel", null)
                    .show();
        }

        // --- Step 3: Access Token ---
        private void showStep3Token() {
            step = 3;
            LinearLayout root = createPageLayout("Step 3 of 4", "Access token");
            addBody(root, "Enter the client token from imsg-server add-client.");

            final EditText tokenField = addEditField(root, "Client hex token", tokenHex,
                    InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);

            if (!TextUtils.isEmpty(errorText)) {
                addError(root, errorText);
            }

            Button connectBtn = addPrimaryButton(root, "Connect", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    String raw = tokenField.getText().toString().replaceAll("\\s+", "");
                    if (raw.isEmpty()) {
                        errorText = "Enter the client token from your server.";
                        tokenHex = "";
                        showStep3Token();
                        return;
                    }
                    tokenHex = raw;
                    errorText = null;
                    showStep4Connect();
                }
            });

            addSecondaryButton(root, "Load token from file", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    WaveIMessageConfig.ParsedSetup file = WaveIMessageConfig.loadSetupFile();
                    if (file == null || TextUtils.isEmpty(file.token)) {
                        Toast.makeText(activity, "No token found in /sdcard/imessage.txt", Toast.LENGTH_LONG).show();
                        return;
                    }
                    tokenHex = file.token;
                    errorText = null;
                    showStep3Token();
                }
            });

            addSecondaryButton(root, "Back", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    errorText = null;
                    showStep2Cert(false);
                }
            });

            setPage(root, TextUtils.isEmpty(tokenHex) ? tokenField : connectBtn);
        }

        // --- Step 4: Verify credentials, save, start service, show handles ---
        private void showStep4Connect() {
            step = 4;
            busy = true;
            finishedSuccess = false;

            LinearLayout loading = createPageLayout("Step 4 of 4", "Connecting");
            addBody(loading, "Signing in to " + hostName + ":" + port + "...");
            ProgressBar pb = new ProgressBar(activity);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.gravity = Gravity.CENTER_HORIZONTAL;
            lp.topMargin = dp(8);
            loading.addView(pb, lp);
            setPage(loading, null);

            final String h = hostName;
            final int p = port;
            final String sni = !TextUtils.isEmpty(sniMain) ? sniMain : hostName;
            final String tok = tokenHex;
            final String pin = pinHex;

            new Thread(new Runnable() {
                @Override
                public void run() {
                    final String err = TlsHelper.verifyCredentials(h, p, sni, tok, pin, 12_000);
                    if (err != null) {
                        main.post(new Runnable() {
                            @Override
                            public void run() {
                                if (isGone()) return;
                                busy = false;
                                errorText = err;
                                showStep4Failed(err);
                            }
                        });
                        return;
                    }

                    // Credentials verified! Save setup and start persistent foreground host.
                    cfg.saveSetup(inputUrl, h, p, sni, tok, pin);
                    host.startOrRestart();

                    // Wait up to 3.5s for main connection + HANDLES to populate so we can display them.
                    long end = android.os.SystemClock.elapsedRealtime() + 3500L;
                    while (android.os.SystemClock.elapsedRealtime() < end) {
                        if (host.getStatus() == PushClient.Status.CONNECTED && !cfg.getHandles().isEmpty()) {
                            break;
                        }
                        try {
                            Thread.sleep(200L);
                        } catch (InterruptedException ignored) {
                            break;
                        }
                    }

                    main.post(new Runnable() {
                        @Override
                        public void run() {
                            if (isGone()) return;
                            busy = false;
                            finishedSuccess = true;
                            showStep4Done();
                        }
                    });
                }
            }, "wave-imsg-verify").start();
        }

        private void showStep4Failed(String err) {
            LinearLayout root = createPageLayout("Step 4 of 4", "Connection failed");
            addError(root, err);
            Button backBtn = addPrimaryButton(root, "Edit token", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    errorText = null;
                    showStep3Token();
                }
            });
            addSecondaryButton(root, "Retry", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    showStep4Connect();
                }
            });
            addSecondaryButton(root, "Start over", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    errorText = null;
                    showStep1Server();
                }
            });
            setPage(root, backBtn);
        }

        private void showStep4Done() {
            LinearLayout root = createPageLayout("All set", "iMessage is ready");
            addSuccess(root, "Connected to " + cfg.getServerUrl());
            addBody(root, "Handles: " + cfg.formatHandlesSummary());
            addBody(root, "Low-power dynamic keepalive is active in the background.");

            Button doneBtn = addPrimaryButton(root, "Done", new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    openSettingsAndFinish();
                }
            });
            setPage(root, doneBtn);
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

        private EditText addEditField(LinearLayout parent, String hint, String initial, int inputType) {
            EditText et = new EditText(activity);
            et.setHint(hint);
            if (!TextUtils.isEmpty(initial)) {
                et.setText(initial);
                et.setSelection(initial.length());
            }
            et.setInputType(inputType);
            et.setSingleLine(true);
            et.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
            et.setFocusable(true);
            et.setFocusableInTouchMode(true);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.bottomMargin = dp(8);
            parent.addView(et, lp);
            return et;
        }

        private Button addPrimaryButton(LinearLayout parent, String label, View.OnClickListener onClick) {
            Button b = new Button(activity);
            b.setText(label);
            b.setAllCaps(false);
            b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
            b.setFocusable(true);
            b.setOnClickListener(onClick);
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
            b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.5f);
            b.setFocusable(true);
            b.setOnClickListener(onClick);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.topMargin = dp(2);
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

        private static String formatFingerprintBlocks(String colonHex) {
            if (TextUtils.isEmpty(colonHex)) return "";
            // 32 bytes -> 4 lines of 8 bytes each (23 chars per line) fits cleanly on 240px screen.
            String[] bytes = colonHex.split(":");
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bytes.length; i++) {
                if (i > 0) {
                    sb.append((i % 8 == 0) ? '\n' : ':');
                }
                sb.append(bytes[i]);
            }
            return sb.toString();
        }
    }
}
