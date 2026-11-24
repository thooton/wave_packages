package com.android.mms.ui;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import android.view.View;
import android.widget.TextView;

import com.android.mms.data.Conversation;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * FEAT(imessage): conversation list (inbox) polish for ConversationListItem.
 *
 * - Media-only latest messages (no text part) show a clean Apple-style label ("Photo", "Video",
 *   "Voice message", "Attachment") instead of a blank snippet line.
 * - Inline reply snippets ("↩ “original”\nreply") display cleanly as "↩ reply".
 * - Raw E.164 phone numbers in group notices are formatted cleanly.
 */
public final class WaveInboxUi {
    private static final String TAG = "WaveInboxUi";
    private static final int ID_SUBJECT = 0x7f0f003b;
    private static final int ID_ATTACH_STATUS = 0x7f0f0067;
    private static final int ID_ATTACH_INFO = 0x7f0f0069;
    private static final int DRAWABLE_GROUP_AVATAR = 0x7f02003f;
    private static final int COLOR_DEFAULT_CONTACT = 0x7f080031;
    private static final int TAG_HOLDER = 0x57440002;
    private static final int TAG_GROUP_AVATAR = 0x57440003;
    private static final int TAG_LETTER_KEY = 0x57440004;
    private static volatile android.graphics.drawable.Drawable sGroupAvatarDrawable;
    private static volatile int sDefaultContactColor;
    private static volatile boolean sDefaultContactColorLoaded;
    private static volatile int[] sTileColors;

    /** Unpack LetterTileDrawable.sColors TypedArray once into an int[] to eliminate per-frame JNI getColor(). */
    public static int pickTileColor(android.content.res.TypedArray colors, int defaultColor, String identifier) {
        if (colors == null) return defaultColor;
        int[] palette = sTileColors;
        if (palette == null) {
            int len = colors.length();
            if (len <= 0) return defaultColor;
            int[] arr = new int[len];
            for (int i = 0; i < len; i++) {
                arr[i] = colors.getColor(i, defaultColor);
            }
            sTileColors = arr;
            palette = arr;
        }
        int idx = Math.abs(identifier.hashCode()) % palette.length;
        return palette[idx];
    }

    /** Reuse existing LetterTileDrawable on QuickContactBadge in-place (zero new Paint/Drawable/relayout per bind). */
    public static void applyLetterAvatar(
            Context ctx,
            android.widget.QuickContactBadge badge,
            com.android.mms.data.Contact contact
    ) {
        if (ctx == null || badge == null) return;
        if (!sDefaultContactColorLoaded) {
            sDefaultContactColor = ctx.getResources().getColor(COLOR_DEFAULT_CONTACT);
            sDefaultContactColorLoaded = true;
        }
        if (contact != null) {
            contact.setContactColor(sDefaultContactColor);
        }
        android.graphics.drawable.Drawable bg = badge.getBackground();
        if (bg instanceof LetterTileDrawable && contact != null) {
            String name = contact.getNameForAvatar();
            String id = contact.getLookup();
            if (TextUtils.isEmpty(id)) id = contact.getNumber();
            if (TextUtils.isEmpty(name)) name = contact.getNumber();
            String disp = (name != null && id != null && name.equals(id)) ? null : name;
            String key = (disp != null ? disp : "") + '\0' + (id != null ? id : "");
            LetterTileDrawable ltd = (LetterTileDrawable) bg;
            if (!key.equals(badge.getTag(TAG_LETTER_KEY))) {
                ltd.setContactDetails(disp, id);
                badge.setTag(TAG_LETTER_KEY, key);
                badge.invalidate();
            }
            contact.setContactColor(ltd.getColor());
            return;
        }
        android.graphics.drawable.Drawable d =
                com.android.mms.util.MaterialColorMapUtils.getLetterTitleDraw(ctx, contact);
        badge.setBackgroundDrawable(d);
        if (d instanceof LetterTileDrawable && contact != null) {
            String name = contact.getNameForAvatar();
            String id = contact.getLookup();
            if (TextUtils.isEmpty(id)) id = contact.getNumber();
            if (TextUtils.isEmpty(name)) name = contact.getNumber();
            String disp = (name != null && id != null && name.equals(id)) ? null : name;
            badge.setTag(TAG_LETTER_KEY, (disp != null ? disp : "") + '\0' + (id != null ? id : ""));
        } else {
            badge.setTag(TAG_LETTER_KEY, null);
        }
    }
    private static final String REPLY_PREFIX = "\u21A9 \u201C";
    private static final Pattern E164_PAT = Pattern.compile("\\+[1-9][0-9]{7,14}");

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService IO_EXEC = Executors.newSingleThreadExecutor();
    private static final LruCache<Long, String> MEDIA_LABEL_CACHE = new LruCache<>(128);

