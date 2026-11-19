package com.android.mms.transaction;

import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.MmsApp;
import com.android.mms.wave.RcsHost;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.PduBody;
import com.google.android.mms.pdu.PduPart;
import com.google.android.mms.pdu.PduPersister;
import com.google.android.mms.pdu.SendReq;

import org.wave.rcs.RcsCapabilities;
import org.wave.rcs.RcsEngine;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * FEAT(rcs): outgoing routing. Messages are composed and stored exactly as stock does; right
 * before the radio/MMSC send they go over RCS instead when RCS is registered and every recipient
 * has the needed capability. On any RCS failure the stock SMS/MMS send continues, so a message is
 * never lost (it may arrive twice if the network accepted a part and failed the rest).
 *
 * SMS (1:1 text): SmsSingleRecipientSender.sendMessage hook, asynchronous. The result is reported
 * with the same MESSAGE_SENT PendingIntent the radio would fire, so SmsReceiverService moves the
 * row to Sent and sends the next queued message exactly like for SMS.
 *
 * MMS (group text, files, 1:1 with attachments): SendTransaction.run hook, synchronous (that
 * runs on its own thread); returns the Sent-box URI on success.
 */
public final class WaveRcsSend {
    private static final String TAG = "WaveRcs";
    private static final long CAPS_WAIT_MS = 5000;
    private static final long TEXT_TIMEOUT_MS = 60_000;
    private static final long FILE_TIMEOUT_MS = 5 * 60_000;

    /** Set while re-running the stock SMS send after an RCS failure. */
    private static final ThreadLocal<Boolean> BYPASS = new ThreadLocal<>();

    private WaveRcsSend() {}

    // ---------------------------------------------------------------------------------------
    // SMS

    /**
     * SmsSingleRecipientSender.sendMessage hook, right before the row is moved to the outbox and
     * handed to SmsManager. @return true if RCS took the message (stock returns false then).
     */
    public static boolean interceptSms(final SmsSingleRecipientSender sender, final Uri uri,
            String dest, String text, final int subId) {
        try {
            if (Boolean.TRUE.equals(BYPASS.get())) return false;
            final RcsHost h = RcsHost.registered();
            if (h == null || uri == null || TextUtils.isEmpty(text)) return false;
            final Context c = MmsApp.getApplication();
            String to = RcsHost.e164(c, dest);
            if (to == null) return false;
            RcsCapabilities caps = h.capabilities(to, CAPS_WAIT_MS);
            if (caps == null || !caps.chat) return false;
            RcsEngine e = h.engine();
            if (e == null) return false;
            moveSms(c, uri, 4, 0); // outbox, like stock
            String id = e.sendText(to, text);
            Log.i(TAG, "sms " + uri + " -> rcs " + id);
            h.expect(id, new RcsHost.ResultCallback() {
                @Override public void onResult(RcsHost.SendResult r) {
                    if (r.ok) {
                        reportSent(c, uri, subId, -1 /* Activity.RESULT_OK */);
                    } else {
                        Log.w(TAG, "rcs send failed (" + r + "), sending " + uri + " as SMS");
                        fallbackSms(sender, c, uri, subId);
                    }
                }
            }, TEXT_TIMEOUT_MS);
            return true;
        } catch (Throwable t) {
            Log.w(TAG, "interceptSms", t);
            return false;
        }
    }

    private static void fallbackSms(SmsSingleRecipientSender sender, Context c, Uri uri, int subId) {
        BYPASS.set(Boolean.TRUE);
        try {
            sender.sendMessage(-1L);
        } catch (Throwable t) {
            Log.e(TAG, "SMS fallback failed for " + uri, t);
            reportSent(c, uri, subId, 1 /* SmsManager.RESULT_ERROR_GENERIC_FAILURE */);
        } finally {
            BYPASS.remove();
        }
    }

    /** Fires the stock MESSAGE_SENT PendingIntent (SmsReceiver -> SmsReceiverService.handleSmsSent). */
    private static void reportSent(Context c, Uri uri, int subId, int result) {
        try {
            Intent i = new Intent("com.android.mms.transaction.MESSAGE_SENT", uri, c, SmsReceiver.class);
            i.putExtra("subscription", subId);
            i.putExtra("SendNextMsg", true);
            PendingIntent.getBroadcast(c, 1, i, 0).send(c, result, null);
        } catch (Throwable t) {
            Log.e(TAG, "reportSent", t);
            moveSms(c, uri, result == -1 ? 2 : 5, result == -1 ? 0 : 1);
        }
    }

    // ---------------------------------------------------------------------------------------
    // queued SMS (no cellular service)

