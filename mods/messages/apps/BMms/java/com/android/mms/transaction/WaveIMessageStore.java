package com.android.mms.transaction;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.wave.WaveIMessageConfig;
import com.android.mms.wave.WaveIMessageDb;
import com.android.mms.wave.WaveIMessageHost;
import com.android.mms.wave.imsg.Body;
import com.android.mms.wave.imsg.MediaClient;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.PduBody;
import com.google.android.mms.pdu.PduPart;
import com.google.android.mms.pdu.PduPersister;
import com.google.android.mms.pdu.RetrieveConf;
import com.google.android.mms.pdu.SendReq;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * FEAT(imessage): Stores incoming iMessages (and self-sent sync messages from other Apple devices)
 * into the stock Android telephony database so the stock Messages UI, search, notifications, and
 * SonimLauncher Missed Events all display them seamlessly.
 *
 * Text-only 1:1 messages become SMS rows; anything with media, and every group message, becomes
 * an MMS whose parts hold the server's screen-size previews. Tapbacks, edits, unsends and group
 * changes are applied to the stored rows (see {@link WaveIMessageDb}).
 */
public final class WaveIMessageStore {
    private static final String TAG = "WaveIMsg";
    /** Keep retrying a failed attachment download this long before storing a placeholder. */
    private static final long MEDIA_RETRY_WINDOW_MS = 6L * 3600L * 1000L;
    private static final String EDITED = " (edited)";
    /** What unsent messages were replaced with before 1.6.0 (old rows still have it). */
    public static final String UNSENT = "This message was unsent";
    /**
     * Last line of an unsent message's stored body: the message itself stays (text, media,
     * tapbacks), like the user asked, and this marks it until the UI draws its own small label
     * from WaveIMessageDb.FLAG_UNSENT (WaveIMessageDb.Info.text never contains it).
     */
    public static final String UNSENT_NOTE = "Unsent";

    private WaveIMessageStore() {}

    /** The body can't be stored yet (attachment download failed); keep it queued. */
    public static final class RetryLater extends Exception {
        public RetryLater(String m) {
            super(m);
        }
    }

    private static final class Media {
        final String mediaId;
        final String mime;
        final String name;
        final byte[] data;

        Media(String mediaId, String mime, String name, byte[] data) {
            this.mediaId = mediaId;
            this.mime = mime;
            this.name = name;
            this.data = data;
        }
    }

    /** Where a conversation lives on the phone. */
    private static final class Conv {
        final List<String> targets = new ArrayList<String>();
        final Set<String> addrs = new LinkedHashSet<String>();
    }

    static void handle(Context c, WaveIMessageHost host, Body body, long ageMs) throws Exception {
        WaveIMessageConfig cfg = host.config();
        switch (body.kind) {
            case Body.KIND_INCOMING_MESSAGE:
                storeIncoming(c, host, cfg, body, ageMs);
                break;
            case Body.KIND_REACTION:
                applyReaction(c, cfg, body);
                break;
            case Body.KIND_EDIT:
                applyEdit(c, body);
                break;
            case Body.KIND_UNSEND:
                applyUnsend(c, body);
                break;
            case Body.KIND_GROUP_EVENT:
                storeGroupEvent(c, cfg, body);
                break;
            default:
                break;
        }
    }

    // -----------------------------------------------------------------------------------------
    // Messages

