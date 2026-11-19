package com.android.providers.contacts;

import android.Manifest;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Binder;
import android.os.CancellationSignal;
import android.os.Process;
import android.provider.ContactsContract;

/** Read-only, current-user snapshot of the actual phone lookup keys and display names. */
final class ArgonPhoneMap {
    private static final String KEY = "argon_phone_map";
    private static final String VERSION = "argon_phone_map_v1";
    // Join the existing indexed rows. Avoid the general Data query's usage-stat aggregation,
    // projection assembly, search, sorting and photo reads.
    static final String SQL = "SELECT pl.normalized_number AS normalized_number,pl.min_match AS min_match,"
            + "d._id,d.data1,d.data3,d.display_name,d.contact_id,a.mode AS contact_presence,"
            + "s.status AS contact_status,d.data4,d.photo_id,d.lookup,d.send_to_voicemail"
            + " FROM phone_lookup pl JOIN view_data d ON d._id=pl.data_id"
            + " LEFT JOIN agg_presence a ON a.presence_contact_id=d.contact_id"
            + " LEFT JOIN status_updates s ON s.status_update_data_id=d.status_update_id";

    private ArgonPhoneMap() {}

    static Cursor maybeQuery(Context context, SQLiteDatabase db, Uri uri, String[] projection,
                            String selection, String[] args, String order,
                            CancellationSignal cancellation) {
        if (!ContactsContract.AUTHORITY.equals(uri.getAuthority())
                || !"/data".equals(uri.getPath()) || !"1".equals(uri.getQueryParameter(KEY))
                || uri.getQueryParameterNames().size() != 1 || selection != null || args != null
                || order != null || projection == null || projection.length != 1
                || !VERSION.equals(projection[0])) return null;
        if (!Process.myUserHandle().equals(Binder.getCallingUserHandle())) return null;
        // A grant to one contact must not grant access to this full snapshot.
        context.enforceCallingOrSelfPermission(Manifest.permission.READ_CONTACTS, "Phone map");
        Cursor cursor = db.rawQuery(SQL, null, cancellation);
        cursor.setNotificationUri(context.getContentResolver(), ContactsContract.AUTHORITY_URI);
        return cursor;
    }
}