    private static final Object DRAIN_LOCK = new Object();
    private static volatile boolean sDrainPending;

    /**
     * Stock keeps SMS "queued" while there is no cellular service and sends them strictly in
     * order once service returns. While RCS is registered (e.g. over Wi-Fi), queued messages to
     * RCS contacts are sent over RCS right away. Called from SmsReceiverService's no-service
     * branch and when RCS registers.
     */
    public static void drainQueuedAsync(final Context c) {
        if (RcsHost.registered() == null || sDrainPending) return;
        if (cellularInService(c)) return; // the stock queue is moving; interceptSms routes it
        sDrainPending = true;
        new Thread(new Runnable() {
            @Override public void run() {
                sDrainPending = false;
                try {
                    drainQueued(c.getApplicationContext());
                } catch (Throwable t) {
                    Log.w(TAG, "drainQueued", t);
                }
            }
        }, "wave-rcs-queue").start();
    }

    private static boolean cellularInService(Context c) {
        try {
            android.telephony.TelephonyManager tm =
                    (android.telephony.TelephonyManager) c.getSystemService(Context.TELEPHONY_SERVICE);
            android.telephony.ServiceState ss = tm.getServiceState();
            return ss != null && ss.getState() == android.telephony.ServiceState.STATE_IN_SERVICE;
        } catch (Throwable t) {
            return false;
        }
    }

    private static void drainQueued(Context c) {
        synchronized (DRAIN_LOCK) {
            RcsHost h = RcsHost.registered();
            if (h == null) return;
            List<long[]> ids = new ArrayList<>();
            List<String[]> rows = new ArrayList<>();
            android.database.Cursor cur = c.getContentResolver().query(Uri.parse("content://sms/queued"),
                    new String[] { "_id", "address", "body" }, null, null, "date ASC");
            if (cur == null) return;
            try {
                while (cur.moveToNext()) {
                    ids.add(new long[] { cur.getLong(0) });
                    rows.add(new String[] { cur.getString(1), cur.getString(2) });
                }
            } finally {
                cur.close();
            }
            for (int i = 0; i < ids.size(); i++) {
                RcsEngine e = h.engine();
                if (RcsHost.registered() == null || e == null) return;
                String to = RcsHost.e164(c, rows.get(i)[0]);
                String body = rows.get(i)[1];
                if (to == null || TextUtils.isEmpty(body)) continue;
                RcsCapabilities caps = h.capabilities(to, CAPS_WAIT_MS);
                if (caps == null || !caps.chat) continue;
                Uri uri = Uri.parse("content://sms/" + ids.get(i)[0]);
                ContentValues v = new ContentValues(1);
                v.put("type", 4);
                // only if still queued (the stock queue may have picked it up meanwhile)
                if (c.getContentResolver().update(uri, v, "type=6", null) != 1) continue;
                Log.i(TAG, "queued sms " + uri + " -> rcs");
                RcsHost.SendResult r = h.await(e.sendText(to, body), TEXT_TIMEOUT_MS);
                moveSms(c, uri, r.ok ? 2 : 6, 0);
                if (!r.ok) Log.w(TAG, "queued sms " + uri + " stays queued (" + r + ")");
            }
        }
    }

    private static void moveSms(Context c, Uri uri, int type, int error) {
        ContentValues v = new ContentValues(3);
        v.put("type", type);
        if (type == 5) v.put("error_code", error);
        if (type == 2 || type == 4) v.put("read", 1);
        c.getContentResolver().update(uri, v, null, null);
    }

    // ---------------------------------------------------------------------------------------
    // MMS

    /**
     * SendTransaction.run hook after the SendReq is loaded. Sends the message over RCS (blocking)
     * when possible. @return the message's URI in the Sent box, or null to let MMS send it.
     */
    public static Uri interceptMms(Context c, SendReq req, Uri uri) {
        synchronized (BYPASSED) {
            if (uri != null && RCS_FAILED.remove(uri)) return null; // RCS already failed: MMS
        }
        Uri sent = interceptMmsInner(c, req, uri);
        if (sent != null) {
            synchronized (BYPASSED) { BYPASSED.remove(uri); }
            return sent;
        }
        boolean bypassed;
        synchronized (BYPASSED) { bypassed = BYPASSED.remove(uri); }
        if (bypassed) {
            // started without MMS connectivity (rcsReadyForMms): fail this attempt; the stock retry
            // then goes through MMS connectivity as usual (no RCS for this message again)
            synchronized (BYPASSED) { RCS_FAILED.add(uri); }
            throw new IllegalStateException("rcs send failed, retry as MMS: " + uri);
        }
        return null;
    }

