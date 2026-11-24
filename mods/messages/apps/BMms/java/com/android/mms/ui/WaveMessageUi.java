package com.android.mms.ui;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.android.mms.wave.WaveIMessageDb;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * FEAT(imessage): conversation row polish for MessageListItem.
 *
 * Balances Apple Messages visual craft with Sonim's native contact-colored bubble theme:
 * - Generous aspect-preserving rounded inline photos, stickers, videos (with centered play badge
 *   and duration pill), and clean 2-column multi-media grids (replacing tiny 56x56 square boxes,
 *   "4 Attachments" and "13KB" size clutter).
 * - Compact iOS-style inline Voice Message pill (play icon + waveform + cached duration) instead
 *   of the giant stock CD icon box.
 * - Indented accent-bar Reply Quote block for inline replies.
 * - Subtle "Edited" indicator in the bubble footer instead of raw " (edited)" in body text.
 * - 1.6.0+ unsent messages keep text, media and tapbacks inside a subtly softened dashed-outline
 *   bubble with an "Unsent" footer tag; legacy pre-1.6.0 rows render as a quiet ghost pill.
 * - Centered subtle system lines (no bubble, no autoLink underlines) for iMessage group notices.
 * - Crisp hairline definition on white sent bubbles against the warm off-white backdrop.
 */
public final class WaveMessageUi {
    private static final String TAG = "WaveMsgUi";

    // Stock resource IDs (pinned resources.arsc)
    private static final int ID_LIST_PARENT = 0x7f0f00d1;
    private static final int ID_MESSAGE_BLOCK = 0x7f0f00d2;
    private static final int ID_TEXT_TOP = 0x7f0f00d3;
    private static final int ID_SUBJECT_TEXT = 0x7f0f00d4;
    private static final int ID_TEXT_BOTTOM = 0x7f0f00d5;
    private static final int ID_ATTACH_FOOTER = 0x7f0f00d7;
    private static final int ID_NAME_VIEW = 0x7f0f00d9;
    private static final int ID_DATE_VIEW = 0x7f0f00da;
    private static final int ID_MMS_MULTI_VIEW = 0x7f0f00eb;
    private static final int ID_MMS_VIEW = 0x7f0f00ed;
    private static final int ID_PLAY_AUDIO = 0x7f0f00f2;
    private static final int ID_PLAY_VIDEO_PIC = 0x7f0f00f5;

    // Synthetic IDs for views we add inside message_block (vertical LinearLayout)
    private static final int ID_WAVE_MEDIA = 0x57420001;
    private static final int ID_WAVE_QUOTE = 0x57420002;

    // Tag keys for saving original layout metrics on recycled rows
    private static final int TAG_ORIG_BLOCK_MARGINS = 0x57420101;
    private static final int TAG_ORIG_BLOCK_PAD = 0x57420102;
    private static final int TAG_ORIG_PARENT_MARGINS = 0x57420104;
    private static final int TAG_BOUND_URI = 0x57420103;

    private static final String UNSENT_TEXT = "This message was unsent";
    private static final String EDITED_SUFFIX = " (edited)";
    private static final String REPLY_PREFIX = "\u21A9 \u201C";
    private static final Pattern E164_PAT = Pattern.compile("\\+[1-9][0-9]{7,14}");

    private static final int COLOR_IMSG_BLUE = 0xFF007AFF;
    private static final int COLOR_SENT_TEXT = 0xFF1C1C1E;
    private static final int COLOR_SENT_BORDER = 0xFFDFDADE;

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService IO_EXEC = Executors.newFixedThreadPool(2);

    static final class MediaPart {
        final Uri uri;
        final String mime;
        final String name;
        final boolean isImage;
        final boolean isVideo;
        final boolean isAudio;
        final boolean isSticker;

        MediaPart(Uri uri, String mime, String name) {
            this.uri = uri;
            this.mime = mime;
            this.name = name;
            this.isImage = mime.startsWith("image/");
            this.isVideo = mime.startsWith("video/");
            this.isAudio = mime.startsWith("audio/") || "application/ogg".equals(mime);
            String low = name == null ? "" : name.toLowerCase(Locale.ROOT);
            this.isSticker = "image/png".equals(mime) && (low.contains("sticker") || low.contains("imsg"));
        }
    }

    static final class MediaMeta {
        final List<MediaPart> parts;
        MediaMeta(List<MediaPart> parts) { this.parts = parts; }
    }

    private static final LruCache<Long, MediaMeta> META_CACHE = new LruCache<>(200);
    private static final LruCache<String, Bitmap> THUMB_CACHE = new LruCache<String, Bitmap>(3 * 1024 * 1024) {
        @Override
        protected int sizeOf(String key, Bitmap value) {
            return value == null ? 0 : value.getByteCount();
        }
    };
    private static final LruCache<String, Integer> DUR_CACHE = new LruCache<>(200);

    private WaveMessageUi() {}