    private static void storeIncoming(Context c, WaveIMessageHost host, WaveIMessageConfig cfg, Body body,
                                      long ageMs) throws Exception {
        if (cfg.isAppleMsgIdSeen(body.appleMsgId)) {
            Log.d(TAG, "Skipping duplicate/already-sent iMessage " + body.appleMsgId);
            return;
        }
        List<String> myHandles = cfg.getHandles();
        String senderRaw = body.sender != null ? body.sender : "";
        boolean selfSent = WaveIMessageConfig.isOwnHandle(senderRaw, myHandles);
        Conv conv = conversation(c, cfg, senderRaw, body.participants, selfSent);
        if (conv.addrs.isEmpty()) {
            Log.w(TAG, "Ignoring incoming iMessage with no usable address: " + body.appleMsgId);
            return;
        }

        // Persist sender_guid for replies in this conversation.
        if (!TextUtils.isEmpty(body.senderGuid) && !conv.targets.isEmpty()) {
            cfg.setSenderGuid(WaveIMessageConfig.conversationKeyForTargets(conv.targets), body.senderGuid);
        }

        WaveIMessageDb db = WaveIMessageDb.get(c);
        String text = body.text != null ? body.text : "";
        String shown = withReplyQuote(db, body.replyTo, text);

        List<Media> media = new ArrayList<Media>();
        StringBuilder missing = new StringBuilder();
        if (!body.attachments.isEmpty()) {
            // On RetryLater the previews already fetched stay in the cache for the next attempt.
            fetchMedia(c, host, body, ageMs, media, missing);
            deleteFetched(c, body);
        }
        if (missing.length() > 0) {
            shown = shown.isEmpty() ? missing.toString() : shown + "\n" + missing;
        }

        Uri uri;
        if (media.isEmpty() && conv.addrs.size() == 1) {
            uri = storeOneToOneSms(c, conv.addrs.iterator().next(), shown, body.timestampMs, selfSent, true);
        } else {
            String fromAddr = WaveIMessageConfig.stripHandlePrefix(senderRaw);
            uri = storeMms(c, fromAddr, selfAddr(cfg), conv.addrs, shown, body.appleMsgId, selfSent, media, true);
        }
        db.recordMessage(body.appleMsgId, uri, text, selfSent ? WaveIMessageDb.ME : senderRaw, conv.targets,
                body.senderGuid);
        // Files (PDFs, zips, ...) aren't stored on the phone: "Download file" fetches the original.
        for (Body.InAttachment a : body.attachments) {
            if (a.kind == Body.ATTACH_FILE && !TextUtils.isEmpty(a.mediaId)) {
                db.recordFile(uri, a.mediaId, a.name);
            }
        }
        db.setReplyTo(body.appleMsgId, body.replyTo);
        cfg.markAppleMsgIdSeen(body.appleMsgId);
    }

    /** Downloads the previews of {@code body}'s attachments; failures become text in {@code missing}. */
    private static void fetchMedia(Context c, WaveIMessageHost host, Body body, long ageMs, List<Media> out,
                                   StringBuilder missing) throws RetryLater {
        MediaClient mc = host.mediaClient();
        if (mc == null) {
            fetchMedia(c, (MediaClient) null, body, ageMs, out, missing);
            return;
        }
        // One media connection for all of this message's attachments.
        mc.keepOpen();
        try {
            fetchMedia(c, mc, body, ageMs, out, missing);
        } finally {
            mc.close();
        }
    }

    private static void fetchMedia(Context c, MediaClient mc, Body body, long ageMs, List<Media> out,
                                   StringBuilder missing) throws RetryLater {
        File dir = new File(c.getCacheDir(), "imsg-media");
        dir.mkdirs();
        for (Body.InAttachment a : body.attachments) {
            if (a.kind == Body.ATTACH_FILE) {
                appendLine(missing, placeholder(a, false));
                continue;
            }
            if (mc == null) {
                if (ageMs < MEDIA_RETRY_WINDOW_MS) throw new RetryLater("not connected for media");
                appendLine(missing, placeholder(a, true));
                continue;
            }
            File f = new File(dir, safeName(a.mediaId));
            File meta = new File(dir, safeName(a.mediaId) + ".meta");
            try {
                // Fetched by an earlier attempt of this message that then waited for another
                // attachment: don't download it again.
                if (f.exists() && meta.exists()) {
                    String[] mn = new String(readAll(meta), "UTF-8").split("\n", 2);
                    out.add(new Media(a.mediaId, mn[0], mn.length > 1 ? mn[1] : null, readAll(f)));
                    Log.i(TAG, "reusing fetched " + a.mediaId);
                    continue;
                }
                MediaClient.Result r = mc.download(a.mediaId, false, f, null);
                out.add(new Media(a.mediaId, r.mime, r.name, readAll(r.file)));
                writeMeta(meta, r.mime, r.name);
                Log.i(TAG, "fetched " + a.mediaId + " " + r.mime + " " + r.length + " bytes");
            } catch (MediaClient.ServerError e) {
                Log.w(TAG, "attachment " + a.mediaId + " unavailable: " + e.getMessage());
                appendLine(missing, placeholder(a, true));
            } catch (IOException e) {
                if (ageMs < MEDIA_RETRY_WINDOW_MS) throw new RetryLater("download " + a.mediaId + ": " + e);
                appendLine(missing, placeholder(a, true));
            }
        }
    }