    /** Message URIs started without MMS connectivity because RCS could take them. */
    private static final Set<Uri> BYPASSED = new java.util.HashSet<>();
    /** Messages whose RCS attempt failed in this process: MMS only from now on. */
    private static final Set<Uri> RCS_FAILED = new java.util.HashSet<>();
    private static final long READY_CAPS_WAIT_MS = 3000;

    /**
     * TransactionService.ServiceHandler.processTransaction, before beginMmsConnectivity: true when
     * this is an MMS send that RCS can take (registered, every recipient has the capability). The
     * transaction then runs without the MMS network (no SIM, no mobile data, Wi-Fi only) and
     * SendTransaction's intercept sends it over RCS. Waits at most 3 s for unknown capabilities.
     */
    public static boolean rcsReadyForMms(Transaction t) {
        try {
            if (t == null || t.getType() != 2) return false;
            RcsHost h = RcsHost.registered();
            if (h == null || h.engine() == null) return false;
            java.lang.reflect.Field f = t.getClass().getDeclaredField("mSendReqURI");
            f.setAccessible(true);
            Uri uri = (Uri) f.get(t);
            if (uri == null) return false;
            synchronized (BYPASSED) {
                if (RCS_FAILED.contains(uri)) return false;
                if (BYPASSED.contains(uri)) return true;
            }
            Context c = MmsApp.getApplication();
            SendReq req = (SendReq) PduPersister.getPduPersister(c).load(uri);
            Set<String> rcpt = new LinkedHashSet<>();
            String self = h.self();
            if (!addAll(c, rcpt, req.getTo(), self) || !addAll(c, rcpt, req.getCc(), self)
                    || !addAll(c, rcpt, req.getBcc(), self) || rcpt.isEmpty()) {
                return false;
            }
            boolean group = rcpt.size() > 1;
            boolean files = false;
            PduBody body = req.getBody();
            int n = body == null ? 0 : body.getPartsNum();
            for (int i = 0; i < n; i++) {
                byte[] ctb = body.getPart(i).getContentType();
                String ct = ctb == null ? "" : new String(ctb, StandardCharsets.UTF_8).toLowerCase();
                if (!ct.equals("application/smil") && !ct.equals("text/plain")) files = true;
            }
            RcsEngine e = h.engine();
            for (String r : rcpt) if (e.cachedCapabilities(r) == null) e.refreshCapabilities(r);
            long end = System.currentTimeMillis() + READY_CAPS_WAIT_MS;
            for (String r : rcpt) {
                RcsCapabilities caps = h.capabilities(r, Math.max(0, end - System.currentTimeMillis()));
                if (caps == null || !caps.chat || (group && !caps.groupChat)
                        || (files && !caps.fileTransferHttp)) {
                    return false;
                }
            }
            synchronized (BYPASSED) { BYPASSED.add(uri); }
            Log.i(TAG, "mms " + uri + ": RCS can take it, not waiting for MMS connectivity");
            return true;
        } catch (Throwable th) {
            Log.w(TAG, "rcsReadyForMms", th);
            return false;
        }
    }

