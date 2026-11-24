package com.android.mms.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;

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
 * FEAT(imessage): compose-bar hint, rounded pill input, and iMessage blue vs SMS green send
 * button so the active transport stays clear even after typing begins.
 */
public final class WaveIMessageUi {
    public static final String HINT_SMS = "Text message";
    public static final String HINT_MMS = "MMS message";
    public static final String HINT_IMESSAGE = "iMessage";

    private static final int ID_BOTTOM_PANEL = 0x7f0f0037;
    private static final int ID_SEND_MMS = 0x7f0f0040;
    private static final int ID_SEND_SMS = 0x7f0f0042;
    private static final int TAG_STYLE_MODE = 0x57430001;

    private static final int COLOR_IMSG_BLUE = 0xFF007AFF;
    private static final int COLOR_SMS_GREEN = 0xFF2E9E47;
    private static final int COLOR_BORDER_IDLE = 0xFFD1D1D6;

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
            boolean isIMsg = HINT_IMESSAGE.equals(hint);
            int mode = isIMsg ? 2 : 1;
            Object prev = textEditor.getTag(TAG_STYLE_MODE);
            if (prev == null || ((Integer) prev) != mode) {
                textEditor.setTag(TAG_STYLE_MODE, mode);
                applyComposeStyle(activity, textEditor, isIMsg);
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

    private static void applyComposeStyle(ComposeMessageActivity act, EditText editor, boolean imsg) {
        int accent = imsg ? COLOR_IMSG_BLUE : COLOR_SMS_GREEN;

        // Clean light compose bar surface with crisp top hairline and tidy breathing room
        View bottomPanel = act.findViewById(ID_BOTTOM_PANEL);
        if (bottomPanel != null) {
            GradientDrawable fill = new GradientDrawable();
            fill.setColor(0xFFF7F7F9);
            GradientDrawable line = new GradientDrawable();
            line.setColor(0xFFE0E0E5);
            LayerDrawable barBg = new LayerDrawable(new Drawable[]{line, fill});
            barBg.setLayerInset(1, 0, 1, 0, 0);
            bottomPanel.setBackground(barBg);
            bottomPanel.setPadding(dp(act, 6), dp(act, 4), dp(act, 6), dp(act, 5));
        }

        // Rounded pill input field with transport-colored focus outline (Apple blue vs SMS green)
        float rad = dp(act, 18);
        GradientDrawable focused = new GradientDrawable();
        focused.setColor(Color.WHITE);
        focused.setCornerRadius(rad);
        focused.setStroke(Math.max(2, dp(act, 2)), accent);

        GradientDrawable idle = new GradientDrawable();
        idle.setColor(Color.WHITE);
        idle.setCornerRadius(rad);
        idle.setStroke(Math.max(1, dp(act, 1)), COLOR_BORDER_IDLE);

        StateListDrawable pill = new StateListDrawable();
        pill.addState(new int[]{android.R.attr.state_focused}, focused);
        pill.addState(new int[]{}, idle);
        editor.setBackground(pill);
        editor.setHintTextColor(0xFF8E8E93);
        editor.setTextColor(0xFF1C1C1E);
        int padH = dp(act, 11);
        int padV = dp(act, 6);
        editor.setPadding(padH, padV, padH, padV);

        styleSendButton(act.findViewById(ID_SEND_SMS), accent);
        styleSendButton(act.findViewById(ID_SEND_MMS), accent);
    }

    private static void styleSendButton(View v, int accent) {
        if (!(v instanceof ImageButton)) return;
        ImageButton btn = (ImageButton) v;
        btn.setImageDrawable(new SendArrowDrawable(btn.getContext(), accent));
        btn.setBackgroundColor(Color.TRANSPARENT);
    }

    /** Crisp Apple-style circular send button with white upward arrow. */
    private static final class SendArrowDrawable extends Drawable {
        private final int accent;
        private final float density;
        private final Paint circlePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint arrowPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint focusPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private boolean enabled = true;
        private boolean focused = false;

        SendArrowDrawable(Context ctx, int accent) {
            this.accent = accent;
            this.density = ctx.getResources().getDisplayMetrics().density;
            arrowPaint.setColor(Color.WHITE);
            arrowPaint.setStyle(Paint.Style.STROKE);
            arrowPaint.setStrokeCap(Paint.Cap.ROUND);
            arrowPaint.setStrokeJoin(Paint.Join.ROUND);
            focusPaint.setStyle(Paint.Style.STROKE);
            focusPaint.setColor(0xFF1C1C1E);
        }

        @Override
        public boolean isStateful() { return true; }

        @Override
        protected boolean onStateChange(int[] state) {
            boolean en = false, foc = false;
            for (int s : state) {
                if (s == android.R.attr.state_enabled) en = true;
                if (s == android.R.attr.state_focused || s == android.R.attr.state_pressed) foc = true;
            }
            if (en != enabled || foc != focused) {
                enabled = en;
                focused = foc;
                invalidateSelf();
                return true;
            }
            return false;
        }

        @Override
        public int getIntrinsicWidth() { return Math.round(28 * density); }

        @Override
        public int getIntrinsicHeight() { return Math.round(28 * density); }

        @Override
        public void draw(Canvas c) {
            Rect b = getBounds();
            float cx = b.exactCenterX();
            float cy = b.exactCenterY();
            float r = Math.min(b.width(), b.height()) * 0.44f;

            circlePaint.setColor(accent);
            circlePaint.setAlpha(enabled ? 255 : 95);
            c.drawCircle(cx, cy, r, circlePaint);

            if (focused) {
                focusPaint.setStrokeWidth(2f * density);
                c.drawCircle(cx, cy, r - density, focusPaint);
            }

            arrowPaint.setStrokeWidth(Math.max(1.8f * density, r * 0.16f));
            arrowPaint.setAlpha(enabled ? 255 : 220);
            float arm = r * 0.40f;
            float stemTop = cy - r * 0.42f;
            float stemBot = cy + r * 0.42f;
            c.drawLine(cx, stemBot, cx, stemTop + density * 0.5f, arrowPaint);

            Path head = new Path();
            head.moveTo(cx - arm, stemTop + arm);
            head.lineTo(cx, stemTop);
            head.lineTo(cx + arm, stemTop + arm);
            c.drawPath(head, arrowPaint);
        }

        @Override public void setAlpha(int alpha) {}
        @Override public void setColorFilter(ColorFilter cf) {}
        @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
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

    private static int dp(Context c, int v) {
        return Math.round(v * c.getResources().getDisplayMetrics().density);
    }
}
