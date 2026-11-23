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
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.transaction.WaveIMessageSend;
import com.android.mms.transaction.WaveIMessageStore;
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

    private volatile PushClient.Status status = PushClient.Status.OFFLINE;
    private volatile String statusDetail = "Off";
    private volatile int currentIntervalS = 60;
    private volatile String activeNetworkKey = "";

    private final Map<String, Object> sendWaiters = new HashMap<String, Object>();
    private final Map<String, Long> pendingTargetChecks = new HashMap<String, Long>();

    private final BroadcastReceiver alarmReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            wakeupClock.acquireBriefWakeLock(15_000L);
            PushClient c = client;
            if (c != null) {
                c.onWakeupTick();
            } else {
                wakeupClock.releaseWakeLock();
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

    public WaveIMessageConfig config() {
        return config;
    }

    // -----------------------------------------------------------------------------------------
    // Lifecycle hooks

    /** Called from WaveInit.onAppCreate (main thread): never blocks. */
    public static void onAppCreate(Context app) {
        final WaveIMessageHost h = get(app);
        h.handler.post(new Runnable() {
            @Override
            public void run() {
                if (h.config.isEnabled()) {
                    h.startHostService(null);
                }
            }
        });
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

        PushClient.Config pc = new PushClient.Config();
        pc.mainHost = config.getHost();
        pc.mainPort = config.getPort();
        pc.probeHost = config.getHost();
        pc.probePort = config.getPort();
        pc.sniMain = config.getSniMain();
        pc.sniProbe = config.getSniProbe();
        pc.tokenHex = config.getTokenHex();
        pc.pinnedSha256Hex = config.getCertPinSha256();
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
        wakeupClock.releaseWakeLock();
        status = PushClient.Status.OFFLINE;
        statusDetail = config.isConfigured() ? "Off" : "Not set up";
        WaveIMessageUi.refreshActiveComposeHint();
    }

    // -----------------------------------------------------------------------------------------
    // Foreground notification (Android 8.1 API 27)

    private void enterForeground(Service s) {
        if (s == null) return;
        try {
            ensureNotificationChannel();
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
        if (s == null || !config.isEnabled()) return;
        try {
            NotificationManager nm = (NotificationManager) ctx.getSystemService(Context.NOTIFICATION_SERVICE);
            if (nm != null) {
                ensureNotificationChannel();
                nm.notify(NOTIF_ID, buildForegroundNotification());
            }
        } catch (Throwable ignored) {
        }
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

        public SendOutcome(boolean ok, String appleMsgId, String error) {
            this.ok = ok;
            this.appleMsgId = appleMsgId;
            this.error = error;
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
        PushClient c = client;
        if (c == null || !c.isConnected()) throw new IllegalStateException("iMessage not connected");
        return c.sendText(normalizedTarget, text, senderGuid);
    }

    public String sendGroupText(List<String> normalizedTargets, String text, String senderGuid) throws Exception {
        PushClient c = client;
        if (c == null || !c.isConnected()) throw new IllegalStateException("iMessage not connected");
        return c.sendGroupText(normalizedTargets, text, senderGuid);
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
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                Object w;
                synchronized (sendWaiters) {
                    w = sendWaiters.get(clientMsgId);
                    if (w == cb) sendWaiters.remove(clientMsgId);
                }
                if (w == cb) {
                    cb.onResult(new SendOutcome(false, null, "Timed out waiting for iMessage server"));
                }
            }
        }, timeoutMs);
    }

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
        if (c == null || !c.isConnected() || normalizedTargets == null || normalizedTargets.isEmpty()) {
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
        refreshHandles();
        WaveIMessageSend.drainQueuedAsync(ctx);
        WaveIMessageUi.refreshActiveComposeHint();
    }

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
        switch (body.kind) {
            case Body.KIND_HANDLES:
                config.setHandles(body.handles, body.preferredHandle);
                writeStatusFile();
                break;
            case Body.KIND_SEND_RESULT:
                handleSendResult(body);
                break;
            case Body.KIND_INCOMING_TEXT:
                try {
                    WaveIMessageStore.storeIncoming(ctx, config, body);
                } catch (Throwable t) {
                    Log.e(TAG, "Failed to store incoming iMessage", t);
                }
                WaveIMessageUi.refreshActiveComposeHint();
                break;
            case Body.KIND_RECEIPT:
                handleReceipt(body);
                break;
            case Body.KIND_TARGET_STATUS:
                handleTargetStatus(body);
                break;
            default:
                break;
        }
    }

    private void handleSendResult(Body body) {
        SendOutcome outcome = new SendOutcome(body.ok, body.appleMsgId, body.error);
        Object waiter;
        synchronized (sendWaiters) {
            waiter = sendWaiters.remove(body.clientMsgId);
            if (waiter == null) {
                if (sendWaiters.size() > 200) sendWaiters.clear();
                sendWaiters.put(body.clientMsgId, outcome);
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
            if (c != null) c.notifyNetworkChanged();
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
        private PowerManager.WakeLock wakeLock;

        @Override
        public long elapsedRealtimeMs() {
            return SystemClock.elapsedRealtime();
        }

        @Override
        public void scheduleWakeup(long delayMs) {
            try {
                AlarmManager am = (AlarmManager) ctx.getSystemService(Context.ALARM_SERVICE);
                if (am == null) return;
                PendingIntent pi = wakeupPendingIntent();
                long triggerAt = SystemClock.elapsedRealtime() + Math.max(1000L, delayMs);
                if (Build.VERSION.SDK_INT >= 23) {
                    am.setExactAndAllowWhileIdle(AlarmManager.ELAPSED_REALTIME_WAKEUP, triggerAt, pi);
                } else {
                    am.setExact(AlarmManager.ELAPSED_REALTIME_WAKEUP, triggerAt, pi);
                }
            } catch (Throwable t) {
                Log.w(TAG, "scheduleWakeup", t);
            }
        }

        @Override
        public void cancelWakeup() {
            try {
                AlarmManager am = (AlarmManager) ctx.getSystemService(Context.ALARM_SERVICE);
                if (am != null) {
                    am.cancel(wakeupPendingIntent());
                }
            } catch (Throwable ignored) {
            }
        }

        private PendingIntent wakeupPendingIntent() {
            Intent i = new Intent(ACTION_ALARM_WAKEUP);
            i.setPackage(ctx.getPackageName());
            return PendingIntent.getBroadcast(ctx, 48121, i, PendingIntent.FLAG_UPDATE_CURRENT);
        }

        @Override
        public synchronized void acquireBriefWakeLock(long maxMs) {
            try {
                if (wakeLock == null) {
                    PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
                    if (pm == null) return;
                    wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "WaveIMessage:keepalive");
                    wakeLock.setReferenceCounted(false);
                }
                wakeLock.acquire(Math.max(1000L, Math.min(30_000L, maxMs)));
            } catch (Throwable t) {
                Log.w(TAG, "acquireBriefWakeLock", t);
            }
        }

        @Override
        public synchronized void releaseWakeLock() {
            try {
                if (wakeLock != null && wakeLock.isHeld()) {
                    wakeLock.release();
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