    /**
     * Called from MessageListItem's stock MMS view methods (showMmsView, initPlayVideoPicView,
     * initPlayAudioView, initSlideShow, attachmentCountDetails). When WaveMessageUi owns this
     * row's inline media, suppresses stock's duplicate 56x56/3-box views and "13KB"/"4 Attachments"
     * footers cleanly.
     */
    public static boolean suppressStockMms(MessageListItem row) {
        try {
            if (row == null) return false;
            MessageItem mi = row.getMessageItem();
            if (mi == null || !mi.isMms() || mi.mMsgId <= 0) return false;
            MediaMeta cached = META_CACHE.get(mi.mMsgId);
            boolean handled;
            if (cached != null) {
                handled = !cached.parts.isEmpty();
            } else {
                handled = (mi.mAttachmentType >= 1 && mi.mAttachmentType <= 4);
            }
            if (!handled) return false;
            View blockView = row.findViewById(ID_MESSAGE_BLOCK);
            if (blockView instanceof LinearLayout) {
                LinearLayout block = (LinearLayout) blockView;
                hideStockMmsViews(block);
                hideId(block, ID_ATTACH_FOOTER);
            }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Called at the end of MessageListItem.bindCommonMessage (covers initial + async PDU rebinds). */
    public static void onBindRow(MessageListItem row) {
        try {
            if (row == null) return;
            MessageItem mi = row.getMessageItem();
            View blockView = row.findViewById(ID_MESSAGE_BLOCK);
            if (mi == null || !(blockView instanceof LinearLayout)) return;
            LinearLayout block = (LinearLayout) blockView;
            Context ctx = row.getContext();
            boolean isMe = mi.isMe();

            saveOriginalMetrics(row, block);
            restoreNormalRow(row, block, isMe);

            TextView bottomTv = (TextView) block.findViewById(ID_TEXT_BOTTOM);
            TextView topTv = (TextView) block.findViewById(ID_TEXT_TOP);
            TextView bodyTv = (topTv != null && topTv.getVisibility() == View.VISIBLE
                    && !TextUtils.isEmpty(topTv.getText())) ? topTv : bottomTv;
            TextView dateTv = (TextView) block.findViewById(ID_DATE_VIEW);
            View metaRow = dateTv != null && dateTv.getParent() instanceof View
                    ? (View) dateTv.getParent() : null;

            WaveIMessageDb.Info info = mi.mMessageUri != null
                    ? WaveIMessageDb.get(ctx).infoForUri(mi.mMessageUri) : null;

            String rawBody = bodyTv != null && bodyTv.getText() != null
                    ? bodyTv.getText().toString() : "";

            // 1. Group event notice -> Apple-style centered subtle system line
            boolean isNotice = (info != null && info.notice()) || isLegacyGroupNotice(rawBody);
            if (isNotice && !TextUtils.isEmpty(rawBody)) {
                String noticeText = (info != null && !TextUtils.isEmpty(info.text))
                        ? info.text : rawBody;
                applyGroupNoticeStyle(ctx, row, block, bodyTv, metaRow, noticeText);
                hideStockMmsViews(block);
                return;
            }

            // 2. Unsent message:
            //    - Pre-1.6.0 legacy rows ("This message was unsent", no media) -> quiet ghost pill.
            //    - 1.6.0+ rows (FLAG_UNSENT) -> keep original message text, media & tapbacks inside
            //      a subtly softened dashed-outline bubble with an "Unsent" footer tag.
            boolean isUnsent = (info != null && info.unsent());
            boolean isLegacyUnsent = UNSENT_TEXT.equals(rawBody.trim());
            if (isLegacyUnsent && !isUnsent) {
                applyLegacyUnsentStyle(ctx, block, bodyTv, dateTv, isMe);
                hideStockMmsViews(block);
                return;
            }

            // 3. Inline Reply Quote + Edited tag + Unsent tag + Placeholder polish
            boolean isEdited = (info != null && info.edited());
            String quote = null;
            String displayBody = rawBody;

            if (info != null && !TextUtils.isEmpty(info.quote)) {
                quote = info.quote;
                displayBody = !TextUtils.isEmpty(info.text) ? info.text : stripLegacyReply(rawBody);
            } else if (rawBody.startsWith(REPLY_PREFIX)) {
                int endQuote = rawBody.indexOf("\u201D\n", REPLY_PREFIX.length());
                if (endQuote > REPLY_PREFIX.length()) {
                    quote = rawBody.substring(REPLY_PREFIX.length(), endQuote);
                    displayBody = rawBody.substring(endQuote + 2);
                }
            }

            if (info != null && (info.edited() || info.unsent())) {
                if (!TextUtils.isEmpty(info.text) || isUnsent) {
                    displayBody = info.text;
                }
            } else {
                if (TextUtils.isEmpty(displayBody) && info != null && !TextUtils.isEmpty(info.text)) {
                    displayBody = info.text;
                }
                if (displayBody.endsWith(EDITED_SUFFIX)) {
                    isEdited = true;
                    displayBody = displayBody.substring(0, displayBody.length() - EDITED_SUFFIX.length());
                }
                if (displayBody.endsWith("\nUnsent")) {
                    isUnsent = true;
                    displayBody = displayBody.substring(0, displayBody.length() - "\nUnsent".length());
                }
            }

            if (isUnsent && TextUtils.isEmpty(displayBody.trim()) && !mi.isMms()) {
                applyLegacyUnsentStyle(ctx, block, bodyTv, dateTv, isMe);
                hideStockMmsViews(block);
                return;
            }

            if (bodyTv != null) {
                if (!displayBody.equals(rawBody)) {
                    bodyTv.setText(displayBody);
                }
                if (isAttachmentPlaceholder(displayBody)) {
                    bodyTv.setTypeface(Typeface.SANS_SERIF, Typeface.ITALIC);
                    bodyTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
                    bodyTv.setTextColor(isMe ? 0xFF636366 : 0xCCFFFFFF);
                }
            }

            if (isUnsent) {
                int baseFill = isMe ? 0xF2FFFFFF : ((activeAccentColor() & 0x00FFFFFF) | 0xB8000000);
                int stroke = isMe ? 0xFFB8B8BE : 0xB3FFFFFF;
                block.setBackground(makeBubbleDrawable(ctx, isMe, baseFill, stroke, true));
            }

            if ((isEdited || isUnsent) && dateTv != null && dateTv.getVisibility() == View.VISIBLE) {
                CharSequence cur = dateTv.getText();
                String curStr = cur == null ? "" : cur.toString();
                StringBuilder sb = new StringBuilder(curStr);
                if (isEdited && !curStr.contains("Edited")) {
                    if (sb.length() > 0) sb.append("  ");
                    sb.append("Edited");
                }
                if (isUnsent && !curStr.contains("Unsent")) {
                    if (sb.length() > 0) sb.append("  ");
                    sb.append("Unsent");
                }
                dateTv.setText(sb.toString());
            }

            // 4. Inline Media (Photos, Videos, Voice messages, Multi-media) on MMS rows
            boolean hasCustomMedia = false;
            if (mi.isMms() && mi.mMessageUri != null && mi.mMsgId > 0) {
                hasCustomMedia = bindInlineMedia(row, block, mi, isMe);
            }

            // 5. Quoted reply block inside vertical LinearLayout message_block (right above text)
            QuoteView quoteView = (QuoteView) block.findViewById(ID_WAVE_QUOTE);
            if (!TextUtils.isEmpty(quote)) {
                if (quoteView == null) {
                    quoteView = new QuoteView(ctx);
                    quoteView.setId(ID_WAVE_QUOTE);
                    int insertIdx = hasCustomMedia ? 1 : 0;
                    LinearLayout.LayoutParams qlp = new LinearLayout.LayoutParams(
                            ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                    qlp.leftMargin = dp(ctx, 8);
                    qlp.rightMargin = dp(ctx, 8);
                    qlp.topMargin = dp(ctx, 2);
                    qlp.bottomMargin = dp(ctx, 3);
                    block.addView(quoteView, Math.min(insertIdx, block.getChildCount()), qlp);
                }
                quoteView.bind(quote, isMe, activeAccentColor());
                quoteView.setVisibility(View.VISIBLE);
            } else if (quoteView != null) {
                quoteView.setVisibility(View.GONE);
            }

            // Hide empty mms_subject_text (stock XML omits visibility="gone", leaving a 24dp gap!)
            TextView subjTv = (TextView) block.findViewById(ID_SUBJECT_TEXT);
            if (subjTv != null && TextUtils.isEmpty(subjTv.getText())) {
                subjTv.setVisibility(View.GONE);
            }

            // Hide empty body TextView cleanly on media-only bubbles, and ensure non-empty
            // captions (including unsent photo captions from info.text) stay visible & tidy.
            if (hasCustomMedia && bodyTv != null) {
                if (TextUtils.isEmpty(displayBody.trim())) {
                    bodyTv.setVisibility(View.GONE);
                } else {
                    bodyTv.setVisibility(View.VISIBLE);
                    bodyTv.setPadding(dp(ctx, 6), dp(ctx, 4), dp(ctx, 6), dp(ctx, 1));
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "onBindRow failed", t);
        }
    }

    // --- State save & restore (critical for ListView recycling!) ---

    private static void saveOriginalMetrics(MessageListItem row, LinearLayout block) {
        if (block.getTag(TAG_ORIG_BLOCK_MARGINS) == null
                && block.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams lp = (ViewGroup.MarginLayoutParams) block.getLayoutParams();
            block.setTag(TAG_ORIG_BLOCK_MARGINS, new int[]{
                    lp.width, lp.leftMargin, lp.topMargin, lp.rightMargin, lp.bottomMargin});
        }
        if (block.getTag(TAG_ORIG_BLOCK_PAD) == null) {
            block.setTag(TAG_ORIG_BLOCK_PAD, new int[]{
                    block.getPaddingLeft(), block.getPaddingTop(),
                    block.getPaddingRight(), block.getPaddingBottom()});
        }
        View listParent = row.findViewById(ID_LIST_PARENT);
        if (listParent != null && listParent.getTag(TAG_ORIG_PARENT_MARGINS) == null
                && listParent.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) listParent.getLayoutParams();
            listParent.setTag(TAG_ORIG_PARENT_MARGINS, new int[]{
                    mlp.leftMargin, mlp.topMargin, mlp.rightMargin, mlp.bottomMargin});
        }
    }

    private static void restoreNormalRow(MessageListItem row, LinearLayout block, boolean isMe) {
        Context ctx = row.getContext();
        // Restore listParent margins
        View listParent = row.findViewById(ID_LIST_PARENT);
        if (listParent != null && listParent.getTag(TAG_ORIG_PARENT_MARGINS) instanceof int[]
                && listParent.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            int[] pm = (int[]) listParent.getTag(TAG_ORIG_PARENT_MARGINS);
            ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) listParent.getLayoutParams();
            mlp.setMargins(pm[0], pm[1], pm[2], pm[3]);
            listParent.setLayoutParams(mlp);
        }
        // Restore relative wrapper width to wrap_content
        ViewParent bp = block.getParent();
        if (bp instanceof RelativeLayout) {
            ViewGroup.LayoutParams rlp = ((RelativeLayout) bp).getLayoutParams();
            if (rlp != null && rlp.width != ViewGroup.LayoutParams.WRAP_CONTENT) {
                rlp.width = ViewGroup.LayoutParams.WRAP_CONTENT;
                ((RelativeLayout) bp).setLayoutParams(rlp);
            }
        }
        // Restore bubble margins & alignment
        Object om = block.getTag(TAG_ORIG_BLOCK_MARGINS);
        if (om instanceof int[] && block.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            int[] m = (int[]) om;
            RelativeLayout.LayoutParams lp = (RelativeLayout.LayoutParams) block.getLayoutParams();
            lp.width = m[0];
            lp.setMargins(m[1], m[2], m[3], m[4]);
            lp.removeRule(RelativeLayout.CENTER_HORIZONTAL);
            if (isMe) {
                lp.removeRule(RelativeLayout.ALIGN_PARENT_LEFT);
                lp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            } else {
                lp.removeRule(RelativeLayout.ALIGN_PARENT_RIGHT);
                lp.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
            }
            block.setLayoutParams(lp);
        }
        Object op = block.getTag(TAG_ORIG_BLOCK_PAD);
        if (op instanceof int[]) {
            int[] p = (int[]) op;
            block.setPadding(p[0], p[1], p[2], p[3]);
        }

        // Crisp bubble drawable: Sonim contact color for received, crisp bordered white for sent
        block.setBackground(makeBubbleDrawable(ctx, isMe, isMe ? Color.WHITE : activeAccentColor(),
                isMe ? COLOR_SENT_BORDER : 0, false));

        resetBodyTv((TextView) block.findViewById(ID_TEXT_BOTTOM), isMe);
        resetBodyTv((TextView) block.findViewById(ID_TEXT_TOP), isMe);

        TextView dateTv = (TextView) block.findViewById(ID_DATE_VIEW);
        if (dateTv != null) {
            dateTv.setTextColor(isMe ? 0xFF76767A : 0xD9FFFFFF);
            if (dateTv.getParent() instanceof View) {
                ((View) dateTv.getParent()).setVisibility(View.VISIBLE);
            }
        }
        TextView nameTv = (TextView) block.findViewById(ID_NAME_VIEW);
        if (nameTv != null) {
            nameTv.setTextColor(isMe ? 0xFF76767A : 0xD9FFFFFF);
        }

        View wm = block.findViewById(ID_WAVE_MEDIA);
        if (wm != null) wm.setVisibility(View.GONE);
        View wq = block.findViewById(ID_WAVE_QUOTE);
        if (wq != null) wq.setVisibility(View.GONE);
    }

    private static void resetBodyTv(TextView tv, boolean isMe) {
        if (tv == null) return;
        tv.setTypeface(Typeface.SANS_SERIF, Typeface.NORMAL);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15.5f);
        tv.setTextColor(isMe ? COLOR_SENT_TEXT : Color.WHITE);
        tv.setGravity(Gravity.START);
        tv.setAutoLinkMask(android.text.util.Linkify.ALL);
        if (tv.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) tv.getLayoutParams();
            lp.width = ViewGroup.LayoutParams.WRAP_CONTENT;
            lp.gravity = Gravity.START;
            tv.setLayoutParams(lp);
        }
    }

