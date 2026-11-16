package com.android.mms.transaction;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.util.Log;

import com.android.mms.MmsApp;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * PERF: receive-latency fixes (docs/fixes/performance).
 *
 * 1. Early MMS notification. Stock NotificationTransaction.run stores the downloaded message, then
 *    sends M-NotifyResp.ind to the MMSC (an HTTP round trip over the MMS APN), trims old messages,
 *    and only then lets TransactionService.update post the notification. The notification is now
 *    posted right after the message is stored ({@link #notifyEarly}); update() skips its own call
 *    for that thread ({@link #updateAfterTransaction}) so there is exactly one sound.
 *
 * 2. Notification content. MessagingNotification.addMmsNotificationInfos re-loads every unseen MMS
 *    (sender query, PDU, SMIL/slideshow parse, a 360dp bitmap per picture) on every new message,
 *    so each update got ~70 ms slower per unread MMS. Now: sender, text and attachment type are
 *    cached per message (id + date), only the newest message is loaded in full (it may need its
 *    picture), and rows past the newest 8 aren't loaded at all (the notification shows a few
 *    lines; unless the pop-up alert is on, which lists every message).
 *
 * 3. Push executor ({@link #PUSH_EXECUTOR}).
 *
 * 4. MMS network linger ({@link #lingerMmsNetwork}).
 *
 * 5. Download: expiry check without loading the PDU ({@link #expiry}).
 *
 * (6. Compiled code: module/service.sh compiles the patched APKs, see docs/fixes/performance.)
 */
public final class ArgonPerf {
    private static final String TAG = "ArgonPerf";
    /** Unseen MMS whose text is loaded for the notification (it shows at most 7-8 lines). */
    private static final int MMS_NOTIFICATION_CONTENT = 8;
    private static final long EARLY_TTL_MS = 5 * 60_000;

    /** thread id -> elapsedRealtime of each early notification not yet matched by update(). */
    private static final Map<Long, long[]> sEarly = new HashMap<>();

    /**
     * PushReceiver's ReceivePushTask runs here instead of AsyncTask's app-wide serial executor, where
     * an incoming MMS waited behind any other AsyncTask in the process. Still serial among pushes
     * (stock duplicate-push detection relies on that).
     */
    public static final java.util.concurrent.Executor PUSH_EXECUTOR =
            java.util.concurrent.Executors.newSingleThreadExecutor(new java.util.concurrent.ThreadFactory() {
                @Override public Thread newThread(Runnable r) {
                    Thread t = new Thread(r, "argon-mms-push");
                    t.setDaemon(true);
                    return t;
                }
            });

    private ArgonPerf() {}

    /** NotificationTransaction.run, right after the retrieved message is stored. */
    public static void notifyEarly(Uri stored) {
        try {
            Context c = MmsApp.getApplication();
            long tid = MessagingNotification.getThreadId(c, stored);
            if (tid <= 0) return; // held/odd row: leave it to the stock path
            MessagingNotification.blockingUpdateNewMessageIndicator(c, tid, false);
            synchronized (sEarly) {
                long now = SystemClock.elapsedRealtime();
                long[] l = sEarly.get(tid);
                long[] n = l == null ? new long[1] : java.util.Arrays.copyOf(l, l.length + 1);
                n[n.length - 1] = now;
                sEarly.put(tid, n);
            }
        } catch (Throwable t) {
            Log.w(TAG, "notifyEarly", t);
        }
    }

    /** Replaces TransactionService.update's MessagingNotification.blockingUpdateNewMessageIndicator call. */
    public static void updateAfterTransaction(Context c, long threadId, boolean status) {
        boolean early = false;
        synchronized (sEarly) {
            long now = SystemClock.elapsedRealtime();
            for (Iterator<Map.Entry<Long, long[]>> it = sEarly.entrySet().iterator(); it.hasNext(); ) {
                long[] l = it.next().getValue();
                if (now - l[l.length - 1] > EARLY_TTL_MS) it.remove();
            }
            long[] l = sEarly.get(threadId);
            if (l != null) {
                early = true;
                if (l.length == 1) sEarly.remove(threadId);
                else sEarly.put(threadId, java.util.Arrays.copyOfRange(l, 1, l.length));
            }
        }
        if (!early) MessagingNotification.blockingUpdateNewMessageIndicator(c, threadId, status);
    }

    /** addMmsNotificationInfos rows: newest first; MMS_STATUS_PROJECTION = thread_id, date, _id, ... */
    private static final class MmsInfo {
        String from;
        boolean content;
        String text;
        int type;
    }

    private static final java.util.LinkedHashMap<String, MmsInfo> sMms =
            new java.util.LinkedHashMap<String, MmsInfo>(32, 0.75f, true) {
                @Override protected boolean removeEldestEntry(Map.Entry<String, MmsInfo> e) {
                    return size() > 100;
                }
            };
    private static final ThreadLocal<int[]> sMode = new ThreadLocal<int[]>() {
        @Override protected int[] initialValue() { return new int[1]; }
    };

    /** id + date: ids can be reused after the newest row is deleted. */
    private static String key(Cursor c) {
        return c.getLong(2) + "/" + c.getLong(1);
    }

    private static MmsInfo info(Cursor c, boolean create) {
        String k = key(c);
        synchronized (sMms) {
            MmsInfo i = sMms.get(k);
            if (i == null && create) {
                i = new MmsInfo();
                sMms.put(k, i);
            }
            return i;
        }
    }

    /** Replaces AddressUtils.getFrom (an addr query per unseen MMS on every update). */
    public static String mmsFrom(Context ctx, Uri uri, Cursor c) {
        try {
            MmsInfo i = info(c, false);
            if (i != null && i.from != null) return i.from;
        } catch (Throwable ignored) {
        }
        String f = com.android.mms.util.AddressUtils.getFrom(ctx, uri);
        try {
            if (f != null) {
                MmsInfo i = info(c, true);
                synchronized (sMms) { i.from = f; }
            }
        } catch (Throwable ignored) {
        }
        return f;
    }

    /**
     * Per row: 0 = load the message (PDU + slideshow, stock), 1 = use the cached text/type,
     * 2 = skip the content. The newest row is always loaded (it may need its picture).
     */
    public static int mmsNotificationMode(Context ctx, Cursor c) {
        int mode = 0;
        try {
            int pos = c.getPosition();
            MmsInfo i = info(c, false);
            if (pos > 0 && i != null && i.content) mode = 1;
            else if (skipMmsNotificationContent(ctx, c)) mode = 2;
        } catch (Throwable t) {
            mode = 0;
        }
        sMode.get()[0] = mode;
        return mode;
    }

    public static String mmsCachedText(Cursor c) {
        MmsInfo i = info(c, false);
        return i == null ? null : i.text;
    }

    public static int mmsCachedType(Cursor c) {
        MmsInfo i = info(c, false);
        return i == null ? 0 : i.type;
    }

    /** After a row's content was loaded (mode 0): remember text and attachment type. */
    public static void mmsRemember(Cursor c, String text, int type) {
        try {
            if (sMode.get()[0] != 0) return;
            MmsInfo i = info(c, true);
            synchronized (sMms) {
                i.content = true;
                i.text = text;
                i.type = type;
            }
        } catch (Throwable ignored) {
        }
    }

    // ---------------------------------------------------------------------------------------
    // MMS network linger

    private static final long MMS_LINGER_MS = 5000;
    private static ConnectivityManager.NetworkCallback sLinger;
    private static final Handler sMain = new Handler(Looper.getMainLooper());
    private static final Runnable sReleaseLinger = new Runnable() {
        @Override public void run() { releaseLinger(null); }
    };

    /**
     * TransactionService.releaseNetworkRequest (end of an MMS burst): instead of dropping the MMS
     * PDN at once, hold our own request for it for 5 s, like AOSP's MmsNetworkManager
     * (NETWORK_RELEASE_TIMEOUT_MILLIS). The next MMS (back-to-back pictures, a busy group) then
     * finds the network up: ConnectivityService answers its request right away instead of a
     * new PDN activation (typically 1-3 s). Only when the MMS network is actually connected.
     */
    public static void lingerMmsNetwork(Context c, int subId) {
        try {
            if (ArgonMmsReceive.testNet()) return;
            ConnectivityManager cm = (ConnectivityManager) c.getSystemService(Context.CONNECTIVITY_SERVICE);
            boolean up = false;
            for (Network n : cm.getAllNetworks()) {
                NetworkCapabilities nc = cm.getNetworkCapabilities(n);
                NetworkInfo ni = cm.getNetworkInfo(n);
                if (nc != null && ni != null && ni.isConnected()
                        && nc.hasCapability(NetworkCapabilities.NET_CAPABILITY_MMS)
                        && nc.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR)) {
                    up = true;
                    break;
                }
            }
            if (!up) return;
            NetworkRequest req = new NetworkRequest.Builder()
                    .addTransportType(NetworkCapabilities.TRANSPORT_CELLULAR)
                    .addCapability(NetworkCapabilities.NET_CAPABILITY_MMS)
                    .setNetworkSpecifier(Integer.toString(subId)).build();
            ConnectivityManager.NetworkCallback cb = new ConnectivityManager.NetworkCallback();
            synchronized (ArgonPerf.class) {
                releaseLinger(cm);
                cm.requestNetwork(req, cb);
                sLinger = cb;
                sMain.postDelayed(sReleaseLinger, MMS_LINGER_MS);
            }
            Log.d(TAG, "mms network lingers " + MMS_LINGER_MS + " ms");
        } catch (Throwable t) {
            Log.w(TAG, "lingerMmsNetwork", t);
        }
    }

    private static synchronized void releaseLinger(ConnectivityManager cm) {
        sMain.removeCallbacks(sReleaseLinger);
        if (sLinger == null) return;
        try {
            if (cm == null) {
                cm = (ConnectivityManager) MmsApp.getApplication().getSystemService(Context.CONNECTIVITY_SERVICE);
            }
            cm.unregisterNetworkCallback(sLinger);
        } catch (Throwable t) {
            Log.w(TAG, "release linger", t);
        }
        sLinger = null;
    }

    // ---------------------------------------------------------------------------------------
    // download

    /**
     * DownloadManager.markState checked the notification's expiry by loading (and parsing) the
     * whole PDU from the provider; the expiry is one column. Same semantics: a missing row throws
     * like PduPersister.load, a missing value is -1.
     */
    public static long expiry(Context c, Uri uri) throws com.google.android.mms.MmsException {
        Cursor cur = c.getContentResolver().query(uri, new String[] { "exp" }, null, null, null);
        try {
            if (cur == null || !cur.moveToFirst()) throw new com.google.android.mms.MmsException("Bad uri: " + uri);
            return cur.isNull(0) ? -1 : cur.getLong(0);
        } finally {
            if (cur != null) cur.close();
        }
    }

    /** addMmsNotificationInfos: skip loading this row's content (rows are newest first). */
    public static boolean skipMmsNotificationContent(Context c, Cursor cur) {
        if (cur.getPosition() < MMS_NOTIFICATION_CONTENT) return false;
        // the optional pop-up alert lists every message's text
        try {
            return !PreferenceManager.getDefaultSharedPreferences(c).getBoolean("pref_key_alert_dialog", false);
        } catch (Throwable t) {
            return false;
        }
    }

    /** addMmsNotificationInfos: only the newest message's picture can be shown. */
    public static boolean skipMmsNotificationPicture(Cursor cur) {
        return cur.getPosition() > 0;
    }
}
