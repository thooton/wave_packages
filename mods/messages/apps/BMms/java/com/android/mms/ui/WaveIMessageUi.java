package com.android.mms.ui;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;

import com.android.mms.data.Contact;
import com.android.mms.data.ContactList;
import com.android.mms.data.Conversation;
import com.android.mms.data.WorkingMessage;
import com.android.mms.wave.WaveIMessageConfig;
import com.android.mms.wave.WaveIMessageHost;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/**
 * FEAT(imessage): Keeps the messaging UI stock while dynamically setting the bottom compose box
 * hint to "Type SMS message", "Type MMS message", or "Type iMessage" depending on the active
 * transport for the conversation/message.
 */
public final class WaveIMessageUi {
    public static final String HINT_SMS = "Type SMS message";
    public static final String HINT_MMS = "Type MMS message";
    public static final String HINT_IMESSAGE = "Type iMessage";

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static volatile WeakReference<ComposeMessageActivity> sActiveCompose =
            new WeakReference<ComposeMessageActivity>(null);

    private WaveIMessageUi() {}

    /**
     * Called from ComposeMessageActivity.waveUpdateComposeHint() (hooked in onKeyboardStateChanged
     * and updateSendButtonState). Runs on the UI thread.
     */
    public static void updateComposeHint(
            ComposeMessageActivity activity,
            EditText textEditor,
            boolean isSmsEnabled,
            WorkingMessage workingMessage,
            Conversation conversation,
            RecipientsEditor recipientsEditor
    ) {
        if (activity == null || textEditor == null) return;
        sActiveCompose = new WeakReference<ComposeMessageActivity>(activity);
        if (!isSmsEnabled) return;

        try {
            String hint = resolveHint(activity, workingMessage, conversation, recipientsEditor);
            CharSequence current = textEditor.getHint();
            if (current == null || !hint.equals(current.toString())) {
                textEditor.setHint(hint);
            }
        } catch (Throwable ignored) {
        }
    }

    /** Called from background threads when iMessage connection status or target capability changes. */
    public static void refreshActiveComposeHint() {
        MAIN.post(new Runnable() {
            @Override
            public void run() {
                ComposeMessageActivity a = sActiveCompose.get();
                if (a == null || a.isFinishing() || a.isDestroyed()) return;
                try {
                    a.waveUpdateComposeHint();
                } catch (Throwable ignored) {
                }
            }
        });
    }

    private static String resolveHint(
            ComposeMessageActivity activity,
            WorkingMessage wm,
            Conversation conv,
            RecipientsEditor recipientsEditor
    ) {
        boolean requiresMms = wm != null && wm.requiresMms();
        boolean hasMediaOrSubject = wm != null
                && (wm.hasAttachment() || wm.hasSlideshow() || wm.hasSubject());

        // Media attachments and subjects currently always go via MMS.
        if (hasMediaOrSubject) {
            return HINT_MMS;
        }

        WaveIMessageHost host = WaveIMessageHost.connected();
        if (host == null) {
            return requiresMms ? HINT_MMS : HINT_SMS;
        }

        List<String> targets = collectNormalizedTargets(activity, conv, recipientsEditor, host.config());
        if (targets.isEmpty()) {
            return requiresMms ? HINT_MMS : HINT_SMS;
        }

        WaveIMessageConfig cfg = host.config();
        List<String> unknown = new ArrayList<String>();
        boolean allRegistered = true;
        boolean anyUnregistered = false;

        for (String target : targets) {
            int cap = cfg.getCapability(target);
            if (cap == WaveIMessageConfig.CAP_REGISTERED) {
                continue;
            }
            if (cap == WaveIMessageConfig.CAP_UNREGISTERED) {
                anyUnregistered = true;
                allRegistered = false;
                continue;
            }
            // Unknown: ask server asynchronously.
            unknown.add(target);
            if (targets.size() == 1 && target.startsWith("mailto:")) {
                // Email addresses in a 1:1 thread will route via iMessage while check is in flight.
                continue;
            }
            allRegistered = false;
        }

        if (!unknown.isEmpty()) {
            host.requestTargetCheckAsync(unknown);
        }

        if (allRegistered && !anyUnregistered) {
            return HINT_IMESSAGE;
        }

        // Mirror stock routing: WorkingMessage.requiresMms() already reflects group MMS
        // (setHasMultipleRecipients honours the "Group messaging" pref). With group MMS
        // off, stock sends a multi-recipient text as separate SMS, so say SMS, not MMS.
        return requiresMms ? HINT_MMS : HINT_SMS;
    }

    private static List<String> collectNormalizedTargets(
            ComposeMessageActivity activity,
            Conversation conv,
            RecipientsEditor recipientsEditor,
            WaveIMessageConfig cfg
    ) {
        ContactList contacts = null;
        try {
            if (recipientsEditor != null && recipientsEditor.getVisibility() == View.VISIBLE) {
                ContactList ed = recipientsEditor.constructContactsFromInput(false);
                if (ed != null && !ed.isEmpty()) {
                    contacts = ed;
                }
            }
        } catch (Throwable ignored) {
        }
        if ((contacts == null || contacts.isEmpty()) && conv != null) {
            try {
                contacts = conv.getRecipients();
            } catch (Throwable ignored) {
            }
        }

        List<String> out = new ArrayList<String>();
        if (contacts == null) return out;
        List<String> myHandles = cfg.getHandles();
        for (int i = 0; i < contacts.size(); i++) {
            Contact contact = contacts.get(i);
            if (contact == null) continue;
            String num = contact.getNumber();
            if (TextUtils.isEmpty(num)) continue;
            String target = WaveIMessageConfig.toIMessageTarget(activity, num);
            if (target == null) continue;
            if (WaveIMessageConfig.isOwnHandle(target, myHandles)) continue;
            boolean dup = false;
            for (String existing : out) {
                if (existing.equalsIgnoreCase(target)) {
                    dup = true;
                    break;
                }
            }
            if (!dup) out.add(target);
        }
        return out;
    }
}
