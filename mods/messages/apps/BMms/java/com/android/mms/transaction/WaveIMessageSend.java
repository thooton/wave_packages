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
import com.android.mms.wave.WaveIMessageDb;
import com.android.mms.wave.WaveIMessageHost;
import com.android.mms.wave.imsg.Body;
import com.android.mms.wave.imsg.MediaClient;
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
 * - MMS (photos, video, audio, contacts), email recipients and group messages (TransactionService
 *   + SendTransaction hooks): bypasses carrier MMS APN when iMessage can take the message (1:1
 *   email, 1:1 number, or a group where every participant is registered on iMessage), uploads the
 *   attachments over a media connection and sends via iMessage; falls back to MMS on failure.
 * - No-service queued SMS (SmsReceiverService hook): drains queued SMS to iMessage recipients
 *   over Wi-Fi when cellular service is unavailable.
 */
public final class WaveIMessageSend {
    private static final String TAG = "WaveIMsg";
    private static final long SEND_TIMEOUT_MS = 25_000L;
    /** Attachments go to Apple before the server answers; a video over cellular takes a while. */
    private static final long MEDIA_SEND_TIMEOUT_MS = 180_000L;
    /** Larger attachments go as carrier MMS (iPhones get them as MMS too). */
    private static final long MAX_IMESSAGE_MEDIA_BYTES = 30L * 1024L * 1024L;

    private static final ThreadLocal<Boolean> BYPASS = new ThreadLocal<Boolean>();
    private static final Set<Uri> BYPASSED_MMS = new HashSet<Uri>();
    private static final Set<Uri> IMSG_FAILED_MMS = new HashSet<Uri>();
    private static final Object DRAIN_LOCK = new Object();
    private static volatile boolean sDrainPending;
    /**
     * This process's id for pending-send records: a record from another session was sent by a
     * process that died before its result came, so nobody in memory waits for it any more.
     */
    static final String SESSION = java.util.UUID.randomUUID().toString();
    /** A send from an earlier session with no result after this is given up on (SMS shown failed). */
    private static final long PENDING_GIVE_UP_MS = 10L * 60L * 1000L;

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
            if (uri == null || TextUtils.isEmpty(text)) return false;
            final Context c = MmsApp.getApplication();
            final WaveIMessageHost host = sendingOrResuming(c, uri);
            if (host == null) return false;
            final WaveIMessageConfig cfg = host.config();
            final String target = WaveIMessageConfig.toIMessageTarget(c, dest);
            if (target == null) return false;

            int cap = cfg.getCapability(target);
            if (cap == WaveIMessageConfig.CAP_UNREGISTERED) {
                return false; // Known non-iMessage contact -> stock SMS immediately
            }

            // Stock Messages sends rows left in Outbox again when it restarts. If an earlier
            // process already gave this one to the server, wait for that send instead of
            // sending it a second time (or as SMS while iMessage isn't connected yet).
            int rowType = smsType(c, uri);
            if (rowType == 2 /* SENT */) {
                Log.i(TAG, "sms " + uri + " is already sent (settled after a restart); not sending it again");
                reportSent(c, uri, subId, -1 /* Activity.RESULT_OK */);
                return true;
            }
            WaveIMessageConfig.PendingSend adopted = adoptEarlierSms(cfg, uri);
            if (adopted != null && adopted.result != null && adopted.result.startsWith("ok:")) {
                Log.i(TAG, "sms " + uri + " went out before a restart; not sending it again");
                cfg.removePendingSend(adopted.id);
                moveSms(c, uri, 2 /* SENT */, 0);
                reportSent(c, uri, subId, -1 /* Activity.RESULT_OK */);
                return true;
            }
            final String clientMsgId;
            if (adopted != null && adopted.result == null) {
                clientMsgId = adopted.id;
                moveSms(c, uri, 4 /* OUTBOX */, 0);
            } else {
                moveSms(c, uri, 4 /* OUTBOX */, 0);
                String convKey = WaveIMessageConfig.conversationKeyForTargets(Collections.singletonList(target));
                clientMsgId = host.sendText(target, text, cfg.getSenderGuid(convKey));
                cfg.putPendingSend(clientMsgId, "sms", SESSION, uri);
                Log.i(TAG, "sms " + uri + " -> imessage " + clientMsgId + " to " + target);
            }
            final String sentText = text;
            final String sentGuid = cfg.getSenderGuid(
                    WaveIMessageConfig.conversationKeyForTargets(Collections.singletonList(target)));

