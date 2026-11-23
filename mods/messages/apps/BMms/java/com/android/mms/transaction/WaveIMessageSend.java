package com.android.mms.transaction;

import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.MmsApp;
import com.android.mms.ui.WaveIMessageUi;
import com.android.mms.wave.WaveIMessageConfig;
import com.android.mms.wave.WaveIMessageHost;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.PduBody;
import com.google.android.mms.pdu.PduPart;
import com.google.android.mms.pdu.PduPersister;
import com.google.android.mms.pdu.SendReq;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * FEAT(imessage): Outgoing message routing for SMS and MMS paths.
 *
 * - 1:1 text (SmsSingleRecipientSender.sendMessage hook): routes over iMessage when connected
 *   and recipient isn't known-unregistered. On failure ("not registered on iMessage" or timeout),
 *   caches negative capability when appropriate and falls back to stock SMS if enabled.
 * - Text MMS / Email recipients / Group text (TransactionService + SendTransaction hooks):
 *   bypasses carrier MMS APN when iMessage can take the message (1:1 email, 1:1 text, or group
 *   where every participant is registered on iMessage) and sends via iMessage; falls back to
 *   MMS on failure.
 * - No-service queued SMS (SmsReceiverService hook): drains queued SMS to iMessage recipients
 *   over Wi-Fi when cellular service is unavailable.
 */
public final class WaveIMessageSend {
    private static final String TAG = "WaveIMsg";
    private static final long SEND_TIMEOUT_MS = 25_000L;

    private static final ThreadLocal<Boolean> BYPASS = new ThreadLocal<Boolean>();
    private static final Set<Uri> BYPASSED_MMS = new HashSet<Uri>();
    private static final Set<Uri> IMSG_FAILED_MMS = new HashSet<Uri>();
    private static final Object DRAIN_LOCK = new Object();
    private static volatile boolean sDrainPending;

    private WaveIMessageSend() {}

    // -----------------------------------------------------------------------------------------
    // 1:1 SMS intercept

    /**
     * Hook in SmsSingleRecipientSender.sendMessage right before moving to outbox / SmsManager.
     * Returns true if iMessage took the message (caller returns false immediately).
     */
    public static boolean interceptSms(
            final SmsSingleRecipientSender sender,
            final Uri uri,
            String dest,
            String text,
            final int subId
    ) {
        try {
            if (Boolean.TRUE.equals(BYPASS.get())) return false;
            final WaveIMessageHost host = WaveIMessageHost.sending();
            if (host == null || uri == null || TextUtils.isEmpty(text)) return false;

            final Context c = MmsApp.getApplication();
            final WaveIMessageConfig cfg = host.config();
            final String target = WaveIMessageConfig.toIMessageTarget(c, dest);
            if (target == null) return false;

            int cap = cfg.getCapability(target);
            if (cap == WaveIMessageConfig.CAP_UNREGISTERED) {
                return false; // Known non-iMessage contact -> stock SMS immediately
            }

            moveSms(c, uri, 4 /* OUTBOX */, 0);
            String convKey = WaveIMessageConfig.conversationKeyForTargets(Collections.singletonList(target));
            String senderGuid = cfg.getSenderGuid(convKey);
            String clientMsgId = host.sendText(target, text, senderGuid);
            Log.i(TAG, "sms " + uri + " -> imessage " + clientMsgId + " to " + target);

            host.expectSendResult(clientMsgId, new WaveIMessageHost.SendCallback() {
                @Override
                public void onResult(WaveIMessageHost.SendOutcome r) {
                    if (r.ok) {
                        cfg.setCapability(target, true);
                        cfg.recordSentAppleMsgId(r.appleMsgId, uri);
                        WaveIMessageUi.refreshActiveComposeHint();
                        reportSent(c, uri, subId, -1 /* Activity.RESULT_OK */);
                    } else {
                        if (r.isNotRegisteredError()) {
                            cfg.setCapability(target, false);
                            WaveIMessageUi.refreshActiveComposeHint();
                        }
                        if (cfg.isSmsFallbackEnabled()) {
                            Log.w(TAG, "imessage failed (" + r + "), falling back to SMS for " + uri);
                            fallbackSms(sender, c, uri, subId);
                        } else {
                            Log.w(TAG, "imessage failed (" + r + "), SMS fallback disabled for " + uri);
                            reportSent(c, uri, subId, 1 /* RESULT_ERROR_GENERIC_FAILURE */);
                        }
                    }
                }
            }, SEND_TIMEOUT_MS);
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
            reportSent(c, uri, subId, 1);
        } finally {
            BYPASS.remove();
        }
    }

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

