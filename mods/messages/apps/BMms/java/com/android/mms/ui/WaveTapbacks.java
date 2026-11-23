package com.android.mms.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import android.widget.Toast;

import com.android.mms.transaction.WaveIMessageStore;
import com.android.mms.wave.WaveIMessageConfig;
import com.android.mms.wave.WaveIMessageDb;
import com.android.mms.wave.WaveIMessageHost;
import com.android.mms.wave.imsg.Body;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * FEAT(imessage): tapbacks in the conversation view.
 *
 * <ul>
 *   <li>{@link #onBind}: draws iPhone-style tapback badges on the top corner of a message bubble
 *       ({@code MessageListItem.bind}).</li>
 *   <li>{@link #onItemClick}: pressing a text message that has tapbacks lists who reacted with
 *       what ({@code ComposeMessageActivity$79.onItemClick}).</li>
 *   <li>{@link #onCreateContextMenu}: "React" (add / remove your own tapback) and "Reactions"
 *       on iMessages ({@code ComposeMessageActivity$5.onCreateContextMenu}).</li>
 * </ul>
 */
public final class WaveTapbacks {
    private static final String TAG = "WaveIMsg";
    /** Bubble container in message_list_item_recv / _send. */
    private static final int ID_MESSAGE_BLOCK = 0x7f0f00d2;
    private static final int MENU_REACT = 0x5741_0001;
    private static final int MENU_REACTIONS = 0x5741_0002;
    private static final String BADGE_TAG = "wave_tapbacks";
    private static final int MAX_BADGES = 3;

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    /** Message uri to its tapbacks; cleared whenever a tapback changes (see invalidate()). */
    private static final Map<String, List<WaveIMessageDb.Reaction>> CACHE =
            Collections.synchronizedMap(new LinkedHashMap<String, List<WaveIMessageDb.Reaction>>(64, 0.75f, true) {
                @Override
                protected boolean removeEldestEntry(Map.Entry<String, List<WaveIMessageDb.Reaction>> e) {
                    return size() > 300;
                }
            });

    private WaveTapbacks() {}

    public static void invalidate() {
        CACHE.clear();
    }

    private static List<WaveIMessageDb.Reaction> reactions(Context c, Uri uri) {
        if (uri == null) return Collections.emptyList();
        String key = WaveIMessageDb.key(uri);
        List<WaveIMessageDb.Reaction> r = CACHE.get(key);
        if (r == null) {
            r = WaveIMessageDb.get(c).reactionsForUri(uri);
            CACHE.put(key, r);
        }
        return r;
    }

    static String glyph(int kind, String emoji) {
        switch (kind) {
            case Body.REACT_HEART: return "\u2665";
            case Body.REACT_LIKE: return "\uD83D\uDC4D";
            case Body.REACT_DISLIKE: return "\uD83D\uDC4E";
            case Body.REACT_LAUGH: return "HA";
            case Body.REACT_EMPHASIZE: return "\u203C";
            case Body.REACT_QUESTION: return "?";
            case Body.REACT_STICKER: return "\uD83C\uDFF7";
            default: return TextUtils.isEmpty(emoji) ? "\u2022" : emoji;
        }
    }

    static String verb(int kind, String emoji) {
        switch (kind) {
            case Body.REACT_HEART: return "Loved";
            case Body.REACT_LIKE: return "Liked";
            case Body.REACT_DISLIKE: return "Disliked";
            case Body.REACT_LAUGH: return "Laughed at";
            case Body.REACT_EMPHASIZE: return "Emphasized";
            case Body.REACT_QUESTION: return "Questioned";
            case Body.REACT_STICKER: return "Sticker";
            default: return "Reacted " + (emoji == null ? "" : emoji);
        }
    }

    // -----------------------------------------------------------------------------------------
    // Badges

    /** One badge per distinct tapback, most recent last (drawn on top). */
    private static final class Badge {
        final String glyph;
        final int kind;
        boolean mine;

        Badge(String glyph, int kind) {
            this.glyph = glyph;
            this.kind = kind;
        }
    }

    static final class BadgeView extends View {
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final float density;
        private List<Badge> badges = Collections.emptyList();

        BadgeView(Context c) {
            super(c);
            density = c.getResources().getDisplayMetrics().density;
            text.setTextAlign(Paint.Align.CENTER);
            setFocusable(false);
            setClickable(false);
            setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);
        }

        int diameter() {
            return Math.round(20 * density);
        }

        int step() {
            return Math.round(12 * density);
        }

        void setBadges(List<Badge> b) {
            badges = b;
            requestLayout();
            invalidate();
        }

        @Override
        protected void onMeasure(int w, int h) {
            int n = Math.max(1, badges.size());
            setMeasuredDimension(diameter() + (n - 1) * step(), diameter());
        }

        @Override
        protected void onDraw(Canvas canvas) {
            float d = diameter();
            float r = d / 2f;
            float ring = 1.5f * density;
            for (int i = 0; i < badges.size(); i++) {
                Badge b = badges.get(i);
                float cx = r + i * step();
                fill.setColor(0xFFFFFFFF);
                canvas.drawCircle(cx, r, r, fill);
                fill.setColor(b.mine ? 0xFF1A8CFF : 0xFFE5E5EA);
                canvas.drawCircle(cx, r, r - ring, fill);
                boolean word = b.glyph.length() > 1 && b.glyph.charAt(0) < 0x2000;
                text.setTypeface(word ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
                text.setTextSize((word ? 8.5f : 11.5f) * density);
                int glyphColor = b.mine ? 0xFFFFFFFF
                        : b.kind == Body.REACT_HEART ? 0xFFFF2D55 : 0xFF8E8E93;
                text.setColor(glyphColor);
                Paint.FontMetrics fm = text.getFontMetrics();
                canvas.drawText(b.glyph, cx, r - (fm.ascent + fm.descent) / 2f, text);
            }
        }
    }

    private static List<Badge> badgesFor(List<WaveIMessageDb.Reaction> rs) {
        LinkedHashMap<String, Badge> byGlyph = new LinkedHashMap<String, Badge>();
        for (WaveIMessageDb.Reaction r : rs) {
            String g = glyph(r.kind, r.emoji);
            Badge b = byGlyph.remove(g); // re-insert: most recent last
            if (b == null) b = new Badge(g, r.kind);
            if (r.isMine()) b.mine = true;
            byGlyph.put(g, b);
        }
        List<Badge> all = new ArrayList<Badge>(byGlyph.values());
        return all.size() <= MAX_BADGES ? all : all.subList(all.size() - MAX_BADGES, all.size());
    }

    /** MessageListItem.bind: shows (or hides) the tapback badges for this row. */
    public static void onBind(MessageListItem row) {
        try {
            MessageItem mi = row.getMessageItem();
            View block = row.findViewById(ID_MESSAGE_BLOCK);
            if (mi == null || block == null) return;
            ViewParent vp = block.getParent();
            if (!(vp instanceof RelativeLayout)) return;
            RelativeLayout parent = (RelativeLayout) vp;
            BadgeView badge = (BadgeView) parent.findViewWithTag(BADGE_TAG);
            List<WaveIMessageDb.Reaction> rs = reactions(row.getContext(), mi.mMessageUri);
            if (rs.isEmpty()) {
                if (badge != null && badge.getVisibility() != View.GONE) {
                    badge.setVisibility(View.GONE);
                    setTopMargin(block, 0);
                }
                return;
            }
            if (badge == null) {
                badge = new BadgeView(row.getContext());
                badge.setTag(BADGE_TAG);
                parent.addView(badge);
            }
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
            // Received bubbles get the badge on their far (right) corner, sent ones on the left.
            lp.addRule(mi.isOutgoingMessage() ? RelativeLayout.ALIGN_LEFT : RelativeLayout.ALIGN_RIGHT, ID_MESSAGE_BLOCK);
            badge.setLayoutParams(lp);
            badge.setBadges(badgesFor(rs));
            badge.setVisibility(View.VISIBLE);
            badge.bringToFront();
            setTopMargin(block, badge.diameter() * 3 / 5);
        } catch (Throwable t) {
            Log.w(TAG, "tapback bind", t);
        }
    }

    private static void setTopMargin(View v, int px) {
        ViewGroup.LayoutParams p = v.getLayoutParams();
        if (!(p instanceof ViewGroup.MarginLayoutParams)) return;
        ViewGroup.MarginLayoutParams m = (ViewGroup.MarginLayoutParams) p;
        Object orig = v.getTag(0x5741_0100);
        if (orig == null) {
            orig = m.topMargin;
            v.setTag(0x5741_0100, orig);
        }
        int want = (Integer) orig + px;
        if (m.topMargin != want) {
            m.topMargin = want;
            v.setLayoutParams(m);
        }
    }

    // -----------------------------------------------------------------------------------------
    // Who reacted

    /** ComposeMessageActivity$79.onItemClick: true if it showed the tapbacks (text messages only). */
    public static boolean onItemClick(Activity a, View v) {
        try {
            if (!(v instanceof MessageListItem)) return false;
            MessageItem mi = ((MessageListItem) v).getMessageItem();
            if (mi == null || mi.mAttachmentType != 0 /* TEXT */) return false;
            if (reactions(a, mi.mMessageUri).isEmpty()) return false;
            showWho(a, mi);
            return true;
        } catch (Throwable t) {
            Log.w(TAG, "tapback click", t);
            return false;
        }
    }

    private static void showWho(Activity a, MessageItem mi) {
        List<WaveIMessageDb.Reaction> rs = reactions(a, mi.mMessageUri);
        List<String> lines = new ArrayList<String>();
        HashMap<String, String> names = new HashMap<String, String>();
        for (WaveIMessageDb.Reaction r : rs) {
            String who;
            if (r.isMine()) {
                who = "You";
            } else {
                who = names.get(r.sender);
                if (who == null) {
                    who = WaveIMessageStore.displayName(a, r.sender);
                    names.put(r.sender, who);
                }
            }
            lines.add(glyph(r.kind, r.emoji) + "  " + who + " \u2013 " + verb(r.kind, r.emoji));
        }
        new AlertDialog.Builder(a)
                .setTitle("Reactions")
                .setItems(lines.toArray(new String[lines.size()]), null)
                .setPositiveButton(android.R.string.ok, null)
                .show();
    }

    // -----------------------------------------------------------------------------------------
    // React / Reactions menu items

    /** ComposeMessageActivity$5.onCreateContextMenu, after the stock items are added. */
    public static void onCreateContextMenu(ContextMenu menu, final Activity a, final MessageItem mi) {
        try {
            if (mi == null || mi.mMessageUri == null) return;
            final WaveIMessageDb.Msg msg = WaveIMessageDb.get(a).byUri(mi.mMessageUri);
            if (msg == null || TextUtils.isEmpty(msg.appleId)) return;
            if (!WaveIMessageStore.UNSENT.equals(msg.text) && WaveIMessageHost.connected() != null) {
                menu.add(0, MENU_REACT, 0, "React").setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() {
                    @Override
                    public boolean onMenuItemClick(MenuItem item) {
                        showReactPicker(a, mi, msg);
                        return true;
                    }
                });
            }
            if (!reactions(a, mi.mMessageUri).isEmpty()) {
                menu.add(0, MENU_REACTIONS, 0, "Reactions").setOnMenuItemClickListener(
                        new MenuItem.OnMenuItemClickListener() {
                            @Override
                            public boolean onMenuItemClick(MenuItem item) {
                                showWho(a, mi);
                                return true;
                            }
                        });
            }
        } catch (Throwable t) {
            Log.w(TAG, "tapback menu", t);
        }
    }

    private static final int[] KINDS = {
            Body.REACT_HEART, Body.REACT_LIKE, Body.REACT_DISLIKE,
            Body.REACT_LAUGH, Body.REACT_EMPHASIZE, Body.REACT_QUESTION,
    };
    private static final String[] NAMES = {"Love", "Like", "Dislike", "Haha", "Emphasize", "Question"};

    private static void showReactPicker(final Activity a, final MessageItem mi, final WaveIMessageDb.Msg msg) {
        int mine = -1;
        for (WaveIMessageDb.Reaction r : reactions(a, mi.mMessageUri)) {
            if (r.isMine()) mine = r.kind;
        }
        String[] labels = new String[KINDS.length];
        for (int i = 0; i < KINDS.length; i++) {
            labels[i] = glyph(KINDS[i], null) + "   " + NAMES[i] + (KINDS[i] == mine ? "  \u2713" : "");
        }
        final int current = mine;
        new AlertDialog.Builder(a)
                .setTitle(current >= 0 ? "React (select yours to remove)" : "React")
                .setItems(labels, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int which) {
                        int kind = KINDS[which];
                        send(a, mi.mMessageUri, msg, kind, kind != current, current);
                    }
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
    }

    /** Applies the tapback right away and sends it; puts the old one back if sending fails. */
    private static void send(final Activity a, final Uri uri, final WaveIMessageDb.Msg msg, final int kind,
                             final boolean enable, final int previous) {
        final Context app = a.getApplicationContext();
        final WaveIMessageHost host = WaveIMessageHost.connected();
        if (host == null) {
            Toast.makeText(a, "iMessage isn't connected", Toast.LENGTH_SHORT).show();
            return;
        }
        final WaveIMessageDb db = WaveIMessageDb.get(app);
        if (enable) {
            db.setReaction(msg.appleId, WaveIMessageDb.ME, kind, null, true);
        } else {
            db.setReaction(msg.appleId, WaveIMessageDb.ME, kind, null, false);
        }
        changed(app);
        new Thread(new Runnable() {
            @Override
            public void run() {
                String error;
                try {
                    List<String> targets = msg.targets;
                    String guid = msg.guid;
                    if (TextUtils.isEmpty(guid)) {
                        guid = host.config().getSenderGuid(WaveIMessageConfig.conversationKeyForTargets(targets));
                    }
                    String id = host.sendReaction(targets, guid, msg.appleId, kind, null, enable,
                            msg.text == null ? "" : msg.text);
                    WaveIMessageHost.SendOutcome r = host.awaitSendResult(id, 30_000L);
                    error = r.ok ? null : r.error;
                } catch (Throwable t) {
                    error = String.valueOf(t.getMessage());
                }
                if (error == null) return;
                Log.w(TAG, "tapback send failed: " + error);
                // Undo: back to what was there before.
                db.setReaction(msg.appleId, WaveIMessageDb.ME, kind, null, false);
                if (previous >= 0) db.setReaction(msg.appleId, WaveIMessageDb.ME, previous, null, true);
                changed(app);
                MAIN.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(app, "Couldn't send reaction", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        }, "wave-tapback").start();
    }

    /** A tapback changed: drop cached badges and make open conversations rebind. */
    public static void changed(Context c) {
        invalidate();
        c.getContentResolver().notifyChange(Uri.parse("content://mms-sms/"), null);
    }
}
