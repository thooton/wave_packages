package com.android.mms.transaction;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.util.Log;

import com.android.mms.wave.WaveIMessageHost;
import com.android.mms.wave.imsg.Body;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

/**
 * FEAT(imessage): a persistent, ordered queue of incoming bodies that change the message store
 * (messages, tapbacks, edits, unsends, group events).
 *
 * The push connection hands each body here and immediately goes back to reading; one worker
 * thread stores them in arrival order, downloading attachments as it goes. A body stays on disk
 * until it has been stored, so nothing is lost if the download fails or the process dies; it is
 * retried when the connection comes back.
 */
public final class WaveIMessageInbox {
    private static final String TAG = "WaveIMsg";
    /** First retry of a body that can't be stored yet; doubles up to MAX_RETRY_MS. */
    private static final long RETRY_MS = 30_000L;
    private static final long MAX_RETRY_MS = 15L * 60L * 1000L;

    private static WaveIMessageInbox sInstance;

    private final Context ctx;
    private final File dir;
    private final Handler handler;
    private final PowerManager.WakeLock wakeLock;
    private long lastName;
    private boolean drainPosted;
    /** Current retry delay, 0 while nothing is waiting (guarded by this). */
    private long retryMs;

    public static synchronized WaveIMessageInbox get(Context c) {
        if (sInstance == null) sInstance = new WaveIMessageInbox(c.getApplicationContext());
        return sInstance;
    }

    private WaveIMessageInbox(Context c) {
        ctx = c;
        dir = new File(c.getFilesDir(), "imsg-inbox");
        dir.mkdirs();
        HandlerThread t = new HandlerThread("wave-imsg-inbox");
        t.start();
        handler = new Handler(t.getLooper());
        PowerManager pm = (PowerManager) c.getSystemService(Context.POWER_SERVICE);
        wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "wave:imsg-inbox");
        wakeLock.setReferenceCounted(false);
    }

    /** True for bodies that go through this queue. */
    public static boolean handles(int kind) {
        return kind == Body.KIND_INCOMING_MESSAGE || kind == Body.KIND_REACTION || kind == Body.KIND_EDIT
                || kind == Body.KIND_UNSEND || kind == Body.KIND_GROUP_EVENT;
    }

    /** Persists {@code body} and starts storing it. Returns once it is safely on disk. */
    public synchronized void enqueue(Body body) throws IOException {
        long name = Math.max(System.currentTimeMillis() * 1000L, lastName + 1);
        lastName = name;
        File tmp = new File(dir, name + ".tmp");
        FileOutputStream out = new FileOutputStream(tmp);
        try {
            out.write(body.encode());
            out.getFD().sync();
        } finally {
            out.close();
        }
        if (!tmp.renameTo(new File(dir, name + ".body"))) throw new IOException("can't queue " + body);
        kick(0L);
    }

    /** Retries whatever is waiting (called when the push connection comes up). */
    public void kick() {
        synchronized (this) {
            retryMs = 0L; // a fresh connection: start the backoff over
        }
        kick(0L);
    }

    /** The retry alarm fired (see {@link #retryLater}). */
    public void onRetryAlarm() {
        kick(0L);
    }

    private synchronized void kick(long delayMs) {
        if (drainPosted && delayMs > 0L) return;
        // Bridge the hand-off: the push reader ACKs and drops its wakelock right after enqueue(),
        // before the inbox thread has picked the body up, and the CPU must not sleep in between.
        if (delayMs == 0L) wakeLock.acquire(60_000L);
        handler.removeCallbacks(drain);
        drainPosted = true;
        handler.postDelayed(drain, delayMs);
    }

    private final Runnable drain = new Runnable() {
        @Override
        public void run() {
            synchronized (WaveIMessageInbox.this) {
                drainPosted = false;
            }
            wakeLock.acquire(10L * 60L * 1000L);
            try {
                drainOnce();
            } finally {
                wakeLock.release();
            }
        }
    };

    private long lastPruneMs;

    private void drainOnce() {
        long now = System.currentTimeMillis();
        if (now - lastPruneMs > 24L * 3600L * 1000L) {
            lastPruneMs = now;
            try {
                com.android.mms.wave.WaveIMessageDb.get(ctx).prune();
            } catch (Throwable t) {
                Log.w(TAG, "prune", t);
            }
        }
        File[] files = dir.listFiles();
        if (files == null) return;
        Arrays.sort(files);
        for (File f : files) {
            String n = f.getName();
            if (n.endsWith(".tmp") && System.currentTimeMillis() - f.lastModified() > 60_000L) {
                f.delete();
                continue;
            }
            if (!n.endsWith(".body")) continue;
            Body body;
            try {
                body = Body.decode(readFile(f));
            } catch (Throwable t) {
                Log.e(TAG, "dropping unreadable queued body " + n, t);
                f.delete();
                continue;
            }
            long ageMs = System.currentTimeMillis() - f.lastModified();
            try {
                WaveIMessageStore.handle(ctx, WaveIMessageHost.get(ctx), body, ageMs);
                f.delete();
            } catch (WaveIMessageStore.RetryLater e) {
                retryLater(body, e.getMessage());
                return; // keep order: nothing after it goes first
            } catch (Throwable t) {
                Log.e(TAG, "failed to store " + body + "; dropping it", t);
                f.delete();
            }
        }
        // Drained: nothing waits any more.
        boolean hadRetry;
        synchronized (this) {
            hadRetry = retryMs != 0L;
            retryMs = 0L;
        }
        if (hadRetry) {
            WaveIMessageHost host = WaveIMessageHost.connected();
            if (host != null) host.cancelInboxRetry();
        }
    }

    /**
     * Retries with backoff (30 s doubling to 15 min, reset on reconnect) instead of every 30 s for
     * six hours. While connected the retry has its own wakeup: a Handler delay doesn't run while
     * the CPU sleeps, so a download that failed once used to wait for the next keepalive (up to
     * ~48 min) with the screen off. Offline it needs none: reconnecting kicks the queue.
     */
    private void retryLater(Body body, String why) {
        long delay;
        synchronized (this) {
            retryMs = retryMs == 0L ? RETRY_MS : Math.min(MAX_RETRY_MS, retryMs * 2L);
            delay = retryMs;
        }
        Log.i(TAG, "will retry " + body + " in " + delay / 1000L + "s: " + why);
        // One timer, not both: the alarm also fires while awake, and a Handler delay next to it
        // queued a second, immediate attempt behind the first whenever both fired.
        WaveIMessageHost host = WaveIMessageHost.connected();
        if (host != null) {
            host.scheduleInboxRetry(delay);
        } else {
            kick(delay);
        }
    }

    private static byte[] readFile(File f) throws IOException {
        FileInputStream in = new FileInputStream(f);
        try {
            byte[] data = new byte[(int) f.length()];
            int off = 0;
            while (off < data.length) {
                int r = in.read(data, off, data.length - off);
                if (r < 0) throw new IOException("short read " + f);
                off += r;
            }
            return data;
        } finally {
            in.close();
        }
    }
}