    private static final class Holder {
        final TextView subjectTv;
        final TextView attachInfoTv;
        final TextView attachStatusTv;
        long threadId = -1;
        int bgResId;
        boolean styledItalic;

        Holder(ConversationListItem row) {
            subjectTv = (TextView) row.findViewById(ID_SUBJECT);
            attachInfoTv = (TextView) row.findViewById(ID_ATTACH_INFO);
            attachStatusTv = (TextView) row.findViewById(ID_ATTACH_STATUS);
        }
    }

    /** Skip Resources.getDrawable() + setBackground() when the row's background state is unchanged. */
    public static void updateBackground(ConversationListItem row, int resId) {
        if (row == null) return;
        Holder h = (Holder) row.getTag(TAG_HOLDER);
        if (h == null) {
            h = new Holder(row);
            row.setTag(TAG_HOLDER, h);
        }
        if (h.bgResId == resId) return;
        h.bgResId = resId;
        row.setBackground(row.getContext().getResources().getDrawable(resId));
    }

    /** Ensure avatar is the sole child of container without detaching/reattaching on every bind. */
    public static void ensureSingleAvatarChild(android.view.ViewGroup container, android.view.View avatar) {
        if (container == null || avatar == null) return;
        if (container.getChildCount() == 1 && container.getChildAt(0) == avatar) return;
        container.removeAllViews();
        container.addView(avatar);
    }

    /** Reuse cached group avatar drawable and ImageView without removeAllViews/new ImageView per row. */
    public static void setGroupAvatar(android.view.ViewGroup container) {
        if (container == null) return;
        if (container.getChildCount() == 1
                && Boolean.TRUE.equals(container.getChildAt(0).getTag(TAG_GROUP_AVATAR))) {
            return;
        }
        container.removeAllViews();
        android.content.Context ctx = container.getContext();
        android.widget.ImageView iv = new android.widget.ImageView(ctx);
        iv.setTag(TAG_GROUP_AVATAR, Boolean.TRUE);
        android.graphics.drawable.Drawable d = sGroupAvatarDrawable;
        if (d == null) {
            d = ctx.getResources().getDrawable(DRAWABLE_GROUP_AVATAR);
            sGroupAvatarDrawable = d;
        }
        iv.setImageDrawable(d);
        container.addView(iv);
    }

    private WaveInboxUi() {}

