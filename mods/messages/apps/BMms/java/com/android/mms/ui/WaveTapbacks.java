package com.android.mms.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
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
import java.util.Locale;
import java.util.Map;

/**
 * FEAT(imessage): tapbacks in the conversation view.
 *
 * Colors match Sonim's bubble convention:
 * - Your reactions are white (with a crisp subtle outline and dark glyph, pink heart), matching
 *   your white sent bubbles.
 * - Other people's reactions are in the conversation's contact color (with white glyph), matching
 *   their colored received bubbles.
 *
 * Dialogs (React picker & Reactions list) use native Sonim Material AlertDialogs.
 */
public final class WaveTapbacks {
    private static final String TAG = "WaveIMsg";
    /** Bubble container in message_list_item_recv / _send. */
    private static final int ID_MESSAGE_BLOCK = 0x7f0f00d2;
    private static final int MENU_REACT = 0x5741_0001;
    private static final int MENU_REACTIONS = 0x5741_0002;
    private static final int MENU_EDIT_HISTORY = 0x5741_0003;
    private static final int MENU_DOWNLOAD_FILES = 0x5741_0004;
    private static final String BADGE_TAG = "wave_tapbacks";
    private static final int MAX_BADGES = 3;

    /** Sonim native Material focus highlight colors (matches list_selector_background). */
    private static final int SONIM_FOCUS_FILL = 0xFFEDF2F4;
    private static final int SONIM_FOCUS_STROKE = 0xFF607D8B;

    private static final int[] KINDS = {
            Body.REACT_HEART, Body.REACT_LIKE, Body.REACT_DISLIKE,
            Body.REACT_LAUGH, Body.REACT_EMPHASIZE, Body.REACT_QUESTION,
    };
    private static final String[] NAMES = {"Love", "Like", "Dislike", "Haha", "Emphasize", "Question"};

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static final Map<String, List<WaveIMessageDb.Reaction>> CACHE =
            Collections.synchronizedMap(new LinkedHashMap<String, List<WaveIMessageDb.Reaction>>(64, 0.75f, true) {
                @Override
                protected boolean removeEldestEntry(Map.Entry<String, List<WaveIMessageDb.Reaction>> e) {
                    return size() > 300;
                }
            });

    private WaveTapbacks() {}

    private static volatile java.util.Set<String> sReacted;
    private static final Path sTmpPath = new Path();
    private static final RectF sTmpRect = new RectF();
    private static final Typeface sBoldSans = Typeface.create(Typeface.SANS_SERIF, Typeface.BOLD);

    public static void warmCache(Context c) {
        if (sReacted == null) {
            Map<String, List<WaveIMessageDb.Reaction>> all = WaveIMessageDb.get(c).allReactionsByKey();
            for (Map.Entry<String, List<WaveIMessageDb.Reaction>> e : all.entrySet()) {
                CACHE.put(e.getKey(), e.getValue());
            }
            sReacted = new java.util.HashSet<String>(all.keySet());
        }
    }

    public static void invalidate() {
        sReacted = null;
        CACHE.clear();
    }

