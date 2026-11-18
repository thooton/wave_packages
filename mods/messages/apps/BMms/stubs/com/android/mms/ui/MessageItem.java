// Compile-time stub only (NOT packaged).
package com.android.mms.ui;

import android.content.Context;
import android.net.Uri;
import com.android.mms.model.SlideshowModel;

public class MessageItem {
    String mAddress, mContact, mBody, mTextContentType, mTimestamp;
    int mAttachmentType, mMessageSize, mMessageType;
    boolean mArgonTextReady;
    Context mContext;
    Uri mMessageUri;
    SlideshowModel mSlideshow;
    public boolean isOutgoingMessage() { return false; }
}