    /** Called at the end of ConversationListItem.bind(Context, Conversation). */
    public static void onBind(final ConversationListItem row, final Conversation conv) {
        try {
            if (row == null || conv == null) return;
            Holder h = (Holder) row.getTag(TAG_HOLDER);
            if (h == null) {
                h = new Holder(row);
                row.setTag(TAG_HOLDER, h);
            }
            final TextView snippetTv = h.subjectTv;
            if (snippetTv == null) return;

            final long threadId = conv.getThreadId();
            h.threadId = threadId;

            boolean unread = conv.hasUnreadMessages();
            // Reset italic styling only on rows we previously italicized.
            if (h.styledItalic) {
                h.styledItalic = false;
                snippetTv.setTypeface(Typeface.SANS_SERIF, unread ? Typeface.BOLD : Typeface.NORMAL);
            }

            // Stock ConversationListItem.updateAttachmentView() displays MMS text in
            // mAttachmentInfoView (0x7f0f0069) when threads.snippet is empty. Clean it in place
            // and never duplicate it into mSubjectView.
            TextView attachInfoTv = h.attachInfoTv;
            if (attachInfoTv != null && attachInfoTv.getVisibility() == View.VISIBLE) {
                CharSequence infoCs = attachInfoTv.getText();
                String infoStr = infoCs == null ? "" : infoCs.toString();
                if (!TextUtils.isEmpty(infoStr.trim())) {
                    String cleanedInfo = cleanSnippet(infoStr);
                    if (!cleanedInfo.equals(infoStr)) {
                        attachInfoTv.setText(cleanedInfo);
                    }
                    // Guard against stock showing identical text in both subject and attachment info.
                    if (snippetTv.getVisibility() == View.VISIBLE) {
                        CharSequence subjCs = snippetTv.getText();
                        if (subjCs != null && subjCs.toString().trim().equals(cleanedInfo.trim())) {
                            snippetTv.setVisibility(View.GONE);
                        }
                    }
                    return;
                }
            }

            // Stock is showing an MMS download/failure status line; don't add a fallback snippet.
            if (h.attachStatusTv != null && h.attachStatusTv.getVisibility() == View.VISIBLE) {
                return;
            }

            String snippet = conv.getSnippet();
            if (!TextUtils.isEmpty(snippet) && !TextUtils.isEmpty(snippet.trim())) {
                String cleaned = cleanSnippet(snippet);
                if (!cleaned.equals(snippet)) {
                    snippetTv.setText(cleaned);
                    if (snippetTv.getVisibility() != View.VISIBLE) {
                        snippetTv.setVisibility(View.VISIBLE);
                    }
                }
                return;
            }

            // Truly missing snippet (media-only MMS with no text in either view).
            if (threadId <= 0) return;

            String cached = MEDIA_LABEL_CACHE.get(threadId);
            if (cached != null) {
                if (!cached.isEmpty()) applyFallbackSnippet(h, cached, unread);
                return;
            }
            if (conv.hasAttachment()) {
                applyFallbackSnippet(h, "\u0001Attachment", unread);
            }
            final Holder holder = h;
            final Context app = row.getContext().getApplicationContext();
            IO_EXEC.execute(() -> {
                String resolved = resolveLatestSnippet(app, threadId);
                MEDIA_LABEL_CACHE.put(threadId, resolved);
                if (resolved.isEmpty()) return;
                MAIN.post(() -> {
                    if (holder.threadId != threadId) return;
                    if (holder.attachInfoTv != null
                            && holder.attachInfoTv.getVisibility() == View.VISIBLE
                            && !TextUtils.isEmpty(holder.attachInfoTv.getText())) {
                        return;
                    }
                    applyFallbackSnippet(holder, resolved, conv.hasUnreadMessages());
                });
            });
        } catch (Throwable t) {
            Log.w(TAG, "onBind failed", t);
        }
    }

    /** Clears cached media labels when conversations update. */
    public static void invalidate() {
        MEDIA_LABEL_CACHE.evictAll();
    }

    private static void applyFallbackSnippet(Holder h, String encoded, boolean unread) {
        TextView tv = h.subjectTv;
        boolean isMediaLabel = encoded.startsWith("\u0001");
        String text = isMediaLabel ? encoded.substring(1) : encoded;
        tv.setText(text);
        if (tv.getVisibility() != View.VISIBLE) {
            tv.setVisibility(View.VISIBLE);
        }
        if (isMediaLabel) {
            h.styledItalic = true;
            tv.setTypeface(Typeface.SANS_SERIF, unread ? Typeface.BOLD_ITALIC : Typeface.ITALIC);
        } else if (h.styledItalic) {
            h.styledItalic = false;
            tv.setTypeface(Typeface.SANS_SERIF, unread ? Typeface.BOLD : Typeface.NORMAL);
        }
    }