    private static List<WaveIMessageDb.Reaction> reactions(Context c, Uri uri) {
        if (uri == null) return Collections.emptyList();
        java.util.Set<String> reacted = sReacted;
        if (reacted == null) {
            reacted = WaveIMessageDb.get(c).reactedKeys();
            sReacted = reacted;
        }
        if (reacted.isEmpty()) return Collections.emptyList();
        String key = WaveIMessageDb.key(uri);
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
    // Shared crisp vector tapback glyph painter

    static void drawTapbackGlyph(Canvas c, int kind, String emoji,
                                 float cx, float cy, float sizePx,
                                 int color, boolean pinkHeart, Paint p) {
        p.reset();
        p.setAntiAlias(true);
        p.setStyle(Paint.Style.FILL);
        p.setColor(color);

        if (kind == Body.REACT_EMOJI && !TextUtils.isEmpty(emoji)) {
            p.setColor(Color.BLACK);
            p.setTextAlign(Paint.Align.CENTER);
            p.setTextSize(sizePx * 0.96f);
            Paint.FontMetrics fm = p.getFontMetrics();
            c.drawText(emoji, cx, cy - (fm.ascent + fm.descent) * 0.5f, p);
            return;
        }
        if (kind == Body.REACT_STICKER) {
            drawStarPath(c, cx, cy, sizePx * 0.46f, p);
            return;
        }

        switch (kind) {
            case Body.REACT_HEART:
                p.setColor(pinkHeart ? BadgeView.HEART_PINK : color);
                drawHeartPath(c, cx, cy + sizePx * 0.04f, sizePx * 0.92f, p);
                break;
            case Body.REACT_LIKE:
                drawThumbPath(c, cx, cy, sizePx * 0.92f, false, p);
                break;
            case Body.REACT_DISLIKE:
                drawThumbPath(c, cx, cy, sizePx * 0.92f, true, p);
                break;
            case Body.REACT_LAUGH: {
                c.save();
                c.rotate(-10f, cx, cy);
                p.setTypeface(sBoldSans);
                p.setTextAlign(Paint.Align.CENTER);
                p.setTextSize(sizePx * 0.72f);
                p.setTextScaleX(0.86f);
                Paint.FontMetrics fm = p.getFontMetrics();
                c.drawText("HA", cx, cy - (fm.ascent + fm.descent) * 0.5f, p);
                c.restore();
                break;
            }
            case Body.REACT_EMPHASIZE: {
                float w = sizePx * 0.19f;
                float gap = sizePx * 0.14f;
                float top = cy - sizePx * 0.44f;
                float barBot = cy + sizePx * 0.12f;
                float dotR = w * 0.54f;
                float dotY = cy + sizePx * 0.35f;
                float x1 = cx - gap * 0.5f - w * 0.5f;
                float x2 = cx + gap * 0.5f + w * 0.5f;
                sTmpRect.set(x1 - w * 0.5f, top, x1 + w * 0.5f, barBot);
                c.drawRoundRect(sTmpRect, w * 0.5f, w * 0.5f, p);
                c.drawCircle(x1, dotY, dotR, p);
                sTmpRect.set(x2 - w * 0.5f, top, x2 + w * 0.5f, barBot);
                c.drawRoundRect(sTmpRect, w * 0.5f, w * 0.5f, p);
                c.drawCircle(x2, dotY, dotR, p);
                break;
            }
            case Body.REACT_QUESTION: {
                p.setTypeface(sBoldSans);
                p.setTextAlign(Paint.Align.CENTER);
                p.setTextSize(sizePx * 1.04f);
                Paint.FontMetrics fm = p.getFontMetrics();
                c.drawText("?", cx, cy - (fm.ascent + fm.descent) * 0.5f, p);
                break;
            }
            default: {
                p.setTypeface(Typeface.DEFAULT_BOLD);
                p.setTextAlign(Paint.Align.CENTER);
                p.setTextSize(sizePx * 0.90f);
                Paint.FontMetrics fm = p.getFontMetrics();
                c.drawText(glyph(kind, emoji), cx, cy - (fm.ascent + fm.descent) * 0.5f, p);
                break;
            }
        }
    }

    private static void drawHeartPath(Canvas c, float cx, float cy, float s, Paint p) {
        float half = s * 0.5f;
        Path path = sTmpPath;
        path.rewind();
        path.moveTo(cx, cy + half * 0.80f);
        path.cubicTo(cx - half * 1.15f, cy + half * 0.10f,
                cx - half * 1.05f, cy - half * 0.88f,
                cx - half * 0.42f, cy - half * 0.86f);
        path.cubicTo(cx - half * 0.14f, cy - half * 0.85f,
                cx, cy - half * 0.56f,
                cx, cy - half * 0.42f);
        path.cubicTo(cx, cy - half * 0.56f,
                cx + half * 0.14f, cy - half * 0.85f,
                cx + half * 0.42f, cy - half * 0.86f);
        path.cubicTo(cx + half * 1.05f, cy - half * 0.88f,
                cx + half * 1.15f, cy + half * 0.10f,
                cx, cy + half * 0.80f);
        path.close();
        c.drawPath(path, p);
    }

    private static void drawThumbPath(Canvas c, float cx, float cy, float s, boolean down, Paint p) {
        c.save();
        if (down) c.scale(1f, -1f, cx, cy);
        float left = cx - s * 0.46f;
        float top = cy - s * 0.46f;
        sTmpRect.set(left, top + s * 0.40f, left + s * 0.22f, top + s * 0.88f);
        c.drawRoundRect(sTmpRect, s * 0.06f, s * 0.06f, p);
        Path hand = sTmpPath;
        hand.rewind();
        float hx = left + s * 0.28f;
        hand.moveTo(hx, top + s * 0.42f);
        hand.lineTo(hx + s * 0.17f, top + s * 0.08f);
        hand.quadTo(hx + s * 0.24f, top + s * 0.00f, hx + s * 0.31f, top + s * 0.06f);
        hand.quadTo(hx + s * 0.37f, top + s * 0.12f, hx + s * 0.33f, top + s * 0.33f);
        hand.lineTo(hx + s * 0.54f, top + s * 0.33f);
        hand.quadTo(hx + s * 0.65f, top + s * 0.34f, hx + s * 0.63f, top + s * 0.46f);
        hand.lineTo(hx + s * 0.58f, top + s * 0.78f);
        hand.quadTo(hx + s * 0.56f, top + s * 0.88f, hx + s * 0.44f, top + s * 0.88f);
        hand.lineTo(hx + s * 0.04f, top + s * 0.88f);
        hand.quadTo(hx, top + s * 0.88f, hx, top + s * 0.82f);
        hand.close();
        c.drawPath(hand, p);
        c.restore();
    }

    private static void drawStarPath(Canvas c, float cx, float cy, float r, Paint p) {
        Path path = sTmpPath;
        path.rewind();
        for (int i = 0; i < 10; i++) {
            double ang = Math.PI / 2.0 + i * Math.PI / 5.0;
            float rad = (i % 2 == 0) ? r : r * 0.44f;
            float x = cx + (float) Math.cos(ang) * rad;
            float y = cy - (float) Math.sin(ang) * rad;
            if (i == 0) path.moveTo(x, y); else path.lineTo(x, y);
        }
        path.close();
        c.drawPath(path, p);
    }

    // -----------------------------------------------------------------------------------------
    // Badges (flipped colors: yours = white, theirs = contact color)

    private static final class Badge {
        final String glyph;
        final String emoji;
        final int kind;
        boolean mine;

        Badge(String glyph, String emoji, int kind) {
            this.glyph = glyph;
            this.emoji = emoji;
            this.kind = kind;
        }
    }

    static final class BadgeView extends View {
        static final int MINE_FILL = 0xFFFFFFFF;
        static final int MINE_STROKE = 0xFFD2CED0;
        static final int MINE_GLYPH = 0xFF555558;
        static final int HEART_PINK = 0xFFFF2D55;
        static final int DEFAULT_THEIRS = 0xFF0099CC;

        private static final float STEP = 0.62f;
        private static final float DOT1_R = 0.155f, DOT1_X = 0.30f, DOT1_Y = 0.40f;
        private static final float DOT2_R = 0.075f, DOT2_X = 0.47f, DOT2_Y = 0.60f;

        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint outline = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint glyphPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final float density;
        private final float ring;
        private final int diameter;
        private List<Badge> badges = Collections.emptyList();
        private boolean onSent;
        private int theirColor = DEFAULT_THEIRS;
        private int layoutSide = -1;
        private int cachedBackdrop;

        BadgeView(Context c) {
            super(c);
            density = c.getResources().getDisplayMetrics().density;
            ring = Math.max(1f, 1.5f * density);
            diameter = Math.round(23 * density);
            outline.setStyle(Paint.Style.STROKE);
            outline.setStrokeWidth(Math.max(1f, 0.9f * density));
            outline.setColor(MINE_STROKE);
            setFocusable(false);
            setClickable(false);
            setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);
            setWillNotDraw(false);
        }

        int overhang() { return Math.round(diameter * 0.4f); }
        int bubbleTop() { return Math.round(diameter * 0.68f); }

        void set(List<Badge> b, boolean sent, int contactColor) {
            boolean relayout = b.size() != badges.size() || sent != onSent;
            badges = b;
            onSent = sent;
            theirColor = contactColor;
            if (relayout) requestLayout();
            invalidate();
        }

        private float step() { return diameter * STEP; }

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

        @Override
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            cachedBackdrop = 0;
        }

