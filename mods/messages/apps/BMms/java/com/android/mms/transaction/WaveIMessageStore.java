package com.android.mms.transaction;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.wave.WaveIMessageConfig;
import com.android.mms.wave.imsg.Body;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.PduBody;
import com.google.android.mms.pdu.PduPart;
import com.google.android.mms.pdu.PduPersister;
import com.google.android.mms.pdu.RetrieveConf;
import com.google.android.mms.pdu.SendReq;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * FEAT(imessage): Stores incoming iMessages (and self-sent sync messages from other Apple devices)
 * into the stock Android telephony database so the stock Messages UI, search, notifications, and
 * SonimLauncher Missed Events all display them seamlessly.
 */
public final class WaveIMessageStore {
    private static final String TAG = "WaveIMsg";

    private WaveIMessageStore() {}

    public static void storeIncoming(Context c, WaveIMessageConfig cfg, Body body) throws Exception {
        if (body == null || body.kind != Body.KIND_INCOMING_TEXT) return;
        if (!cfg.markAppleMsgIdSeen(body.appleMsgId)) {
            Log.d(TAG, "Skipping duplicate/already-sent iMessage " + body.appleMsgId);
            return;
        }

        List<String> myHandles = cfg.getHandles();
        String senderRaw = body.sender != null ? body.sender : "";
        boolean selfSent = WaveIMessageConfig.isOwnHandle(senderRaw, myHandles);

        // Collect all non-self participants (normalized targets + bare addresses for mmssms.db).
        List<String> otherTargets = new ArrayList<String>();
        Set<String> otherAddrs = new LinkedHashSet<String>();

        if (!selfSent && !TextUtils.isEmpty(senderRaw)) {
            addParticipant(c, cfg, senderRaw, myHandles, otherTargets, otherAddrs);
        }
        for (String p : body.participants) {
            addParticipant(c, cfg, p, myHandles, otherTargets, otherAddrs);
        }

        if (otherAddrs.isEmpty()) {
            // Edge case: message to self or missing participants; fall back to sender.
            String stripped = WaveIMessageConfig.stripHandlePrefix(senderRaw);
            if (!TextUtils.isEmpty(stripped)) {
                otherAddrs.add(stripped);
            }
        }
        if (otherAddrs.isEmpty()) {
            Log.w(TAG, "Ignoring incoming iMessage with no usable address: " + body.appleMsgId);
            return;
        }

        // Persist sender_guid for replies in this conversation.
        if (!TextUtils.isEmpty(body.senderGuid) && !otherTargets.isEmpty()) {
            String convKey = WaveIMessageConfig.conversationKeyForTargets(otherTargets);
            cfg.setSenderGuid(convKey, body.senderGuid);
        }

        String text = body.text != null ? body.text : "";
        if (otherAddrs.size() == 1) {
            String peer = otherAddrs.iterator().next();
            storeOneToOneSms(c, peer, text, body.timestampMs, selfSent);
        } else {
            String fromAddr = WaveIMessageConfig.stripHandlePrefix(senderRaw);
            String selfAddr = cfg.getPreferredHandle() != null
                    ? WaveIMessageConfig.stripHandlePrefix(cfg.getPreferredHandle())
                    : null;
            storeGroupMms(c, fromAddr, selfAddr, otherAddrs, text, body.appleMsgId, selfSent);
        }
    }

    private static void addParticipant(
            Context c,
            WaveIMessageConfig cfg,
            String handle,
            List<String> myHandles,
            List<String> outTargets,
            Set<String> outAddrs
    ) {
        if (TextUtils.isEmpty(handle)) return;
        if (WaveIMessageConfig.isOwnHandle(handle, myHandles)) return;

        String target = WaveIMessageConfig.toIMessageTarget(c, handle);
        if (target != null) {
            cfg.setCapability(target, true);
            if (!containsIgnoreCase(outTargets, target)) {
                outTargets.add(target);
            }
        }
        String addr = WaveIMessageConfig.stripHandlePrefix(handle);
        if (TextUtils.isEmpty(addr)) return;
        for (String existing : outAddrs) {
            if (existing.equalsIgnoreCase(addr)) return;
            if (addr.indexOf('@') < 0 && existing.indexOf('@') < 0
                    && PhoneNumberUtils.compare(existing, addr)) {
                return;
            }
        }
        outAddrs.add(addr);
    }

    private static boolean containsIgnoreCase(List<String> list, String item) {
        for (String s : list) {
            if (s.equalsIgnoreCase(item)) return true;
        }
        return false;
    }

