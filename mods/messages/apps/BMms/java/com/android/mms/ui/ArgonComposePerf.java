package com.android.mms.ui;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.android.mms.MmsApp;
import com.android.mms.data.Contact;
import com.android.mms.data.ContactList;
import com.android.mms.util.ArgonLaunch;
import com.android.mms.util.PduLoaderManager;

import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.regex.Matcher;

/**
 * PERF(contact updates): ComposeMessageActivity is a Contact.UpdateListener. Stock posts a full
 * refresh (title + MessageListAdapter.notifyDataSetChanged) for every contact the app looks up,
 * in any conversation. After a cold start the app looks up the contacts of every conversation,
 * so an open conversation got one refresh per contact (74 in a row on the test phone). Each
 * refresh drops every MessageItem, which cancels the MMS loads in flight, so MMS rows stayed
 * empty for seconds.
 *
 * Now updates are coalesced (one refresh posted at a time; the rest join it) and the refresh is
 * skipped when none of the updated contacts is a recipient of the open conversation.
 */
public final class ArgonComposePerf {
    private ArgonComposePerf() {}

    private static final class Pending {
        final ArrayList<Contact> contacts = new ArrayList<>();
        final long since = SystemClock.uptimeMillis();
    }

    private static final WeakHashMap<Object, Pending> PENDING = new WeakHashMap<>();
    /** A refresh not run after this long is presumed dropped: post a new one. */
    private static final long STALE_MS = 2000;

    /** onUpdate (any thread): true = post the stock refresh, false = an earlier one will cover it. */
    public static boolean queue(Object activity, Contact c) {
        synchronized (PENDING) {
            Pending p = PENDING.get(activity);
            if (p != null && SystemClock.uptimeMillis() - p.since < STALE_MS) {
                p.contacts.add(c);
                return false;
            }
            p = new Pending();
            p.contacts.add(c);
            PENDING.put(activity, p);
            return true;
        }
    }

    /** Message list query token (ComposeMessageActivity.MESSAGE_LIST_QUERY_TOKEN). */
    private static final int MESSAGE_LIST_QUERY_TOKEN = 9527;
    /** Newest MMS rows to start loading: a full screen and a bit. */
    private static final int PREFETCH = 10;

    /**
     * PERF(mms rows): BackgroundQueryHandler.onQueryComplete (main thread), before the cursor goes
     * to the adapter. Stock starts each MMS row's PDU load only when that row is inflated and
     * bound, one by one on the main thread; this starts the newest ones (the rows shown first)
     * right away so they load while the rows are built. Same loader and caches as the rows use,
     * so a row that binds later just picks up the result.
     */
    public static void prefetch(int token, Cursor c) {
        if (token != MESSAGE_LIST_QUERY_TOKEN) return;
        ArgonLaunch.mark("history_received");
        if (c == null || c.isClosed()) return;
        int pos = c.getPosition();
        try {
            int iType = c.getColumnIndex("transport_type");
            int iId = c.getColumnIndex("_id");
            int iMType = c.getColumnIndex("m_type");
            int iText = c.getColumnIndex("argon_text");
            int iFrom = c.getColumnIndex("argon_from");
            if (iType < 0 || iId < 0 || iMType < 0) return;
            PduLoaderManager loader = MmsApp.getApplication().getPduLoaderManager();
            if (loader == null) return;
            int count = c.getCount();
            for (int i = count - 1; i >= Math.max(0, count - PREFETCH); i--) {
                if (!c.moveToPosition(i)) break;
                if (!"mms".equals(c.getString(iType))) continue;
                int mType = c.getInt(iMType);
                if (ArgonTextMms.ready(c, iText, iFrom, mType)) continue;
                Uri uri = ContentUris.withAppendedId(Telephony.Mms.CONTENT_URI, c.getLong(iId));
                loader.getPdu(uri, mType != 130, null); // 130 = notification: no slideshow
            }
        } catch (RuntimeException e) {
            Log.w("Mms", "prefetch", e);
        } finally {
            c.moveToPosition(pos);
        }
    }