    private static String cleanSnippet(String s) {
        String out = s;
        // Strip inline reply quote header so the actual reply message shows cleanly in the 1-line snippet
        if (out.startsWith(REPLY_PREFIX)) {
            int end = out.indexOf("\u201D\n", REPLY_PREFIX.length());
            if (end > REPLY_PREFIX.length()) {
                out = "\u21A9 " + out.substring(end + 2).trim();
            }
        }
        // Strip trailing "\nUnsent" into inline " (unsent)" so 1-line snippet stays clean
        if (out.endsWith("\nUnsent")) {
            out = out.substring(0, out.length() - "\nUnsent".length()).trim() + " (unsent)";
        }
        // Format raw E.164 phone numbers in group notices
        if (out.indexOf('+') >= 0 && (out.contains(" added ") || out.contains(" removed ")
                || out.contains(" named the conversation ") || out.contains(" left the conversation"))) {
            Matcher m = E164_PAT.matcher(out);
            StringBuffer sb = new StringBuffer();
            while (m.find()) {
                String raw = m.group();
                String fmt = WaveTapbacks.formatAddress(raw);
                m.appendReplacement(sb, Matcher.quoteReplacement(fmt != null ? fmt : raw));
            }
            m.appendTail(sb);
            out = sb.toString();
        }
        return out;
    }

    private static String resolveLatestSnippet(Context app, long threadId) {
        long latestMmsId = -1;
        try (Cursor c = app.getContentResolver().query(
                Uri.parse("content://mms"),
                new String[]{"_id"},
                "thread_id=?",
                new String[]{Long.toString(threadId)},
                "date DESC LIMIT 1")) {
            if (c != null && c.moveToFirst()) latestMmsId = c.getLong(0);
        } catch (Throwable ignored) {}
        if (latestMmsId <= 0) return "";

        int photos = 0, videos = 0, audios = 0, vcards = 0, other = 0;
        String textPart = null;
        try (Cursor c = app.getContentResolver().query(
                Uri.parse("content://mms/" + latestMmsId + "/part"),
                new String[]{"ct", "text"},
                null, null, "_id ASC")) {
            if (c != null) {
                while (c.moveToNext()) {
                    String ct = c.getString(0);
                    if (ct == null) continue;
                    ct = ct.toLowerCase(Locale.ROOT).trim();
                    if ("application/smil".equals(ct)) continue;
                    if ("text/plain".equals(ct)) {
                        String t = c.getString(1);
                        if (!TextUtils.isEmpty(t) && !TextUtils.isEmpty(t.trim()) && textPart == null) {
                            textPart = t.trim();
                        }
                        continue;
                    }
                    if (ct.startsWith("image/")) photos++;
                    else if (ct.startsWith("video/")) videos++;
                    else if (ct.startsWith("audio/") || "application/ogg".equals(ct)) audios++;
                    else if (ct.contains("vcard")) vcards++;
                    else other++;
                }
            }
        } catch (Throwable ignored) {}

        if (textPart != null) return cleanSnippet(textPart);

        int total = photos + videos + audios + vcards + other;
        if (total == 0) return "";
        if (total == 1) {
            if (photos == 1) return "\u0001Photo";
            if (videos == 1) return "\u0001Video";
            if (audios == 1) return "\u0001Voice message";
            if (vcards == 1) return "\u0001Contact";
            return "\u0001Attachment";
        }
        if (photos == total) return "\u0001" + photos + " Photos";
        if (videos == total) return "\u0001" + videos + " Videos";
        return "\u0001" + total + " Attachments";
    }
}