    private static void moveSms(Context c, Uri uri, int type, int error) {
        ContentValues v = new ContentValues(3);
        v.put("type", type);
        if (type == 5) v.put("error_code", error);
        if (type == 2 || type == 4) v.put("read", 1);
        c.getContentResolver().update(uri, v, null, null);
    }

    // -----------------------------------------------------------------------------------------
    // Queued SMS drain (Wi-Fi only / no cellular service)

    public static void drainQueuedAsync(final Context c) {
        if (WaveIMessageHost.sending() == null || sDrainPending) return;
        if (cellularInService(c)) return;
        sDrainPending = true;
        new Thread(new Runnable() {
            @Override
            public void run() {
                sDrainPending = false;
                try {
                    drainQueued(c.getApplicationContext());
                } catch (Throwable t) {
                    Log.w(TAG, "drainQueued", t);
                }
            }
        }, "wave-imsg-queue").start();
    }

    private static boolean cellularInService(Context c) {
        try {
            android.telephony.TelephonyManager tm =
                    (android.telephony.TelephonyManager) c.getSystemService(Context.TELEPHONY_SERVICE);
            if (tm == null) return false;
            android.telephony.ServiceState ss = tm.getServiceState();
            return ss != null && ss.getState() == android.telephony.ServiceState.STATE_IN_SERVICE;
        } catch (Throwable t) {
            return false;
        }
    }

    private static void drainQueued(Context c) {
        synchronized (DRAIN_LOCK) {
            WaveIMessageHost host = WaveIMessageHost.sending();
            if (host == null) return;
            WaveIMessageConfig cfg = host.config();
            List<Long> ids = new ArrayList<Long>();
            List<String> addrs = new ArrayList<String>();
            List<String> bodies = new ArrayList<String>();
            Cursor cur = c.getContentResolver().query(
                    Uri.parse("content://sms/queued"),
                    new String[]{"_id", "address", "body"},
                    null, null, "date ASC");
            if (cur == null) return;
            try {
                while (cur.moveToNext()) {
                    ids.add(cur.getLong(0));
                    addrs.add(cur.getString(1));
                    bodies.add(cur.getString(2));
                }
            } finally {
                cur.close();
            }
            for (int i = 0; i < ids.size(); i++) {
                host = WaveIMessageHost.sending();
                if (host == null) return;
                String target = WaveIMessageConfig.toIMessageTarget(c, addrs.get(i));
                String text = bodies.get(i);
                if (target == null || TextUtils.isEmpty(text)) continue;
                if (cfg.getCapability(target) == WaveIMessageConfig.CAP_UNREGISTERED) continue;

                Uri uri = Uri.parse("content://sms/" + ids.get(i));
                ContentValues v = new ContentValues(1);
                v.put("type", 4);
                if (c.getContentResolver().update(uri, v, "type=6", null) != 1) continue;

                try {
                    String convKey = WaveIMessageConfig.conversationKeyForTargets(Collections.singletonList(target));
                    String clientId = host.sendText(target, text, cfg.getSenderGuid(convKey));
                    WaveIMessageHost.SendOutcome r = host.awaitSendResult(clientId, SEND_TIMEOUT_MS);
                    if (r.ok) {
                        cfg.setCapability(target, true);
                        cfg.recordSentAppleMsgId(r.appleMsgId, uri);
                        moveSms(c, uri, 2 /* SENT */, 0);
                    } else {
                        if (r.isNotRegisteredError()) cfg.setCapability(target, false);
                        moveSms(c, uri, 6 /* QUEUED */, 0);
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "queued sms drain failed for " + uri, t);
                    moveSms(c, uri, 6, 0);
                }
            }
        }
    }

    // -----------------------------------------------------------------------------------------
    // MMS intercept (email recipients + text-only group iMessages)

