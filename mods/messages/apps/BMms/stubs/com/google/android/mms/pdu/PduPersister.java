// Compile-time stub only (NOT packaged): framework class (telephony-common.jar).
package com.google.android.mms.pdu;
import android.content.Context;
import android.net.Uri;
import com.google.android.mms.MmsException;
public class PduPersister {
    public static PduPersister getPduPersister(Context c) { return null; }
    public GenericPdu load(Uri u) throws MmsException { return null; }
    public Uri persist(GenericPdu pdu, Uri uri, boolean createThreadId, boolean groupMmsEnabled,
            java.util.HashMap<Uri, java.io.InputStream> preOpenedFiles) throws MmsException { return null; }
    public Uri move(Uri from, Uri to) throws MmsException { return null; }
}
