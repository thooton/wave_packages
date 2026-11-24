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
 * FEAT(imessage): compose-bar hint updates ("Type iMessage" vs "Type SMS message" / "Type MMS
 * message") while preserving Sonim's native compose box aesthetic.
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

        WaveIMessageHost host = WaveIMessageHost.sending();
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
            unknown.add(target);
            if (targets.size() == 1 && target.startsWith("mailto:")) {
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