    /**
     * Hook in TransactionService$ServiceHandler.processTransaction before beginMmsConnectivity:
     * returns true when iMessage can handle this text-only SendTransaction without carrier MMS APN.
     */
    public static boolean imessageReadyForMms(Transaction t) {
        try {
            if (t == null || t.getType() != 2 /* SEND_TRANSACTION */) return false;
            WaveIMessageHost host = WaveIMessageHost.sending();
            if (host == null) return false;
            Field f = t.getClass().getDeclaredField("mSendReqURI");
            f.setAccessible(true);
            Uri uri = (Uri) f.get(t);
            if (uri == null) return false;
            synchronized (BYPASSED_MMS) {
                if (IMSG_FAILED_MMS.contains(uri)) return false;
                if (BYPASSED_MMS.contains(uri)) return true;
            }
            Context c = MmsApp.getApplication();
            SendReq req = (SendReq) PduPersister.getPduPersister(c).load(uri);
            if (!canRouteMmsOverIMessage(c, host.config(), req)) return false;
            synchronized (BYPASSED_MMS) {
                BYPASSED_MMS.add(uri);
            }
            Log.i(TAG, "mms " + uri + ": routing via iMessage (skipping carrier MMS APN)");
            return true;
        } catch (Throwable th) {
            Log.w(TAG, "imessageReadyForMms", th);
            return false;
        }
    }

    /**
     * Hook in SendTransaction.run after SendReq is loaded.
     * Returns Sent-box URI on success, or null to fall back to stock MMS.
     */
    public static Uri interceptMms(Context c, SendReq req, Uri uri) {
        synchronized (BYPASSED_MMS) {
            if (uri != null && IMSG_FAILED_MMS.remove(uri)) return null;
        }
        Uri sent = interceptMmsInner(c, req, uri);
        if (sent != null) {
            synchronized (BYPASSED_MMS) { BYPASSED_MMS.remove(uri); }
            return sent;
        }
        boolean bypassed;
        synchronized (BYPASSED_MMS) { bypassed = BYPASSED_MMS.remove(uri); }
        if (bypassed) {
            synchronized (BYPASSED_MMS) { IMSG_FAILED_MMS.add(uri); }
            throw new IllegalStateException("iMessage send failed, retry as MMS: " + uri);
        }
        return null;
    }

    private static Uri interceptMmsInner(Context c, SendReq req, Uri uri) {
        try {
            WaveIMessageHost host = WaveIMessageHost.sending();
            if (host == null || req == null || uri == null) return null;
            WaveIMessageConfig cfg = host.config();
            if (!canRouteMmsOverIMessage(c, cfg, req)) return null;

            List<String> targets = extractTargets(c, cfg, req);
            String text = extractText(c, req);
            if (targets == null || targets.isEmpty() || TextUtils.isEmpty(text)) return null;

            String convKey = WaveIMessageConfig.conversationKeyForTargets(targets);
            String guid = cfg.getSenderGuid(convKey);
            String clientMsgId = targets.size() == 1
                    ? host.sendText(targets.get(0), text, guid)
                    : host.sendGroupText(targets, text, guid);

            Log.i(TAG, "mms " + uri + " -> imessage " + clientMsgId + " (" + targets.size() + " recipients)");
            WaveIMessageHost.SendOutcome r = host.awaitSendResult(clientMsgId, SEND_TIMEOUT_MS);
            if (!r.ok) {
                if (r.isNotRegisteredError() && targets.size() == 1) {
                    cfg.setCapability(targets.get(0), false);
                    WaveIMessageUi.refreshActiveComposeHint();
                }
                Log.w(TAG, "mms iMessage failed (" + r + ") for " + uri);
                return null;
            }

            for (String t : targets) cfg.setCapability(t, true);
            Uri sent = PduPersister.getPduPersister(c).move(uri, Telephony.Mms.Sent.CONTENT_URI);
            ContentValues v = new ContentValues(1);
            v.put("resp_st", 128);
            c.getContentResolver().update(sent, v, null, null);
            cfg.recordSentAppleMsgId(r.appleMsgId, sent);
            WaveIMessageUi.refreshActiveComposeHint();
            return sent;
        } catch (Throwable t) {
            Log.w(TAG, "interceptMms", t);
            return null;
        }
    }

