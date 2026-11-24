// Compile-time stub only (NOT packaged).
package com.android.mms.data;

public class Conversation {
    public static final android.net.Uri sAllThreadsUri = null;
    public static final String[] ALL_THREADS_PROJECTION = null;
    public static final String DEFAULT_SORT_ORDER = null;
    public static Conversation get(android.content.Context context, long threadId, boolean allowQuery) { return null; }
    public static Conversation from(android.content.Context context, android.database.Cursor cursor) { return null; }
    public static void startQuery(android.content.AsyncQueryHandler handler, int token, String selection) {}
    public synchronized ContactList getRecipients() { return null; }
    public long getThreadId() { return 0; }
    public synchronized String getSnippet() { return null; }
    public synchronized boolean hasAttachment() { return false; }
    public boolean hasUnreadMessages() { return false; }
}
