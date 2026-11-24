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
    private static final int TAG_THREAD_ID = 0x57440001;
    private static final String REPLY_PREFIX = "\u21A9 \u201C";
    private static final Pattern E164_PAT = Pattern.compile("\\+[1-9][0-9]{7,14}");

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService IO_EXEC = Executors.newSingleThreadExecutor();
    private static final LruCache<Long, String> MEDIA_LABEL_CACHE = new LruCache<>(128);

    private WaveInboxUi() {}

    /** Called at the end of ConversationListItem.bind(Context, Conversation). */
    public static void onBind(final ConversationListItem row, final Conversation conv) {
        try {
            if (row == null || conv == null) return;
            final TextView snippetTv = (TextView) row.findViewById(ID_SUBJECT);
            if (snippetTv == null) return;

            final long threadId = conv.getThreadId();
            snippetTv.setTag(TAG_THREAD_ID, threadId);

            // Reset italic styling on recycled rows
            boolean unread = conv.hasUnreadMessages();
            snippetTv.setTypeface(Typeface.SANS_SERIF, unread ? Typeface.BOLD : Typeface.NORMAL);

            String snippet = conv.getSnippet();
            if (!TextUtils.isEmpty(snippet) && !TextUtils.isEmpty(snippet.trim())) {
                String cleaned = cleanSnippet(snippet);
                if (!cleaned.equals(snippet)) {
                    snippetTv.setText(cleaned);
                    snippetTv.setVisibility(View.VISIBLE);
                }
                return;
            }

            // Missing snippet (media-only MMS or text-only group MMS without threads.snippet)
            if (threadId <= 0) return;

            String cached = MEDIA_LABEL_CACHE.get(threadId);
            if (cached != null) {
                if (!cached.isEmpty()) applyFallbackSnippet(snippetTv, cached, unread);
                return;
            }
            if (conv.hasAttachment()) {
                applyFallbackSnippet(snippetTv, "\u0001Attachment", unread);
            }
            final Context app = row.getContext().getApplicationContext();
            IO_EXEC.execute(() -> {
                String resolved = resolveLatestSnippet(app, threadId);
                MEDIA_LABEL_CACHE.put(threadId, resolved);
                if (resolved.isEmpty()) return;
                MAIN.post(() -> {
                    Object tag = snippetTv.getTag(TAG_THREAD_ID);
                    if (tag instanceof Long && ((Long) tag) == threadId) {
                        applyFallbackSnippet(snippetTv, resolved, conv.hasUnreadMessages());
                    }
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

    private static void applyFallbackSnippet(TextView tv, String encoded, boolean unread) {
        boolean isMediaLabel = encoded.startsWith("\u0001");
        String text = isMediaLabel ? encoded.substring(1) : encoded;
        tv.setText(text);
        tv.setVisibility(View.VISIBLE);
        if (isMediaLabel) {
            tv.setTypeface(Typeface.SANS_SERIF, unread ? Typeface.BOLD_ITALIC : Typeface.ITALIC);
        } else {
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