    private static void writeMeta(File meta, String mime, String name) {
        try {
            FileOutputStream o = new FileOutputStream(meta);
            try {
                o.write(((mime == null ? "" : mime) + "\n" + (name == null ? "" : name)).getBytes("UTF-8"));
            } finally {
                o.close();
            }
        } catch (IOException e) {
            meta.delete();
        }
    }

    /** Drops the cached previews of {@code body} once it is stored. */
    private static void deleteFetched(Context c, Body body) {
        File dir = new File(c.getCacheDir(), "imsg-media");
        for (Body.InAttachment a : body.attachments) {
            if (a.mediaId == null) continue;
            new File(dir, safeName(a.mediaId)).delete();
            new File(dir, safeName(a.mediaId) + ".meta").delete();
        }
    }

    static String placeholder(Body.InAttachment a, boolean failed) {
        String what;
        switch (a.kind) {
            case Body.ATTACH_IMAGE: what = "Photo"; break;
            case Body.ATTACH_STICKER: what = "Sticker"; break;
            case Body.ATTACH_VIDEO: what = "Video"; break;
            case Body.ATTACH_VOICE: what = "Voice message"; break;
            case Body.ATTACH_AUDIO: what = "Audio: " + a.name; break;
            case Body.ATTACH_VCARD: what = "Contact: " + a.name; break;
            default: what = "File: " + a.name + (a.size > 0 ? ", " + humanSize(a.size) : ""); break;
        }
        return "[" + what + (failed ? " (couldn't download)" : "") + "]";
    }

    /** "850 bytes", "150 KB", "3.4 MB", "1.2 GB", like the server's placeholders. */
    static String humanSize(long n) {
        if (n < 1000) return n + " bytes";
        if (n < 1000000) return (n / 1000) + " KB";
        if (n < 1000000000L) return String.format(java.util.Locale.ROOT, "%.1f MB", n / 1e6);
        return String.format(java.util.Locale.ROOT, "%.1f GB", n / 1e9);
    }

    private static String withReplyQuote(WaveIMessageDb db, String replyTo, String text) {
        if (TextUtils.isEmpty(replyTo)) return text;
        WaveIMessageDb.Msg orig = db.byAppleId(replyTo);
        if (orig == null || TextUtils.isEmpty(orig.text)) return text;
        return "\u21A9 \u201C" + snippet(orig.text, 40) + "\u201D\n" + text;
    }

    public static String snippet(String s, int max) {
        String one = s.replace('\n', ' ').trim();
        return one.length() <= max ? one : one.substring(0, max - 1).trim() + "\u2026";
    }

    private static Conv conversation(Context c, WaveIMessageConfig cfg, String senderRaw, List<String> participants,
                                     boolean selfSent) {
        List<String> myHandles = cfg.getHandles();
        Conv conv = new Conv();
        if (!selfSent && !TextUtils.isEmpty(senderRaw)) {
            addParticipant(c, cfg, senderRaw, myHandles, conv.targets, conv.addrs);
        }
        for (String p : participants) {
            addParticipant(c, cfg, p, myHandles, conv.targets, conv.addrs);
        }
        if (conv.addrs.isEmpty()) {
            // Edge case: message to self or missing participants; fall back to sender.
            String stripped = WaveIMessageConfig.stripHandlePrefix(senderRaw);
            if (!TextUtils.isEmpty(stripped)) conv.addrs.add(stripped);
        }
        return conv;
    }