    private static Uri interceptMmsInner(Context c, SendReq req, Uri uri) {
        List<File> temp = new ArrayList<>();
        try {
            RcsHost h = RcsHost.registered();
            if (h == null || req == null || uri == null) return null;
            RcsEngine e = h.engine();
            if (e == null) return null;
            String self = h.self();

            Set<String> rcpt = new LinkedHashSet<>();
            if (!addAll(c, rcpt, req.getTo(), self) || !addAll(c, rcpt, req.getCc(), self)
                    || !addAll(c, rcpt, req.getBcc(), self) || rcpt.isEmpty()) {
                return null; // an e-mail address or something we can't route
            }
            boolean group = rcpt.size() > 1;

            // content
            StringBuilder text = new StringBuilder();
            EncodedStringValue sub = req.getSubject();
            if (sub != null && !TextUtils.isEmpty(sub.getString())) text.append(sub.getString());
            List<File> files = new ArrayList<>();
            List<String> mimes = new ArrayList<>();
            PduBody body = req.getBody();
            int n = body == null ? 0 : body.getPartsNum();
            for (int i = 0; i < n; i++) {
                PduPart p = body.getPart(i);
                String ct = p.getContentType() == null ? "" : new String(p.getContentType(), StandardCharsets.UTF_8).toLowerCase();
                if (ct.equals("application/smil")) continue;
                if (ct.equals("text/plain")) {
                    byte[] d = data(c, p);
                    if (d != null && d.length > 0) {
                        if (text.length() > 0) text.append('\n');
                        text.append(new String(d, StandardCharsets.UTF_8));
                    }
                    continue;
                }
                File f = toFile(c, h, p, i);
                if (f == null) return null;
                temp.add(f);
                files.add(f);
                mimes.add(ct);
            }
            if (files.isEmpty() && text.length() == 0) return null;

            // capabilities: everyone must support what we send
            for (String r : rcpt) {
                RcsCapabilities caps = h.capabilities(r, CAPS_WAIT_MS);
                if (caps == null || !caps.chat || (group && !caps.groupChat)
                        || (!files.isEmpty() && !caps.fileTransferHttp)) {
                    Log.i(TAG, "mms " + uri + ": not all recipients have RCS (" + caps + "), using MMS");
                    return null;
                }
            }

            Log.i(TAG, "mms " + uri + " -> rcs (" + rcpt.size() + " recipients, " + files.size() + " files)");
            for (int i = 0; i < files.size(); i++) {
                String id = group ? e.sendGroupFile(rcpt, null, files.get(i), mimes.get(i))
                        : e.sendFile(rcpt.iterator().next(), files.get(i), mimes.get(i));
                RcsHost.SendResult r = h.await(id, FILE_TIMEOUT_MS);
                if (!r.ok) {
                    Log.w(TAG, "rcs file failed (" + r + "), sending " + uri + " as MMS");
                    return null;
                }
            }
            if (text.length() > 0) {
                String id = group ? e.sendGroupText(rcpt, null, text.toString())
                        : e.sendText(rcpt.iterator().next(), text.toString());
                RcsHost.SendResult r = h.await(id, TEXT_TIMEOUT_MS);
                if (!r.ok) {
                    Log.w(TAG, "rcs text failed (" + r + "), sending " + uri + " as MMS");
                    return null;
                }
            }
            Uri sent = PduPersister.getPduPersister(c).move(uri, Telephony.Mms.Sent.CONTENT_URI);
            ContentValues v = new ContentValues(1);
            v.put("resp_st", 128);
            c.getContentResolver().update(sent, v, null, null);
            return sent;
        } catch (Throwable t) {
            Log.w(TAG, "interceptMms", t);
            return null;
        } finally {
            for (File f : temp) {
                f.delete();
                f.getParentFile().delete();
            }
        }
    }

    private static boolean addAll(Context c, Set<String> out, EncodedStringValue[] vs, String self) {
        if (vs == null) return true;
        for (EncodedStringValue v : vs) {
            if (v == null) continue;
            String n = RcsHost.e164(c, v.getString());
            if (n == null) return false;
            if (self != null && PhoneNumberUtils.compare(n, self)) continue;
            boolean dup = false;
            for (String o : out) if (PhoneNumberUtils.compare(o, n)) dup = true;
            if (!dup) out.add(n);
        }
        return true;
    }

    private static byte[] data(Context c, PduPart p) throws Exception {
        if (p.getData() != null) return p.getData();
        Uri u = p.getDataUri();
        if (u == null) return null;
        try (InputStream in = c.getContentResolver().openInputStream(u)) {
            java.io.ByteArrayOutputStream b = new java.io.ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int r;
            while ((r = in.read(buf)) > 0) b.write(buf, 0, r);
            return b.toByteArray();
        }
    }

    private static File toFile(Context c, RcsHost h, PduPart p, int idx) throws Exception {
        String name = null;
        if (p.getFilename() != null) name = new String(p.getFilename(), StandardCharsets.UTF_8);
        else if (p.getName() != null) name = new String(p.getName(), StandardCharsets.UTF_8);
        else if (p.getContentLocation() != null) name = new String(p.getContentLocation(), StandardCharsets.UTF_8);
        if (TextUtils.isEmpty(name)) name = "part" + idx;
        name = name.replaceAll("[\\\\/:*?\"<>|\\s]+", "_");
        File dir = new File(c.getFilesDir(), "rcs_out/" + System.nanoTime());
        if (!dir.mkdirs()) return null;
        File f = new File(dir, name);
        byte[] d = p.getData();
        try (OutputStream o = new FileOutputStream(f)) {
            if (d != null) {
                o.write(d);
            } else if (p.getDataUri() != null) {
                try (InputStream in = c.getContentResolver().openInputStream(p.getDataUri())) {
                    byte[] buf = new byte[16384];
                    int r;
                    while ((r = in.read(buf)) > 0) o.write(buf, 0, r);
                }
            } else {
                return null;
            }
        }
        f.deleteOnExit();
        return f;
    }
}
