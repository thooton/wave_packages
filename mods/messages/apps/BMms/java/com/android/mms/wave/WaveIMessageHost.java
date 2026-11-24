package com.android.mms.wave;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Telephony;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.transaction.WaveIMessageSend;
import com.android.mms.ui.WaveIMessageUi;
import com.android.mms.wave.imsg.Body;
import com.android.mms.wave.imsg.NetworkInfoProvider;
import com.android.mms.wave.imsg.PushClient;
import com.android.mms.wave.imsg.WakeupClock;

import java.io.File;
import java.io.FileOutputStream;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * FEAT(imessage): Hosts the persistent, low-power PushClient inside the Messages process.
 *
 * The stock manifest cannot change, so we reuse the dormant, already-declared
 * com.android.mms.rcs.RcsMessageStatusService as a sticky foreground service with a silent
 * IMPORTANCE_MIN notification channel on Android 8.1 (API 27).
 *
 * Keepalive timers use AlarmManager.setExactAndAllowWhileIdle(ELAPSED_REALTIME_WAKEUP) with a
 * brief partial WakeLock only during active socket I/O so the flip phone sleeps completely
 * between dynamic keepalives for minimal power consumption.
 */
public final class WaveIMessageHost implements PushClient.Listener {
    public static final String TAG = "WaveIMsg";
    public static final String ACTION_HOST = "com.android.mms.wave.IMESSAGE_HOST";
    private static final String ACTION_ALARM_WAKEUP = "com.android.mms.wave.IMESSAGE_ALARM_WAKEUP";
    private static final String HOST_SERVICE = "com.android.mms.rcs.RcsMessageStatusService";
    private static final String NOTIF_CHANNEL_ID = "wave_imessage_conn";
    private static final int NOTIF_ID = 48120;
    private static final int START_STICKY = 1;

    private static WaveIMessageHost sInstance;

    private final Context ctx;
    private final WaveIMessageConfig config;
    private final Handler handler;
    private final AndroidWakeupClock wakeupClock;
    private final AndroidNetworkInfoProvider networkInfoProvider;

    private Service activeService;
    private PushClient client;
    private boolean netCallbackRegistered;
    private boolean alarmReceiverRegistered;
    private boolean dataSmsReceiverRegistered;

    // Phone-number setup, driven by the server (Body.SETUP_*; -1 = not heard yet).
    private volatile int setupState = -1;
    private volatile String setupDetail = "";
    private volatile long lastSimInfoElapsedMs = -1L;

    // Registration / renewal status pushed by the server via REG_INFO.
    private volatile boolean hasRegInfo = false;
    private volatile long authExpiresAtMs = 0L;
    private volatile long nextReregAtMs = 0L;
    private volatile long renewAtMs = 0L;
    private volatile boolean providerConnected = false;
    private volatile int regState = -1;
    private volatile String regDetail = "";

    private volatile PushClient.Status status = PushClient.Status.OFFLINE;
    private volatile String statusDetail = "Off";
    private volatile int currentIntervalS = 60;
    private volatile String activeNetworkKey = "";

    private final Map<String, Object> sendWaiters = new HashMap<String, Object>();
    private final Map<String, Long> pendingTargetChecks = new HashMap<String, Long>();