            host.expectSendResult(clientMsgId, new WaveIMessageHost.SendCallback() {
                @Override
                public void onResult(WaveIMessageHost.SendOutcome r) {
                    keepIfServerHasIt(cfg, clientMsgId, uri, r);
                    if (r.ok) {
                        cfg.setCapability(target, true);
                        cfg.recordSentAppleMsgId(r.appleMsgId, uri);
                        recordSent(c, r.appleMsgId, uri, sentText, Collections.singletonList(target), sentGuid);
                        WaveIMessageUi.refreshActiveComposeHint();
                        reportSent(c, uri, subId, -1 /* Activity.RESULT_OK */);
                    } else {
                        if (r.isNotRegisteredError()) {
                            cfg.setCapability(target, false);
                            WaveIMessageUi.refreshActiveComposeHint();
                        }
                        if (cfg.isSmsFallbackEnabled() && r.mayFallBack()) {
                            Log.w(TAG, "imessage failed (" + r + "), falling back to SMS for " + uri);
                            host.onLateResult(clientMsgId, new WaveIMessageHost.SendCallback() {
                                @Override
                                public void onResult(WaveIMessageHost.SendOutcome late) {
                                    if (late.ok) lateSuccess(c, uri, late, sentText, target, sentGuid);
                                }
                            });
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

    /**
     * A send we gave up on went out over iMessage after all (the server had it; its ACK was lost
     * with the connection). Drop the fallback if it hasn't gone yet: an SMS still queued (no
     * service) or failed becomes the sent iMessage. One already sent (or sending) as SMS can't be
     * taken back; the recipient gets it twice.
     */
    static void lateSuccess(Context c, Uri uri, WaveIMessageHost.SendOutcome r, String text, String target,
                            String guid) {
        int type = -1;
        Cursor cur = c.getContentResolver().query(uri, new String[]{"type"}, null, null, null);
        if (cur != null) {
            try {
                if (cur.moveToFirst()) type = cur.getInt(0);
            } finally {
                cur.close();
            }
        }
        if (type != 6 /* QUEUED */ && type != 5 /* FAILED */) {
            Log.w(TAG, "late iMessage success for " + uri + " after its SMS fallback (type " + type
                    + "): delivered twice");
            return;
        }
        WaveIMessageHost host = WaveIMessageHost.get(c);
        host.config().setCapability(target, true);
        host.config().recordSentAppleMsgId(r.appleMsgId, uri);
        recordSent(c, r.appleMsgId, uri, text, Collections.singletonList(target), guid);
        moveSms(c, uri, 2 /* SENT */, 0);
        Log.i(TAG, "late iMessage success for " + uri + ": dropped its pending SMS fallback");
    }

    // -----------------------------------------------------------------------------------------
    // Sends from before a restart

    /**
     * A SEND_RESULT nobody in this process waits for. If it answers a send of a process that died
     * meanwhile, settle that send: an SMS row left in Outbox ("Sending") becomes sent or failed;
     * for an MMS the result is kept until stock MMS retries the message (resumeEarlierSend).
     */
    public static void onUnclaimedResult(Context c, String clientMsgId, WaveIMessageHost.SendOutcome r) {
        WaveIMessageHost host = WaveIMessageHost.get(c);
        WaveIMessageConfig cfg = host.config();
        WaveIMessageConfig.PendingSend ps = cfg.getPendingSend(clientMsgId);
        if (ps == null || SESSION.equals(ps.session) || ps.result != null) return; // ours, or done
        Log.i(TAG, "result for " + ps.kind + " " + ps.uri + " sent before a restart: " + r);
        // Kept with its result (the sweep drops it later): a resend of the row that started
        // before this result came (stock re-queues Outbox rows on restart) must see it went out.
        cfg.setPendingSendResult(clientMsgId, r.ok ? "ok:" + r.appleMsgId : "err:" + r.error);
        if ("sms".equals(ps.kind)) settleSms(c, ps.uri, r);
    }

    /**
     * The send's waiter is done with it. Usually that ends its record; but if we gave up on a send
     * the server has (it may still go out), the record stays, as no longer this session's, so a
     * result that comes later still turns the failed SMS into the sent iMessage.
     */
    private static void keepIfServerHasIt(WaveIMessageConfig cfg, String id, Uri uri, WaveIMessageHost.SendOutcome r) {
        if (!r.ok && !r.mayFallBack()) {
            cfg.putPendingSend(id, "sms", "gave-up", uri);
        } else {
            cfg.removePendingSend(id);
        }
    }

    /**
     * If an earlier process gave {@code uri} to the server, takes that send over for this process
     * (its waiter here gets the result) and returns its id; null if there's none: send it now.
     */
    private static WaveIMessageConfig.PendingSend adoptEarlierSms(WaveIMessageConfig cfg, Uri uri) {
        WaveIMessageConfig.PendingSend earlier = cfg.pendingSendForUri(uri);
        if (earlier == null || SESSION.equals(earlier.session) || !"sms".equals(earlier.kind)) return null;
        if (earlier.result != null) {
            // Already answered (and its row settled). A failure: drop it, the caller sends anew.
            if (!earlier.result.startsWith("ok:")) cfg.removePendingSend(earlier.id);
            return earlier;
        }
        cfg.putPendingSend(earlier.id, "sms", SESSION, uri);
        WaveIMessageHost.get(MmsApp.getApplication()).markResumed(earlier.id);
        Log.i(TAG, "sms " + uri + " was sent before a restart as " + earlier.id + "; waiting for that send");
        return earlier;
    }

    /**
     * The host to send {@code uri} with: the connected one, or, while not connected (yet), the
     * host anyway if an earlier process gave this message to the server. Right after a restart
     * stock Messages resends what it left in Outbox before we're connected; that message must
     * not go out as SMS/MMS meanwhile, it waits for the earlier send. Null: leave it to stock.
     */
    private static WaveIMessageHost sendingOrResuming(Context c, Uri uri) {
        WaveIMessageHost h = WaveIMessageHost.sending();
        if (h != null) return h;
        WaveIMessageHost any = WaveIMessageHost.get(c);
        if (!any.config().isEnabled() || !any.config().isSendEnabled()) return null;
        WaveIMessageConfig.PendingSend ps = any.config().pendingSendForUri(uri);
        return ps == null || SESSION.equals(ps.session) ? null : any;
    }

    /** The row's type (1 inbox, 2 sent, 4 outbox, 5 failed, 6 queued), or -1. */
    private static int smsType(Context c, Uri uri) {
        Cursor cur = c.getContentResolver().query(uri, new String[]{"type"}, null, null, null);
        if (cur == null) return -1;
        try {
            return cur.moveToFirst() ? cur.getInt(0) : -1;
        } finally {
            cur.close();
        }
    }

    /** Marks an SMS row still waiting for its iMessage (Outbox, Queued or Failed) sent, or failed. */
    private static void settleSms(Context c, Uri uri, WaveIMessageHost.SendOutcome r) {
        int type = -1;
        String address = null;
        String text = null;
        Cursor cur = c.getContentResolver().query(uri, new String[]{"type", "address", "body"}, null, null, null);
        if (cur != null) {
            try {
                if (cur.moveToFirst()) {
                    type = cur.getInt(0);
                    address = cur.getString(1);
                    text = cur.getString(2);
                }
            } finally {
                cur.close();
            }
        }
        if (type != 4 /* OUTBOX */ && type != 5 /* FAILED */ && type != 6 /* QUEUED */) return;
        if (!r.ok) {
            // Queued stays queued (the drain sends it again); only a stuck "Sending" fails.
            if (type == 4) moveSms(c, uri, 5 /* FAILED */, 1);
            return;
        }
        WaveIMessageConfig cfg = WaveIMessageHost.get(c).config();
        String target = WaveIMessageConfig.toIMessageTarget(c, address);
        List<String> targets = target == null ? Collections.<String>emptyList() : Collections.singletonList(target);
        String guid = cfg.getSenderGuid(WaveIMessageConfig.conversationKeyForTargets(targets));
        if (target != null) cfg.setCapability(target, true);
        cfg.recordSentAppleMsgId(r.appleMsgId, uri);
        recordSent(c, r.appleMsgId, uri, text, targets, guid);
        moveSms(c, uri, 2 /* SENT */, 0);
    }

    /**
     * After the host has been connected a while: sends from an earlier process that got no
     * result and aren't going out any more (not in the outbox) are given up on, so an SMS doesn't
     * stay "Sending" forever. MMS records are dropped once stale (stock MMS has its own retries).
     */
    public static void sweepPendingSends(Context c) {
        WaveIMessageHost host = WaveIMessageHost.get(c);
        WaveIMessageConfig cfg = host.config();
        long now = System.currentTimeMillis();
        for (WaveIMessageConfig.PendingSend ps : cfg.pendingSends()) {
            if (SESSION.equals(ps.session) || host.isQueued(ps.id)) continue;
            if (now - ps.createdMs < PENDING_GIVE_UP_MS) continue;
            if (ps.result != null && "sms".equals(ps.kind)) {
                cfg.removePendingSend(ps.id); // answered and settled; kept only to stop a resend
                continue;
            }
            if ("mms".equals(ps.kind) && now - ps.createdMs < 24L * 60L * 60L * 1000L) continue;
            Log.w(TAG, "no result for " + ps.kind + " " + ps.uri + " sent before a restart; giving up");
            cfg.removePendingSend(ps.id);
            if ("sms".equals(ps.kind)) {
                settleSms(c, ps.uri, new WaveIMessageHost.SendOutcome(false, null, "No answer from iMessage server"));
            }
        }
    }

    /**
     * Stock MMS is sending {@code uri} again (its sender died, or it retries): if an earlier
     * process already handed it to the server, use that send's result instead of sending it a
     * second time. Null when there is none, or it failed: send it now.
     */
    private static WaveIMessageHost.SendOutcome resumeEarlierSend(WaveIMessageHost host, WaveIMessageConfig cfg, Uri uri) {
        WaveIMessageConfig.PendingSend ps = cfg.pendingSendForUri(uri);
        if (ps == null || SESSION.equals(ps.session)) return null;
        WaveIMessageHost.SendOutcome r;
        if (ps.result != null) {
            r = ps.result.startsWith("ok:")
                    ? new WaveIMessageHost.SendOutcome(true, ps.result.substring(3), null)
                    : null;
        } else {
            // Queued (goes out on connect) or, not in the outbox any more, ACKed by the server
            // before the restart: its result comes; meanwhile it must not go out as MMS.
            host.markResumed(ps.id);
            Log.i(TAG, "mms " + uri + ": waiting for its earlier send " + ps.id);
            r = host.awaitSendResult(ps.id, MEDIA_SEND_TIMEOUT_MS);
            if (!r.ok && r.mayFallBack()) r = null;
        }
        cfg.removePendingSend(ps.id);
        if (r != null) Log.i(TAG, "mms " + uri + ": earlier send " + ps.id + " -> " + r);
        return r;
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
                    String guid = cfg.getSenderGuid(convKey);
                    // Stock Messages queues rows left in Outbox when it restarts without
                    // service: one an earlier process already gave to the server waits for
                    // that send (its result comes right after connecting) instead of going twice.
                    WaveIMessageConfig.PendingSend earlier = adoptEarlierSms(cfg, uri);
                    if (earlier != null && earlier.result != null && earlier.result.startsWith("ok:")) {
                        Log.i(TAG, "queued sms " + uri + " went out before a restart; not sending it again");
                        cfg.removePendingSend(earlier.id);
                        moveSms(c, uri, 2 /* SENT */, 0);
                        continue;
                    }
                    String clientId = earlier != null && earlier.result == null ? earlier.id : null;
                    if (clientId == null) {
                        clientId = host.sendText(target, text, guid);
                        cfg.putPendingSend(clientId, "sms", SESSION, uri);
                        Log.i(TAG, "queued sms " + uri + " -> imessage " + clientId);
                    }
                    WaveIMessageHost.SendOutcome r = host.awaitSendResult(clientId, SEND_TIMEOUT_MS);
                    keepIfServerHasIt(cfg, clientId, uri, r);
                    if (r.ok) {
                        cfg.setCapability(target, true);
                        cfg.recordSentAppleMsgId(r.appleMsgId, uri);
                        recordSent(c, r.appleMsgId, uri, text, Collections.singletonList(target), guid);
                        moveSms(c, uri, 2 /* SENT */, 0);
                    } else if (r.mayFallBack()) {
                        if (r.isNotRegisteredError()) cfg.setCapability(target, false);
                        moveSms(c, uri, 6 /* QUEUED */, 0);
                        final Uri qUri = uri;
                        final String qText = text;
                        final String qTarget = target;
                        final String qGuid = guid;
                        host.onLateResult(clientId, new WaveIMessageHost.SendCallback() {
                            @Override
                            public void onResult(WaveIMessageHost.SendOutcome late) {
                                if (late.ok) lateSuccess(c, qUri, late, qText, qTarget, qGuid);
                            }
                        });
                    } else {
                        // The server has it and may still send it: queueing it again could
                        // deliver it twice. Show it as failed (the user can resend).
                        moveSms(c, uri, 5 /* FAILED */, 1);
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
            Field f = t.getClass().getDeclaredField("mSendReqURI");
            f.setAccessible(true);
            Uri uri = (Uri) f.get(t);
            if (uri == null) return false;
            WaveIMessageHost host = sendingOrResuming(MmsApp.getApplication(), uri);
            if (host == null) return false;
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
            WaveIMessageHost host = uri == null ? null : sendingOrResuming(c, uri);
            if (host == null || req == null) return null;
            WaveIMessageConfig cfg = host.config();
            if (!canRouteMmsOverIMessage(c, cfg, req)) return null;

            List<String> targets = extractTargets(c, cfg, req);
            String text = extractText(c, req);
            if (targets == null || targets.isEmpty()) return null;
            String convKey = WaveIMessageConfig.conversationKeyForTargets(targets);
            String guid = cfg.getSenderGuid(convKey);

            // Stock MMS retries a message whose sender died; the earlier send may have gone out.
            WaveIMessageHost.SendOutcome r = resumeEarlierSend(host, cfg, uri);
            if (r == null) {
                List<Body.OutAttachment> attachments = uploadMedia(c, host, req);
                if (attachments == null) return null;
                if (TextUtils.isEmpty(text) && attachments.isEmpty()) return null;

                String clientMsgId = host.sendMessage(targets, text, guid, attachments);
                cfg.putPendingSend(clientMsgId, "mms", SESSION, uri);

                Log.i(TAG, "mms " + uri + " -> imessage " + clientMsgId + " (" + targets.size() + " recipients, "
                        + attachments.size() + " attachments)");
                r = host.awaitSendResult(clientMsgId, attachments.isEmpty() ? SEND_TIMEOUT_MS : MEDIA_SEND_TIMEOUT_MS);
                cfg.removePendingSend(clientMsgId);
            }
            if (!r.ok) {
                if (r.isNotRegisteredError() && targets.size() == 1) {
                    cfg.setCapability(targets.get(0), false);
                    WaveIMessageUi.refreshActiveComposeHint();
                }
                Log.w(TAG, "mms iMessage failed (" + r + ") for " + uri
                        + (r.mayFallBack() ? "" : "; the server has it, sending as MMS anyway (may arrive twice)"));
                return null;
            }

            for (String t : targets) cfg.setCapability(t, true);
            Uri sent = PduPersister.getPduPersister(c).move(uri, Telephony.Mms.Sent.CONTENT_URI);
            ContentValues v = new ContentValues(1);
            v.put("resp_st", 128);
            c.getContentResolver().update(sent, v, null, null);
            cfg.recordSentAppleMsgId(r.appleMsgId, sent);
            recordSent(c, r.appleMsgId, sent, text, targets, guid);
            WaveIMessageUi.refreshActiveComposeHint();
            return sent;
        } catch (Throwable t) {
            Log.w(TAG, "interceptMms", t);
            return null;
        }
    }

    private static void recordSent(Context c, String appleMsgId, Uri uri, String text, List<String> targets,
                                   String guid) {
        try {
            Uri row = uri;
            if (row != null && "mms".equals(row.getAuthority()) && row.getPathSegments().size() > 1) {
                row = Uri.parse("content://mms/" + row.getLastPathSegment());
            }
            WaveIMessageDb.get(c).recordMessage(appleMsgId, row, text, WaveIMessageDb.ME, targets, guid);
        } catch (Throwable t) {
            Log.w(TAG, "recordSent", t);
        }
    }

    /** Bytes in a part, whether held in memory or in the MMS part store. */
    private static long partSize(Context c, PduPart p) {
        if (p.getData() != null) return p.getData().length;
        Uri u = p.getDataUri();
        if (u == null) return 0;
        try {
            android.content.res.AssetFileDescriptor fd = c.getContentResolver().openAssetFileDescriptor(u, "r");
            if (fd == null) return 0;
            try {
                long n = fd.getLength();
                return n >= 0 ? n : fd.getParcelFileDescriptor().getStatSize();
            } finally {
                fd.close();
            }
        } catch (Throwable t) {
            return 0;
        }
    }

    /** True for a part type iMessage carries (the server converts it for iPhones). */
    static boolean isSendableMedia(String ct) {
        return ct.startsWith("image/") || ct.startsWith("video/") || ct.startsWith("audio/")
                || "text/x-vcard".equals(ct) || "text/vcard".equals(ct);
    }

    private static String partName(PduPart p, int i, String ct) {
        byte[][] candidates = {p.getFilename(), p.getName(), p.getContentLocation()};
        for (byte[] b : candidates) {
            if (b != null && b.length > 0) {
                String n = new String(b, StandardCharsets.UTF_8).trim();
                int slash = n.lastIndexOf('/');
                if (slash >= 0) n = n.substring(slash + 1);
                if (!n.isEmpty() && !n.startsWith("<")) return n;
            }
        }
        String ext = ct.startsWith("image/") ? ".jpg" : ct.startsWith("video/") ? ".3gp"
                : ct.startsWith("audio/") ? ".amr" : ".vcf";
        return "attachment" + (i + 1) + ext;
    }

    /** Uploads the message's media parts; null if one couldn't be uploaded (send as MMS instead). */
    private static List<Body.OutAttachment> uploadMedia(Context c, WaveIMessageHost host, SendReq req) {
        List<Body.OutAttachment> out = new ArrayList<Body.OutAttachment>();
        PduBody body = req.getBody();
        int n = body == null ? 0 : body.getPartsNum();
        MediaClient mc = null;
        try {
            for (int i = 0; i < n; i++) {
                PduPart p = body.getPart(i);
                byte[] ctb = p.getContentType();
                String ct = ctb == null ? "" : new String(ctb, StandardCharsets.UTF_8).toLowerCase(Locale.ROOT);
                if (!isSendableMedia(ct)) continue;
                try {
                    byte[] data = readPartData(c, p);
                    if (data == null || data.length == 0) continue;
                    if (mc == null) {
                        mc = host.mediaClient();
                        if (mc == null) return null;
                        mc.keepOpen(); // one media connection for all of the message's parts
                    }
                    String name = partName(p, i, ct);
                    String id = mc.upload(data, null);
                    Log.i(TAG, "uploaded " + name + " (" + ct + ", " + data.length + " bytes) as " + id);
                    out.add(new Body.OutAttachment(id, name, ct));
                } catch (Throwable t) {
                    Log.w(TAG, "attachment upload failed; sending as MMS", t);
                    return null;
                }
            }
            return out;
        } finally {
            if (mc != null) mc.close();
        }
    }

    private static boolean canRouteMmsOverIMessage(Context c, WaveIMessageConfig cfg, SendReq req) {
        if (req == null) return false;
        PduBody body = req.getBody();
        int n = body == null ? 0 : body.getPartsNum();
        boolean hasContent = false;
        long mediaBytes = 0;
        for (int i = 0; i < n; i++) {
            PduPart p = body.getPart(i);
            byte[] ctb = p.getContentType();
            String ct = ctb == null ? "" : new String(ctb, StandardCharsets.UTF_8).toLowerCase(Locale.ROOT);
            if ("application/smil".equals(ct)) continue;
            if ("text/plain".equals(ct)) {
                hasContent = true;
                continue;
            }
            if (!isSendableMedia(ct)) return false; // unknown attachment type -> real MMS
            hasContent = true;
            mediaBytes += partSize(c, p);
        }
        if (mediaBytes > MAX_IMESSAGE_MEDIA_BYTES) return false;
        EncodedStringValue sub = req.getSubject();
        if (!hasContent && (sub == null || TextUtils.isEmpty(sub.getString()))) return false;

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