    private static void storeOneToOneSms(Context c, String address, String text, long timestampMs, boolean selfSent) {
        long tid = Telephony.Threads.getOrCreateThreadId(c, address);
        ContentValues v = new ContentValues();
        v.put("address", address);
        v.put("body", text);
        v.put("date", System.currentTimeMillis());
        if (timestampMs > 0L) {
            v.put("date_sent", timestampMs);
        }
        if (selfSent) {
            v.put("type", 2 /* SENT */);
            v.put("read", 1);
            v.put("seen", 1);
            Uri u = c.getContentResolver().insert(Uri.parse("content://sms/sent"), v);
            Log.i(TAG, "Stored self-sent 1:1 iMessage " + u + " thread " + tid);
        } else {
            v.put("type", 1 /* INBOX */);
            v.put("read", 0);
            v.put("seen", 0);
            v.put("thread_id", tid);
            Uri u = c.getContentResolver().insert(Uri.parse("content://sms/inbox"), v);
            Log.i(TAG, "Stored incoming 1:1 iMessage " + u + " thread " + tid);
            MessagingNotification.blockingUpdateNewMessageIndicator(c, tid, false);
        }
    }

    private static void storeGroupMms(
            Context c,
            String fromAddr,
            String selfAddr,
            Set<String> otherAddrs,
            String text,
            String appleMsgId,
            boolean selfSent
    ) throws Exception {
        PduBody body = new PduBody();
        body.addPart(textPart(text));
        long nowSec = System.currentTimeMillis() / 1000L;
        long tid = Telephony.Threads.getOrCreateThreadId(c, otherAddrs);

        if (selfSent) {
            SendReq sr = new SendReq();
            if (!TextUtils.isEmpty(selfAddr)) {
                sr.setFrom(new EncodedStringValue(selfAddr));
            }
            for (String p : otherAddrs) {
                sr.addTo(new EncodedStringValue(p));
            }
            sr.setDate(nowSec);
            sr.setBody(body);
            Uri u = PduPersister.getPduPersister(c).persist(sr, Telephony.Mms.Sent.CONTENT_URI, false, true, null);
            if (u == null) throw new IllegalStateException("persist self group MMS returned null");
            long id = Long.parseLong(u.getLastPathSegment());
            ContentValues v = new ContentValues(4);
            v.put("thread_id", tid);
            v.put("msg_box", 2);
            v.put("read", 1);
            v.put("seen", 1);
            c.getContentResolver().update(Uri.parse("content://mms/" + id), v, null, null);
            Log.i(TAG, "Stored self-sent group iMessage as mms " + id + " thread " + tid);
        } else {
            RetrieveConf rc = new RetrieveConf();
            if (!TextUtils.isEmpty(fromAddr)) {
                rc.setFrom(new EncodedStringValue(fromAddr));
            }
            if (!TextUtils.isEmpty(selfAddr)) {
                rc.addTo(new EncodedStringValue(selfAddr));
            }
            for (String p : otherAddrs) {
                if (!TextUtils.isEmpty(fromAddr) && (p.equalsIgnoreCase(fromAddr)
                        || (p.indexOf('@') < 0 && fromAddr.indexOf('@') < 0 && PhoneNumberUtils.compare(p, fromAddr)))) {
                    continue;
                }
                rc.addCc(new EncodedStringValue(p));
            }
            rc.setDate(nowSec);
            byte[] mid = ("imsg-" + (appleMsgId == null ? "" : appleMsgId)).getBytes(StandardCharsets.UTF_8);
            rc.setMessageId(mid);
            rc.setTransactionId(mid);
            rc.setContentType("application/vnd.wap.multipart.related".getBytes(StandardCharsets.UTF_8));
            rc.setBody(body);
            Uri u = PduPersister.getPduPersister(c).persist(rc, Telephony.Mms.Inbox.CONTENT_URI, false, true, null);
            if (u == null) throw new IllegalStateException("persist group MMS returned null");
            long id = Long.parseLong(u.getLastPathSegment());
            ContentValues v = new ContentValues(4);
            v.put("thread_id", tid);
            v.put("msg_box", 1);
            v.put("read", 0);
            v.put("seen", 0);
            c.getContentResolver().update(Uri.parse("content://mms/" + id), v, null, null);
            Log.i(TAG, "Stored incoming group iMessage as mms " + id + " thread " + tid);
            MessagingNotification.blockingUpdateNewMessageIndicator(c, tid, false);
        }
    }

    private static PduPart textPart(String text) {
        PduPart p = new PduPart();
        p.setCharset(106); // UTF-8
        p.setContentType("text/plain".getBytes(StandardCharsets.UTF_8));
        p.setContentLocation("text_0.txt".getBytes(StandardCharsets.UTF_8));
        p.setContentId("<text_0>".getBytes(StandardCharsets.UTF_8));
        p.setData(text.getBytes(StandardCharsets.UTF_8));
        return p;
    }
}