    private final BroadcastReceiver alarmReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            // Held until the loop this tick wakes has handled it (it releases HOLD_ALARM).
            wakeupClock.acquireBriefWakeLock(WakeupClock.HOLD_ALARM, 15_000L);
            if (wakeupClock.onAlarm().contains(WakeupClock.WAKE_INBOX)) {
                // kick() takes the inbox's own wakelock before we drop the alarm's.
                com.android.mms.transaction.WaveIMessageInbox.get(ctx).onRetryAlarm();
                wakeupClock.releaseWakeLock(WakeupClock.WAKE_INBOX);
            }
            PushClient c = client;
            if (c != null) {
                c.onWakeupTick();
                refreshServicePriority();
            } else {
                wakeupClock.releaseWakeLock(WakeupClock.HOLD_ALARM);
            }
        }
    };

    private WaveIMessageHost(Context c) {
        this.ctx = c.getApplicationContext();
        this.config = new WaveIMessageConfig(this.ctx);
        HandlerThread t = new HandlerThread("wave-imsg-host");
        t.start();
        this.handler = new Handler(t.getLooper());
        this.wakeupClock = new AndroidWakeupClock();
        this.networkInfoProvider = new AndroidNetworkInfoProvider();
        try {
            com.android.mms.transaction.WaveIMessageEdit.registerDebugReceiver(this.ctx);
        } catch (Throwable e) {
            Log.w(TAG, "debug receiver", e);
        }
    }

    public static synchronized WaveIMessageHost get(Context c) {
        if (sInstance == null) {
            sInstance = new WaveIMessageHost(c);
        }
        return sInstance;
    }

    /** Returns the host if iMessage is enabled and currently connected, else null. */
    public static WaveIMessageHost connected() {
        WaveIMessageHost h;
        synchronized (WaveIMessageHost.class) {
            h = sInstance;
        }
        if (h == null) return null;
        PushClient c = h.client;
        return (c != null && c.isConnected() && h.config.isEnabled()) ? h : null;
    }

    /**
     * Like {@link #connected()}, but null while "Send with iMessage" is off, so every send path
     * leaves the message to stock SMS/MMS.
     */
    public static WaveIMessageHost sending() {
        WaveIMessageHost h = connected();
        return (h != null && h.config.isSendEnabled()) ? h : null;
    }

    public WaveIMessageConfig config() {
        return config;
    }

    // -----------------------------------------------------------------------------------------
    // Lifecycle hooks

    /** Called from WaveInit.onAppCreate (main thread): never blocks or touches disk on UI thread. */
    public static void onAppCreate(Context app) {
        final Context appCtx = app.getApplicationContext();
        // Immediately warm UI read caches (infoKeys + infoCache + tapbacks) off-main before frame #1.
        WaveIMessageDb.warmUiCachesAsync(appCtx);
        // PERF: defer foreground service startup (RcsMessageStatusService.onStartCommand +
        // enterForeground NotificationManager IPCs + TLS/DNS handshake) 900ms past initial launch
        // so cold frame #1 renders with zero main-thread service/notification/CPU contention.
        new Handler(android.os.Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                Thread t = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            final WaveIMessageHost h = get(appCtx);
                            h.handler.post(new Runnable() {
                                @Override
                                public void run() {
                                    if (h.config.isEnabled()) {
                                        h.startHostService(null);
                                    }
                                }
                            });
                        } catch (Throwable ignored) {}
                    }
                }, "wave-imsg-init");
                t.setDaemon(true);
                t.start();
            }
        }, 900L);
    }

    /** Called from MmsSystemEventReceiver.onReceive on BOOT_COMPLETED. */
    public static void onSystemEvent(Context c, Intent intent) {
        if (intent == null) return;
        String action = intent.getAction();
        if (Intent.ACTION_BOOT_COMPLETED.equals(action)) {
            final WaveIMessageHost h = get(c);
            h.handler.post(new Runnable() {
                @Override
                public void run() {
                    if (h.config.isEnabled()) {
                        h.startHostService(null);
                    }
                }
            });
        }
    }

    /**
     * Hook for RcsMessageStatusService.onStartCommand.
     * Returns -1 to let stock code handle unrelated intents; otherwise returns START_STICKY.
     */
    public static int onStartCommand(final Service s, Intent intent) {
        try {
            if (intent != null && !ACTION_HOST.equals(intent.getAction())) {
                return -1;
            }
            final WaveIMessageHost h = get(s);
            final String cmd = intent != null ? intent.getStringExtra("cmd") : null;
            synchronized (h) {
                h.activeService = s;
            }
            if (h.config.isEnabled()) {
                h.enterForeground(s);
            }
            h.handler.post(new Runnable() {
                @Override
                public void run() {
                    h.handleCommand(s, cmd);
                }
            });
            return START_STICKY;
        } catch (Throwable t) {
            Log.w(TAG, "onStartCommand", t);
            return START_STICKY;
        }
    }

    /**
     * MessageUtils.getActivatedIccCardCount hook: allows composing/sending iMessages over Wi-Fi
     * even when no SIM card is inserted.
     */
    public static int activatedIccCardCount(int stock) {
        if (stock > 0) return stock;
        try {
            return connected() != null ? 1 : stock;
        } catch (Throwable t) {
            return stock;
        }
    }

    public void startOrRestart() {
        startHostService("restart");
    }

    public void stopAll() {
        handler.post(new Runnable() {
            @Override
            public void run() {
                stopClient();
                leaveForegroundAndStop();
                writeStatusFile();
            }
        });
    }

    public void reconnectNow() {
        handler.post(new Runnable() {
            @Override
            public void run() {
                if (!config.isEnabled()) return;
                if (client == null) {
                    startHostService(null);
                } else {
                    client.reconnectNow();
                }
            }
        });
    }

    /** Wakes the phone in {@code delayMs} to retry the incoming-message queue. */
    public void scheduleInboxRetry(long delayMs) {
        wakeupClock.scheduleWakeup(WakeupClock.WAKE_INBOX, delayMs);
    }

    public void cancelInboxRetry() {
        wakeupClock.cancelWakeup(WakeupClock.WAKE_INBOX);
    }

    public void triggerProbeNow() {
        handler.post(new Runnable() {
            @Override
            public void run() {
                if (client != null && client.isConnected()) {
                    client.triggerProbeNow();
                }
            }
        });
    }

    public void refreshHandles() {
        handler.post(new Runnable() {
            @Override
            public void run() {
                PushClient c = client;
                if (c != null && c.isConnected()) {
                    try {
                        c.requestHandles();
                    } catch (Throwable t) {
                        Log.w(TAG, "requestHandles failed", t);
                    }
                }
            }
        });
    }

    public void refreshRegInfo() {
        handler.post(new Runnable() {
            @Override
            public void run() {
                PushClient c = client;
                if (c != null && c.isConnected()) {
                    try {
                        c.requestRegInfo();
                    } catch (Throwable t) {
                        Log.w(TAG, "requestRegInfo failed", t);
                    }
                }
            }
        });
    }

    private void startHostService(String cmd) {
        try {
            Intent i = new Intent(ACTION_HOST).setClassName(ctx.getPackageName(), HOST_SERVICE);
            if (cmd != null) i.putExtra("cmd", cmd);
            ctx.startService(i);
        } catch (Throwable t) {
            Log.w(TAG, "startHostService failed, starting client directly", t);
            handler.post(new Runnable() {
                @Override
                public void run() {
                    ensureClientStarted();
                }
            });
        }
    }

    private void handleCommand(Service s, String cmd) {
        if ("restart".equals(cmd)) {
            stopClient();
        }
        if (config.isEnabled()) {
            enterForeground(s);
            ensureClientStarted();
        } else {
            stopClient();
            leaveForegroundAndStop();
        }
        writeStatusFile();
    }

    private void ensureClientStarted() {
        if (!config.isEnabled()) {
            stopClient();
            return;
        }
        if (client != null) {
            return;
        }
        ensureAlarmReceiverRegistered();
        ensureNetworkCallbackRegistered();
        ensureDataSmsReceiverRegistered();

        PushClient.Config pc = new PushClient.Config();
        pc.mainHost = config.getHost();
        pc.mainPort = config.getPort();
        pc.tokenHex = config.getTokenHex();
        pc.stateFile = config.stateFile();
        pc.autoProbe = true;
        String probeScaleProp = Wave.prop("debug.wave.imsg.probe_scale");
        if (!TextUtils.isEmpty(probeScaleProp)) {
            try {
                double sc = Double.parseDouble(probeScaleProp);
                if (sc > 0.0) pc.probeScale = sc;
            } catch (NumberFormatException ignored) {
            }
        }
        pc.networkInfoProvider = networkInfoProvider;
        pc.wakeupClock = wakeupClock;

        try {
            PushClient c = new PushClient(pc, this);
            client = c;
            c.start();
            Log.i(TAG, "PushClient started for " + pc.mainHost + ":" + pc.mainPort);
        } catch (Throwable t) {
            Log.e(TAG, "Failed to create PushClient", t);
            status = PushClient.Status.ERROR;
            statusDetail = t.getMessage() != null ? t.getMessage() : t.getClass().getSimpleName();
            writeStatusFile();
        }
    }

    private void stopClient() {
        PushClient c = client;
        client = null;
        if (c != null) {
            try {
                c.stop();
            } catch (Throwable t) {
                Log.w(TAG, "stopClient", t);
            }
        }
        wakeupClock.cancelWakeup();
        wakeupClock.releaseAllWakeLocks();
        status = PushClient.Status.OFFLINE;
        statusDetail = config.isConfigured() ? "Off" : "Not set up";
        if (!config.isConfigured()) {
            hasRegInfo = false;
            authExpiresAtMs = 0L;
            nextReregAtMs = 0L;
            renewAtMs = 0L;
            providerConnected = false;
            regState = -1;
            regDetail = "";
        }
        WaveIMessageUi.refreshActiveComposeHint();
    }

    // -----------------------------------------------------------------------------------------
    // Foreground notification (Android 8.1 API 27)

    private static volatile boolean sChannelCreated;

    private void enterForeground(Service s) {
        if (s == null) return;
        if (!config.isConnectionNotificationShown()) {
            try {
                s.stopForeground(true);
            } catch (Throwable ignored) {
            }
            synchronized (this) {
                lastNotifText = null;
            }
            return;
        }
        try {
            if (!sChannelCreated) {
                ensureNotificationChannel();
                sChannelCreated = true;
            }
            synchronized (this) {
                lastNotifText = formatStatusSummary();
            }
            s.startForeground(NOTIF_ID, buildForegroundNotification());
        } catch (Throwable t) {
            Log.w(TAG, "enterForeground", t);
        }
    }

    private void updateForegroundNotification() {
        Service s;
        synchronized (this) {
            s = activeService;
        }
        if (s == null || !config.isEnabled() || !config.isConnectionNotificationShown()) return;
        // Status, interval and network changes all land here, often with the same text (a
        // reconnect goes Connecting, Connected): posting it again costs a binder call and a
        // SystemUI update for nothing.
        String text = formatStatusSummary();
        synchronized (this) {
            if (text.equals(lastNotifText)) return;
            lastNotifText = text;
        }
        try {
            NotificationManager nm = (NotificationManager) ctx.getSystemService(Context.NOTIFICATION_SERVICE);
            if (nm != null) {
                ensureNotificationChannel();
                nm.notify(NOTIF_ID, buildForegroundNotification());
            }
        } catch (Throwable ignored) {
        }
    }

    /** Text of the connection notification as last posted (guarded by this). */
    private String lastNotifText;

    /** Applies a change of the "Connection notification" setting to the running service. */
    public void applyNotificationSetting() {
        handler.post(new Runnable() {
            @Override
            public void run() {
                Service s;
                synchronized (WaveIMessageHost.this) {
                    s = activeService;
                }
                if (s != null && config.isEnabled()) enterForeground(s);
            }
        });
    }

    /**
     * Without the notification the host service is a plain started service. Starting it again on
     * each keepalive tick resets its last-activity time, so Android keeps ranking the process as an
     * active service instead of letting it age into the easily killed background services.
     */
    private void refreshServicePriority() {
        if (config.isConnectionNotificationShown() || !config.isEnabled()) return;
        synchronized (this) {
            if (activeService == null) return;
        }
        startHostService(null);
    }

    private void leaveForegroundAndStop() {
        Service s;
        synchronized (this) {
            s = activeService;
            activeService = null;
        }
        if (s != null) {
            try {
                s.stopForeground(true);
            } catch (Throwable ignored) {
            }
            try {
                s.stopSelf();
            } catch (Throwable ignored) {
            }
        }
    }

    private void ensureNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager nm = (NotificationManager) ctx.getSystemService(Context.NOTIFICATION_SERVICE);
            if (nm != null && nm.getNotificationChannel(NOTIF_CHANNEL_ID) == null) {
                NotificationChannel ch = new NotificationChannel(
                        NOTIF_CHANNEL_ID, "iMessage connection", NotificationManager.IMPORTANCE_MIN);
                ch.setShowBadge(false);
                ch.enableLights(false);
                ch.enableVibration(false);
                ch.setSound(null, null);
                nm.createNotificationChannel(ch);
            }
        }
    }

    private Notification buildForegroundNotification() {
        int icon = android.R.drawable.stat_notify_chat;
        int appIcon = ctx.getResources().getIdentifier("stat_notify_sms", "drawable", ctx.getPackageName());
        if (appIcon != 0) icon = appIcon;

        Intent openSettings = new Intent().setClassName(ctx.getPackageName(),
                "com.android.mms.ui.MessagingReportsPreferenceActivity");
        openSettings.putExtra("msg_type", "wave_imessage");
        PendingIntent pi = PendingIntent.getActivity(ctx, NOTIF_ID, openSettings, PendingIntent.FLAG_UPDATE_CURRENT);

        Notification.Builder b = Build.VERSION.SDK_INT >= 26
                ? new Notification.Builder(ctx, NOTIF_CHANNEL_ID)
                : new Notification.Builder(ctx);
        b.setSmallIcon(icon)
                .setContentTitle("iMessage")
                .setContentText(formatStatusSummary())
                .setOngoing(true)
                .setContentIntent(pi);
        if (Build.VERSION.SDK_INT < 26) {
            b.setPriority(Notification.PRIORITY_MIN);
        }
        return b.build();
    }

    // -----------------------------------------------------------------------------------------
    // Status introspection for Settings UI

    public PushClient.Status getStatus() {
        return status;
    }

    public String getStatusDetail() {
        return statusDetail;
    }

    public int getCurrentIntervalSeconds() {
        PushClient c = client;
        return c != null ? c.getCurrentIntervalSeconds() : currentIntervalS;
    }

    public boolean isProbeRunning() {
        PushClient c = client;
        return c != null && c.isProbeRunning();
    }

    public String getActiveNetworkKey() {
        PushClient c = client;
        return c != null ? c.getActiveNetworkKey() : activeNetworkKey;
    }

    public int getOutboxSize() {
        PushClient c = client;
        return c != null ? c.getOutboxSize() : 0;
    }

    public String formatStatusSummary() {
        if (!config.isConfigured()) return "Not set up";
        if (!config.isEnabled()) return "Off";
        switch (status) {
            case CONNECTED: {
                int st = setupState;
                boolean initialSetup = config.getHandles().isEmpty();
                if (initialSetup) {
                    if (st == Body.SETUP_FAILED) {
                        return "Setup failed: " + setupDetail;
                    }
                    if (st == Body.SETUP_NEED_SIM || st == Body.SETUP_WORKING || st == Body.SETUP_WAITING_SMS) {
                        return "Setting up: " + setupDetail;
                    }
                }
                int iv = getCurrentIntervalSeconds();
                String ivStr = formatInterval(iv);
                if (isProbeRunning()) {
                    return "Connected (optimizing keepalive...)";
                }
                return "Connected (keepalive " + ivStr + ")";
            }
            case CONNECTING:
                return "Connecting...";
            case AUTH_FAILED:
                return "Authentication failed";
            case ERROR:
                return TextUtils.isEmpty(statusDetail) ? "Connection error" : ("Error: " + statusDetail);
            default:
                return TextUtils.isEmpty(statusDetail) ? "Offline" : statusDetail;
        }
    }

    public boolean hasRegInfo() {
        return hasRegInfo;
    }

    public boolean isProviderConnected() {
        return providerConnected;
    }

    public long getAuthExpiresAtMs() {
        return authExpiresAtMs;
    }

    public long getRenewAtMs() {
        return renewAtMs;
    }

    public String formatRenewalSummary() {
        if (!config.isConfigured()) return "Not set up";
        if (!config.isEnabled()) return "Off";
        if (!hasRegInfo) {
            return status == PushClient.Status.CONNECTED ? "Checking..." : "Offline";
        }
        if (regState == Body.REG_STATE_RENEWING) {
            return "Renewing...";
        }
        if (regState == Body.REG_STATE_FAILED) {
            return TextUtils.isEmpty(regDetail) ? "Renewal failed" : ("Failed: " + regDetail);
        }
        if (regState == Body.REG_STATE_NEEDS_PHONE) {
            return config.getHandles().isEmpty() ? "Waiting for setup" : "Renewal needed";
        }
        String daysText = formatDaysUntil(renewAtMs);
        if (!providerConnected) {
            return daysText != null ? ("Relay offline (renews in " + daysText + ")") : "Relay offline";
        }
        if (renewAtMs > 0L) {
            long diff = renewAtMs - System.currentTimeMillis();
            if (diff <= 0L) {
                return "Renewal due soon";
            }
            return "Renews automatically in " + formatDaysCount(diff);
        }
        if (authExpiresAtMs > 0L) {
            long diff = authExpiresAtMs - System.currentTimeMillis();
            if (diff <= 0L) {
                return "Expired";
            }
            return "Expires in " + formatDaysCount(diff);
        }
        return "Active";
    }

    private static String formatDaysUntil(long targetMs) {
        if (targetMs <= 0L) return null;
        long diff = targetMs - System.currentTimeMillis();
        if (diff <= 0L) return "< 1 day";
        return formatDaysCount(diff);
    }

    private static String formatDaysCount(long diffMs) {
        final long dayMs = 86_400_000L;
        if (diffMs < dayMs) return "< 1 day";
        long days = (diffMs + dayMs - 1L) / dayMs;
        return days == 1L ? "1 day" : (days + " days");
    }

    public static String formatInterval(int seconds) {
        if (seconds < 120) return seconds + "s";
        int mins = seconds / 60;
        int rem = seconds % 60;
        return rem == 0 ? (mins + "m") : (mins + "m " + rem + "s");
    }

    // -----------------------------------------------------------------------------------------
    // Messaging send + capability check APIs

    public static final class SendOutcome {
        public final boolean ok;
        public final String appleMsgId;
        public final String error;
        /**
         * A timeout on a message the server already has (it ACKed it): it may still go out, so
         * the caller must not send it another way (SMS/MMS fallback, re-queueing): that would
         * deliver it twice. Mark it failed instead.
         */
        public final boolean serverHasIt;

        public SendOutcome(boolean ok, String appleMsgId, String error) {
            this(ok, appleMsgId, error, false);
        }

        public SendOutcome(boolean ok, String appleMsgId, String error, boolean serverHasIt) {
            this.ok = ok;
            this.appleMsgId = appleMsgId;
            this.error = error;
            this.serverHasIt = serverHasIt;
        }

        /** Whether the caller may send the message another way after this failure. */
        public boolean mayFallBack() {
            return !ok && !serverHasIt;
        }

        public boolean isNotRegisteredError() {
            return !ok && error != null && error.toLowerCase(java.util.Locale.ROOT).contains("not registered on imessage");
        }

        @Override
        public String toString() {
            return ok ? ("ok:" + appleMsgId) : ("err:" + error);
        }
    }

    public interface SendCallback {
        void onResult(SendOutcome outcome);
    }

    public String sendText(String normalizedTarget, String text, String senderGuid) throws Exception {
        return sendMessage(java.util.Collections.singletonList(normalizedTarget), text, senderGuid, null);
    }

    public String sendGroupText(List<String> normalizedTargets, String text, String senderGuid) throws Exception {
        return sendMessage(normalizedTargets, text, senderGuid, null);
    }

    /** Sends text and already-uploaded attachments to {@code normalizedTargets}. */
    public String sendMessage(List<String> normalizedTargets, String text, String senderGuid,
                              List<Body.OutAttachment> attachments) throws Exception {
        PushClient c = client;
        if (c == null || !c.isConnected()) throw new IllegalStateException("iMessage not connected");
        return c.sendMessage(normalizedTargets, text, senderGuid, attachments);
    }

    /** Adds or removes a tapback on {@code targetId} in the conversation with {@code normalizedTargets}. */
    public String sendReaction(List<String> normalizedTargets, String senderGuid, String targetId, int reaction,
                               String emoji, boolean enable, String targetText) throws Exception {
        PushClient c = client;
        if (c == null || !c.isConnected()) throw new IllegalStateException("iMessage not connected");
        return c.sendReaction(normalizedTargets, senderGuid, targetId, reaction, emoji, enable, targetText);
    }

    /** Edits our own message {@code targetId}; the result comes as a SEND_RESULT. */
    public String sendEdit(List<String> normalizedTargets, String senderGuid, String targetId, int part, String text)
            throws Exception {
        PushClient c = client;
        if (c == null || !c.isConnected()) throw new IllegalStateException("iMessage not connected");
        return c.sendEdit(normalizedTargets, senderGuid, targetId, part, text);
    }

    /** Unsends our own message {@code targetId}; the result comes as a SEND_RESULT. */
    public String sendUnsend(List<String> normalizedTargets, String senderGuid, String targetId, int parts)
            throws Exception {
        PushClient c = client;
        if (c == null || !c.isConnected()) throw new IllegalStateException("iMessage not connected");
        return c.sendUnsend(normalizedTargets, senderGuid, targetId, parts);
    }

    /** A client for attachment downloads and uploads, or null while not set up / not running. */
    public com.android.mms.wave.imsg.MediaClient mediaClient() {
        PushClient c = client;
        if (c == null || !config.isConfigured()) return null;
        return c.mediaClient();
    }

    public void expectSendResult(final String clientMsgId, final SendCallback cb, long timeoutMs) {
        Object already;
        synchronized (sendWaiters) {
            already = sendWaiters.remove(clientMsgId);
            if (already == null) {
                sendWaiters.put(clientMsgId, cb);
            }
        }
        if (already instanceof SendOutcome) {
            cb.onResult((SendOutcome) already);
            return;
        }
        final long giveUpAt = SystemClock.elapsedRealtime() + Math.max(timeoutMs, ACCEPTED_WAIT_MS);
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                synchronized (sendWaiters) {
                    if (sendWaiters.get(clientMsgId) != cb) return; // answered meanwhile
                }
                PushClient c = client;
                boolean accepted = (c != null && c.isAccepted(clientMsgId))
                        || (isResumed(clientMsgId) && !isQueued(clientMsgId));
                // The server has it: its SEND_RESULT will come (it's queued for us across
                // reconnects), so keep waiting rather than sending the message a second way.
                if (accepted && SystemClock.elapsedRealtime() < giveUpAt) {
                    handler.postDelayed(this, 15_000L);
                    return;
                }
                // Not accepted: take it back so it isn't delivered later behind the fallback.
                if (!accepted && c != null) c.cancelIfPending(clientMsgId);
                Object w;
                synchronized (sendWaiters) {
                    w = sendWaiters.get(clientMsgId);
                    if (w == cb) sendWaiters.remove(clientMsgId);
                }
                if (w == cb) {
                    cb.onResult(new SendOutcome(false, null, accepted
                            ? "No answer from iMessage server" : "Timed out waiting for iMessage server", accepted));
                }
            }
        }, timeoutMs);
    }

    /** How long to wait for the result of a message the server has accepted. */
    private static final long ACCEPTED_WAIT_MS = 5L * 60L * 1000L;

    public SendOutcome awaitSendResult(String clientMsgId, long timeoutMs) {
        final SendOutcome[] result = new SendOutcome[1];
        final Object lock = new Object();
        expectSendResult(clientMsgId, new SendCallback() {
            @Override
            public void onResult(SendOutcome outcome) {
                synchronized (lock) {
                    if (result[0] == null) result[0] = outcome;
                    lock.notifyAll();
                }
            }
        }, timeoutMs);
        synchronized (lock) {
            while (result[0] == null) {
                try {
                    lock.wait();
                } catch (InterruptedException ie) {
                    return new SendOutcome(false, null, "Interrupted");
                }
            }
            return result[0];
        }
    }

    /**
     * Asks the server (async, debounced) whether the given normalized targets are registered on iMessage.
     * Results update the capability cache and trigger ComposeMessageActivity hint refresh.
     */
    public void requestTargetCheckAsync(List<String> normalizedTargets) {
        final PushClient c = client;
        if (c == null || !c.isConnected() || normalizedTargets == null || normalizedTargets.isEmpty()
                || !config.isSendEnabled()) {
            return;
        }
        final List<String> toCheck = new ArrayList<String>();
        long now = SystemClock.elapsedRealtime();
        synchronized (pendingTargetChecks) {
            for (String t : normalizedTargets) {
                if (TextUtils.isEmpty(t)) continue;
                String key = t.toLowerCase(java.util.Locale.ROOT);
                Long last = pendingTargetChecks.get(key);
                if (last == null || (now - last) > 15_000L) {
                    pendingTargetChecks.put(key, now);
                    toCheck.add(t);
                }
            }
        }
        if (toCheck.isEmpty()) return;
        handler.post(new Runnable() {
            @Override
            public void run() {
                try {
                    PushClient cur = client;
                    if (cur != null && cur.isConnected()) {
                        cur.checkTargets(toCheck);
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "checkTargets failed", t);
                }
            }
        });
    }

    // -----------------------------------------------------------------------------------------
    // PushClient.Listener

    @Override
    public void onStatusChanged(PushClient.Status s, String detail) {
        this.status = s;
        this.statusDetail = detail == null ? "" : detail;
        Log.i(TAG, "status=" + s + " detail=" + this.statusDetail);
        updateForegroundNotification();
        writeStatusFile();
        WaveIMessageUi.refreshActiveComposeHint();
    }

    @Override
    public void onConnected(int intervalS, String networkKey) {
        this.currentIntervalS = intervalS;
        this.activeNetworkKey = networkKey == null ? "" : networkKey;
        updateForegroundNotification();
        writeStatusFile();
        // The server sends REG_INFO itself on every connect, so no request for it. Handles
        // (which also tell us setup is done) once per process and then at most every 6 h:
        // a reconnect after each network change needn't fetch what hasn't changed.
        long now = SystemClock.elapsedRealtime();
        if (lastHandlesRequestElapsed == 0L || now - lastHandlesRequestElapsed > HANDLES_REFRESH_MS
                || config.getHandles().isEmpty() /* not set up: its answer drives setup */) {
            lastHandlesRequestElapsed = now;
            refreshHandles();
        }
        com.android.mms.transaction.WaveIMessageInbox.get(ctx).kick();
        WaveIMessageSend.drainQueuedAsync(ctx);
        WaveIMessageUi.refreshActiveComposeHint();
        // Results the server kept for us come right after the WELCOME; then settle sends from
        // before a restart that got none (a row stuck in "Sending" since).
        handler.removeCallbacks(pendingSweep);
        handler.postDelayed(pendingSweep, 60_000L);
    }

    private static final long HANDLES_REFRESH_MS = 6L * 60L * 60L * 1000L;
    private volatile long lastHandlesRequestElapsed = 0L;

    private final Runnable pendingSweep = new Runnable() {
        @Override
        public void run() {
            try {
                WaveIMessageSend.sweepPendingSends(ctx);
            } catch (Throwable t) {
                Log.w(TAG, "pending send sweep", t);
            }
        }
    };

    @Override
    public void onDisconnected(String reason) {
        Log.i(TAG, "disconnected: " + reason);
        updateForegroundNotification();
        writeStatusFile();
        WaveIMessageUi.refreshActiveComposeHint();
    }

    @Override
    public void onIntervalUpdated(int intervalS, String networkKey) {
        this.currentIntervalS = intervalS;
        this.activeNetworkKey = networkKey == null ? "" : networkKey;
        Log.i(TAG, "keepalive updated: " + intervalS + "s (" + networkKey + ")");
        updateForegroundNotification();
        writeStatusFile();
    }

    @Override
    public void onLog(String message) {
        Log.d(TAG, message);
    }

    @Override
    public void onBody(long seq, Body body) {
        if (body == null) return;
        Log.i(TAG, "rx seq=" + seq + " " + body);
        if (com.android.mms.transaction.WaveIMessageInbox.handles(body.kind)) {
            // Stored in order by the inbox worker (attachments can take a while to download).
            try {
                com.android.mms.transaction.WaveIMessageInbox.get(ctx).enqueue(body);
            } catch (Throwable t) {
                Log.e(TAG, "Failed to queue incoming " + body, t);
            }
            WaveIMessageUi.refreshActiveComposeHint();
            return;
        }
        switch (body.kind) {
            case Body.KIND_HANDLES:
                config.setHandles(body.handles, body.preferredHandle);
                if (body.handles != null && !body.handles.isEmpty()) {
                    setupState = Body.SETUP_READY;
                    setupDetail = WaveIMessageConfig.stripHandlePrefix(body.handles.get(0));
                }
                writeStatusFile();
                break;
            case Body.KIND_SEND_RESULT:
                handleSendResult(body);
                break;
            case Body.KIND_RECEIPT:
                handleReceipt(body);
                break;
            case Body.KIND_TARGET_STATUS:
                handleTargetStatus(body);
                break;
            case Body.KIND_SETUP_STATUS:
                handleSetupStatus(body.receiptKind, body.text);
                break;
            case Body.KIND_SEND_REG_SMS:
                sendRegistrationSms(body.target, body.text);
                break;
            case Body.KIND_REG_INFO:
                handleRegInfo(body);
                break;
            default:
                break;
        }
    }

    // -----------------------------------------------------------------------------------------
    // Phone-number setup: the server asks for SIM info, has us text Apple's gateway, and gets
    // Apple's REG-RESP reply back from us.

    public int getSetupState() {
        return setupState;
    }

    public String getSetupDetail() {
        return setupDetail;
    }

    private void handleRegInfo(Body body) {
        hasRegInfo = true;
        authExpiresAtMs = body.authExpiresAtMs;
        nextReregAtMs = body.nextReregAtMs;
        renewAtMs = body.renewAtMs;
        providerConnected = body.providerConnected;
        regState = body.regState;
        regDetail = body.text == null ? "" : body.text;
        updateForegroundNotification();
        writeStatusFile();
    }

    private void handleSetupStatus(int state, String detail) {
        setupState = state;
        setupDetail = detail == null ? "" : detail;
        if (state == Body.SETUP_NEED_SIM) {
            // Start registration automatically, but don't re-text Apple on every reconnect.
            if (lastSimInfoElapsedMs < 0 || SystemClock.elapsedRealtime() - lastSimInfoElapsedMs > 5L * 60L * 1000L) {
                sendSimInfo();
            }
        } else if (state == Body.SETUP_READY) {
            refreshHandles();
            refreshRegInfo();
        }
        writeStatusFile();
    }

    /** Sends this phone's SIM details so the server can start (or retry) registration. */
    public void sendSimInfo() {
        handler.post(new Runnable() {
            @Override
            public void run() {
                String mccmnc = "";
                String number = null;
                try {
                    TelephonyManager tm = (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
                    if (tm != null) {
                        mccmnc = tm.getSimOperator();
                        String raw = tm.getLine1Number();
                        if (!TextUtils.isEmpty(raw)) number = WaveIMessageConfig.toE164(ctx, raw);
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "SIM info unavailable", t);
                }
                if (mccmnc == null) mccmnc = "";
                lastSimInfoElapsedMs = SystemClock.elapsedRealtime();
                setupState = Body.SETUP_WORKING;
                setupDetail = "Checking SIM...";
                PushClient c = client;
                try {
                    if (c != null) c.sendBody(Body.simInfo(mccmnc, number));
                } catch (Throwable t) {
                    Log.w(TAG, "send SIM_INFO failed", t);
                }
            }
        });
    }

    private void sendRegistrationSms(String gateway, String text) {
        setupState = Body.SETUP_WAITING_SMS;
        setupDetail = "Texting Apple...";
        try {
            SmsManager.getDefault().sendTextMessage(gateway, null, text, null, null);
            Log.i(TAG, "sent registration SMS to " + gateway);
        } catch (Throwable t) {
            Log.w(TAG, "registration SMS to " + gateway + " failed", t);
            setupState = Body.SETUP_FAILED;
            setupDetail = "Couldn't send the registration text: " + t.getMessage();
        }
    }

    /**
     * SmsReceiverService.handleSmsReceived hook. Returns true if the SMS is Apple's REG-RESP, which
     * goes to the server instead of the inbox.
     */
    public static boolean onIncomingSms(Context c, SmsMessage[] msgs) {
        WaveIMessageHost h = sInstance;
        if (h == null || msgs == null) return false;
        StringBuilder sb = new StringBuilder();
        for (SmsMessage m : msgs) {
            if (m == null) continue;
            String part = m.getDisplayMessageBody();
            if (part != null) sb.append(part);
        }
        return h.captureRegResp(sb.toString());
    }

    private boolean captureRegResp(String text) {
        if (text == null) return false;
        int i = text.indexOf("REG-RESP?");
        if (i < 0) return false;
        final String resp = text.substring(i).trim();
        Log.i(TAG, "captured Apple's REG-RESP (" + resp.length() + " chars)");
        setupState = Body.SETUP_WORKING;
        setupDetail = "Registering your number...";
        handler.post(new Runnable() {
            @Override
            public void run() {
                PushClient c = client;
                try {
                    if (c != null) c.sendBody(Body.regResp(resp));
                } catch (Throwable t) {
                    Log.w(TAG, "send REG_RESP failed", t);
                }
            }
        });
        return true;
    }

    // Some carriers (e.g. AT&T) deliver REG-RESP as a data SMS to an application port.
    private final BroadcastReceiver dataSmsReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                SmsMessage[] msgs = Telephony.Sms.Intents.getMessagesFromIntent(intent);
                if (msgs == null) return;
                for (SmsMessage m : msgs) {
                    if (m == null) continue;
                    byte[] data = m.getUserData();
                    if (data != null && captureRegResp(new String(data, StandardCharsets.ISO_8859_1))) return;
                    if (captureRegResp(m.getMessageBody())) return;
                }
            } catch (Throwable t) {
                Log.w(TAG, "data SMS parse failed", t);
            }
        }
    };

    private void ensureDataSmsReceiverRegistered() {
        if (dataSmsReceiverRegistered) return;
        try {
            IntentFilter f = new IntentFilter("android.intent.action.DATA_SMS_RECEIVED");
            f.addDataScheme("sms");
            ctx.registerReceiver(dataSmsReceiver, f);
            dataSmsReceiverRegistered = true;
        } catch (Throwable t) {
            Log.w(TAG, "registerReceiver data SMS", t);
        }
    }

    /** Callbacks for results that come after their sender gave up (see {@link #onLateResult}). */
    private final Map<String, SendCallback> lateWaiters = new HashMap<String, SendCallback>();

    /**
     * After a send timed out and the caller fell back (SMS), the server may still have sent it
     * (it got the MSG but its ACK was lost with the connection) and answer later. {@code cb} gets
     * that late result, so the caller can drop a fallback that hasn't gone out yet.
     */
    public void onLateResult(String clientMsgId, SendCallback cb) {
        synchronized (sendWaiters) {
            if (lateWaiters.size() > 100) lateWaiters.clear();
            lateWaiters.put(clientMsgId, cb);
        }
    }

    /** Sends of an earlier process this one waits for (see {@link #markResumed}). */
    private final java.util.Set<String> resumed = java.util.Collections.synchronizedSet(new java.util.HashSet<String>());

    /**
     * {@code clientMsgId} was given to the server by an earlier process. If it isn't in the outbox
     * any more, the server ACKed it (the outbox drops a send only on its ACK, or when its sender
     * gave up, which also drops its record): treat it as accepted, so a missing result isn't
     * taken as permission to send it again as SMS/MMS.
     */
    public void markResumed(String clientMsgId) {
        if (clientMsgId != null) resumed.add(clientMsgId);
    }

    private boolean isResumed(String clientMsgId) {
        return resumed.contains(clientMsgId);
    }

    /** Whether the server has the send {@code clientMsgId} (it ACKed it). */
    public boolean isAccepted(String clientMsgId) {
        PushClient c = client;
        return (c != null && c.isAccepted(clientMsgId)) || (isResumed(clientMsgId) && !isQueued(clientMsgId));
    }

    /** Whether {@code clientMsgId} is still in the outbox, to be (re)sent on the next connection. */
    public boolean isQueued(String clientMsgId) {
        PushClient c = client;
        return c != null && c.isQueued(clientMsgId);
    }

    private void handleSendResult(Body body) {
        final SendOutcome outcome = new SendOutcome(body.ok, body.appleMsgId, body.error);
        final String id = body.clientMsgId;
        Object waiter;
        SendCallback late;
        boolean unclaimed = false;
        synchronized (sendWaiters) {
            waiter = sendWaiters.remove(body.clientMsgId);
            late = lateWaiters.remove(body.clientMsgId);
            if (waiter == null && late == null) {
                if (sendWaiters.size() > 200) sendWaiters.clear();
                sendWaiters.put(body.clientMsgId, outcome);
                unclaimed = true;
            }
        }
        if (unclaimed && id != null) {
            // Maybe a send from before the process restarted (its waiter is gone).
            handler.post(new Runnable() {
                @Override
                public void run() {
                    try {
                        WaveIMessageSend.onUnclaimedResult(ctx, id, outcome);
                    } catch (Throwable t) {
                        Log.w(TAG, "unclaimed send result " + id, t);
                    }
                }
            });
        }
        if (late != null) {
            try {
                late.onResult(outcome);
            } catch (Throwable t) {
                Log.e(TAG, "late SendCallback error", t);
            }
        }
        if (waiter instanceof SendCallback) {
            try {
                ((SendCallback) waiter).onResult(outcome);
            } catch (Throwable t) {
                Log.e(TAG, "SendCallback error", t);
            }
        }
    }

    private void handleReceipt(Body body) {
        if (body.receiptKind != Body.RECEIPT_DELIVERED && body.receiptKind != Body.RECEIPT_READ) {
            return;
        }
        Uri sentUri = config.getSentUriForAppleMsgId(body.appleMsgId);
        if (sentUri == null) {
            // Sent before the process restarted (that map is in memory only): the message
            // database has every message we sent.
            try {
                WaveIMessageDb.Msg m = WaveIMessageDb.get(ctx).byAppleId(body.appleMsgId);
                if (m != null && WaveIMessageDb.ME.equals(m.sender)) sentUri = m.uri;
            } catch (Throwable t) {
                Log.w(TAG, "receipt lookup " + body.appleMsgId, t);
            }
        }
        if (sentUri != null && "sms".equals(sentUri.getAuthority())) {
            try {
                ContentValues cv = new ContentValues(1);
                cv.put("status", 0 /* Telephony.Sms.STATUS_COMPLETE */);
                ctx.getContentResolver().update(sentUri, cv, null, null);
            } catch (Throwable ignored) {
            }
        }
    }

    private void handleTargetStatus(Body body) {
        for (String r : body.registered) {
            config.setCapability(r, true);
        }
        for (String u : body.unregistered) {
            config.setCapability(u, false);
        }
        WaveIMessageUi.refreshActiveComposeHint();
    }

    // -----------------------------------------------------------------------------------------
    // Network callback & AlarmManager receiver

    private void ensureAlarmReceiverRegistered() {
        if (alarmReceiverRegistered) return;
        try {
            ctx.registerReceiver(alarmReceiver, new IntentFilter(ACTION_ALARM_WAKEUP));
            alarmReceiverRegistered = true;
        } catch (Throwable t) {
            Log.w(TAG, "registerReceiver alarm", t);
        }
    }

    private final Runnable debouncedNetChange = new Runnable() {
        @Override
        public void run() {
            PushClient c = client;
            if (c != null) {
                c.notifyNetworkChanged();
            } else {
                wakeupClock.releaseWakeLock(WakeupClock.HOLD_ALARM);
            }
        }
    };

    private void ensureNetworkCallbackRegistered() {
        if (netCallbackRegistered) return;
        try {
            ConnectivityManager cm = (ConnectivityManager) ctx.getSystemService(Context.CONNECTIVITY_SERVICE);
            if (cm != null) {
                cm.registerDefaultNetworkCallback(new ConnectivityManager.NetworkCallback() {
                    @Override
                    public void onAvailable(Network n) {
                        scheduleNetChange();
                    }

                    @Override
                    public void onLost(Network n) {
                        scheduleNetChange();
                    }

                    @Override
                    public void onLinkPropertiesChanged(Network n, LinkProperties lp) {
                        scheduleNetChange();
                    }
                });
                netCallbackRegistered = true;
            }
        } catch (Throwable t) {
            Log.w(TAG, "registerDefaultNetworkCallback", t);
        }
    }

    private void scheduleNetChange() {
        // Keep the CPU up through the debounce: with the screen off it could otherwise sleep before
        // the reconnect starts. The push loop that the change wakes releases HOLD_ALARM.
        wakeupClock.acquireBriefWakeLock(WakeupClock.HOLD_ALARM, 5_000L);
        handler.removeCallbacks(debouncedNetChange);
        handler.postDelayed(debouncedNetChange, 1500L);
    }

    private void writeStatusFile() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("configured=").append(config.isConfigured()).append('\n');
            sb.append("enabled=").append(config.isEnabled()).append('\n');
            sb.append("server=").append(config.getHost()).append(':').append(config.getPort()).append('\n');
            sb.append("status=").append(status).append('\n');
            sb.append("detail=").append(statusDetail).append('\n');
            sb.append("interval_s=").append(getCurrentIntervalSeconds()).append('\n');
            sb.append("network=").append(getActiveNetworkKey()).append('\n');
            sb.append("handles=").append(config.formatHandlesSummary()).append('\n');
            sb.append("reg_state=").append(regState).append('\n');
            sb.append("provider_connected=").append(providerConnected).append('\n');
            sb.append("renew_at_ms=").append(renewAtMs).append('\n');
            sb.append("auth_expires_at_ms=").append(authExpiresAtMs).append('\n');
            File f = new File(ctx.getFilesDir(), "imessage_status.txt");
            FileOutputStream fos = new FileOutputStream(f);
            try {
                fos.write(sb.toString().getBytes(StandardCharsets.UTF_8));
            } finally {
                fos.close();
            }
        } catch (Throwable ignored) {
        }
    }

    // -----------------------------------------------------------------------------------------
    // Android WakeupClock (AlarmManager + brief partial WakeLock)

    private final class AndroidWakeupClock implements WakeupClock {
        /** One non-reference-counted wakelock per holder (see WakeupClock). */
        private final Map<String, PowerManager.WakeLock> wakeLocks = new HashMap<String, PowerManager.WakeLock>();

        @Override
        public long elapsedRealtimeMs() {
            return SystemClock.elapsedRealtime();
        }

        /** Wakeup key to its elapsedRealtime deadline; the one alarm is armed for the earliest. */
        private final Map<String, Long> deadlines = new HashMap<String, Long>();
        private long armedAt = 0L;

        @Override
        public void scheduleWakeup(long delayMs) {
            scheduleWakeup(WAKE_MAIN, delayMs);
        }

        @Override
        public synchronized void scheduleWakeup(String key, long delayMs) {
            deadlines.put(key, SystemClock.elapsedRealtime() + Math.max(1000L, delayMs));
            rearm();
        }

        @Override
        public synchronized void cancelWakeup(String key) {
            if (deadlines.remove(key) != null) rearm();
        }

        @Override
        public synchronized void cancelWakeup() {
            deadlines.clear();
            rearm();
        }

        /**
         * The alarm fired (alarm receiver, before it wakes the loops): drops the due wakeups,
         * takes a wakelock for each due non-main key (its owner releases it) and re-arms.
         */
        synchronized java.util.Set<String> onAlarm() {
            java.util.Set<String> due = new java.util.HashSet<String>();
            long now = SystemClock.elapsedRealtime();
            armedAt = 0L;
            java.util.Iterator<Map.Entry<String, Long>> it = deadlines.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, Long> e = it.next();
                // 1 s slack: allow-while-idle alarms may fire a little early in batches.
                if (e.getValue() <= now + 1000L) {
                    if (!WAKE_MAIN.equals(e.getKey())) acquireBriefWakeLock(e.getKey(), 15_000L);
                    due.add(e.getKey());
                    it.remove();
                }
            }
            rearm();
            return due;
        }

        private void rearm() {
            try {
                AlarmManager am = (AlarmManager) ctx.getSystemService(Context.ALARM_SERVICE);
                if (am == null) return;
                long next = Long.MAX_VALUE;
                for (long d : deadlines.values()) next = Math.min(next, d);
                if (next == Long.MAX_VALUE) {
                    if (armedAt != 0L) am.cancel(wakeupPendingIntent());
                    armedAt = 0L;
                    return;
                }
                if (next == armedAt) return;
                armedAt = next;
                PendingIntent pi = wakeupPendingIntent();
                if (Build.VERSION.SDK_INT >= 23) {
                    am.setExactAndAllowWhileIdle(AlarmManager.ELAPSED_REALTIME_WAKEUP, next, pi);
                } else {
                    am.setExact(AlarmManager.ELAPSED_REALTIME_WAKEUP, next, pi);
                }
            } catch (Throwable t) {
                Log.w(TAG, "scheduleWakeup", t);
            }
        }

        private PendingIntent wakeupPendingIntent() {
            Intent i = new Intent(ACTION_ALARM_WAKEUP);
            i.setPackage(ctx.getPackageName());
            return PendingIntent.getBroadcast(ctx, 48121, i, PendingIntent.FLAG_UPDATE_CURRENT);
        }

        @Override
        public synchronized void acquireBriefWakeLock(String holder, long maxMs) {
            try {
                PowerManager.WakeLock wl = wakeLocks.get(holder);
                if (wl == null) {
                    PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
                    if (pm == null) return;
                    // Shows in dumpsys power / batterystats as WaveIMessage:<holder>.
                    wl = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "WaveIMessage:" + holder);
                    wl.setReferenceCounted(false);
                    wakeLocks.put(holder, wl);
                }
                wl.acquire(Math.max(1000L, Math.min(30_000L, maxMs)));
            } catch (Throwable t) {
                Log.w(TAG, "acquireBriefWakeLock", t);
            }
        }

        @Override
        public synchronized void releaseWakeLock(String holder) {
            release(wakeLocks.get(holder));
        }

        @Override
        public synchronized void releaseAllWakeLocks() {
            for (PowerManager.WakeLock wl : wakeLocks.values()) {
                release(wl);
            }
        }

        private void release(PowerManager.WakeLock wl) {
            try {
                if (wl != null && wl.isHeld()) {
                    wl.release();
                }
            } catch (Throwable ignored) {
            }
        }
    }

    // -----------------------------------------------------------------------------------------
    // Android NetworkInfoProvider (ConnectivityManager + TelephonyManager)

    private final class AndroidNetworkInfoProvider implements NetworkInfoProvider {
        @Override
        public boolean isNetworkAvailable() {
            if ("1".equals(Wave.prop("debug.wave.imsg.testnet"))) return true;
            try {
                ConnectivityManager cm = (ConnectivityManager) ctx.getSystemService(Context.CONNECTIVITY_SERVICE);
                if (cm == null) return true;
                NetworkInfo ni = cm.getActiveNetworkInfo();
                if (ni != null && ni.isConnected()) return true;
                // Also allow loopback dev testing when server host is 127.0.0.1 / localhost
                String h = config.getHost();
                if ("127.0.0.1".equals(h) || "localhost".equalsIgnoreCase(h)) return true;
                return false;
            } catch (Throwable t) {
                return true;
            }
        }

        @Override
        public String getNetworkKey() {
            try {
                ConnectivityManager cm = (ConnectivityManager) ctx.getSystemService(Context.CONNECTIVITY_SERVICE);
                if (cm == null) return "android:unknown";
                NetworkInfo ni = cm.getActiveNetworkInfo();
                if (ni == null || !ni.isConnected()) {
                    String h = config.getHost();
                    if ("127.0.0.1".equals(h) || "localhost".equalsIgnoreCase(h)) {
                        return "loopback:ipv4";
                    }
                    return "offline";
                }
                String ipType = detectActiveIpType(cm);
                int type = ni.getType();
                if (type == ConnectivityManager.TYPE_WIFI) {
                    return "wifi:" + ipType;
                }
                if (type == ConnectivityManager.TYPE_MOBILE) {
                    String carrier = readCarrier();
                    return "mobile:" + (TextUtils.isEmpty(carrier) ? "unknown" : carrier) + ":" + ipType;
                }
                return "net" + type + ":" + ipType;
            } catch (Throwable t) {
                return "android:unknown";
            }
        }

        private String detectActiveIpType(ConnectivityManager cm) {
            boolean v4 = false;
            boolean v6 = false;
            try {
                Network active = cm.getActiveNetwork();
                if (active != null) {
                    LinkProperties lp = cm.getLinkProperties(active);
                    if (lp != null) {
                        for (LinkAddress la : lp.getLinkAddresses()) {
                            InetAddress a = la.getAddress();
                            if (a == null || a.isLoopbackAddress() || a.isLinkLocalAddress()) continue;
                            if (a instanceof Inet4Address) v4 = true;
                            else if (a instanceof Inet6Address) v6 = true;
                        }
                    }
                }
            } catch (Throwable ignored) {
            }
            if (v4 && v6) return "dual";
            if (v4) return "ipv4";
            if (v6) return "ipv6";
            return "unknown";
        }

        private String readCarrier() {
            try {
                TelephonyManager tm = (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
                if (tm == null) return "";
                String op = tm.getNetworkOperator();
                if (TextUtils.isEmpty(op)) op = tm.getSimOperator();
                return op == null ? "" : op.trim();
            } catch (Throwable t) {
                return "";
            }
        }
    }
}
