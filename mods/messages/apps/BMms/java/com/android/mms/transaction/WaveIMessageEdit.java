package com.android.mms.transaction;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.wave.WaveIMessageConfig;
import com.android.mms.wave.WaveIMessageDb;
import com.android.mms.wave.WaveIMessageHost;

import java.util.List;

/**
 * FEAT(imessage): editing and unsending our own iMessages, as iPhones allow: an edit within 15
 * minutes of sending (at most 5), an unsend within 2 minutes. For the UI: {@link #check} says
 * whether a message row may be edited or unsent (and for how long still); {@link #edit} and
 * {@link #unsend} send it and, once the server confirms, show it on the phone the way an edit or
 * unsend from the other side is shown (edit history kept, "Unsent" note under the message).
 */
public final class WaveIMessageEdit {
    private static final String TAG = "WaveIMsg";

    public static final long EDIT_WINDOW_MS = 15L * 60L * 1000L;
    public static final long UNSEND_WINDOW_MS = 2L * 60L * 1000L;
    public static final int MAX_EDITS = 5;
    private static final long SEND_TIMEOUT_MS = 30_000L;

    private WaveIMessageEdit() {}

    /** What may be done with a message row now. */
    public static final class Eligibility {
        public final boolean canEdit;
        public final boolean canUnsend;
        /** How much longer it may be edited / unsent (ms; 0 when not). */
        public final long editMsLeft;
        public final long unsendMsLeft;
        public final int editsLeft;
        /** The text now (without reply quote or markers), to start an edit from. */
        public final String currentText;
        /** Why neither is possible, for a message (null when one is). */
        public final String reason;

        Eligibility(boolean canEdit, boolean canUnsend, long editMsLeft, long unsendMsLeft, int editsLeft,
                    String currentText, String reason) {
            this.canEdit = canEdit;
            this.canUnsend = canUnsend;
            this.editMsLeft = editMsLeft;
            this.unsendMsLeft = unsendMsLeft;
            this.editsLeft = editsLeft;
            this.currentText = currentText;
            this.reason = reason;
        }
    }

    private static final Eligibility NOT_OURS = new Eligibility(false, false, 0L, 0L, 0, null,
            "Only your own iMessages can be edited or unsent");

    /** Cheap enough for a menu: two indexed lookups. Call off the main thread if you can. */
    public static Eligibility check(Context c, Uri uri) {
        WaveIMessageDb db = WaveIMessageDb.get(c);
        WaveIMessageDb.Msg m = db.byUri(uri);
        if (m == null || !WaveIMessageDb.ME.equals(m.sender) || TextUtils.isEmpty(m.appleId)) return NOT_OURS;
        WaveIMessageDb.Info info = db.infoForUri(uri);
        if (info != null && info.unsent()) {
            return new Eligibility(false, false, 0L, 0L, 0, m.text, "This message was unsent");
        }
        long sent = db.timeOf(m.appleId);
        long age = sent > 0L ? System.currentTimeMillis() - sent : Long.MAX_VALUE;
        List<WaveIMessageDb.Version> history = db.editHistory(m.appleId);
        int edits = history.isEmpty() ? 0 : history.size() - 1;
        int editsLeft = Math.max(0, MAX_EDITS - edits);
        long editLeft = Math.max(0L, EDIT_WINDOW_MS - age);
        long unsendLeft = Math.max(0L, UNSEND_WINDOW_MS - age);
        boolean hasText = !TextUtils.isEmpty(m.text);
        boolean canEdit = editLeft > 0L && editsLeft > 0 && hasText;
        boolean canUnsend = unsendLeft > 0L;
        String reason = null;
        if (!canEdit && !canUnsend) {
            reason = editsLeft == 0 ? "A message can be edited 5 times" : "Too late: edit within 15 minutes, unsend within 2";
        }
        return new Eligibility(canEdit, canUnsend, canEdit ? editLeft : 0L, unsendLeft, editsLeft, m.text, reason);
    }

    public interface Callback {
        /** On the main thread. {@code error} is null on success, else a message to show. */
        void done(String error);
    }

    /** Replaces the text of our message at {@code uri} with {@code newText}. */
    public static void edit(final Context context, final Uri uri, final String newText, final Callback cb) {
        final Context c = context.getApplicationContext();
        run(cb, new Op() {
            @Override
            public String run() throws Exception {
                if (TextUtils.isEmpty(newText) || newText.trim().isEmpty()) {
                    return "An edit can't be empty (unsend it instead)";
                }
                Eligibility e = check(c, uri);
                if (!e.canEdit) return e.reason != null ? e.reason : "This message can't be edited any more";
                if (newText.equals(e.currentText)) return null; // nothing changed
                Target t = target(c, uri);
                if (t == null) return NOT_OURS.reason;
                WaveIMessageHost host = WaveIMessageHost.sending();
                if (host == null) return "iMessage isn't connected";
                String id = host.sendEdit(t.msg.targets, t.guid, t.msg.appleId, t.textPart, newText);
                Log.i(TAG, "edit of " + t.msg.appleId + " (" + uri + ") -> " + id);
                WaveIMessageHost.SendOutcome r = host.awaitSendResult(id, SEND_TIMEOUT_MS);
                if (!r.ok) return "Couldn't edit: " + r.error;
                WaveIMessageStore.applyEdit(c, t.msg.appleId, newText, System.currentTimeMillis());
                return null;
            }
        });
    }

