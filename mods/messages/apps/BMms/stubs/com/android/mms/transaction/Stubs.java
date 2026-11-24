// Compile-time stubs only (NOT packaged): declarations of stock BMms / framework classes that the
// Java code in apps/BMms/java calls. Only the members we use are declared.
package com.android.mms.transaction;

import android.content.Context;
import android.net.Uri;

abstract class Observable {
}

abstract class Transaction extends Observable {
    public abstract int getType();
    public TransactionState getState() { return null; }
    public int getSubId() { return 0; }
}

class TransactionState {
    public synchronized int getState() { return 0; }
    public synchronized Uri getContentUri() { return null; }
}

class NotificationTransaction {
    public static boolean allowAutoDownload() { return false; }
    public static boolean isMmsSizeTooLarge(com.google.android.mms.pdu.NotificationInd ind) { return false; }
}

class SmsReceiver extends android.content.BroadcastReceiver {
    public void onReceive(Context c, android.content.Intent i) {}
}

class SmsSingleRecipientSender {
    public boolean sendMessage(long token) throws com.google.android.mms.MmsException { return false; }
}

class TransactionService extends android.app.Service {
    public android.os.IBinder onBind(android.content.Intent i) { return null; }
}