    private static Drawable makeBubbleDrawable(Context ctx, boolean isMe, int fillColor,
                                               int strokeColor, boolean dashed) {
        float r = dp(ctx, 16);
        float tight = dp(ctx, 4);
        GradientDrawable gd = new GradientDrawable();
        gd.setColor(fillColor);
        if (isMe) {
            gd.setCornerRadii(new float[]{r, r, r, r, tight, tight, r, r});
        } else {
            gd.setCornerRadii(new float[]{r, r, r, r, r, r, tight, tight});
        }
        if (strokeColor != 0) {
            if (dashed) {
                gd.setStroke(dp(ctx, 1), strokeColor, dp(ctx, 4), dp(ctx, 3));
            } else {
                gd.setStroke(1, strokeColor);
            }
        }
        return gd;
    }

    // --- Group Notice Style ---

    private static boolean isLegacyGroupNotice(String s) {
        if (TextUtils.isEmpty(s) || s.length() > 140) return false;
        return s.contains(" named the conversation ")
                || s.contains(" left the conversation.")
                || s.contains(" changed the group photo.")
                || s.contains(" removed the group photo.")
                || (s.contains(" added ") && s.endsWith("."))
                || (s.contains(" removed ") && s.endsWith("."));
    }

    private static void applyGroupNoticeStyle(Context ctx, MessageListItem row, LinearLayout block,
                                              TextView bodyTv, View metaRow, String text) {
        // Non-null transparent drawable so stock updateAvatarView.setTint never NPEs on recycle
        block.setBackground(new ColorDrawable(Color.TRANSPARENT));

        View listParent = row.findViewById(ID_LIST_PARENT);
        if (listParent != null && listParent.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams mlp = (ViewGroup.MarginLayoutParams) listParent.getLayoutParams();
            mlp.setMargins(0, dp(ctx, 2), 0, dp(ctx, 2));
            listParent.setLayoutParams(mlp);
        }
        ViewParent bp = block.getParent();
        if (bp instanceof RelativeLayout) {
            ViewGroup.LayoutParams rlp = ((RelativeLayout) bp).getLayoutParams();
            if (rlp != null) {
                rlp.width = ViewGroup.LayoutParams.MATCH_PARENT;
                ((RelativeLayout) bp).setLayoutParams(rlp);
            }
        }
        if (block.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams lp = (RelativeLayout.LayoutParams) block.getLayoutParams();
            lp.width = ViewGroup.LayoutParams.MATCH_PARENT;
            lp.setMargins(dp(ctx, 8), dp(ctx, 2), dp(ctx, 8), dp(ctx, 2));
            lp.removeRule(RelativeLayout.ALIGN_PARENT_LEFT);
            lp.removeRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            lp.addRule(RelativeLayout.CENTER_HORIZONTAL);
            block.setLayoutParams(lp);
        }
        block.setPadding(dp(ctx, 6), dp(ctx, 3), dp(ctx, 6), dp(ctx, 3));
        if (metaRow != null) metaRow.setVisibility(View.GONE);
        hideId(block, ID_ATTACH_FOOTER);

        if (bodyTv != null) {
            bodyTv.setVisibility(View.VISIBLE);
            bodyTv.setAutoLinkMask(0);
            bodyTv.setLinksClickable(false);
            bodyTv.setText(formatNumbersInNotice(text));
            bodyTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11.5f);
            bodyTv.setTextColor(0xFF7A7A80);
            bodyTv.setTypeface(Typeface.SANS_SERIF, Typeface.NORMAL);
            bodyTv.setGravity(Gravity.CENTER_HORIZONTAL);
            if (bodyTv.getLayoutParams() instanceof LinearLayout.LayoutParams) {
                LinearLayout.LayoutParams blp = (LinearLayout.LayoutParams) bodyTv.getLayoutParams();
                blp.width = ViewGroup.LayoutParams.MATCH_PARENT;
                blp.gravity = Gravity.CENTER_HORIZONTAL;
                bodyTv.setLayoutParams(blp);
            }
        }
    }

    private static String formatNumbersInNotice(String text) {
        if (TextUtils.isEmpty(text)) return text;
        Matcher m = E164_PAT.matcher(text);
        StringBuffer sb = new StringBuffer();
        while (m.find()) {
            String raw = m.group();
            String fmt = WaveTapbacks.formatAddress(raw);
            m.appendReplacement(sb, Matcher.quoteReplacement(fmt != null ? fmt : raw));
        }
        m.appendTail(sb);
        return sb.toString();
    }

    // --- Legacy Unsent Style ---

    private static void applyLegacyUnsentStyle(Context ctx, LinearLayout block,
                                               TextView bodyTv, TextView dateTv, boolean isMe) {
        block.setBackground(makeBubbleDrawable(ctx, isMe, 0x80FFFFFF, 0xFFC7C7CC, true));
        if (bodyTv != null) {
            bodyTv.setVisibility(View.VISIBLE);
            bodyTv.setText(UNSENT_TEXT);
            bodyTv.setTypeface(Typeface.SANS_SERIF, Typeface.ITALIC);
            bodyTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
            bodyTv.setTextColor(0xFF7A7A80);
        }
        if (dateTv != null) {
            dateTv.setTextColor(0xFF8E8E93);
        }
    }

    // --- Inline Media Binding ---

    private static boolean bindInlineMedia(final MessageListItem row, final LinearLayout block,
                                           final MessageItem mi, final boolean isMe) {
        final long mmsId = mi.mMsgId;
        final String boundKey = mi.mMessageUri.toString();
        block.setTag(TAG_BOUND_URI, boundKey);

        MediaMeta cached = META_CACHE.get(mmsId);
        if (cached != null) {
            if (cached.parts.isEmpty()) return false;
            renderInlineMedia(row.getContext(), block, cached.parts, isMe);
            return true;
        }

        // Suppress stock duplicate views immediately while parts metadata loads asynchronously
        if (mi.mAttachmentType >= 1 && mi.mAttachmentType <= 4) {
            hideStockMmsViews(block);
            hideId(block, ID_ATTACH_FOOTER);
        }

        final Context app = row.getContext().getApplicationContext();
        IO_EXEC.execute(() -> {
            MediaMeta meta = queryMediaMeta(app, mmsId);
            META_CACHE.put(mmsId, meta);
            if (meta.parts.isEmpty()) return;
            MAIN.post(() -> {
                if (boundKey.equals(block.getTag(TAG_BOUND_URI))) {
                    onBindRow(row);
                    WaveTapbacks.onBind(row);
                }
            });
        });
        return false;
    }

    private static MediaMeta queryMediaMeta(Context app, long mmsId) {
        List<MediaPart> out = new ArrayList<>();
        Uri partsUri = Uri.parse("content://mms/" + mmsId + "/part");
        try (Cursor c = app.getContentResolver().query(partsUri,
                new String[]{"_id", "ct", "cl", "name", "fn"},
                null, null, "_id ASC")) {
            if (c != null) {
                while (c.moveToNext()) {
                    long id = c.getLong(0);
                    String ct = safeStr(c.getString(1)).toLowerCase(Locale.ROOT);
                    if (ct.isEmpty() || "application/smil".equals(ct) || "text/plain".equals(ct)) continue;
                    if (!ct.startsWith("image/") && !ct.startsWith("video/")
                            && !ct.startsWith("audio/") && !"application/ogg".equals(ct)) {
                        continue;
                    }
                    String cl = safeStr(c.getString(2));
                    String name = safeStr(c.getString(3));
                    String fn = safeStr(c.getString(4));
                    String best = !fn.isEmpty() ? fn : (!cl.isEmpty() ? cl : name);
                    out.add(new MediaPart(Uri.parse("content://mms/part/" + id), ct, best));
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "queryMediaMeta failed for " + mmsId, t);
        }
        return new MediaMeta(out);
    }

    private static void renderInlineMedia(Context ctx, LinearLayout block,
                                          List<MediaPart> parts, boolean isMe) {
        hideStockMmsViews(block);
        // Also hide the redundant "4 Attachments   117KB" stock footer
        hideId(block, ID_ATTACH_FOOTER);

        int padSide = dp(ctx, 5);
        int padTop = dp(ctx, 5);
        block.setPadding(padSide, padTop, padSide, dp(ctx, 3));

        LinearLayout host = (LinearLayout) block.findViewById(ID_WAVE_MEDIA);
        if (host == null) {
            host = new LinearLayout(ctx);
            host.setId(ID_WAVE_MEDIA);
            host.setOrientation(LinearLayout.VERTICAL);
            LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            block.addView(host, 0, hlp);
        }
        host.removeAllViews();
        host.setVisibility(View.VISIBLE);

        if (parts.size() == 1) {
            MediaPart p = parts.get(0);
            if (p.isAudio) {
                InlineVoiceView voice = new InlineVoiceView(ctx, isMe, activeAccentColor());
                voice.bind(p.uri);
                host.addView(voice, new LinearLayout.LayoutParams(dp(ctx, 160), dp(ctx, 36)));
            } else {
                InlineVisualView visual = new InlineVisualView(ctx, p);
                host.addView(visual);
            }
        } else {
            InlineGridView grid = new InlineGridView(ctx, parts);
            host.addView(grid);
        }
    }

    private static void hideStockMmsViews(LinearLayout block) {
        hideId(block, ID_MMS_VIEW);
        hideId(block, ID_PLAY_AUDIO);
        hideId(block, ID_PLAY_VIDEO_PIC);
        hideId(block, ID_MMS_MULTI_VIEW);
    }

    private static void hideId(ViewGroup parent, int id) {
        View v = parent.findViewById(id);
        if (v != null && v.getVisibility() != View.GONE) {
            v.setVisibility(View.GONE);
        }
    }

    // --- Custom View: Quoted Reply Block ---

    private static final class QuoteView extends LinearLayout {
        private final View bar;
        private final TextView text;

        QuoteView(Context ctx) {
            super(ctx);
            setOrientation(HORIZONTAL);
            setGravity(Gravity.CENTER_VERTICAL);
            setPadding(dp(ctx, 6), dp(ctx, 4), dp(ctx, 8), dp(ctx, 4));

            bar = new View(ctx);
            LayoutParams blp = new LayoutParams(dp(ctx, 3), ViewGroup.LayoutParams.MATCH_PARENT);
            blp.rightMargin = dp(ctx, 6);
            addView(bar, blp);

            text = new TextView(ctx);
            text.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
            text.setMaxLines(2);
            text.setEllipsize(TextUtils.TruncateAt.END);
            addView(text, new LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
        }

        void bind(String quote, boolean isMe, int accent) {
            GradientDrawable bg = new GradientDrawable();
            bg.setCornerRadius(dp(getContext(), 8));
            bg.setColor(isMe ? 0xFFF2F2F7 : 0x26FFFFFF);
            setBackground(bg);

            GradientDrawable barBg = new GradientDrawable();
            barBg.setCornerRadius(dp(getContext(), 2));
            barBg.setColor(isMe ? accent : 0xCCFFFFFF);
            bar.setBackground(barBg);

            text.setTextColor(isMe ? 0xFF636366 : 0xE6FFFFFF);
            text.setText(quote.trim());
        }
    }

    // --- Custom View: Single Inline Rounded Photo / Video ---

    private static final class InlineVisualView extends View {
        private final MediaPart part;
        private Bitmap bmp;
        private int durationMs = -1;
        private int dispW, dispH;
        private final Paint bmpPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        private final Paint overlayPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path clipPath = new Path();
        private final RectF rect = new RectF();
        private final Rect srcRect = new Rect();

        InlineVisualView(Context ctx, MediaPart part) {
            super(ctx);
            this.part = part;
            float den = ctx.getResources().getDisplayMetrics().density;
            dispW = Math.round(148f * den);
            dispH = Math.round(112f * den);
            textPaint.setColor(Color.WHITE);
            textPaint.setTextSize(10f * den);
            textPaint.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
            loadAsync();
        }

        private void loadAsync() {
            final String key = (part.isVideo ? "vid:" : "img:") + part.uri.toString();
            Bitmap cached = THUMB_CACHE.get(key);
            if (part.isVideo) {
                Integer d = DUR_CACHE.get(part.uri.toString());
                if (d != null) durationMs = d;
            }
            if (cached != null && !cached.isRecycled()) {
                applyBitmap(cached);
                return;
            }
            final Context app = getContext().getApplicationContext();
            IO_EXEC.execute(() -> {
                Bitmap loaded;
                int dur = -1;
                if (part.isVideo) {
                    loaded = decodeVideoFrame(app, part.uri);
                    dur = readMediaDuration(app, part.uri);
                    if (dur >= 0) DUR_CACHE.put(part.uri.toString(), dur);
                } else {
                    loaded = WaveAttachmentViewer.decodeCrispBitmap(app, part.uri, 340);
                }
                if (loaded != null) THUMB_CACHE.put(key, loaded);
                final int finalDur = dur;
                MAIN.post(() -> {
                    if (finalDur >= 0) durationMs = finalDur;
                    if (loaded != null && !loaded.isRecycled()) {
                        applyBitmap(loaded);
                    } else {
                        invalidate();
                    }
                });
            });
        }

        private void applyBitmap(Bitmap b) {
            this.bmp = b;
            float den = getResources().getDisplayMetrics().density;
            float maxW = 160f * den;
            float maxH = 128f * den;
            float minW = 92f * den;
            float minH = 70f * den;
            float bw = Math.max(1f, b.getWidth());
            float bh = Math.max(1f, b.getHeight());
            float ratio = bw / bh;

            float w, h;
            if (ratio >= 1f) {
                w = maxW;
                h = w / ratio;
                if (h < minH) h = minH;
                if (h > maxH) { h = maxH; w = h * ratio; }
            } else {
                h = maxH;
                w = h * ratio;
                if (w < minW) w = minW;
                if (w > maxW) { w = maxW; h = w / ratio; }
            }
            dispW = Math.round(Math.min(maxW, w));
            dispH = Math.round(Math.min(maxH, h));
            requestLayout();
            invalidate();
        }

        @Override
        protected void onMeasure(int wSpec, int hSpec) {
            setMeasuredDimension(dispW, dispH);
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            float rad = 12f * den;
            rect.set(0, 0, getWidth(), getHeight());
            clipPath.reset();
            clipPath.addRoundRect(rect, rad, rad, Path.Direction.CW);

            c.save();
            c.clipPath(clipPath);
            if (!part.isSticker) {
                overlayPaint.setColor(0x18000000);
                c.drawRect(rect, overlayPaint);
            }
            if (bmp != null && !bmp.isRecycled()) {
                drawCenterCrop(c, bmp, rect, srcRect, bmpPaint);
            }
            if (part.isVideo) {
                float cx = getWidth() * 0.5f;
                float cy = getHeight() * 0.5f;
                float pr = 17f * den;
                overlayPaint.setColor(0x9E000000);
                c.drawCircle(cx, cy, pr, overlayPaint);
                overlayPaint.setColor(Color.WHITE);
                float s = pr * 0.44f;
                Path tri = new Path();
                tri.moveTo(cx - s * 0.52f, cy - s);
                tri.lineTo(cx + s * 1.05f, cy);
                tri.lineTo(cx - s * 0.52f, cy + s);
                tri.close();
                c.drawPath(tri, overlayPaint);

                if (durationMs > 0) {
                    String dur = WaveAttachmentViewer.formatDuration(durationMs);
                    float tw = textPaint.measureText(dur);
                    float pw = tw + 10f * den;
                    float ph = 15f * den;
                    float px = getWidth() - pw - 5f * den;
                    float py = getHeight() - ph - 5f * den;
                    overlayPaint.setColor(0x9E000000);
                    RectF pill = new RectF(px, py, px + pw, py + ph);
                    c.drawRoundRect(pill, ph * 0.5f, ph * 0.5f, overlayPaint);
                    Paint.FontMetrics fm = textPaint.getFontMetrics();
                    c.drawText(dur, px + 5f * den,
                            py + ph * 0.5f - (fm.ascent + fm.descent) * 0.5f, textPaint);
                }
            }
            c.restore();
        }
    }

    // --- Custom View: Clean 2-Column Multi-Media Grid ---

    private static final class InlineGridView extends View {
        private final List<MediaPart> parts;
        private final Bitmap[] thumbs;
        private final Paint bmpPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        private final Paint overlayPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path clipPath = new Path();
        private final RectF cellRect = new RectF();
        private final Rect srcRect = new Rect();
        private final int shown;

        InlineGridView(Context ctx, List<MediaPart> parts) {
            super(ctx);
            this.parts = parts;
            this.shown = Math.min(4, parts.size());
            this.thumbs = new Bitmap[shown];
            float den = ctx.getResources().getDisplayMetrics().density;
            textPaint.setColor(Color.WHITE);
            textPaint.setTextAlign(Paint.Align.CENTER);
            textPaint.setTextSize(15f * den);
            textPaint.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
            loadAll();
        }

        private void loadAll() {
            final Context app = getContext().getApplicationContext();
            for (int i = 0; i < shown; i++) {
                final int idx = i;
                final MediaPart p = parts.get(i);
                final String key = (p.isVideo ? "vid:" : "img:") + p.uri.toString();
                Bitmap cached = THUMB_CACHE.get(key);
                if (cached != null && !cached.isRecycled()) {
                    thumbs[idx] = cached;
                    continue;
                }
                IO_EXEC.execute(() -> {
                    Bitmap b = p.isVideo ? decodeVideoFrame(app, p.uri)
                            : WaveAttachmentViewer.decodeCrispBitmap(app, p.uri, 200);
                    if (b != null) THUMB_CACHE.put(key, b);
                    MAIN.post(() -> {
                        if (b != null && !b.isRecycled()) {
                            thumbs[idx] = b;
                            invalidate();
                        }
                    });
                });
            }
        }

        @Override
        protected void onMeasure(int wSpec, int hSpec) {
            float den = getResources().getDisplayMetrics().density;
            int w = Math.round(160f * den);
            int rows = (shown <= 2) ? 1 : 2;
            int cellH = Math.round(64f * den);
            int gap = Math.round(2f * den);
            int h = rows * cellH + (rows - 1) * gap;
            setMeasuredDimension(w, h);
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            float gap = 2f * den;
            float rad = 11f * den;
            int rows = (shown <= 2) ? 1 : 2;
            float cellW = (getWidth() - gap) * 0.5f;
            float cellH = (getHeight() - (rows - 1) * gap) / (float) rows;

            clipPath.reset();
            clipPath.addRoundRect(new RectF(0, 0, getWidth(), getHeight()),
                    rad, rad, Path.Direction.CW);
            c.save();
            c.clipPath(clipPath);

            for (int i = 0; i < shown; i++) {
                int col = i % 2;
                int row = i / 2;
                float left = col * (cellW + gap);
                float top = row * (cellH + gap);
                float right = (shown == 3 && i == 2) ? getWidth() : (left + cellW);
                float bottom = top + cellH;
                cellRect.set(left, top, right, bottom);

                overlayPaint.setColor(0x22000000);
                c.drawRect(cellRect, overlayPaint);

                Bitmap b = thumbs[i];
                if (b != null && !b.isRecycled()) {
                    drawCenterCrop(c, b, cellRect, srcRect, bmpPaint);
                }

                if (parts.get(i).isVideo) {
                    float cx = cellRect.centerX();
                    float cy = cellRect.centerY();
                    float pr = 12f * den;
                    overlayPaint.setColor(0x99000000);
                    c.drawCircle(cx, cy, pr, overlayPaint);
                    overlayPaint.setColor(Color.WHITE);
                    float s = pr * 0.44f;
                    Path tri = new Path();
                    tri.moveTo(cx - s * 0.5f, cy - s);
                    tri.lineTo(cx + s, cy);
                    tri.lineTo(cx - s * 0.5f, cy + s);
                    tri.close();
                    c.drawPath(tri, overlayPaint);
                }

                if (i == 3 && parts.size() > 4) {
                    overlayPaint.setColor(0x8A000000);
                    c.drawRect(cellRect, overlayPaint);
                    Paint.FontMetrics fm = textPaint.getFontMetrics();
                    c.drawText("+" + (parts.size() - 4), cellRect.centerX(),
                            cellRect.centerY() - (fm.ascent + fm.descent) * 0.5f, textPaint);
                }
            }
            c.restore();
        }
    }

    // --- Custom View: Compact iOS-style Inline Voice Message Pill ---

    private static final class InlineVoiceView extends View {
        private static final float[] BARS = {
            0.30f, 0.58f, 0.85f, 0.50f, 0.96f, 0.68f, 0.40f, 0.82f,
            1.00f, 0.62f, 0.46f, 0.78f, 0.90f, 0.54f, 0.36f, 0.28f
        };
        private final boolean isMe;
        private final int accent;
        private String durText = "Voice";
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();

        InlineVoiceView(Context ctx, boolean isMe, int accent) {
            super(ctx);
            this.isMe = isMe;
            this.accent = accent;
            float den = ctx.getResources().getDisplayMetrics().density;
            textPaint.setTextSize(11.5f * den);
            textPaint.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
            textPaint.setTextAlign(Paint.Align.RIGHT);
            textPaint.setColor(isMe ? 0xFF3A3A3C : Color.WHITE);
        }

        void bind(final Uri uri) {
            Integer cached = DUR_CACHE.get(uri.toString());
            if (cached != null) {
                durText = cached > 0 ? WaveAttachmentViewer.formatDuration(cached) : "Voice";
                invalidate();
                return;
            }
            final Context app = getContext().getApplicationContext();
            IO_EXEC.execute(() -> {
                int dur = readMediaDuration(app, uri);
                DUR_CACHE.put(uri.toString(), dur);
                MAIN.post(() -> {
                    durText = dur > 0 ? WaveAttachmentViewer.formatDuration(dur) : "Voice";
                    invalidate();
                });
            });
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            float w = getWidth();
            float h = getHeight();
            float cy = h * 0.5f;

            float pr = 13f * den;
            float px = 4f * den + pr;
            paint.setColor(isMe ? accent : Color.WHITE);
            c.drawCircle(px, cy, pr, paint);

            paint.setColor(isMe ? Color.WHITE : accent);
            float s = pr * 0.42f;
            Path tri = new Path();
            tri.moveTo(px - s * 0.50f, cy - s);
            tri.lineTo(px + s * 1.05f, cy);
            tri.lineTo(px - s * 0.50f, cy + s);
            tri.close();
            c.drawPath(tri, paint);

            float durW = textPaint.measureText(durText);
            Paint.FontMetrics fm = textPaint.getFontMetrics();
            c.drawText(durText, w - 4f * den, cy - (fm.ascent + fm.descent) * 0.5f, textPaint);

            float wfLeft = px + pr + 8f * den;
            float wfRight = w - durW - 10f * den;
            float wfW = wfRight - wfLeft;
            if (wfW > 12f * den) {
                int n = BARS.length;
                float step = wfW / (float) n;
                float bw = Math.max(1.8f * den, step * 0.50f);
                float maxBh = h * 0.64f;
                paint.setColor(isMe ? ((accent & 0x00FFFFFF) | 0x99000000) : 0xCCFFFFFF);
                for (int i = 0; i < n; i++) {
                    float bx = wfLeft + step * (i + 0.5f);
                    float bh = Math.max(bw, maxBh * BARS[i]);
                    rect.set(bx - bw * 0.5f, cy - bh * 0.5f, bx + bw * 0.5f, cy + bh * 0.5f);
                    c.drawRoundRect(rect, bw * 0.5f, bw * 0.5f, paint);
                }
            }
        }
    }

    // --- Media decoding helpers ---

    private static void drawCenterCrop(Canvas c, Bitmap b, RectF dst, Rect src, Paint p) {
        int bw = b.getWidth(), bh = b.getHeight();
        float dstRatio = dst.width() / Math.max(1f, dst.height());
        float bmpRatio = bw / (float) Math.max(1, bh);
        if (bmpRatio > dstRatio) {
            int cropW = Math.round(bh * dstRatio);
            int left = (bw - cropW) / 2;
            src.set(left, 0, left + cropW, bh);
        } else {
            int cropH = Math.round(bw / dstRatio);
            int top = (bh - cropH) / 2;
            src.set(0, top, bw, top + cropH);
        }
        c.drawBitmap(b, src, dst, p);
    }

    private static Bitmap decodeVideoFrame(Context app, Uri uri) {
        MediaMetadataRetriever mmr = new MediaMetadataRetriever();
        try {
            mmr.setDataSource(app, uri);
            Bitmap frame = mmr.getFrameAtTime(0, MediaMetadataRetriever.OPTION_CLOSEST_SYNC);
            if (frame == null) return null;
            int max = Math.max(frame.getWidth(), frame.getHeight());
            if (max > 340) {
                float s = 340f / max;
                Bitmap scaled = Bitmap.createScaledBitmap(frame,
                        Math.max(1, Math.round(frame.getWidth() * s)),
                        Math.max(1, Math.round(frame.getHeight() * s)), true);
                if (scaled != frame) frame.recycle();
                return scaled;
            }
            return frame;
        } catch (Throwable t) {
            return null;
        } finally {
            try { mmr.release(); } catch (Throwable ignored) {}
        }
    }

    private static int readMediaDuration(Context app, Uri uri) {
        MediaMetadataRetriever mmr = new MediaMetadataRetriever();
        try {
            mmr.setDataSource(app, uri);
            String s = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION);
            return s == null ? -1 : Integer.parseInt(s);
        } catch (Throwable t) {
            return -1;
        } finally {
            try { mmr.release(); } catch (Throwable ignored) {}
        }
    }

    // --- String & style helpers ---

    private static String stripLegacyReply(String raw) {
        if (raw == null || !raw.startsWith(REPLY_PREFIX)) return raw == null ? "" : raw;
        int end = raw.indexOf("\u201D\n", REPLY_PREFIX.length());
        return end > 0 ? raw.substring(end + 2) : raw;
    }

    private static boolean isAttachmentPlaceholder(String s) {
        if (TextUtils.isEmpty(s)) return false;
        String t = s.trim();
        return t.startsWith("[") && t.endsWith("]")
                && (t.contains("couldn't download") || t.startsWith("[File:")
                || t.startsWith("[Photo") || t.startsWith("[Video")
                || t.startsWith("[Audio") || t.startsWith("[Voice"));
    }

    private static int activeAccentColor() {
        try {
            int c = ComposeMessageActivity.getSendContactColor();
            if (Color.alpha(c) != 0) return c | 0xFF000000;
        } catch (Throwable ignored) {}
        return COLOR_IMSG_BLUE;
    }

    private static String safeStr(String s) { return s == null ? "" : s.trim(); }

    private static int dp(Context c, int v) {
        return Math.round(v * c.getResources().getDisplayMetrics().density);
    }
}