    /** Takes back our message at {@code uri}; it stays on the phone, marked "Unsent". */
    public static void unsend(final Context context, final Uri uri, final Callback cb) {
        final Context c = context.getApplicationContext();
        run(cb, new Op() {
            @Override
            public String run() throws Exception {
                Eligibility e = check(c, uri);
                if (!e.canUnsend) return e.reason != null ? e.reason : "Too late: unsend within 2 minutes";
                Target t = target(c, uri);
                if (t == null) return NOT_OURS.reason;
                WaveIMessageHost host = WaveIMessageHost.sending();
                if (host == null) return "iMessage isn't connected";
                String id = host.sendUnsend(t.msg.targets, t.guid, t.msg.appleId, t.parts);
                Log.i(TAG, "unsend of " + t.msg.appleId + " (" + uri + ", " + t.parts + " parts) -> " + id);
                WaveIMessageHost.SendOutcome r = host.awaitSendResult(id, SEND_TIMEOUT_MS);
                if (!r.ok) return "Couldn't unsend: " + r.error;
                WaveIMessageStore.applyUnsend(c, t.msg.appleId);
                return null;
            }
        });
    }

    /** Who to send to and which part is which. */
    private static final class Target {
        WaveIMessageDb.Msg msg;
        String guid;
        /** Index of the text part: attachments come first. */
        int textPart;
        /** Attachments plus the text part. */
        int parts;
    }

    private static Target target(Context c, Uri uri) {
        WaveIMessageDb.Msg m = WaveIMessageDb.get(c).byUri(uri);
        if (m == null || !WaveIMessageDb.ME.equals(m.sender) || m.targets.isEmpty()) return null;
        Target t = new Target();
        t.msg = m;
        t.guid = !TextUtils.isEmpty(m.guid) ? m.guid
                : WaveIMessageHost.get(c).config().getSenderGuid(WaveIMessageConfig.conversationKeyForTargets(m.targets));
        int media = mediaParts(c, m.uri);
        t.textPart = media;
        t.parts = media + (TextUtils.isEmpty(m.text) ? 0 : 1);
        return t;
    }

    /** Attachment parts of an MMS row (not its text or SMIL); 0 for an SMS. */
    static int mediaParts(Context c, Uri uri) {
        if (uri == null || !"mms".equals(uri.getAuthority())) return 0;
        Cursor cur = c.getContentResolver().query(Uri.parse("content://mms/" + uri.getLastPathSegment() + "/part"),
                new String[]{"ct"}, null, null, null);
        if (cur == null) return 0;
        int n = 0;
        try {
            while (cur.moveToNext()) {
                String ct = cur.getString(0);
                if (ct != null && !"text/plain".equals(ct) && !"application/smil".equals(ct)) n++;
            }
        } finally {
            cur.close();
        }
        return n;
    }

    /**
     * Test hook, off unless {@code persist.wave.imsg.debug} is 1 (only shell/root can set it), and
     * only broadcasts holding DUMP (shell) reach it:
     *   adb shell am broadcast -a com.android.mms.wave.DEBUG_EDIT --es uri content://sms/N --es text "new"
     *   adb shell am broadcast -a com.android.mms.wave.DEBUG_UNSEND --es uri content://sms/N
     * The outcome goes to the log ("debug edit/unsend ...").
     */
    public static void registerDebugReceiver(Context context) {
        String on = null;
        try {
            on = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class)
                    .invoke(null, "persist.wave.imsg.debug");
        } catch (Throwable ignored) {
        }
        if (!"1".equals(on)) return;
        final Context c = context.getApplicationContext();
        android.content.IntentFilter f = new android.content.IntentFilter();
        f.addAction("com.android.mms.wave.DEBUG_EDIT");
        f.addAction("com.android.mms.wave.DEBUG_UNSEND");
        c.registerReceiver(new android.content.BroadcastReceiver() {
            @Override
            public void onReceive(Context ctx, android.content.Intent i) {
                final Uri uri = Uri.parse(String.valueOf(i.getStringExtra("uri")));
                final boolean isEdit = i.getAction().endsWith("EDIT");
                Eligibility e = check(c, uri);
                Log.i(TAG, "debug " + (isEdit ? "edit" : "unsend") + " " + uri + ": canEdit=" + e.canEdit
                        + " (" + e.editMsLeft / 1000L + "s, " + e.editsLeft + " left) canUnsend=" + e.canUnsend
                        + " (" + e.unsendMsLeft / 1000L + "s) reason=" + e.reason);
                Callback cb = new Callback() {
                    @Override
                    public void done(String error) {
                        Log.i(TAG, "debug " + (isEdit ? "edit" : "unsend") + " " + uri + " -> "
                                + (error == null ? "ok" : error));
                    }
                };
                if (isEdit) {
                    edit(c, uri, i.getStringExtra("text"), cb);
                } else {
                    unsend(c, uri, cb);
                }
            }
        }, f, "android.permission.DUMP", null);
        Log.i(TAG, "debug edit/unsend receiver registered");
    }

    private interface Op {
        /** Null on success, else the error to show. */
        String run() throws Exception;
    }

    private static void run(final Callback cb, final Op op) {
        final Handler main = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() {
            @Override
            public void run() {
                String err;
                try {
                    err = op.run();
                } catch (Throwable t) {
                    Log.w(TAG, "edit/unsend", t);
                    err = "Couldn't reach iMessage: " + t.getMessage();
                }
                final String e = err;
                if (cb != null) {
                    main.post(new Runnable() {
                        @Override
                        public void run() {
                            cb.done(e);
                        }
                    });
                }
            }
        }, "wave-imsg-edit").start();
    }
}
