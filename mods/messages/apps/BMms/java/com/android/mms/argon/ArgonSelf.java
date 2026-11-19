package com.android.mms.argon;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.MmsApp;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.GenericPdu;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * FEAT(self number): group MMS for SIMs that don't carry the phone's own number.
 *
 * Stock Messages only treats incoming MMS as group messages when TelephonyManager knows the
 * line-1 number, and the framework's PduPersister needs it to leave "me" out of the group.
 * Many SIMs have no MSISDN, and then every group MMS lands in the sender's 1:1 thread.
 *
 * Now, when the SIM has no number: the number is learned from incoming 1:1 MMS (a retrieved
 * MMS with exactly one To address and no Cc was addressed to me), MessageUtils.getLocalNumber
 * falls back to it (so group MMS switches on), and right after a retrieved MMS is stored it is
 * re-filed under sender + To + Cc minus our number. The dev property
 * {@code debug.argon.self_number} overrides the learned value (tests on a phone without SIM).
 */
public final class ArgonSelf {
    private static final String TAG = "ArgonSelf";
    private static final String PREF = "argon_self_number";
    private static final int TO = 0x97, CC = 0x82;

    private ArgonSelf() {}

    private static Context ctx() {
        return MmsApp.getApplication();
    }

    /** The SIM's own line-1 number as the framework sees it (may be empty). */
    private static String simNumber() {
        try {
            TelephonyManager tm = (TelephonyManager) ctx().getSystemService(Context.TELEPHONY_SERVICE);
            return tm.getLine1Number();
        } catch (Throwable t) {
            return null;
        }
    }

    /** Learned / overridden own number, or null. */
    public static String fallback() {
        String p = Argon.prop("debug.argon.self_number");
        if (!p.isEmpty()) return p;
        try {
            return PreferenceManager.getDefaultSharedPreferences(ctx()).getString(PREF, null);
        } catch (Throwable t) {
            return null;
        }
    }

    /** MessageUtils.getLocalNumber(int) hook. */
    public static String localNumber(String stock) {
        if (!TextUtils.isEmpty(stock)) return stock;
        String f = fallback();
        return f != null ? f : stock;
    }

    /** True when we (not the framework) must decide the thread of a retrieved MMS. */
    private static boolean refiling(boolean groupEnabled) {
        if (!groupEnabled) return false;
        if (!TextUtils.isEmpty(simNumber()) && Argon.prop("debug.argon.self_number").isEmpty()) {
            return false; // the framework knows our number and handles everything
        }
        return fallback() != null;
    }

    /**
     * NotificationTransaction / RetrieveTransaction hook, right before persisting a retrieve-conf.
     * Learns our number from 1:1 MMS and returns the createThreadId argument for persist: false
     * when afterPersist will choose the thread (so the framework doesn't create a wrong one).
     */
    public static boolean beforePersist(GenericPdu pdu, boolean groupEnabled) {
        try {
            if (pdu == null || pdu.getMessageType() != 132) return true;
            if (TextUtils.isEmpty(simNumber())) {
                EncodedStringValue[] to = values(pdu, TO), cc = values(pdu, CC);
                if (to != null && to.length == 1 && (cc == null || cc.length == 0)) {
                    learn(clean(to[0].getString()), pdu);
                }
            }
            return !refiling(groupEnabled);
        } catch (Throwable t) {
            Log.w(TAG, "beforePersist", t);
            return true;
        }
    }

    /**
     * Same call sites, right after persisting. When the framework couldn't tell which address is
     * ours, beforePersist made it store the message without a thread; file it under
     * sender + To + Cc minus our own number (sender alone for a 1:1 message). The PDU itself is
     * left intact. msg_box is rewritten (same value) because the provider's thread triggers only
     * recount the thread on UPDATE OF date/sub/msg_box.
     */
    public static void afterPersist(Uri msg, boolean groupEnabled) {
        if (msg == null) return;
        try {
            if (!refiling(groupEnabled)) return;
        } catch (Throwable t) {
            return;
        }
        Context c = ctx();
        ContentResolver cr = c.getContentResolver();
        msg = Uri.parse("content://mms/" + ContentUris.parseId(msg)); // persist gives mms/inbox/<id>
        String self = fallback();
        Set<String> recipients = new LinkedHashSet<>();
        String from = null;
        try {
            Cursor cur = cr.query(Uri.parse(msg + "/addr"), new String[] { "address", "type" },
                    "type IN (137,151,130)", null, null);
            if (cur != null) {
                try {
                    while (cur.moveToNext()) {
                        String a = clean(cur.getString(0));
                        if (TextUtils.isEmpty(a) || "insert-address-token".equals(a)) continue;
                        if (cur.getInt(1) == 137) from = a;
                        if (self != null && PhoneNumberUtils.compare(a, self)) continue;
                        boolean dup = false;
                        for (String r : recipients) if (PhoneNumberUtils.compare(r, a)) dup = true;
                        if (!dup) recipients.add(a);
                    }
                } finally {
                    cur.close();
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "afterPersist addr", t);
        }
        if (recipients.isEmpty()) recipients.add(from != null ? from : "Unknown");
        try {
            long tid = Telephony.Threads.getOrCreateThreadId(c, recipients);
            ContentValues v = new ContentValues(2);
            v.put("thread_id", tid);
            v.put("msg_box", 1);
            cr.update(msg, v, null, null);
            if (recipients.size() > 1) {
                Log.i(TAG, "filed MMS under its group thread (" + recipients.size() + " others)");
            }
        } catch (Throwable t) {
            Log.w(TAG, "afterPersist", t);
        }
    }

    private static void learn(String n, GenericPdu pdu) {
        if (TextUtils.isEmpty(n) || n.indexOf('@') >= 0 || !PhoneNumberUtils.isGlobalPhoneNumber(n)) return;
        EncodedStringValue from = pdu.getFrom();
        if (from != null && PhoneNumberUtils.compare(n, clean(from.getString()))) return;
        android.content.SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(ctx());
        if (n.equals(sp.getString(PREF, null))) return;
        sp.edit().putString(PREF, n).apply();
        Log.i(TAG, "learned own number from an incoming MMS");
    }

    static String clean(String a) {
        if (a == null) return null;
        int i = a.indexOf("/TYPE=");
        return (i >= 0 ? a.substring(0, i) : a).trim();
    }

    // ---- PduHeaders access (hidden framework API, reflection; fine on API 27) ----

    private static Object headers(GenericPdu pdu) throws Exception {
        Field f = GenericPdu.class.getDeclaredField("mPduHeaders");
        f.setAccessible(true);
        return f.get(pdu);
    }

    private static EncodedStringValue[] values(GenericPdu pdu, int field) throws Exception {
        Object h = headers(pdu);
        Method m = h.getClass().getDeclaredMethod("getEncodedStringValues", int.class);
        m.setAccessible(true);
        return (EncodedStringValue[]) m.invoke(h, field);
    }

}
