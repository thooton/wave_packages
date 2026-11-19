// Compile-time stubs only (NOT packaged): mirror the members of the real classes that
// ThreadIntegrity uses. The ti_* bridges are added to the real MmsSmsProvider by smali patch.
package com.android.providers.telephony;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

abstract class MmsSmsProvider extends android.content.ContentProvider {
    abstract SQLiteOpenHelper ti_getOpenHelper();
    abstract long ti_getSingleAddressId(String address);
    abstract void ti_insertThread(String recipientIds, int numberOfRecipients);
}

abstract class SmsProvider extends android.content.ContentProvider {
    abstract SQLiteDatabase getWritableDatabase(int match);
}

class MmsSmsDatabaseHelper {
    public static void updateThread(SQLiteDatabase db, long threadId) {}
}
