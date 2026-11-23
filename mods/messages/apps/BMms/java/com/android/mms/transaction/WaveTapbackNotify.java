package com.android.mms.transaction;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.util.Log;

import com.android.mms.ui.ComposeMessageActivity;
import com.android.mms.wave.WaveIMessageDb;
import com.android.mms.wave.imsg.Body;

/**
 * FEAT(imessage): "Alex loved “see you at 5”", as iPhones notify when someone reacts to one of
 * your messages. Tapping it opens the conversation. Follows the stock "Notifications" setting.
 */
final class WaveTapbackNotify {
    private static final String TAG = "WaveIMsg";
    private static final int NOTIF_BASE = 0x57410000;

    private WaveTapbackNotify() {}

    static void reactedToMine(Context c, WaveIMessageDb.Msg msg, Body body) {
        try {
            if (!PreferenceManager.getDefaultSharedPreferences(c).getBoolean("pref_key_enable_notifications", true)) {
                return;
            }
            long tid = threadId(c, msg.uri);
            String who = WaveIMessageStore.displayName(c, body.sender);
            String what = verb(body.reaction, body.emoji);
            String quoted = msg.text == null || msg.text.isEmpty() ? "your message"
                    : "\u201C" + WaveIMessageStore.snippet(msg.text, 60) + "\u201D";
            Intent open = new Intent(c, ComposeMessageActivity.class);
            if (tid > 0) open.setData(Uri.parse("content://mms-sms/conversations/" + tid));
            open.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            int id = NOTIF_BASE + (msg.appleId.hashCode() & 0xFFFF);
            PendingIntent pi = PendingIntent.getActivity(c, id, open, PendingIntent.FLAG_UPDATE_CURRENT);
            int icon = c.getResources().getIdentifier("stat_notify_sms", "drawable", c.getPackageName());
            Notification n = new Notification.Builder(c)
                    .setSmallIcon(icon != 0 ? icon : android.R.drawable.stat_notify_chat)
                    .setContentTitle(who)
                    .setContentText(what + " " + quoted)
                    .setStyle(new Notification.BigTextStyle().bigText(what + " " + quoted))
                    .setContentIntent(pi)
                    .setAutoCancel(true)
                    .setDefaults(Notification.DEFAULT_ALL)
                    .setCategory(Notification.CATEGORY_MESSAGE)
                    .setWhen(System.currentTimeMillis())
                    .build();
            ((NotificationManager) c.getSystemService(Context.NOTIFICATION_SERVICE)).notify(TAG, id, n);
        } catch (Throwable t) {
            Log.w(TAG, "tapback notification", t);
        }
    }

    private static String verb(int kind, String emoji) {
        switch (kind) {
            case Body.REACT_HEART: return "Loved";
            case Body.REACT_LIKE: return "Liked";
            case Body.REACT_DISLIKE: return "Disliked";
            case Body.REACT_LAUGH: return "Laughed at";
            case Body.REACT_EMPHASIZE: return "Emphasized";
            case Body.REACT_QUESTION: return "Questioned";
            case Body.REACT_STICKER: return "Put a sticker on";
            default: return "Reacted " + (emoji == null ? "" : emoji) + " to";
        }
    }

    private static long threadId(Context c, Uri uri) {
        try {
            Cursor cur = c.getContentResolver().query(uri, new String[]{"thread_id"}, null, null, null);
            if (cur == null) return -1;
            try {
                return cur.moveToFirst() ? cur.getLong(0) : -1;
            } finally {
                cur.close();
            }
        } catch (Throwable t) {
            return -1;
        }
    }
}
