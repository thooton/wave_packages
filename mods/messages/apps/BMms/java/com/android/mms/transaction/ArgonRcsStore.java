package com.android.mms.transaction;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;

import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.PduBody;
import com.google.android.mms.pdu.PduPart;
import com.google.android.mms.pdu.PduPersister;
import com.google.android.mms.pdu.RetrieveConf;

import org.argon.rcs.RcsMessage;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * FEAT(rcs): incoming RCS messages are written to the normal telephony tables so the stock UI and
 * notifications show them unchanged:
 *  - 1:1 chat text: an inbox row in `sms` (the sender's normal thread);
 *  - group chat messages and files: a retrieved MMS (`pdu`/`part`/`addr`) in the thread of
 *    sender + other participants, i.e. the same thread a group MMS with those people uses.
 */
public final class ArgonRcsStore {
    private static final String TAG = "ArgonRcs";
    private static final long INLINE_MAX = 2 << 20;

    private ArgonRcsStore() {}

    public static void store(Context c, RcsMessage m, String self) throws Exception {
        if (m.from == null) return;
        if (m.group == null && !m.isFile()) {
            storeSms(c, m);
        } else {
            storeMms(c, m, self);
        }
    }

    private static void storeSms(Context c, RcsMessage m) {
        long tid = Telephony.Threads.getOrCreateThreadId(c, m.from);
        ContentValues v = new ContentValues();
        v.put("address", m.from);
        v.put("body", m.text != null ? m.text : "");
        v.put("date", System.currentTimeMillis());
        if (m.timestamp > 0) v.put("date_sent", m.timestamp);
        v.put("read", 0);
        v.put("seen", 0);
        v.put("type", 1);
        v.put("thread_id", tid);
        Uri u = c.getContentResolver().insert(Uri.parse("content://sms/inbox"), v);
        Log.i(TAG, "stored chat message " + u + " thread " + tid);
        MessagingNotification.blockingUpdateNewMessageIndicator(c, tid, false);
    }

    private static void storeMms(Context c, RcsMessage m, String self) throws Exception {
        RetrieveConf rc = new RetrieveConf();
        rc.setFrom(new EncodedStringValue(m.from));
        if (self != null) rc.addTo(new EncodedStringValue(self));
        Set<String> others = new LinkedHashSet<>();
        others.add(m.from);
        if (m.group != null) {
            for (String p : m.group.participants) {
                if (self != null && PhoneNumberUtils.compare(p, self)) continue;
                boolean dup = false;
                for (String o : others) if (PhoneNumberUtils.compare(o, p)) dup = true;
                if (dup) continue;
                others.add(p);
                rc.addCc(new EncodedStringValue(p));
            }
        }
        long now = System.currentTimeMillis();
        rc.setDate(now / 1000);
        rc.setMessageId(("rcs-" + m.id).getBytes(StandardCharsets.UTF_8));
        rc.setTransactionId(("rcs-" + m.id).getBytes(StandardCharsets.UTF_8));
        rc.setContentType("application/vnd.wap.multipart.related".getBytes(StandardCharsets.UTF_8));
        PduBody body = new PduBody();
        if (m.isFile()) {
            body.addPart(filePart(m));
        } else {
            body.addPart(textPart(m.text != null ? m.text : "", 0));
        }
        rc.setBody(body);
        Uri u = PduPersister.getPduPersister(c).persist(rc, Telephony.Mms.Inbox.CONTENT_URI, false, true, null);
        if (u == null) throw new IllegalStateException("persist returned null");
        long id = Long.parseLong(u.getLastPathSegment());
        long tid = Telephony.Threads.getOrCreateThreadId(c, others);
        ContentValues v = new ContentValues(4);
        v.put("thread_id", tid);
        v.put("msg_box", 1);
        v.put("read", 0);
        v.put("seen", 0);
        c.getContentResolver().update(Uri.parse("content://mms/" + id), v, null, null);
        if (m.file != null) m.file.delete();
        Log.i(TAG, "stored " + (m.group != null ? "group " : "") + (m.isFile() ? "file" : "text")
                + " as mms " + id + " thread " + tid + " (" + others.size() + " others)");
        MessagingNotification.blockingUpdateNewMessageIndicator(c, tid, false);
    }

    static PduPart textPart(String text, int n) {
        PduPart p = new PduPart();
        p.setCharset(106); // UTF-8
        p.setContentType("text/plain".getBytes(StandardCharsets.UTF_8));
        p.setContentLocation(("text_" + n + ".txt").getBytes(StandardCharsets.UTF_8));
        p.setContentId(("<text_" + n + ">").getBytes(StandardCharsets.UTF_8));
        p.setData(text.getBytes(StandardCharsets.UTF_8));
        return p;
    }

    private static PduPart filePart(RcsMessage m) throws Exception {
        String mime = TextUtils.isEmpty(m.contentType) ? "application/octet-stream" : m.contentType.toLowerCase();
        int semi = mime.indexOf(';');
        if (semi > 0) mime = mime.substring(0, semi).trim();
        String name = TextUtils.isEmpty(m.fileName) ? m.file.getName() : m.fileName;
        name = name.replaceAll("[\\\\/:*?\"<>|\\s]+", "_");
        PduPart p = new PduPart();
        p.setContentType(mime.getBytes(StandardCharsets.UTF_8));
        byte[] nb = name.getBytes(StandardCharsets.UTF_8);
        p.setContentLocation(nb);
        p.setName(nb);
        p.setFilename(nb);
        p.setContentId(("<" + name + ">").getBytes(StandardCharsets.UTF_8));
        if (mime.startsWith("text/") || mime.equals("application/smil") || m.file.length() <= INLINE_MAX) {
            if (mime.startsWith("text/")) p.setCharset(106);
            p.setData(readAll(m.file));
        } else {
            p.setDataUri(Uri.fromFile(m.file));
        }
        return p;
    }

    static byte[] readAll(File f) throws Exception {
        try (InputStream in = new FileInputStream(f)) {
            byte[] b = new byte[(int) f.length()];
            int n = 0, r;
            while (n < b.length && (r = in.read(b, n, b.length - n)) > 0) n += r;
            return b;
        }
    }
}