    /**
     * PERF(mms rows): MessageListAdapter's inflater. The rows' TextViews have autoLink="all", whose
     * street-address part (Linkify.MAP_ADDRESSES) goes through WebView.findAddress and so starts
     * the whole WebView (Chromium) on the main thread the first time, ~0.8 s on this phone.
     * Keep the same views and the stock web/e-mail/phone linking; supply street links ourselves.
     */
    public static LayoutInflater rowInflater(LayoutInflater base) {
        if (base == null) return null;
        try {
            LayoutInflater li = base.cloneInContext(base.getContext());
            if (li.getFactory() != null || li.getFactory2() != null) return base;
            li.setFactory2(new LayoutInflater.Factory2() {
                @Override public View onCreateView(View parent, String name, Context c, AttributeSet a) {
                    return "TextView".equals(name) ? new RowTextView(c, a) : null;
                }
                @Override public View onCreateView(String name, Context c, AttributeSet a) {
                    return onCreateView(null, name, c, a);
                }
            });
            return li;
        } catch (Throwable t) {
            Log.w("Mms", "rowInflater", t);
            return base;
        }
    }

    /** Replaces the framework's WebView-backed street detection for conversation rows only. */
    public static class RowTextView extends TextView {
        private boolean linkStreets;

        public RowTextView(Context c, AttributeSet a) {
            super(c, a);
        }

        @Override
        public void setText(CharSequence text, BufferType type) {
            int mask = getAutoLinkMask(); // Also called by the TextView constructor.
            if ((mask & Linkify.MAP_ADDRESSES) != 0) {
                linkStreets = true;
                setAutoLinkMask(mask & ~Linkify.MAP_ADDRESSES);
            }
            Matcher addresses = linkStreets && !TextUtils.isEmpty(text)
                    ? ArgonStreetAddress.matches(text) : null;
            if (addresses == null || !addresses.find()) {
                super.setText(text, type);
                return;
            }
            // Add geo spans after stock Linkify (which replaces pre-existing URLSpans).
            super.setText(text, type == BufferType.NORMAL ? BufferType.SPANNABLE : type);
            if (!(getText() instanceof Spannable)) return;
            Spannable displayed = (Spannable) getText();
            if (displayed.length() != text.length()) return; // Input filters changed offsets.
            boolean linked = false;
            do {
                int start = addresses.start(), end = addresses.end();
                if (displayed.getSpans(start, end, URLSpan.class).length != 0) continue;
                displayed.setSpan(new URLSpan("geo:0,0?q=" + Uri.encode(addresses.group())), start, end,
                        Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                linked = true;
            } while (addresses.find());
            if (linked && getLinksClickable() && !isTextSelectable()) {
                setMovementMethod(LinkMovementMethod.getInstance());
            }
        }
    }

    /** The refresh runnable (main thread): true = refresh, false = no recipient changed. */
    public static boolean drain(Object activity, ContactList recipients) {
        Pending p;
        synchronized (PENDING) {
            p = PENDING.remove(activity);
        }
        if (p == null || recipients == null || recipients.isEmpty()) return true;
        for (Contact c : p.contacts) {
            if (c == null) return true;
            String n = c.getNumber();
            for (Contact r : recipients) {
                if (r == c) return true;
                String rn = r == null ? null : r.getNumber();
                if (TextUtils.isEmpty(n) || TextUtils.isEmpty(rn)) continue;
                if (n.equals(rn)) return true;
                if (tail(n).equals(tail(rn)) && PhoneNumberUtils.compare(n, rn)) return true;
            }
        }
        return false;
    }

    /** Last 7 digits (cheap pre-check; PhoneNumberUtils.compare is slow). */
    private static String tail(String s) {
        StringBuilder b = new StringBuilder(7);
        for (int i = s.length() - 1; i >= 0 && b.length() < 7; i--) {
            char ch = s.charAt(i);
            if (ch >= '0' && ch <= '9') b.append(ch);
        }
        return b.toString();
    }
}