    private static boolean canRouteMmsOverIMessage(Context c, WaveIMessageConfig cfg, SendReq req) {
        if (req == null) return false;
        // Never intercept media/file attachments (push protocol currently carries text only).
        PduBody body = req.getBody();
        int n = body == null ? 0 : body.getPartsNum();
        boolean hasText = false;
        for (int i = 0; i < n; i++) {
            byte[] ctb = body.getPart(i).getContentType();
            String ct = ctb == null ? "" : new String(ctb, StandardCharsets.UTF_8).toLowerCase(Locale.ROOT);
            if ("application/smil".equals(ct)) continue;
            if ("text/plain".equals(ct)) {
                hasText = true;
                continue;
            }
            return false; // binary/media attachment -> real MMS
        }
        EncodedStringValue sub = req.getSubject();
        if (!hasText && (sub == null || TextUtils.isEmpty(sub.getString()))) return false;

        List<String> targets = extractTargets(c, cfg, req);
        if (targets == null || targets.isEmpty()) return false;

        if (targets.size() == 1) {
            String t = targets.get(0);
            return cfg.getCapability(t) != WaveIMessageConfig.CAP_UNREGISTERED;
        }
        // Group text: route via iMessage only when every recipient is known registered on iMessage
        // (or is an email address).
        for (String t : targets) {
            int cap = cfg.getCapability(t);
            if (cap == WaveIMessageConfig.CAP_UNREGISTERED) return false;
            if (cap != WaveIMessageConfig.CAP_REGISTERED && !t.startsWith("mailto:")) return false;
        }
        return true;
    }

    private static List<String> extractTargets(Context c, WaveIMessageConfig cfg, SendReq req) {
        List<String> myHandles = cfg.getHandles();
        Set<String> out = new LinkedHashSet<String>();
        if (!addTargets(c, out, req.getTo(), myHandles)
                || !addTargets(c, out, req.getCc(), myHandles)
                || !addTargets(c, out, req.getBcc(), myHandles)) {
            return null;
        }
        return new ArrayList<String>(out);
    }

    private static boolean addTargets(Context c, Set<String> out, EncodedStringValue[] vs, List<String> myHandles) {
        if (vs == null) return true;
        for (EncodedStringValue v : vs) {
            if (v == null) continue;
            String t = WaveIMessageConfig.toIMessageTarget(c, v.getString());
            if (t == null) return false;
            if (WaveIMessageConfig.isOwnHandle(t, myHandles)) continue;
            boolean dup = false;
            for (String existing : out) {
                if (existing.equalsIgnoreCase(t)) {
                    dup = true;
                    break;
                }
            }
            if (!dup) out.add(t);
        }
        return true;
    }

    private static String extractText(Context c, SendReq req) throws Exception {
        StringBuilder sb = new StringBuilder();
        EncodedStringValue sub = req.getSubject();
        if (sub != null && !TextUtils.isEmpty(sub.getString())) {
            sb.append(sub.getString());
        }
        PduBody body = req.getBody();
        int n = body == null ? 0 : body.getPartsNum();
        for (int i = 0; i < n; i++) {
            PduPart p = body.getPart(i);
            byte[] ctb = p.getContentType();
            String ct = ctb == null ? "" : new String(ctb, StandardCharsets.UTF_8).toLowerCase(Locale.ROOT);
            if (!"text/plain".equals(ct)) continue;
            byte[] data = readPartData(c, p);
            if (data != null && data.length > 0) {
                if (sb.length() > 0) sb.append('\n');
                sb.append(new String(data, StandardCharsets.UTF_8));
            }
        }
        return sb.toString();
    }

    private static byte[] readPartData(Context c, PduPart p) throws Exception {
        if (p.getData() != null) return p.getData();
        Uri u = p.getDataUri();
        if (u == null) return null;
        InputStream in = c.getContentResolver().openInputStream(u);
        if (in == null) return null;
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[4096];
            int r;
            while ((r = in.read(buf)) > 0) out.write(buf, 0, r);
            return out.toByteArray();
        } finally {
            in.close();
        }
    }
}
