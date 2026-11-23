package com.android.mms.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
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
 *   <li>{@link #onCreateMessageMenu}: "React" (add / remove your own tapback) and "Reactions"
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

    /** Keys of messages that have any tapback; null until first needed. Most rows have none. */
    private static volatile java.util.Set<String> sReacted;

    public static void invalidate() {
        sReacted = null;
        CACHE.clear();
    }

    private static List<WaveIMessageDb.Reaction> reactions(Context c, Uri uri) {
        if (uri == null) return Collections.emptyList();
        String key = WaveIMessageDb.key(uri);
        java.util.Set<String> reacted = sReacted;
        if (reacted == null) {
            reacted = WaveIMessageDb.get(c).reactedKeys();
            sReacted = reacted;
        }
        if (!reacted.contains(key)) return Collections.emptyList();
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

    /**
     * iMessage-style tapback bubbles: a round bubble hanging off the bubble's top outer corner, with
     * a two-dot tail toward the message, and earlier tapbacks stacked behind it. Each bubble and tail
     * dot is cut out of whatever is under it by a ring of the conversation background.
     * Yours are in the conversation's color (the one that tints received bubbles), everyone else's
     * gray, as iPhones show theirs in blue and gray.
     */
    static final class BadgeView extends View {
        /** iOS system gray 5 / gray: other people's tapback bubble and glyph. */
        static final int THEIRS_FILL = 0xFFE5E5EA;
        static final int THEIRS_GLYPH = 0xFF8E8E93;
        static final int THEIRS_HEART = 0xFFFF2D55;
        /** Fallback when the conversation has no color yet (iMessage blue). */
        static final int DEFAULT_MINE = 0xFF1A8CFF;

        // Geometry, as fractions of the bubble diameter.
        private static final float STEP = 0.55f;          // offset of each stacked bubble
        private static final float DOT1_R = 0.16f, DOT1_X = 0.30f, DOT1_Y = 0.40f;
        private static final float DOT2_R = 0.075f, DOT2_X = 0.47f, DOT2_Y = 0.60f;

        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final float density;
        private final float ring;
        private final int diameter;
        private List<Badge> badges = Collections.emptyList();
        /** Badge on a sent bubble: hangs off its left corner and its tail points right. */
        private boolean onSent;
        private int mineColor = DEFAULT_MINE;

        BadgeView(Context c) {
            super(c);
            density = c.getResources().getDisplayMetrics().density;
            ring = Math.max(1f, 1.5f * density);
            diameter = Math.round(22 * density);
            text.setTextAlign(Paint.Align.CENTER);
            setFocusable(false);
            setClickable(false);
            setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);
            setWillNotDraw(false);
        }

        int diameter() {
            return diameter;
        }

        /** How far the front bubble hangs past the message bubble's side. */
        int overhang() {
            return Math.round(diameter * 0.4f);
        }

        /** Where the message bubble starts below the top of this view. */
        int bubbleTop() {
            return Math.round(diameter * 0.68f);
        }

        void set(List<Badge> b, boolean sent, int mine) {
            boolean relayout = b.size() != badges.size() || sent != onSent;
            badges = b;
            onSent = sent;
            mineColor = mine;
            if (relayout) requestLayout();
            invalidate();
        }

        private float step() {
            return diameter * STEP;
        }

        /** Extra room on the inner side so the tail of a lone bubble isn't cut off. */
        private float tailRoom() {
            float tail = diameter * (DOT2_X + DOT2_R) + ring;
            return Math.max(0f, tail - diameter / 2f - (Math.max(1, badges.size()) - 1) * step());
        }

        @Override
        protected void onMeasure(int w, int h) {
            int n = Math.max(1, badges.size());
            int width = (int) Math.ceil(diameter + (n - 1) * step() + tailRoom());
            int height = (int) Math.ceil(diameter * (0.5f + DOT2_Y + DOT2_R) + ring);
            setMeasuredDimension(width, height);
        }

        /** Color showing behind the badge: the first solid background above it, else the theme's. */
        private int backdrop() {
            ViewParent p = getParent();
            while (p instanceof View) {
                Drawable bg = ((View) p).getBackground();
                if (bg instanceof ColorDrawable) {
                    int c = ((ColorDrawable) bg).getColor();
                    if (Color.alpha(c) == 0xFF) return c;
                }
                p = p.getParent();
            }
            TypedValue tv = new TypedValue();
            if (getContext().getTheme().resolveAttribute(android.R.attr.colorBackground, tv, true)
                    && tv.type >= TypedValue.TYPE_FIRST_COLOR_INT && tv.type <= TypedValue.TYPE_LAST_COLOR_INT) {
                return tv.data | 0xFF000000;
            }
            return 0xFFFFFFFF;
        }

        static boolean isLight(int c) {
            double l = 0.2126 * Color.red(c) + 0.7152 * Color.green(c) + 0.0722 * Color.blue(c);
            return l > 186;
        }

        @Override
        protected void onDraw(Canvas canvas) {
            int n = badges.size();
            if (n == 0) return;
            float r = diameter / 2f;
            float w = getWidth();
            // Front (newest) bubble sits on the outer corner; older ones stack toward the inside.
            float in = onSent ? 1f : -1f;
            float frontX = onSent ? r : w - r;
            int back = 0xFF000000 | backdrop();
            for (int k = n - 1; k >= 1; k--) {
                Badge b = badges.get(n - 1 - k);
                float cx = frontX + in * k * step();
                fill.setColor(back);
                canvas.drawCircle(cx, r, r, fill);
                fill.setColor(fillColor(b));
                canvas.drawCircle(cx, r, r - ring, fill);
                drawGlyph(canvas, b, cx, r);
            }
            Badge front = badges.get(n - 1);
            float d1x = frontX + in * diameter * DOT1_X, d1y = r + diameter * DOT1_Y, d1r = diameter * DOT1_R;
            float d2x = frontX + in * diameter * DOT2_X, d2y = r + diameter * DOT2_Y, d2r = diameter * DOT2_R;
            fill.setColor(back);
            canvas.drawCircle(frontX, r, r, fill);
            canvas.drawCircle(d1x, d1y, d1r + ring, fill);
            canvas.drawCircle(d2x, d2y, d2r + ring, fill);
            fill.setColor(fillColor(front));
            canvas.drawCircle(frontX, r, r - ring, fill);
            canvas.drawCircle(d1x, d1y, d1r, fill);
            canvas.drawCircle(d2x, d2y, d2r, fill);
            drawGlyph(canvas, front, frontX, r);
        }

        private final SparseFilters filters = new SparseFilters();

        private PorterDuffColorFilter tint(int color) {
            return filters.get(color);
        }

        private int fillColor(Badge b) {
            return b.mine ? mineColor : THEIRS_FILL;
        }

        private void drawGlyph(Canvas canvas, Badge b, float cx, float cy) {
            int color;
            if (b.mine) {
                color = isLight(mineColor) ? 0xFF1C1C1E : 0xFFFFFFFF;
            } else {
                color = b.kind == Body.REACT_HEART ? THEIRS_HEART : THEIRS_GLYPH;
            }
            boolean standard = b.kind >= Body.REACT_HEART && b.kind <= Body.REACT_QUESTION;
            float size;
            boolean bold = true;
            switch (b.kind) {
                case Body.REACT_HEART: size = 11.5f; bold = false; break;
                case Body.REACT_LIKE:
                case Body.REACT_DISLIKE: size = 11f; bold = false; break;
                case Body.REACT_LAUGH: size = 8.5f; break;
                case Body.REACT_EMPHASIZE: size = 12.5f; break;
                case Body.REACT_QUESTION: size = 13.5f; break;
                default: size = 12f; bold = false; break;
            }
            text.setTypeface(bold ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
            text.setTextSize(size * density);
            text.setColor(color);
            // Standard tapbacks are one-color symbols, like on iPhones: tint the (color emoji)
            // thumbs too. Emoji tapbacks and stickers keep their own colors.
            text.setColorFilter(standard ? tint(color) : null);
            Paint.FontMetrics fm = text.getFontMetrics();
            canvas.drawText(b.glyph, cx, cy - (fm.ascent + fm.descent) / 2f, text);
        }
    }

    /** SRC_IN tints by color; a badge view only ever uses two or three. */
    private static final class SparseFilters {
        private final android.util.SparseArray<PorterDuffColorFilter> byColor =
                new android.util.SparseArray<PorterDuffColorFilter>(4);

        PorterDuffColorFilter get(int color) {
            PorterDuffColorFilter f = byColor.get(color);
            if (f == null) {
                f = new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN);
                byColor.put(color, f);
            }
            return f;
        }
    }

    /** The conversation's color (stock: tints received bubbles and the title bar). */
    private static int chatColor() {
        try {
            int c = ComposeMessageActivity.getSendContactColor();
            if (Color.alpha(c) != 0) return c | 0xFF000000;
        } catch (Throwable ignored) {
        }
        return BadgeView.DEFAULT_MINE;
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
                // The part of the badge that hangs past the bubble lies in the container's padding
                // (10 dp end padding on received rows), which clips by default.
                parent.setClipToPadding(false);
            }
            boolean sent = mi.isMe();
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
            // Like iPhones: on the far corner of the bubble (right for received, left for sent),
            // hanging a little past its side. Both layouts leave room for that (padding and margin).
            if (sent) {
                lp.addRule(RelativeLayout.ALIGN_LEFT, ID_MESSAGE_BLOCK);
                lp.leftMargin = -badge.overhang();
            } else {
                lp.addRule(RelativeLayout.ALIGN_RIGHT, ID_MESSAGE_BLOCK);
                lp.rightMargin = -badge.overhang();
            }
            badge.setLayoutParams(lp);
            badge.set(badgesFor(rs), sent, chatColor());
            badge.setVisibility(View.VISIBLE);
            badge.bringToFront();
            setTopMargin(block, badge.bubbleTop());
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

    /**
     * Adds the items to a message's menu: the options menu while a message is selected
     * ({@code ComposeMessageActivity.onPrepareOptionsMenu}, where Sonim puts message actions) and
     * the context menu ({@code ComposeMessageActivity$5.onCreateContextMenu}).
     */
    public static void onCreateMessageMenu(Menu menu, final Activity a, final MessageItem mi) {
        try {
            if (menu == null || mi == null || mi.mMessageUri == null) return;
            menu.removeItem(MENU_REACT);
            menu.removeItem(MENU_REACTIONS);
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