        private int backdrop() {
            if (cachedBackdrop != 0) return cachedBackdrop;
            ViewParent p = getParent();
            while (p instanceof View) {
                Drawable bg = ((View) p).getBackground();
                if (bg instanceof ColorDrawable) {
                    int c = ((ColorDrawable) bg).getColor();
                    if (Color.alpha(c) == 0xFF) {
                        cachedBackdrop = c;
                        return c;
                    }
                }
                p = p.getParent();
            }
            TypedValue tv = new TypedValue();
            if (getContext().getTheme().resolveAttribute(android.R.attr.colorBackground, tv, true)
                    && tv.type >= TypedValue.TYPE_FIRST_COLOR_INT && tv.type <= TypedValue.TYPE_LAST_COLOR_INT) {
                cachedBackdrop = tv.data | 0xFF000000;
                return cachedBackdrop;
            }
            cachedBackdrop = 0xFFF4EFF0;
            return cachedBackdrop;
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
                if (b.mine) canvas.drawCircle(cx, r, r - ring - 0.5f, outline);
                drawBadgeGlyph(canvas, b, cx, r);
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
            if (front.mine) {
                canvas.drawCircle(frontX, r, r - ring - 0.5f, outline);
                canvas.drawCircle(d1x, d1y, d1r, outline);
                canvas.drawCircle(d2x, d2y, d2r, outline);
            }
            drawBadgeGlyph(canvas, front, frontX, r);
        }

        private int fillColor(Badge b) { return b.mine ? MINE_FILL : theirColor; }

