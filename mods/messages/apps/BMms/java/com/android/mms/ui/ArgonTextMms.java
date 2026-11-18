package com.android.mms.ui;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

import com.android.mms.data.Contact;
import com.android.mms.model.SlideshowModel;
import com.google.android.mms.MmsException;
import com.google.android.mms.pdu.PduBody;

/** Render common text-only MMS from the conversation cursor, without building a slideshow. */
public final class ArgonTextMms {
    private static final int SENDER_SELF = 0x7f07012e; // R.string.messagelist_sender_self

    private ArgonTextMms() {}

    public static Uri queryUri(Uri uri) {
        // Older providers ignore this parameter and return the unchanged stock projection.
        if (!"mms-sms".equals(uri.getAuthority())) return uri;
        return uri.buildUpon().appendQueryParameter("argon_index", "1").build();
    }

    static boolean ready(Cursor cursor, int text, int from, int type) {
        return text >= 0 && !cursor.isNull(text)
                && (type == 128 || (type == 132 && from >= 0 && !TextUtils.isEmpty(cursor.getString(from))));
    }

    /** Same eligibility as bind(); the adapter can reuse the plain-text row pool. */
    public static boolean hasInlineText(Cursor cursor) {
        int text = cursor.getColumnIndex("argon_text");
        if (text < 0 || cursor.isNull(text)) return false;
        int type = cursor.getColumnIndex("m_type");
        return type >= 0 && ready(cursor, text, cursor.getColumnIndex("argon_from"), cursor.getInt(type));
    }

    public static boolean bind(MessageItem item, Cursor cursor) {
        int text = cursor.getColumnIndex("argon_text");
        int from = cursor.getColumnIndex("argon_from");
        if (!ready(cursor, text, from, item.mMessageType)) return false;
        int size = cursor.getColumnIndexOrThrow("argon_size");
        long date = cursor.getLong(cursor.getColumnIndexOrThrow("date")) * 1000;
        if (item.mMessageType == 132) {
            item.mAddress = cursor.getString(from);
            item.mContact = Contact.get(item.mAddress, false).getName();
        } else {
            item.mContact = item.mAddress = item.mContext.getString(SENDER_SELF);
        }
        item.mBody = cursor.getString(text);
        item.mMessageSize = cursor.getInt(size);
        item.mTextContentType = "text/plain";
        item.mAttachmentType = 0;
        if (!item.isOutgoingMessage()) {
            item.mTimestamp = MessageUtils.formatTimeStampString(item.mContext, date);
        }
        return true;
    }

    private static SlideshowModel loadSlides(MessageItem item) throws MmsException {
        SlideshowModel slides = item.mSlideshow;
        return slides != null ? slides : SlideshowModel.createFromMessageUri(item.mContext, item.mMessageUri);
    }

    /** Only called for an explicit forward, and only in the carrier's restricted creation modes. */
    public static SlideshowModel slidesForRestriction(MessageItem item) {
        if (!item.mArgonTextReady) return item.mSlideshow;
        try {
            return loadSlides(item);
        } catch (MmsException e) {
            Log.w("Mms", "Couldn't load MMS for creation-mode check", e);
            return null;
        }
    }

    /** Forward runs on a worker. Load the original PDU only when the user actually needs it. */
    public static PduBody copyForForward(MessageItem item) throws MmsException {
        return loadSlides(item).makeCopy();
    }
}