    private static String selfAddr(WaveIMessageConfig cfg) {
        return cfg.getPreferredHandle() != null ? WaveIMessageConfig.stripHandlePrefix(cfg.getPreferredHandle()) : null;
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
            if (sameAddress(existing, addr)) return;
        }
        outAddrs.add(addr);
    }

    private static boolean sameAddress(String a, String b) {
        if (a.equalsIgnoreCase(b)) return true;
        return a.indexOf('@') < 0 && b.indexOf('@') < 0 && PhoneNumberUtils.compare(a, b);
    }

    private static boolean containsIgnoreCase(List<String> list, String item) {
        for (String s : list) {
            if (s.equalsIgnoreCase(item)) return true;
        }
        return false;
    }

    private static Uri storeOneToOneSms(Context c, String address, String text, long timestampMs, boolean selfSent,
                                        boolean notify) {
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
            return u;
        }
        v.put("type", 1 /* INBOX */);
        v.put("read", notify ? 0 : 1);
        v.put("seen", notify ? 0 : 1);
        v.put("thread_id", tid);
        Uri u = c.getContentResolver().insert(Uri.parse("content://sms/inbox"), v);
        Log.i(TAG, "Stored incoming 1:1 iMessage " + u + " thread " + tid);
        if (notify) MessagingNotification.blockingUpdateNewMessageIndicator(c, tid, false);
        return u;
    }

    /**
     * Stores an MMS in the conversation with {@code otherAddrs} (one address for a 1:1 chat).
     * {@code notify == false} stores it already read (conversation notices).
     */
    private static Uri storeMms(
            Context c,
            String fromAddr,
            String selfAddr,
            Set<String> otherAddrs,
            String text,
            String appleMsgId,
            boolean selfSent,
            List<Media> media,
            boolean notify
    ) throws Exception {
        PduBody body = new PduBody();
        List<String> locations = new ArrayList<String>();
        for (int i = 0; i < media.size(); i++) {
            Media m = media.get(i);
            String loc = "imsg" + i + "_" + safeName(m.name);
            locations.add(loc);
            body.addPart(mediaPart(m, loc, i));
        }
        if (!TextUtils.isEmpty(text) || media.isEmpty()) {
            body.addPart(textPart(text == null ? "" : text));
        }
        long nowSec = System.currentTimeMillis() / 1000L;
        long tid = Telephony.Threads.getOrCreateThreadId(c, otherAddrs);
        Uri u;

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
            u = PduPersister.getPduPersister(c).persist(sr, Telephony.Mms.Sent.CONTENT_URI, false, true, null);
            if (u == null) throw new IllegalStateException("persist self MMS returned null");
            long id = Long.parseLong(u.getLastPathSegment());
            ContentValues v = new ContentValues(4);
            v.put("thread_id", tid);
            v.put("msg_box", 2);
            v.put("read", 1);
            v.put("seen", 1);
            c.getContentResolver().update(Uri.parse("content://mms/" + id), v, null, null);
            Log.i(TAG, "Stored self-sent iMessage as mms " + id + " thread " + tid);
        } else {
            RetrieveConf rc = new RetrieveConf();
            if (!TextUtils.isEmpty(fromAddr)) {
                rc.setFrom(new EncodedStringValue(fromAddr));
            }
            if (!TextUtils.isEmpty(selfAddr)) {
                rc.addTo(new EncodedStringValue(selfAddr));
            }
            for (String p : otherAddrs) {
                if (!TextUtils.isEmpty(fromAddr) && sameAddress(p, fromAddr)) continue;
                rc.addCc(new EncodedStringValue(p));
            }
            rc.setDate(nowSec);
            byte[] mid = ("imsg-" + (appleMsgId == null ? "" : appleMsgId)).getBytes(StandardCharsets.UTF_8);
            rc.setMessageId(mid);
            rc.setTransactionId(mid);
            rc.setContentType("application/vnd.wap.multipart.related".getBytes(StandardCharsets.UTF_8));
            rc.setBody(body);
            u = PduPersister.getPduPersister(c).persist(rc, Telephony.Mms.Inbox.CONTENT_URI, false, true, null);
            if (u == null) throw new IllegalStateException("persist MMS returned null");
            long id = Long.parseLong(u.getLastPathSegment());
            ContentValues v = new ContentValues(4);
            v.put("thread_id", tid);
            v.put("msg_box", 1);
            v.put("read", notify ? 0 : 1);
            v.put("seen", notify ? 0 : 1);
            c.getContentResolver().update(Uri.parse("content://mms/" + id), v, null, null);
            Log.i(TAG, "Stored incoming iMessage as mms " + id + " thread " + tid + " (" + media.size() + " media)");
            if (notify) MessagingNotification.blockingUpdateNewMessageIndicator(c, tid, false);
        }
        Uri msgUri = Uri.parse("content://mms/" + u.getLastPathSegment());
        if (!media.isEmpty()) recordMediaParts(c, msgUri, media, locations);
        return msgUri;
    }

    /** Remembers which server attachment each stored part came from (for "Save attachment"). */
    private static void recordMediaParts(Context c, Uri msgUri, List<Media> media, List<String> locations) {
        WaveIMessageDb db = WaveIMessageDb.get(c);
        Cursor cur = c.getContentResolver().query(Uri.parse(msgUri + "/part"), new String[]{"_id", "cl"},
                null, null, null);
        if (cur == null) return;
        try {
            while (cur.moveToNext()) {
                int i = locations.indexOf(cur.getString(1));
                if (i < 0) continue;
                Media m = media.get(i);
                db.recordMedia(Uri.parse("content://mms/part/" + cur.getLong(0)), msgUri, m.mediaId, m.name);
            }
        } finally {
            cur.close();
        }
    }

    private static PduPart mediaPart(Media m, String location, int i) {
        PduPart p = new PduPart();
        p.setContentType(m.mime.getBytes(StandardCharsets.UTF_8));
        p.setContentLocation(location.getBytes(StandardCharsets.UTF_8));
        p.setContentId(("<imsg" + i + ">").getBytes(StandardCharsets.UTF_8));
        p.setName(m.name.getBytes(StandardCharsets.UTF_8));
        p.setFilename(m.name.getBytes(StandardCharsets.UTF_8));
        p.setData(m.data);
        return p;
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

    // -----------------------------------------------------------------------------------------
    // Tapbacks, edits, unsends

    private static void applyReaction(Context c, WaveIMessageConfig cfg, Body body) {
        WaveIMessageDb db = WaveIMessageDb.get(c);
        boolean mine = WaveIMessageConfig.isOwnHandle(body.sender, cfg.getHandles());
        String who = mine ? WaveIMessageDb.ME : normalizedSender(c, body.sender);
        db.setReaction(body.targetId, who, body.reaction, body.emoji, body.enable);
        WaveIMessageDb.Msg m = db.byAppleId(body.targetId);
        Log.i(TAG, "tapback " + body.reaction + (body.enable ? " from " : " removed by ") + who + " on "
                + body.targetId + (m == null ? " (message not on this phone)" : " " + m.uri));
        if (m != null) {
            refresh(c);
            if (body.enable && !mine && WaveIMessageDb.ME.equals(m.sender)) {
                WaveTapbackNotify.reactedToMine(c, m, body);
            }
        }
    }

    static String normalizedSender(Context c, String handle) {
        String t = WaveIMessageConfig.toIMessageTarget(c, handle);
        return t != null ? t : (handle == null ? "" : handle);
    }

    private static void applyEdit(Context c, Body body) {
        applyEdit(c, body.targetId, body.text, body.timestampMs);
    }

    /** Shows {@code targetId} as edited to {@code text} (incoming edits, and our own once sent). */
    static void applyEdit(Context c, String targetId, String newText, long timestampMs) {
        WaveIMessageDb db = WaveIMessageDb.get(c);
        WaveIMessageDb.Msg m = db.byAppleId(targetId);
        if (m == null) {
            Log.i(TAG, "edit for unknown message " + targetId);
            return;
        }
        String text = newText == null ? "" : newText;
        WaveIMessageDb.Info info = db.infoForUri(m.uri);
        boolean unsent = info != null && info.unsent();
        setText(c, m.uri, replyQuoteOf(c, m.uri) + text + EDITED + (unsent ? "\n" + UNSENT_NOTE : ""), false);
        // Keeps the replaced text: WaveIMessageDb.editHistory lists every version.
        db.markEdited(targetId, text, timestampMs > 0 ? timestampMs : System.currentTimeMillis());
        com.android.mms.ui.WaveTapbacks.notifyUi(c);
    }

    private static void applyUnsend(Context c, Body body) {
        applyUnsend(c, body.targetId);
    }

    /** Shows {@code targetId} as unsent (incoming unsends, and our own once sent). */
    static void applyUnsend(Context c, String targetId) {
        WaveIMessageDb db = WaveIMessageDb.get(c);
        WaveIMessageDb.Msg m = db.byAppleId(targetId);
        if (m == null) {
            Log.i(TAG, "unsend for unknown message " + targetId);
            return;
        }
        WaveIMessageDb.Info info = db.infoForUri(m.uri);
        if (info != null && info.unsent()) return; // already applied (re-delivered)
        // Keep the message (text, media, tapbacks) and add the note under it.
        boolean edited = info != null && info.edited();
        String shown = replyQuoteOf(c, m.uri) + (m.text == null ? "" : m.text) + (edited ? EDITED : "");
        setText(c, m.uri, shown.isEmpty() ? UNSENT_NOTE : shown + "\n" + UNSENT_NOTE, false);
        db.markUnsent(targetId);
        com.android.mms.ui.WaveTapbacks.notifyUi(c);
    }

    /** The "↩ “...”" line a stored inline reply starts with (kept when it is edited), or "". */
    private static String replyQuoteOf(Context c, Uri uri) {
        String current = null;
        try {
            if ("sms".equals(uri.getAuthority())) {
                Cursor cur = c.getContentResolver().query(uri, new String[]{"body"}, null, null, null);
                if (cur != null) {
                    try {
                        if (cur.moveToFirst()) current = cur.getString(0);
                    } finally {
                        cur.close();
                    }
                }
            } else {
                Cursor cur = c.getContentResolver().query(Uri.parse(uri + "/part"), new String[]{"ct", "text"},
                        null, null, null);
                if (cur != null) {
                    try {
                        while (cur.moveToNext()) {
                            if ("text/plain".equalsIgnoreCase(cur.getString(0))) {
                                current = cur.getString(1);
                                break;
                            }
                        }
                    } finally {
                        cur.close();
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        if (current == null || !current.startsWith("\u21A9 \u201C")) return "";
        int nl = current.indexOf('\n');
        return nl > 0 ? current.substring(0, nl + 1) : "";
    }

    /** Replaces the text of a stored SMS/MMS; {@code dropMedia} also deletes its attachments. */
    private static void setText(Context c, Uri uri, String text, boolean dropMedia) {
        if ("sms".equals(uri.getAuthority())) {
            ContentValues v = new ContentValues(1);
            v.put("body", text);
            c.getContentResolver().update(uri, v, null, null);
            return;
        }
        Uri parts = Uri.parse(uri + "/part");
        Cursor cur = c.getContentResolver().query(parts, new String[]{"_id", "ct"}, null, null, null);
        long textPart = -1;
        if (cur != null) {
            try {
                while (cur.moveToNext()) {
                    String ct = cur.getString(1) == null ? "" : cur.getString(1).toLowerCase(Locale.ROOT);
                    long id = cur.getLong(0);
                    if ("text/plain".equals(ct)) {
                        if (textPart < 0) textPart = id;
                    } else if (dropMedia && !"application/smil".equals(ct)) {
                        c.getContentResolver().delete(Uri.parse("content://mms/part/" + id), null, null);
                    }
                }
            } finally {
                cur.close();
            }
        }
        ContentValues v = new ContentValues(3);
        v.put("text", text);
        if (textPart >= 0) {
            c.getContentResolver().update(Uri.parse("content://mms/part/" + textPart), v, null, null);
        } else {
            v.put("ct", "text/plain");
            v.put("chset", 106);
            v.put("cl", "text_0.txt");
            c.getContentResolver().insert(parts, v);
        }
        // Thread snippets and the conversation list read the message again.
        c.getContentResolver().notifyChange(uri, null);
    }

    /** Makes open conversations re-read their messages (tapback badges, edits). */
    static void refresh(Context c) {
        com.android.mms.ui.WaveTapbacks.changed(c);
    }

    // -----------------------------------------------------------------------------------------
    // Group renames, member changes, photo changes

    private static void storeGroupEvent(Context c, WaveIMessageConfig cfg, Body body) throws Exception {
        if (cfg.isAppleMsgIdSeen(body.appleMsgId)) return;
        List<String> myHandles = cfg.getHandles();
        boolean selfSent = WaveIMessageConfig.isOwnHandle(body.sender, myHandles);
        String who = selfSent ? "You" : displayName(c, body.sender);
        Conv before = conversation(c, cfg, body.sender, body.participants, selfSent);
        String notice;
        Conv after = null;
        switch (body.event) {
            case Body.GROUP_RENAMED:
                notice = TextUtils.isEmpty(body.name)
                        ? who + " removed the name from the conversation."
                        : who + " named the conversation \u201C" + body.name + "\u201D.";
                break;
            case Body.GROUP_ICON:
                notice = TextUtils.isEmpty(body.name)
                        ? who + " removed the group photo."
                        : who + " changed the group photo.";
                break;
            case Body.GROUP_PARTICIPANTS: {
                notice = membershipNotice(c, myHandles, who, body);
                boolean stillIn = false;
                for (String p : body.newParticipants) {
                    if (WaveIMessageConfig.isOwnHandle(p, myHandles)) stillIn = true;
                }
                if (stillIn) {
                    after = conversation(c, cfg, "", body.newParticipants, true);
                    if (!TextUtils.isEmpty(body.senderGuid) && !after.targets.isEmpty()) {
                        cfg.setSenderGuid(WaveIMessageConfig.conversationKeyForTargets(after.targets), body.senderGuid);
                    }
                }
                break;
            }
            default:
                return;
        }
        String fromAddr = WaveIMessageConfig.stripHandlePrefix(body.sender);
        if (!before.addrs.isEmpty()) {
            String text = notice;
            if (after != null && !after.addrs.isEmpty() && !sameSet(before.addrs, after.addrs)) {
                text = notice + " New messages appear in the conversation with "
                        + (after.addrs.size() == 1 ? "1 other person." : after.addrs.size() + " other people.");
            }
            Uri u = storeMms(c, fromAddr, selfAddr(cfg), before.addrs, text, body.appleMsgId, selfSent,
                    new ArrayList<Media>(), false);
            WaveIMessageDb.get(c).recordNotice(body.appleMsgId, u, text);
        }
        if (after != null && !after.addrs.isEmpty() && !sameSet(before.addrs, after.addrs)) {
            Uri u = storeMms(c, fromAddr, selfAddr(cfg), after.addrs, notice, body.appleMsgId + "-new", selfSent,
                    new ArrayList<Media>(), false);
            WaveIMessageDb.get(c).recordNotice(body.appleMsgId + "-new", u, notice);
        }
        cfg.markAppleMsgIdSeen(body.appleMsgId);
        Log.i(TAG, "group event " + body.event + ": " + notice);
    }

    private static String membershipNotice(Context c, List<String> myHandles, String who, Body body) {
        List<String> added = new ArrayList<String>();
        List<String> removed = new ArrayList<String>();
        for (String p : body.newParticipants) {
            if (!containsHandle(body.participants, p)) added.add(p);
        }
        for (String p : body.participants) {
            if (!containsHandle(body.newParticipants, p)) removed.add(p);
        }
        boolean senderLeft = removed.size() == 1 && sameHandle(removed.get(0), body.sender) && added.isEmpty();
        if (senderLeft) return who + " left the conversation.";
        StringBuilder sb = new StringBuilder();
        if (!added.isEmpty()) sb.append(who).append(" added ").append(names(c, myHandles, added)).append('.');
        if (!removed.isEmpty()) {
            if (sb.length() > 0) sb.append(' ');
            sb.append(who).append(" removed ").append(names(c, myHandles, removed)).append('.');
        }
        if (sb.length() == 0) sb.append(who).append(" changed the people in the conversation.");
        return sb.toString();
    }

    private static String names(Context c, List<String> myHandles, List<String> handles) {
        List<String> out = new ArrayList<String>();
        for (String h : handles) {
            out.add(WaveIMessageConfig.isOwnHandle(h, myHandles) ? "you" : displayName(c, h));
        }
        if (out.size() <= 1) return TextUtils.join("", out);
        return TextUtils.join(", ", out.subList(0, out.size() - 1)) + " and " + out.get(out.size() - 1);
    }

    private static boolean containsHandle(List<String> list, String h) {
        for (String s : list) {
            if (sameHandle(s, h)) return true;
        }
        return false;
    }

    private static boolean sameHandle(String a, String b) {
        return sameAddress(WaveIMessageConfig.stripHandlePrefix(a), WaveIMessageConfig.stripHandlePrefix(b));
    }

    private static boolean sameSet(Set<String> a, Set<String> b) {
        if (a.size() != b.size()) return false;
        outer:
        for (String x : a) {
            for (String y : b) {
                if (sameAddress(x, y)) continue outer;
            }
            return false;
        }
        return true;
    }

    private static final class NameCacheEntry {
        final String name;
        final long ts;

        NameCacheEntry(String name, long ts) {
            this.name = name;
            this.ts = ts;
        }
    }

    private static final long NAME_CACHE_TTL_MS = 60_000L;
    private static final android.util.LruCache<String, NameCacheEntry> DISPLAY_NAME_CACHE =
            new android.util.LruCache<String, NameCacheEntry>(128);

    /** The contact's name for a handle, else the number or address (TTL-cached). */
    public static String displayName(Context c, String handle) {
        String addr = WaveIMessageConfig.stripHandlePrefix(handle);
        if (TextUtils.isEmpty(addr)) return "Someone";
        long now = android.os.SystemClock.uptimeMillis();
        NameCacheEntry cached = DISPLAY_NAME_CACHE.get(addr);
        if (cached != null && (now - cached.ts) < NAME_CACHE_TTL_MS) {
            return cached.name;
        }
        Uri lookup = addr.indexOf('@') >= 0
                ? Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(addr))
                : Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(addr));
        String col = addr.indexOf('@') >= 0
                ? ContactsContract.Contacts.DISPLAY_NAME : ContactsContract.PhoneLookup.DISPLAY_NAME;
        String resolved = addr;
        try {
            Cursor cur = c.getContentResolver().query(lookup, new String[]{col}, null, null, null);
            if (cur != null) {
                try {
                    if (cur.moveToFirst() && !TextUtils.isEmpty(cur.getString(0))) {
                        resolved = cur.getString(0);
                    }
                } finally {
                    cur.close();
                }
            }
        } catch (Throwable ignored) {
        }
        DISPLAY_NAME_CACHE.put(addr, new NameCacheEntry(resolved, now));
        return resolved;
    }

    // -----------------------------------------------------------------------------------------

    private static void appendLine(StringBuilder sb, String line) {
        if (sb.length() > 0) sb.append('\n');
        sb.append(line);
    }

    static String safeName(String s) {
        if (s == null || s.isEmpty()) return "attachment";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length() && sb.length() < 60; i++) {
            char ch = s.charAt(i);
            sb.append(Character.isLetterOrDigit(ch) || ch == '.' || ch == '-' || ch == '_' ? ch : '_');
        }
        return sb.toString();
    }

    private static byte[] readAll(File f) throws IOException {
        FileInputStream in = new FileInputStream(f);
        try {
            return MediaClient.readAll(in);
        } finally {
            in.close();
        }
    }
}