        private void drawBadgeGlyph(Canvas canvas, Badge b, float cx, float cy) {
            int color = b.mine ? MINE_GLYPH : (isLight(theirColor) ? 0xFF1C1C1E : Color.WHITE);
            boolean heartPink = (b.mine && b.kind == Body.REACT_HEART);
            drawTapbackGlyph(canvas, b.kind, b.emoji, cx, cy, (diameter - ring * 2f) * 0.62f,
                    color, heartPink, glyphPaint);
        }
    }

    private static int chatColor() {
        try {
            int c = ComposeMessageActivity.getSendContactColor();
            if (Color.alpha(c) != 0) return c | 0xFF000000;
        } catch (Throwable ignored) {}
        return BadgeView.DEFAULT_THEIRS;
    }

    private static List<Badge> badgesFor(List<WaveIMessageDb.Reaction> rs) {
        if (rs.size() == 1) {
            WaveIMessageDb.Reaction r = rs.get(0);
            Badge b = new Badge(glyph(r.kind, r.emoji), r.emoji, r.kind);
            if (r.isMine()) b.mine = true;
            return Collections.singletonList(b);
        }
        LinkedHashMap<String, Badge> byGlyph = new LinkedHashMap<String, Badge>();
        for (WaveIMessageDb.Reaction r : rs) {
            String g = glyph(r.kind, r.emoji);
            Badge b = byGlyph.remove(g);
            if (b == null) b = new Badge(g, r.emoji, r.kind);
            if (r.isMine()) b.mine = true;
            byGlyph.put(g, b);
        }
        List<Badge> all = new ArrayList<Badge>(byGlyph.values());
        return all.size() <= MAX_BADGES ? all : all.subList(all.size() - MAX_BADGES, all.size());
    }

    private static final int TAG_CACHED_BLOCK = 0x5741_0101;
    private static final int TAG_CACHED_BADGE = 0x5741_0102;

    /** MessageListItem.bind: shows (or hides) the tapback badges for this row. */
    public static void onBind(MessageListItem row) {
        try {
            MessageItem mi = row.getMessageItem();
            if (mi == null) return;
            List<WaveIMessageDb.Reaction> rs = reactions(row.getContext(), mi.mMessageUri);
            BadgeView badge = (BadgeView) row.getTag(TAG_CACHED_BADGE);
            if (rs.isEmpty()) {
                if (badge != null && badge.getVisibility() != View.GONE) {
                    badge.setVisibility(View.GONE);
                    View block = (View) row.getTag(TAG_CACHED_BLOCK);
                    if (block == null) block = row.findViewById(ID_MESSAGE_BLOCK);
                    if (block != null) setTopMargin(block, 0);
                }
                return;
            }
            View block = (View) row.getTag(TAG_CACHED_BLOCK);
            if (block == null) {
                block = row.findViewById(ID_MESSAGE_BLOCK);
                if (block == null) return;
                row.setTag(TAG_CACHED_BLOCK, block);
            }
            ViewParent vp = block.getParent();
            if (!(vp instanceof RelativeLayout)) return;
            RelativeLayout parent = (RelativeLayout) vp;
            if (badge == null) {
                badge = (BadgeView) parent.findViewWithTag(BADGE_TAG);
                if (badge == null) {
                    badge = new BadgeView(row.getContext());
                    badge.setTag(BADGE_TAG);
                    parent.addView(badge);
                    parent.setClipToPadding(false);
                    parent.setClipChildren(false);
                }
                row.setTag(TAG_CACHED_BADGE, badge);
            }
            boolean sent = mi.isMe();
            int side = sent ? 1 : 0;
            if (badge.layoutSide != side) {
                RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
                if (sent) {
                    lp.addRule(RelativeLayout.ALIGN_LEFT, ID_MESSAGE_BLOCK);
                    lp.leftMargin = -badge.overhang();
                } else {
                    lp.addRule(RelativeLayout.ALIGN_RIGHT, ID_MESSAGE_BLOCK);
                    lp.rightMargin = -badge.overhang();
                }
                badge.setLayoutParams(lp);
                badge.layoutSide = side;
            }
            badge.set(badgesFor(rs), sent, chatColor());
            if (badge.getVisibility() != View.VISIBLE) {
                badge.setVisibility(View.VISIBLE);
            }
            if (parent.getChildAt(parent.getChildCount() - 1) != badge) {
                badge.bringToFront();
            }
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
    // Click handling: in-chat voice playback, Reactions (Sonim AlertDialog), or Edit history

    /** ComposeMessageActivity$79.onItemClick: plays voice messages in-chat or shows Reactions/Edit history. */
    public static boolean onItemClick(Activity a, View v) {
        try {
            if (!(v instanceof MessageListItem)) return false;
            // In-chat playback for single voice/audio messages
            if (WaveMessageUi.onItemClick(a, (MessageListItem) v)) return true;

            MessageItem mi = ((MessageListItem) v).getMessageItem();
            if (mi == null || mi.mAttachmentType != 0 /* TEXT */ || mi.mMessageUri == null) return false;
            // A file with no preview (PDF, zip, ...): offer to download it.
            List<String[]> files = WaveIMessageDb.get(a).filesFor(mi.mMessageUri);
            if (!files.isEmpty()) {
                confirmDownload(a, mi.mMessageUri, files);
                return true;
            }
            if (!reactions(a, mi.mMessageUri).isEmpty()) {
                showWho(a, mi.mMessageUri);
                return true;
            }
            WaveIMessageDb.Info info = WaveIMessageDb.get(a).infoForUri(mi.mMessageUri);
            if (info != null && info.edited()) {
                List<WaveIMessageDb.Version> hist = WaveIMessageDb.get(a).editHistoryForUri(mi.mMessageUri);
                if (!hist.isEmpty()) {
                    showEditHistory(a, hist);
                    return true;
                }
            }
            return false;
        } catch (Throwable t) {
            Log.w(TAG, "tapback click", t);
            return false;
        }
    }

    /** "Download Report.pdf?" before fetching the message's files into Download. */
    private static void confirmDownload(final Activity a, final Uri msgUri, List<String[]> files) {
        StringBuilder names = new StringBuilder();
        for (String[] f : files) {
            if (names.length() > 0) names.append('\n');
            names.append(TextUtils.isEmpty(f[1]) ? "file" : f[1]);
        }
        names.append("\n\nSaves to Download.");
        new AlertDialog.Builder(a)
                .setTitle(files.size() == 1 ? "Download file?" : "Download " + files.size() + " files?")
                .setMessage(names)
                .setPositiveButton("Download", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface d, int w) {
                        WaveIMessageSave.downloadFiles(a, msgUri);
                    }
                })
                .setNegativeButton("Cancel", null)
                .show();
    }

    /** Native Sonim Material AlertDialog showing who reacted. */
    private static void showWho(final Activity a, final Uri msgUri) {
        List<WaveIMessageDb.Reaction> rs = reactions(a, msgUri);
        if (rs.isEmpty()) return;
        final int contactColor = chatColor();

        ScrollView sv = new ScrollView(a);
        LinearLayout list = new LinearLayout(a);
        list.setOrientation(LinearLayout.VERTICAL);
        list.setPadding(dp(a, 16), dp(a, 8), dp(a, 16), dp(a, 4));

        HashMap<String, String> names = new HashMap<String, String>();
        for (int i = rs.size() - 1; i >= 0; i--) {
            WaveIMessageDb.Reaction r = rs.get(i);
            String who;
            if (r.isMine()) {
                who = "You";
            } else {
                who = names.get(r.sender);
                if (who == null) {
                    who = WaveIMessageStore.displayName(a, r.sender);
                    if (who != null && who.startsWith("+")) {
                        who = formatAddress(who);
                    }
                    names.put(r.sender, who);
                }
            }

            LinearLayout row = new LinearLayout(a);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setPadding(0, dp(a, 6), 0, dp(a, 6));

            MiniBadgeView icon = new MiniBadgeView(a, r, contactColor);
            LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(dp(a, 24), dp(a, 24));
            ilp.rightMargin = dp(a, 10);
            row.addView(icon, ilp);

            LinearLayout col = new LinearLayout(a);
            col.setOrientation(LinearLayout.VERTICAL);

            TextView nameTv = new TextView(a);
            nameTv.setText(who);
            nameTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
            nameTv.setTextColor(0xFF212121);
            nameTv.setSingleLine(true);
            nameTv.setEllipsize(TextUtils.TruncateAt.END);
            col.addView(nameTv);

            TextView verbTv = new TextView(a);
            verbTv.setText(verb(r.kind, r.emoji));
            verbTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
            verbTv.setTextColor(0xFF757575);
            col.addView(verbTv);

            row.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            list.addView(row);

            if (i > 0) {
                View div = new View(a);
                div.setBackgroundColor(0xFFE0E0E0);
                list.addView(div, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1));
            }
        }
        sv.addView(list);

        AlertDialog.Builder b = new AlertDialog.Builder(a)
                .setTitle(rs.size() == 1 ? "Reaction" : "Reactions (" + rs.size() + ")")
                .setView(sv)
                .setPositiveButton("OK", null);

        if (canReactToUri(a, msgUri)) {
            b.setNeutralButton("React", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface d, int w) {
                    showReactPickerForUri(a, msgUri);
                }
            });
        }

        WaveIMessageDb.Info msgInfo = WaveIMessageDb.get(a).infoForUri(msgUri);
        final List<WaveIMessageDb.Version> editHist = (msgInfo != null && msgInfo.edited())
                ? WaveIMessageDb.get(a).editHistoryForUri(msgUri)
                : Collections.<WaveIMessageDb.Version>emptyList();
        if (!editHist.isEmpty()) {
            b.setNegativeButton("Edits", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface d, int w) {
                    showEditHistory(a, editHist);
                }
            });
        }

        b.show();
    }

    private static void showEditHistory(final Activity a, List<WaveIMessageDb.Version> hist) {
        if (hist == null || hist.isEmpty()) return;
        final int accent = chatColor();
        final Dialog dlg = new Dialog(a);
        dlg.requestWindowFeature(Window.FEATURE_NO_TITLE);
        dlg.setCanceledOnTouchOutside(true);

        LinearLayout card = new LinearLayout(a);
        card.setOrientation(LinearLayout.VERTICAL);
        GradientDrawable cardBg = new GradientDrawable();
        cardBg.setColor(Color.WHITE);
        cardBg.setCornerRadius(dp(a, 14));
        card.setBackground(cardBg);

        TextView title = new TextView(a);
        title.setText("Edit history");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        title.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        title.setTextColor(0xFF1C1C1E);
        title.setPadding(dp(a, 14), dp(a, 11), dp(a, 14), dp(a, 8));
        card.addView(title);

        View div = new View(a);
        div.setBackgroundColor(0xFFE5E5EA);
        card.addView(div, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1));

        ScrollView sv = new ScrollView(a);
        LinearLayout list = new LinearLayout(a);
        list.setOrientation(LinearLayout.VERTICAL);
        list.setPadding(dp(a, 12), dp(a, 8), dp(a, 12), dp(a, 8));

        int n = hist.size();
        for (int i = 0; i < n; i++) {
            WaveIMessageDb.Version v = hist.get(i);
            boolean isCurrent = (i == n - 1);
            String tag = (i == 0) ? "Original" : (isCurrent ? "Current" : "Edit " + i);
            String when = v.ts > 0 ? android.text.format.DateUtils.formatDateTime(a, v.ts,
                    android.text.format.DateUtils.FORMAT_SHOW_TIME) : "";

            LinearLayout item = new LinearLayout(a);
            item.setOrientation(LinearLayout.VERTICAL);
            item.setPadding(dp(a, 9), dp(a, 6), dp(a, 9), dp(a, 6));
            GradientDrawable pill = new GradientDrawable();
            pill.setCornerRadius(dp(a, 10));
            pill.setColor(isCurrent ? ((accent & 0x00FFFFFF) | 0x14000000) : 0xFFF2F2F7);
            if (isCurrent) pill.setStroke(1, (accent & 0x00FFFFFF) | 0x55000000);
            item.setBackground(pill);

            TextView meta = new TextView(a);
            meta.setText(when.isEmpty() ? tag : (tag + "  " + when));
            meta.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10.5f);
            meta.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
            meta.setTextColor(isCurrent ? accent : 0xFF8E8E93);
            item.addView(meta);

            TextView body = new TextView(a);
            body.setText(v.text);
            body.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
            body.setTextColor(isCurrent ? 0xFF1C1C1E : 0xFF636366);
            LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            blp.topMargin = dp(a, 2);
            item.addView(body, blp);

            LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            if (i > 0) ilp.topMargin = dp(a, 6);
            list.addView(item, ilp);
        }
        sv.addView(list);
        LinearLayout.LayoutParams svLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        svLp.weight = 1f;
        card.addView(sv, svLp);

        View div2 = new View(a);
        div2.setBackgroundColor(0xFFE5E5EA);
        card.addView(div2, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1));

        LinearLayout btns = new LinearLayout(a);
        btns.setOrientation(LinearLayout.HORIZONTAL);
        btns.setGravity(Gravity.END);
        btns.setPadding(dp(a, 8), dp(a, 6), dp(a, 8), dp(a, 8));

        TextView doneBtn = makeDialogBtn(a, "Done", 0xFF3A3A3C, false);
        doneBtn.setOnClickListener(v -> dlg.dismiss());
        btns.addView(doneBtn);
        card.addView(btns);

        dlg.setContentView(card);
        Window w = dlg.getWindow();
        if (w != null) {
            w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            WindowManager.LayoutParams wlp = w.getAttributes();
            wlp.width = dp(a, 214);
            wlp.height = WindowManager.LayoutParams.WRAP_CONTENT;
            wlp.dimAmount = 0.45f;
            w.setAttributes(wlp);
        }
        dlg.show();
        doneBtn.requestFocus();
    }

    /** Mini reaction badge matching flipped chat colors (yours = white, theirs = contact color). */
    private static final class MiniBadgeView extends View {
        private final WaveIMessageDb.Reaction r;
        private final int contactColor;
        private final Paint bg = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint stroke = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint gp = new Paint(Paint.ANTI_ALIAS_FLAG);

        MiniBadgeView(Context c, WaveIMessageDb.Reaction r, int contactColor) {
            super(c);
            this.r = r;
            this.contactColor = contactColor;
            stroke.setStyle(Paint.Style.STROKE);
            stroke.setColor(BadgeView.MINE_STROKE);
            stroke.setStrokeWidth(Math.max(1f, c.getResources().getDisplayMetrics().density));
        }

        @Override
        protected void onDraw(Canvas c) {
            float rad = Math.min(getWidth(), getHeight()) * 0.5f - 1f;
            float cx = getWidth() * 0.5f;
            float cy = getHeight() * 0.5f;
            boolean mine = r.isMine();
            bg.setColor(mine ? BadgeView.MINE_FILL : contactColor);
            c.drawCircle(cx, cy, rad, bg);
            if (mine) c.drawCircle(cx, cy, rad, stroke);
            int fg = mine ? BadgeView.MINE_GLYPH
                    : (BadgeView.isLight(contactColor) ? 0xFF1C1C1E : Color.WHITE);
            drawTapbackGlyph(c, r.kind, r.emoji, cx, cy, rad * 1.18f, fg,
                    mine && r.kind == Body.REACT_HEART, gp);
        }
    }

    private static TextView makeDialogBtn(Context ctx, String text, final int color, final boolean primary) {
        final TextView tv = new TextView(ctx);
        tv.setText(text);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        tv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        tv.setGravity(Gravity.CENTER);
        tv.setFocusable(true);
        tv.setClickable(true);
        tv.setPadding(dp(ctx, 12), dp(ctx, 6), dp(ctx, 12), dp(ctx, 6));

        StateListDrawable sld = new StateListDrawable();
        GradientDrawable focused = new GradientDrawable();
        focused.setColor(primary ? color : 0xFFE5E5EA);
        focused.setCornerRadius(dp(ctx, 12));
        focused.setStroke(dp(ctx, 2), primary ? 0xFF1C1C1E : color);
        GradientDrawable normal = new GradientDrawable();
        normal.setColor(primary ? ((color & 0x00FFFFFF) | 0x1A000000) : 0x00000000);
        normal.setCornerRadius(dp(ctx, 12));
        sld.addState(new int[]{android.R.attr.state_focused}, focused);
        sld.addState(new int[]{android.R.attr.state_pressed}, focused);
        sld.addState(new int[]{}, normal);
        tv.setBackground(sld);
        tv.setTextColor(color);
        return tv;
    }

    static String formatAddress(String addr) {
        if (addr == null || addr.isEmpty() || addr.indexOf('@') >= 0) return addr;
        try {
            String country = Locale.getDefault().getCountry();
            if (country == null || country.isEmpty()) country = "US";
            String f = PhoneNumberUtils.formatNumber(addr, country);
            if (!TextUtils.isEmpty(f)) return f;
        } catch (Throwable ignored) {}
        return addr;
    }

    // -----------------------------------------------------------------------------------------
    // React / Reactions menu items & Sonim-styled horizontal Tapback picker

    public static void onCreateMessageMenu(Menu menu, final Activity a, final MessageItem mi) {
        try {
            if (menu == null || mi == null || mi.mMessageUri == null) return;
            menu.removeItem(MENU_REACT);
            menu.removeItem(MENU_REACTIONS);
            menu.removeItem(MENU_EDIT_HISTORY);
            menu.removeItem(MENU_DOWNLOAD_FILES);
            final WaveIMessageDb db = WaveIMessageDb.get(a);
            int files = db.filesFor(mi.mMessageUri).size();
            if (files > 0) {
                menu.add(0, MENU_DOWNLOAD_FILES, 0, files == 1 ? "Download file" : "Download " + files + " files")
                        .setOnMenuItemClickListener(item -> {
                            WaveIMessageSave.downloadFiles(a, mi.mMessageUri);
                            return true;
                        });
            }
            final WaveIMessageDb.Msg msg = db.byUri(mi.mMessageUri);
            if (msg == null || TextUtils.isEmpty(msg.appleId)) return;
            WaveIMessageDb.Info info = db.infoForUri(mi.mMessageUri);
            boolean unsent = (info != null && info.unsent()) || WaveIMessageStore.UNSENT.equals(msg.text);
            boolean notice = (info != null && info.notice());
            if (!unsent && !notice && WaveIMessageHost.connected() != null) {
                menu.add(0, MENU_REACT, 0, "React").setOnMenuItemClickListener(item -> {
                    showReactPicker(a, mi.mMessageUri, msg);
                    return true;
                });
            }
            List<WaveIMessageDb.Reaction> rs = reactions(a, mi.mMessageUri);
            if (!rs.isEmpty()) {
                menu.add(0, MENU_REACTIONS, 0, "Reactions (" + rs.size() + ")")
                        .setOnMenuItemClickListener(item -> {
                            showWho(a, mi.mMessageUri);
                            return true;
                        });
            }
            if (info != null && info.edited()) {
                final List<WaveIMessageDb.Version> hist = db.editHistoryForUri(mi.mMessageUri);
                if (!hist.isEmpty()) {
                    menu.add(0, MENU_EDIT_HISTORY, 0, "Edit history")
                            .setOnMenuItemClickListener(item -> {
                                showEditHistory(a, hist);
                                return true;
                            });
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "tapback menu", t);
        }
    }

    public static boolean canReactToUri(Context ctx, Uri msgUri) {
        if (ctx == null || msgUri == null || WaveIMessageHost.connected() == null) return false;
        WaveIMessageDb db = WaveIMessageDb.get(ctx);
        WaveIMessageDb.Msg msg = db.byUri(msgUri);
        if (msg == null || TextUtils.isEmpty(msg.appleId)) return false;
        WaveIMessageDb.Info info = db.infoForUri(msgUri);
        if (info != null && (info.unsent() || info.notice())) return false;
        return !WaveIMessageStore.UNSENT.equals(msg.text);
    }

    public static void showReactPickerForUri(Activity a, Uri msgUri) {
        if (a == null || msgUri == null) return;
        WaveIMessageDb.Msg msg = WaveIMessageDb.get(a).byUri(msgUri);
        if (msg == null || TextUtils.isEmpty(msg.appleId)) return;
        showReactPicker(a, msgUri, msg);
    }

    /** Native Sonim Material AlertDialog with single-row 6-reaction D-pad selector. */
    private static void showReactPicker(final Activity a, final Uri uri, final WaveIMessageDb.Msg msg) {
        int mine = -1;
        for (WaveIMessageDb.Reaction r : reactions(a, uri)) {
            if (r.isMine()) mine = r.kind;
        }
        final int current = mine;
        int initialIdx = 0;
        for (int i = 0; i < KINDS.length; i++) {
            if (KINDS[i] == current) {
                initialIdx = i;
                break;
            }
        }

        LinearLayout content = new LinearLayout(a);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setGravity(Gravity.CENTER_HORIZONTAL);
        content.setPadding(dp(a, 6), dp(a, 10), dp(a, 6), dp(a, 8));

        final TapbackBarView bar = new TapbackBarView(a, current, initialIdx);
        content.addView(bar, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        final TextView label = new TextView(a);
        label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
        label.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        label.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams lblLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lblLp.topMargin = dp(a, 8);
        content.addView(label, lblLp);

        final Runnable syncLabel = () -> {
            int idx = bar.focusedIndex;
            int k = KINDS[idx];
            if (k == current) {
                label.setText("Remove " + NAMES[idx]);
                label.setTextColor(0xFFC62828);
            } else {
                label.setText(NAMES[idx]);
                label.setTextColor(0xFF212121);
            }
        };
        syncLabel.run();

        final AlertDialog dlg = new AlertDialog.Builder(a)
                .setTitle("React")
                .setView(content)
                .setNegativeButton("Cancel", null)
                .create();

        dlg.setOnKeyListener((d, keyCode, event) -> {
            if (event.getAction() != KeyEvent.ACTION_DOWN) return false;
            if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) {
                bar.move(-1);
                syncLabel.run();
                return true;
            }
            if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
                bar.move(1);
                syncLabel.run();
                return true;
            }
            if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER || keyCode == KeyEvent.KEYCODE_ENTER) {
                int kind = KINDS[bar.focusedIndex];
                d.dismiss();
                send(a, uri, msg, kind, kind != current, current);
                return true;
            }
            return false;
        });

        dlg.show();
    }

    /** Native Sonim-styled horizontal 6-reaction selector bar. */
    private static final class TapbackBarView extends View {
        private final int currentKind;
        int focusedIndex;
        private final Paint bgPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint strokePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint glyphPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF cellRect = new RectF();

        TapbackBarView(Context ctx, int currentKind, int initialIdx) {
            super(ctx);
            this.currentKind = currentKind;
            this.focusedIndex = initialIdx;
            strokePaint.setStyle(Paint.Style.STROKE);
        }

        void move(int delta) {
            int n = KINDS.length;
            focusedIndex = (focusedIndex + delta + n) % n;
            invalidate();
        }

        private float d() { return getResources().getDisplayMetrics().density; }

        @Override
        protected void onMeasure(int wSpec, int hSpec) {
            float den = d();
            int cell = Math.round(32f * den);
            int w = cell * KINDS.length;
            int h = Math.round(36f * den);
            setMeasuredDimension(w, h);
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = d();
            float cell = getWidth() / (float) KINDS.length;
            float cy = getHeight() * 0.5f;
            float r = 13f * den;

            for (int i = 0; i < KINDS.length; i++) {
                int kind = KINDS[i];
                float cx = cell * (i + 0.5f);
                boolean isCurrent = (kind == currentKind);
                boolean isFocused = (i == focusedIndex);

                // Sonim native rectangular blue-grey focus box behind focused item
                if (isFocused) {
                    cellRect.set(cell * i + den, den, cell * (i + 1) - den, getHeight() - den);
                    bgPaint.setColor(SONIM_FOCUS_FILL);
                    c.drawRect(cellRect, bgPaint);
                    strokePaint.setColor(SONIM_FOCUS_STROKE);
                    strokePaint.setStrokeWidth(1.5f * den);
                    c.drawRect(cellRect, strokePaint);
                }

                // Current user reaction gets white badge with crisp subtle ring (matches user's white reactions)
                if (isCurrent) {
                    bgPaint.setColor(Color.WHITE);
                    c.drawCircle(cx, cy, r, bgPaint);
                    strokePaint.setColor(0xFF757575);
                    strokePaint.setStrokeWidth(1.2f * den);
                    c.drawCircle(cx, cy, r, strokePaint);
                }

                int fg = (isFocused || isCurrent) ? 0xFF212121 : 0xFF757575;
                boolean heartPink = (kind == Body.REACT_HEART);
                drawTapbackGlyph(c, kind, null, cx, cy, r * 1.18f, fg, heartPink, glyphPaint);
            }
        }
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
        db.setReaction(msg.appleId, WaveIMessageDb.ME, kind, null, enable);
        changed(app);
        new Thread(() -> {
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
            db.setReaction(msg.appleId, WaveIMessageDb.ME, kind, null, false);
            if (previous >= 0) db.setReaction(msg.appleId, WaveIMessageDb.ME, previous, null, true);
            changed(app);
            MAIN.post(() -> Toast.makeText(app, "Couldn't send reaction", Toast.LENGTH_SHORT).show());
        }, "wave-tapback").start();
    }

    public static void changed(Context c) {
        invalidate();
        c.getContentResolver().notifyChange(Uri.parse("content://mms-sms/"), null);
    }

    /** Refreshes open conversations without wiping the reaction cache (e.g. edits/unsends). */
    public static void notifyUi(Context c) {
        c.getContentResolver().notifyChange(Uri.parse("content://mms-sms/"), null);
    }

    private static int dp(Context c, int v) {
        return Math.round(v * c.getResources().getDisplayMetrics().density);
    }
}
