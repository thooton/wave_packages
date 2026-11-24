package com.android.mms.ui;

import android.os.Handler;
import com.android.mms.data.Contact;
import com.android.mms.data.ContactList;

/** Refresh only rows containing the changed contact; coalesce callbacks on the UI thread. */
final class WaveInboxContactUpdates implements Runnable {
    private final ConversationListItem row;
    private final Handler handler;
    private Contact[] recipients;
    private boolean posted, dirty;

    private WaveInboxContactUpdates(ConversationListItem row, Handler handler) {
        this.row = row;
        this.handler = handler;
    }

    static void bind(ConversationListItem row, Handler handler, ContactList recipients) {
        WaveInboxContactUpdates updates = (WaveInboxContactUpdates) row.mWaveContactUpdates;
        if (updates == null) {
            updates = new WaveInboxContactUpdates(row, handler);
            row.mWaveContactUpdates = updates;
        }
        updates.setRecipients(recipients == null ? null : recipients.toArray(new Contact[recipients.size()]));
    }

    static void unbind(ConversationListItem row) {
        WaveInboxContactUpdates updates = (WaveInboxContactUpdates) row.mWaveContactUpdates;
        if (updates != null) updates.setRecipients(null);
    }

    static void changed(ConversationListItem row, Contact contact) {
        WaveInboxContactUpdates updates = (WaveInboxContactUpdates) row.mWaveContactUpdates;
        if (updates != null) updates.enqueue(contact);
    }

    private synchronized void setRecipients(Contact[] recipients) {
        this.recipients = recipients;
        dirty = false;
    }

    private synchronized void enqueue(Contact changed) {
        if (recipients == null || dirty) return;
        for (Contact recipient : recipients) {
            if (recipient != changed) continue; // Stock updates the same cached Contact instance.
            dirty = true;
            if (!posted && !(posted = handler.post(this))) dirty = false;
            break;
        }
    }

    @Override public void run() {
        synchronized (this) {
            posted = false;
            if (!dirty || recipients == null) return;
            dirty = false;
        }
        // Never take the Contact monitor while holding the callback monitor.
        row.waveRefreshRecipients();
    }
}
