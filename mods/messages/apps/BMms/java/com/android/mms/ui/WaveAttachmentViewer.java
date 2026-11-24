package com.android.mms.ui;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Movie;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioManager;
import android.media.ExifInterface;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;

import com.android.mms.transaction.MessagingNotification;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Clean, Apple-meets-Sonim full-screen attachment viewer for AttachmentViewActivity.
 *
 * Replaces stock Sonim's cluttered filmstrip viewer (which wasted 25% of the 240x320 screen
 * even on single attachments, rendered bogus "NO MEDIA" slides for captions, used low-res
 * thumbnails for photos, and showed a pink CD icon for voice messages) with:
 * - True full-screen dark viewer for photos & videos (zero extra chrome on single items)
 * - Crisp EXIF-oriented image decoding + animated GIF support + D-pad 2.2x zoom & pan
 * - Auto-playing video with OK play/pause, Left/Right seek, and sleek auto-hiding scrubber
 * - iOS-style Voice Message player with circular play/pause button and animated waveform bars
 * - Parsed vCard / contact card viewer
 * - Clean caption overlay instead of bogus "NO MEDIA" slides
 * - Unified Menu: Save attachment, Save all, Zoom/Play, and React (for iMessages)
 */
public final class WaveAttachmentViewer {
    private static final String TAG = "WaveAttachmentViewer";

    private static final int MENU_SAVE = 0x5801;
    private static final int MENU_SAVE_ALL = 0x5802;
    private static final int MENU_ZOOM = 0x5803;
    private static final int MENU_PLAY_PAUSE = 0x5804;
    private static final int MENU_REACT = 0x5805;

    private static final int COLOR_DARK_BG = 0xFF0B0B0D;
    private static final int COLOR_LIGHT_BG = 0xFFF5F5F7;
    private static final int COLOR_IMSG_BLUE = 0xFF007AFF;

    private static final WeakHashMap<Activity, WaveAttachmentViewer> ACTIVE = new WeakHashMap<>();
    private static final ExecutorService IO_EXEC = Executors.newCachedThreadPool();

    private final Activity act;
    private final Uri mmsUri;
    private final long mmsId;
    private final Handler main = new Handler(Looper.getMainLooper());

    private final List<PartItem> parts = new ArrayList<>();
    private String captionText = "";
    private int currentIndex = 0;
    private boolean destroyed = false;

    private FrameLayout root;
    private FrameLayout contentHost;
    private TextView counterPill;
    private TextView zoomPill;
    private LinearLayout captionBox;
    private TextView captionTv;
    private DotsView dotsView;

    // Active media views/players
    private ZoomPhotoView photoView;
    private GifView gifView;
    private VideoView videoView;
    private View videoPauseOverlay;
    private View videoControls;
    private VideoProgressView videoProgress;
    private TextView videoElapsedTv;
    private TextView videoTotalTv;
    private boolean videoPlaying = false;
    private boolean videoControlsVisible = true;

    private MediaPlayer audioPlayer;
    private WaveformView audioWaveform;
    private AudioPlayButton audioPlayBtn;
    private TextView audioElapsedTv;
    private TextView audioTotalTv;
    private boolean audioPrepared = false;
    private boolean audioCompleted = false;

    private View vcardOpenBtn;

    private final Runnable progressTick = new Runnable() {
        @Override
        public void run() {
            if (destroyed) return;
            updateMediaProgress();
            main.postDelayed(this, 120);
        }
    };

    private final Runnable hideVideoControls = () -> {
        if (destroyed || videoControls == null) return;
        if (videoView != null && videoView.isPlaying()) {
            videoControls.setVisibility(View.GONE);
            videoControlsVisible = false;
        }
    };

    static final class PartItem {
        final long partId;
        final Uri uri;
        final String mime;
        final String filename;
        final Kind kind;

        enum Kind { IMAGE, GIF, VIDEO, AUDIO, VCARD, OTHER }

        PartItem(long partId, Uri uri, String mime, String filename, Kind kind) {
            this.partId = partId;
            this.uri = uri;
            this.mime = mime;
            this.filename = filename;
            this.kind = kind;
        }
    }

    private WaveAttachmentViewer(Activity act, Uri mmsUri, long mmsId) {
        this.act = act;
        this.mmsUri = mmsUri;
        this.mmsId = mmsId;
    }

    // --- Lifecycle hooks called from AttachmentViewActivity ---

    public static boolean onCreate(Activity act) {
        if (act == null) return false;
        Intent intent = act.getIntent();
        if (intent == null) return false;
        // Let stock handle slideshow editing if ever invoked
        if (intent.getBooleanExtra("is_edit_slideshow", false)) return false;
        Uri data = intent.getData();
        if (data == null || !"content".equals(data.getScheme())) return false;
        long mmsId = parseMmsId(data);
        if (mmsId <= 0) return false;

        WaveAttachmentViewer viewer = new WaveAttachmentViewer(act, data, mmsId);
        ACTIVE.put(act, viewer);
        viewer.init(intent);
        return true;
    }

    public static boolean isActive(Activity act) {
        return act != null && ACTIVE.containsKey(act);
    }

    public static void onPause(Activity act) {
        WaveAttachmentViewer v = ACTIVE.get(act);
        if (v != null) v.pauseActiveMedia();
    }

    public static void onDestroy(Activity act) {
        WaveAttachmentViewer v = ACTIVE.remove(act);
        if (v != null) v.release();
    }

    public static boolean dispatchKeyEvent(Activity act, KeyEvent ev) {
        WaveAttachmentViewer v = ACTIVE.get(act);
        return v != null && v.handleKey(ev);
    }

    public static boolean onBackPressed(Activity act) {
        WaveAttachmentViewer v = ACTIVE.get(act);
        return v != null && v.handleBack();
    }

    public static boolean onPrepareOptionsMenu(Activity act, Menu menu) {
        WaveAttachmentViewer v = ACTIVE.get(act);
        if (v == null) return false;
        v.populateMenu(menu);
        return true;
    }

    public static boolean onOptionsItemSelected(Activity act, MenuItem item) {
        WaveAttachmentViewer v = ACTIVE.get(act);
        return v != null && v.handleMenuItem(item);
    }

    // --- Init & loading ---

    private void init(Intent intent) {
        setStatusBar(COLOR_DARK_BG, false);

        root = new FrameLayout(act);
        root.setBackgroundColor(COLOR_DARK_BG);
        root.setFocusable(true);
        root.setFocusableInTouchMode(true);

        contentHost = new FrameLayout(act);
        root.addView(contentHost, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        // Subtle top-right counter pill (only visible when parts.size() > 1)
        counterPill = makeFloatingPill(act);
        FrameLayout.LayoutParams cpLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.TOP | Gravity.END);
        cpLp.topMargin = dp(8);
        cpLp.rightMargin = dp(8);
        counterPill.setVisibility(View.GONE);
        root.addView(counterPill, cpLp);

        // Subtle top-left zoom badge (only visible while zoomed)
        zoomPill = makeFloatingPill(act);
        zoomPill.setText("2×  ◀▲▼▶ pan");
        FrameLayout.LayoutParams zpLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.TOP | Gravity.START);
        zpLp.topMargin = dp(8);
        zpLp.leftMargin = dp(8);
        zoomPill.setVisibility(View.GONE);
        root.addView(zoomPill, zpLp);

        // Caption scrim at bottom (hidden when no caption text)
        captionBox = new LinearLayout(act);
        captionBox.setOrientation(LinearLayout.VERTICAL);
        captionBox.setBackgroundColor(0xA6000000);
        captionBox.setPadding(dp(12), dp(8), dp(12), dp(10));
        captionTv = new TextView(act);
        captionTv.setTextColor(Color.WHITE);
        captionTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        captionTv.setMaxLines(4);
        captionTv.setEllipsize(TextUtils.TruncateAt.END);
        captionBox.addView(captionTv);
        captionBox.setVisibility(View.GONE);
        FrameLayout.LayoutParams capLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.BOTTOM);
        root.addView(captionBox, capLp);

        // Compact bottom dots for multi-attachment (only visible when >1 attachment)
        dotsView = new DotsView(act);
        FrameLayout.LayoutParams dotsLp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, dp(10),
                Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL);
        dotsLp.bottomMargin = dp(6);
        dotsView.setVisibility(View.GONE);
        root.addView(dotsView, dotsLp);

        // Loading spinner while querying parts
        ProgressBar spinner = new ProgressBar(act);
        FrameLayout.LayoutParams spLp = new FrameLayout.LayoutParams(
                dp(32), dp(32), Gravity.CENTER);
        contentHost.addView(spinner, spLp);

        act.setContentView(root);
        root.requestFocus();

        final boolean markUnread = intent.getBooleanExtra("unread", false);
        IO_EXEC.execute(() -> {
            if (markUnread) markAsRead();
            loadParts();
            main.post(() -> {
                if (destroyed) return;
                if (parts.isEmpty()) {
                    if (!captionText.isEmpty()) {
                        showTextOnlyFallback();
                    } else {
                        Toast.makeText(act, "No attachment to display", Toast.LENGTH_SHORT).show();
                        act.finish();
                    }
                    return;
                }
                updateMultiChrome();
                showPart(0);
            });
        });
    }

    private void markAsRead() {
        try {
            ContentValues cv = new ContentValues(2);
            cv.put("seen", 1);
            cv.put("read", 1);
            act.getContentResolver().update(mmsUri, cv, null, null);
            MessagingNotification.blockingUpdateNewMessageIndicator(act, -2L, false);
        } catch (Throwable t) {
            Log.w(TAG, "markAsRead failed", t);
        }
    }

    private void loadParts() {
        Uri partsUri = Uri.parse("content://mms/" + mmsId + "/part");
        StringBuilder cap = new StringBuilder();
        try (Cursor c = act.getContentResolver().query(partsUri,
                new String[]{"_id", "ct", "cl", "name", "fn", "text"},
                null, null, "_id ASC")) {
            if (c == null) return;
            while (c.moveToNext()) {
                long id = c.getLong(0);
                String ct = safeStr(c.getString(1)).toLowerCase(Locale.ROOT);
                String cl = safeStr(c.getString(2));
                String name = safeStr(c.getString(3));
                String fn = safeStr(c.getString(4));
                String text = c.getString(5);

                if ("application/smil".equals(ct)) continue;
                if ("text/plain".equals(ct)) {
                    if (text != null && !text.trim().isEmpty()) {
                        if (cap.length() > 0) cap.append('\n');
                        cap.append(text.trim());
                    }
                    continue;
                }

                PartItem.Kind kind = classify(ct);
                if (kind == PartItem.Kind.OTHER && ct.isEmpty()) continue;

                String bestName = !fn.isEmpty() ? fn : (!cl.isEmpty() ? cl : name);
                Uri uri = Uri.parse("content://mms/part/" + id);
                parts.add(new PartItem(id, uri, ct, bestName, kind));
            }
        } catch (Throwable t) {
            Log.w(TAG, "loadParts failed for " + mmsUri, t);
        }
        captionText = cap.toString().trim();
    }

    private static PartItem.Kind classify(String ct) {
        if ("image/gif".equals(ct)) return PartItem.Kind.GIF;
        if (ct.startsWith("image/")) return PartItem.Kind.IMAGE;
        if (ct.startsWith("video/")) return PartItem.Kind.VIDEO;
        if (ct.startsWith("audio/") || "application/ogg".equals(ct)) return PartItem.Kind.AUDIO;
        if ("text/x-vcard".equals(ct) || "text/vcard".equals(ct)
                || "text/x-vcalendar".equals(ct)) return PartItem.Kind.VCARD;
        return PartItem.Kind.OTHER;
    }

    private void updateMultiChrome() {
        boolean multi = parts.size() > 1;
        counterPill.setVisibility(multi ? View.VISIBLE : View.GONE);
        dotsView.setVisibility(multi ? View.VISIBLE : View.GONE);
        if (multi) {
            counterPill.setText((currentIndex + 1) + " / " + parts.size());
            dotsView.setState(parts.size(), currentIndex);
        }
    }

    private void showPart(int idx) {
        if (idx < 0 || idx >= parts.size()) return;
        stopActiveMedia();
        currentIndex = idx;
        updateMultiChrome();
        zoomPill.setVisibility(View.GONE);
        contentHost.removeAllViews();

        PartItem item = parts.get(idx);
        boolean darkMode = (item.kind == PartItem.Kind.IMAGE
                || item.kind == PartItem.Kind.GIF
                || item.kind == PartItem.Kind.VIDEO);
        int bg = darkMode ? COLOR_DARK_BG : COLOR_LIGHT_BG;
        root.setBackgroundColor(bg);
        setStatusBar(darkMode ? COLOR_DARK_BG : 0xFF1C1C1E, false);
        dotsView.setDarkMode(darkMode);

        // Show caption cleanly on dark media views (raised slightly if dots are shown)
        if (!captionText.isEmpty() && darkMode) {
            captionTv.setText(captionText);
            captionBox.setVisibility(View.VISIBLE);
            FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) captionBox.getLayoutParams();
            lp.bottomMargin = parts.size() > 1 ? dp(20) : 0;
            captionBox.setLayoutParams(lp);
        } else {
            captionBox.setVisibility(View.GONE);
        }

        switch (item.kind) {
            case IMAGE:
                showImage(item);
                break;
            case GIF:
                showGif(item);
                break;
            case VIDEO:
                showVideo(item);
                break;
            case AUDIO:
                showAudio(item);
                break;
            case VCARD:
                showVcard(item);
                break;
            default:
                showGenericFile(item);
                break;
        }
    }

    // --- Photo viewer with crisp full-preview decode + EXIF + D-pad zoom/pan ---

    private void showImage(PartItem item) {
        ZoomPhotoView zp = new ZoomPhotoView(act);
        photoView = zp;
        contentHost.addView(zp, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        ProgressBar spinner = new ProgressBar(act);
        contentHost.addView(spinner, new FrameLayout.LayoutParams(dp(28), dp(28), Gravity.CENTER));

        final int expectedIdx = currentIndex;
        IO_EXEC.execute(() -> {
            Bitmap bmp = decodeCrispBitmap(act, item.uri, 960);
            main.post(() -> {
                if (destroyed || currentIndex != expectedIdx) {
                    if (bmp != null && !bmp.isRecycled()) bmp.recycle();
                    return;
                }
                contentHost.removeView(spinner);
                if (bmp != null) {
                    zp.setBitmap(bmp);
                } else {
                    showErrorLabel("Couldn't open image", true);
                }
            });
        });
    }

    static Bitmap decodeCrispBitmap(Context ctx, Uri uri, int maxEdge) {
        try {
            int orient = ExifInterface.ORIENTATION_NORMAL;
            try (InputStream ein = ctx.getContentResolver().openInputStream(uri)) {
                if (ein != null) {
                    ExifInterface exif = new ExifInterface(ein);
                    orient = exif.getAttributeInt(ExifInterface.TAG_ORIENTATION,
                            ExifInterface.ORIENTATION_NORMAL);
                }
            } catch (Throwable ignored) {}

            BitmapFactory.Options bounds = new BitmapFactory.Options();
            bounds.inJustDecodeBounds = true;
            try (InputStream in = ctx.getContentResolver().openInputStream(uri)) {
                if (in == null) return null;
                BitmapFactory.decodeStream(in, null, bounds);
            }
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null;

            int sample = 1;
            int maxDim = Math.max(bounds.outWidth, bounds.outHeight);
            while (maxDim / (sample * 2) >= maxEdge) {
                sample *= 2;
            }
            BitmapFactory.Options opts = new BitmapFactory.Options();
            opts.inSampleSize = sample;
            Bitmap raw;
            try (InputStream in = ctx.getContentResolver().openInputStream(uri)) {
                if (in == null) return null;
                raw = BitmapFactory.decodeStream(in, null, opts);
            }
            if (raw == null) return null;
            return applyExifOrientation(raw, orient);
        } catch (Throwable t) {
            Log.w(TAG, "decodeCrispBitmap failed for " + uri, t);
            return null;
        }
    }

    private static Bitmap applyExifOrientation(Bitmap src, int orient) {
        Matrix m = new Matrix();
        switch (orient) {
            case ExifInterface.ORIENTATION_ROTATE_90: m.postRotate(90); break;
            case ExifInterface.ORIENTATION_ROTATE_180: m.postRotate(180); break;
            case ExifInterface.ORIENTATION_ROTATE_270: m.postRotate(270); break;
            case ExifInterface.ORIENTATION_FLIP_HORIZONTAL: m.postScale(-1, 1); break;
            case ExifInterface.ORIENTATION_FLIP_VERTICAL: m.postScale(1, -1); break;
            default: return src;
        }
        try {
            Bitmap rotated = Bitmap.createBitmap(src, 0, 0, src.getWidth(), src.getHeight(), m, true);
            if (rotated != src) src.recycle();
            return rotated;
        } catch (Throwable t) {
            return src;
        }
    }

    // --- Animated GIF viewer ---

    private void showGif(PartItem item) {
        GifView gv = new GifView(act);
        gifView = gv;
        contentHost.addView(gv, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        final int expectedIdx = currentIndex;
        IO_EXEC.execute(() -> {
            byte[] data = readAllBytes(act, item.uri);
            Movie movie = (data != null && data.length > 0)
                    ? Movie.decodeByteArray(data, 0, data.length) : null;
            Bitmap fallback = (movie == null || movie.width() <= 0)
                    ? decodeCrispBitmap(act, item.uri, 720) : null;
            main.post(() -> {
                if (destroyed || currentIndex != expectedIdx) return;
                if (movie != null && movie.width() > 0) {
                    gv.setMovie(movie);
                } else if (fallback != null) {
                    contentHost.removeAllViews();
                    ZoomPhotoView zp = new ZoomPhotoView(act);
                    photoView = zp;
                    zp.setBitmap(fallback);
                    contentHost.addView(zp, new FrameLayout.LayoutParams(
                            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
                } else {
                    showErrorLabel("Couldn't open GIF", true);
                }
            });
        });
    }

    // --- Full-screen Video viewer ---

    private void showVideo(PartItem item) {
        VideoView vv = new VideoView(act);
        videoView = vv;
        FrameLayout.LayoutParams vlp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.CENTER);
        contentHost.addView(vv, vlp);

        // Centered translucent play indicator shown only when paused
        PlayBadgeOverlay pauseBadge = new PlayBadgeOverlay(act);
        pauseBadge.setVisibility(View.GONE);
        videoPauseOverlay = pauseBadge;
        contentHost.addView(pauseBadge, new FrameLayout.LayoutParams(
                dp(56), dp(56), Gravity.CENTER));

        // Sleek bottom scrubber bar (auto-hides while playing)
        LinearLayout bar = new LinearLayout(act);
        bar.setOrientation(LinearLayout.VERTICAL);
        bar.setBackgroundColor(0x99000000);
        int bPad = dp(10);
        bar.setPadding(bPad, dp(8), bPad, parts.size() > 1 ? dp(22) : dp(10));

        videoProgress = new VideoProgressView(act);
        bar.addView(videoProgress, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(10)));

        LinearLayout timeRow = new LinearLayout(act);
        timeRow.setOrientation(LinearLayout.HORIZONTAL);
        videoElapsedTv = new TextView(act);
        videoElapsedTv.setText("0:00");
        videoElapsedTv.setTextColor(Color.WHITE);
        videoElapsedTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
        videoTotalTv = new TextView(act);
        videoTotalTv.setText("0:00");
        videoTotalTv.setTextColor(0xB3FFFFFF);
        videoTotalTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
        videoTotalTv.setGravity(Gravity.END);
        timeRow.addView(videoElapsedTv, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        timeRow.addView(videoTotalTv, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout.LayoutParams trLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        trLp.topMargin = dp(2);
        bar.addView(timeRow, trLp);

        videoControls = bar;
        videoControlsVisible = true;
        contentHost.addView(bar, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.BOTTOM));

        vv.setVideoURI(item.uri);
        vv.setOnPreparedListener(mp -> {
            if (destroyed) return;
            videoTotalTv.setText(formatDuration(mp.getDuration()));
            vv.start();
            videoPlaying = true;
            if (videoPauseOverlay != null) videoPauseOverlay.setVisibility(View.GONE);
            main.removeCallbacks(progressTick);
            main.post(progressTick);
            scheduleHideVideoControls();
        });
        vv.setOnCompletionListener(mp -> {
            videoPlaying = false;
            if (videoProgress != null) videoProgress.setProgress(1f);
            if (videoPauseOverlay != null) videoPauseOverlay.setVisibility(View.VISIBLE);
            showVideoControls(false);
        });
        vv.setOnErrorListener((mp, what, extra) -> {
            showErrorLabel("Couldn't play video", true);
            return true;
        });
    }

    private void toggleVideoPlayPause() {
        if (videoView == null) return;
        if (videoView.isPlaying()) {
            videoView.pause();
            videoPlaying = false;
            if (videoPauseOverlay != null) videoPauseOverlay.setVisibility(View.VISIBLE);
            showVideoControls(false);
        } else {
            videoView.start();
            videoPlaying = true;
            if (videoPauseOverlay != null) videoPauseOverlay.setVisibility(View.GONE);
            showVideoControls(true);
            main.removeCallbacks(progressTick);
            main.post(progressTick);
        }
    }

    private void showVideoControls(boolean autoHide) {
        if (videoControls != null) {
            videoControls.setVisibility(View.VISIBLE);
            videoControlsVisible = true;
        }
        main.removeCallbacks(hideVideoControls);
        if (autoHide) scheduleHideVideoControls();
    }

    private void scheduleHideVideoControls() {
        main.removeCallbacks(hideVideoControls);
        main.postDelayed(hideVideoControls, 2500);
    }

    // --- iOS-style Voice Message / Audio Player ---

    private void showAudio(PartItem item) {
        int accent = activeAccentColor();
        LinearLayout outer = new LinearLayout(act);
        outer.setOrientation(LinearLayout.VERTICAL);
        outer.setGravity(Gravity.CENTER);
        outer.setPadding(dp(16), dp(20), dp(16), dp(20));

        // Clean white elevated card
        LinearLayout card = new LinearLayout(act);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setGravity(Gravity.CENTER_HORIZONTAL);
        card.setPadding(dp(16), dp(18), dp(16), dp(16));
        GradientDrawable cardBg = new GradientDrawable();
        cardBg.setColor(Color.WHITE);
        cardBg.setCornerRadius(dp(18));
        cardBg.setStroke(1, 0x1A000000);
        card.setBackground(cardBg);

        // Friendly title ("Voice message" or cleaned filename)
        TextView titleTv = new TextView(act);
        titleTv.setText(friendlyAudioTitle(item.filename));
        titleTv.setTextColor(0xFF1C1C1E);
        titleTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        titleTv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        titleTv.setSingleLine(true);
        titleTv.setEllipsize(TextUtils.TruncateAt.END);
        card.addView(titleTv);

        // Big tactile circular Play/Pause button
        audioPlayBtn = new AudioPlayButton(act, accent);
        LinearLayout.LayoutParams btnLp = new LinearLayout.LayoutParams(dp(58), dp(58));
        btnLp.topMargin = dp(16);
        btnLp.bottomMargin = dp(16);
        card.addView(audioPlayBtn, btnLp);

        // Crisp waveform progress bars
        audioWaveform = new WaveformView(act, accent);
        LinearLayout.LayoutParams wfLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(36));
        card.addView(audioWaveform, wfLp);

        // Elapsed / Total timestamps
        LinearLayout timeRow = new LinearLayout(act);
        timeRow.setOrientation(LinearLayout.HORIZONTAL);
        audioElapsedTv = new TextView(act);
        audioElapsedTv.setText("0:00");
        audioElapsedTv.setTextColor(0xFF3A3A3C);
        audioElapsedTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11.5f);
        audioTotalTv = new TextView(act);
        audioTotalTv.setText("0:00");
        audioTotalTv.setTextColor(0xFF8E8E93);
        audioTotalTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11.5f);
        audioTotalTv.setGravity(Gravity.END);
        timeRow.addView(audioElapsedTv, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        timeRow.addView(audioTotalTv, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout.LayoutParams trLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        trLp.topMargin = dp(6);
        card.addView(timeRow, trLp);

        outer.addView(card, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        // Optional caption below the card
        if (!captionText.isEmpty()) {
            TextView cap = new TextView(act);
            cap.setText(captionText);
            cap.setTextColor(0xFF3A3A3C);
            cap.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
            cap.setGravity(Gravity.CENTER);
            cap.setMaxLines(3);
            cap.setEllipsize(TextUtils.TruncateAt.END);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            clp.topMargin = dp(10);
            outer.addView(cap, clp);
        }

        // Subtle D-pad hint at bottom
        TextView hint = new TextView(act);
        hint.setText(parts.size() == 1 ? "OK play/pause   ◀ ▶ seek" : "OK play/pause   ◀ ▶ next");
        hint.setTextColor(0xFF8E8E93);
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10.5f);
        hint.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        hlp.topMargin = dp(14);
        outer.addView(hint, hlp);

        contentHost.addView(outer, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        // Prepare MediaPlayer
        audioPrepared = false;
        audioCompleted = false;
        try {
            MediaPlayer mp = new MediaPlayer();
            audioPlayer = mp;
            mp.setAudioStreamType(AudioManager.STREAM_MUSIC);
            mp.setDataSource(act, item.uri);
            mp.setOnPreparedListener(p -> {
                if (destroyed || audioPlayer != p) return;
                audioPrepared = true;
                audioTotalTv.setText(formatDuration(p.getDuration()));
                p.start();
                if (audioPlayBtn != null) audioPlayBtn.setPlaying(true);
                main.removeCallbacks(progressTick);
                main.post(progressTick);
            });
            mp.setOnCompletionListener(p -> {
                if (destroyed || audioPlayer != p) return;
                audioCompleted = true;
                if (audioPlayBtn != null) audioPlayBtn.setPlaying(false);
                if (audioWaveform != null) audioWaveform.setProgress(1f);
                if (audioElapsedTv != null) audioElapsedTv.setText(formatDuration(p.getDuration()));
            });
            mp.setOnErrorListener((p, w, e) -> {
                showErrorLabel("Couldn't play audio", false);
                return true;
            });
            mp.prepareAsync();
        } catch (Throwable t) {
            Log.w(TAG, "audio prepare failed", t);
            showErrorLabel("Couldn't play audio", false);
        }
    }

    private void toggleAudioPlayPause() {
        if (audioPlayer == null || !audioPrepared) return;
        try {
            if (audioPlayer.isPlaying()) {
                audioPlayer.pause();
                if (audioPlayBtn != null) audioPlayBtn.setPlaying(false);
            } else {
                if (audioCompleted) {
                    audioPlayer.seekTo(0);
                    audioCompleted = false;
                }
                audioPlayer.start();
                if (audioPlayBtn != null) audioPlayBtn.setPlaying(true);
                main.removeCallbacks(progressTick);
                main.post(progressTick);
            }
        } catch (Throwable t) {
            Log.w(TAG, "toggleAudio failed", t);
        }
    }

    // --- Parsed vCard / Contact Card Viewer ---

    private void showVcard(PartItem item) {
        int accent = activeAccentColor();
        ScrollView sv = new ScrollView(act);
        LinearLayout outer = new LinearLayout(act);
        outer.setOrientation(LinearLayout.VERTICAL);
        outer.setGravity(Gravity.CENTER_HORIZONTAL);
        outer.setPadding(dp(14), dp(18), dp(14), dp(18));

        LinearLayout card = new LinearLayout(act);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setGravity(Gravity.CENTER_HORIZONTAL);
        card.setPadding(dp(14), dp(16), dp(14), dp(14));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.WHITE);
        bg.setCornerRadius(dp(16));
        bg.setStroke(1, 0x1A000000);
        card.setBackground(bg);

        String fn = "";
        String tel = "";
        String email = "";
        String org = "";
        boolean isCal = item.mime.contains("vcalendar");
        try (InputStream in = act.getContentResolver().openInputStream(item.uri)) {
            if (in != null) {
                BufferedReader br = new BufferedReader(new InputStreamReader(in, StandardCharsets.UTF_8));
                String line;
                while ((line = br.readLine()) != null) {
                    String up = line.toUpperCase(Locale.ROOT);
                    int colon = line.indexOf(':');
                    if (colon < 0) continue;
                    String val = line.substring(colon + 1).trim();
                    if (val.isEmpty()) continue;
                    if (!isCal) {
                        if (up.startsWith("FN:") || up.startsWith("FN;")) {
                            if (fn.isEmpty()) fn = val;
                        } else if (up.startsWith("TEL:") || up.startsWith("TEL;")) {
                            if (tel.isEmpty()) tel = val;
                        } else if (up.startsWith("EMAIL:") || up.startsWith("EMAIL;")) {
                            if (email.isEmpty()) email = val;
                        } else if (up.startsWith("ORG:") || up.startsWith("ORG;")) {
                            if (org.isEmpty()) org = val.replace(';', ' ').trim();
                        }
                    } else {
                        if (up.startsWith("SUMMARY:") || up.startsWith("SUMMARY;")) {
                            if (fn.isEmpty()) fn = val;
                        }
                    }
                }
            }
        } catch (Throwable ignored) {}

        if (fn.isEmpty()) fn = friendlyFileName(item.filename, isCal ? "Calendar Event" : "Contact");

        // Monogram avatar circle
        TextView avatar = new TextView(act);
        avatar.setText(initials(fn));
        avatar.setTextColor(Color.WHITE);
        avatar.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20f);
        avatar.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        avatar.setGravity(Gravity.CENTER);
        GradientDrawable avBg = new GradientDrawable();
        avBg.setShape(GradientDrawable.OVAL);
        avBg.setColor(accent);
        avatar.setBackground(avBg);
        card.addView(avatar, new LinearLayout.LayoutParams(dp(50), dp(50)));

        TextView nameTv = new TextView(act);
        nameTv.setText(fn);
        nameTv.setTextColor(0xFF1C1C1E);
        nameTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f);
        nameTv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        nameTv.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        nlp.topMargin = dp(10);
        card.addView(nameTv, nlp);

        if (!org.isEmpty()) {
            addInfoLine(card, org, 0xFF8E8E93, 12f);
        }
        if (!tel.isEmpty()) {
            addInfoLine(card, WaveTapbacks.formatAddress(tel), 0xFF3A3A3C, 13.5f);
        }
        if (!email.isEmpty()) {
            addInfoLine(card, email, 0xFF3A3A3C, 12.5f);
        }

        // Open button
        TextView openBtn = new TextView(act);
        openBtn.setText(isCal ? "Open event" : "Open in Contacts");
        openBtn.setTextColor(Color.WHITE);
        openBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        openBtn.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        openBtn.setGravity(Gravity.CENTER);
        openBtn.setPadding(dp(16), dp(8), dp(16), dp(8));
        GradientDrawable obBg = new GradientDrawable();
        obBg.setColor(accent);
        obBg.setCornerRadius(dp(16));
        openBtn.setBackground(obBg);
        openBtn.setFocusable(true);
        openBtn.setClickable(true);
        openBtn.setOnClickListener(v -> openExternal(item));
        vcardOpenBtn = openBtn;
        LinearLayout.LayoutParams olp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        olp.topMargin = dp(14);
        card.addView(openBtn, olp);

        outer.addView(card, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        sv.addView(outer);
        contentHost.addView(sv, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        openBtn.requestFocus();
    }

    private void addInfoLine(LinearLayout parent, String text, int color, float sp) {
        TextView tv = new TextView(act);
        tv.setText(text);
        tv.setTextColor(color);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        tv.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = dp(4);
        parent.addView(tv, lp);
    }

    private void openExternal(PartItem item) {
        try {
            Intent i = new Intent(Intent.ACTION_VIEW);
            i.setDataAndType(item.uri, item.mime);
            i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            act.startActivity(i);
        } catch (Throwable t) {
            Toast.makeText(act, "No app can open this attachment", Toast.LENGTH_SHORT).show();
        }
    }

    private void showGenericFile(PartItem item) {
        LinearLayout box = new LinearLayout(act);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setGravity(Gravity.CENTER);
        box.setPadding(dp(16), dp(16), dp(16), dp(16));

        TextView title = new TextView(act);
        title.setText(friendlyFileName(item.filename, "Attachment"));
        title.setTextColor(0xFF1C1C1E);
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        title.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        title.setGravity(Gravity.CENTER);
        box.addView(title);

        TextView sub = new TextView(act);
        sub.setText("Press Menu to save");
        sub.setTextColor(0xFF8E8E93);
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
        sub.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        slp.topMargin = dp(6);
        box.addView(sub, slp);

        contentHost.addView(box, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
    }

    private void showTextOnlyFallback() {
        root.setBackgroundColor(COLOR_LIGHT_BG);
        setStatusBar(0xFF1C1C1E, false);
        ScrollView sv = new ScrollView(act);
        TextView tv = new TextView(act);
        tv.setText(captionText);
        tv.setTextColor(0xFF1C1C1E);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        tv.setPadding(dp(16), dp(16), dp(16), dp(16));
        sv.addView(tv);
        contentHost.addView(sv, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
    }

    private void showErrorLabel(String msg, boolean dark) {
        contentHost.removeAllViews();
        TextView tv = new TextView(act);
        tv.setText(msg);
        tv.setTextColor(dark ? 0xCCFFFFFF : 0xFF636366);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
        tv.setGravity(Gravity.CENTER);
        contentHost.addView(tv, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
    }

    // --- D-pad & key handling ---

    private boolean handleKey(KeyEvent ev) {
        if (ev.getAction() != KeyEvent.ACTION_DOWN) return false;
        int key = ev.getKeyCode();
        if (parts.isEmpty()) return false;
        PartItem cur = parts.get(currentIndex);

        if (key == KeyEvent.KEYCODE_MENU) {
            act.openOptionsMenu();
            return true;
        }

        // Photo zoom & pan
        if (cur.kind == PartItem.Kind.IMAGE && photoView != null) {
            if (key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER) {
                togglePhotoZoom();
                return true;
            }
            if (photoView.isZoomed()) {
                int step = dp(42);
                if (key == KeyEvent.KEYCODE_DPAD_LEFT) { photoView.pan(step, 0); return true; }
                if (key == KeyEvent.KEYCODE_DPAD_RIGHT) { photoView.pan(-step, 0); return true; }
                if (key == KeyEvent.KEYCODE_DPAD_UP) { photoView.pan(0, step); return true; }
                if (key == KeyEvent.KEYCODE_DPAD_DOWN) { photoView.pan(0, -step); return true; }
            }
        }

        // Video play/pause & seek
        if (cur.kind == PartItem.Kind.VIDEO && videoView != null) {
            if (key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER) {
                toggleVideoPlayPause();
                return true;
            }
            if (parts.size() == 1 && (key == KeyEvent.KEYCODE_DPAD_LEFT || key == KeyEvent.KEYCODE_DPAD_RIGHT)) {
                int dur = videoView.getDuration();
                if (dur > 0) {
                    int pos = videoView.getCurrentPosition()
                            + (key == KeyEvent.KEYCODE_DPAD_RIGHT ? 5000 : -5000);
                    pos = Math.max(0, Math.min(dur, pos));
                    videoView.seekTo(pos);
                    updateMediaProgress();
                    showVideoControls(videoView.isPlaying());
                }
                return true;
            }
        }

        // Audio play/pause & seek
        if (cur.kind == PartItem.Kind.AUDIO && audioPlayer != null) {
            if (key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER) {
                toggleAudioPlayPause();
                return true;
            }
            if (parts.size() == 1 && audioPrepared
                    && (key == KeyEvent.KEYCODE_DPAD_LEFT || key == KeyEvent.KEYCODE_DPAD_RIGHT)) {
                int dur = audioPlayer.getDuration();
                if (dur > 0) {
                    int pos = audioPlayer.getCurrentPosition()
                            + (key == KeyEvent.KEYCODE_DPAD_RIGHT ? 5000 : -5000);
                    pos = Math.max(0, Math.min(dur, pos));
                    audioPlayer.seekTo(pos);
                    audioCompleted = false;
                    updateMediaProgress();
                }
                return true;
            }
        }

        // vCard open
        if (cur.kind == PartItem.Kind.VCARD
                && (key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER)) {
            openExternal(cur);
            return true;
        }

        // Multi-attachment Left/Right switching
        if (parts.size() > 1) {
            if (key == KeyEvent.KEYCODE_DPAD_LEFT && currentIndex > 0) {
                showPart(currentIndex - 1);
                return true;
            }
            if (key == KeyEvent.KEYCODE_DPAD_RIGHT && currentIndex < parts.size() - 1) {
                showPart(currentIndex + 1);
                return true;
            }
        }
        return false;
    }

    private boolean handleBack() {
        if (photoView != null && photoView.isZoomed()) {
            photoView.setZoomed(false);
            zoomPill.setVisibility(View.GONE);
            return true;
        }
        return false;
    }

    private void togglePhotoZoom() {
        if (photoView == null) return;
        boolean next = !photoView.isZoomed();
        photoView.setZoomed(next);
        zoomPill.setVisibility(next ? View.VISIBLE : View.GONE);
    }

    // --- Menu ---

    private void populateMenu(Menu menu) {
        menu.clear();
        if (parts.isEmpty()) return;
        PartItem cur = parts.get(currentIndex);

        if (cur.kind == PartItem.Kind.IMAGE && photoView != null) {
            menu.add(0, MENU_ZOOM, 0, photoView.isZoomed() ? "Fit to screen" : "Zoom in");
        } else if (cur.kind == PartItem.Kind.VIDEO && videoView != null) {
            menu.add(0, MENU_PLAY_PAUSE, 0, videoView.isPlaying() ? "Pause" : "Play");
        } else if (cur.kind == PartItem.Kind.AUDIO && audioPlayer != null && audioPrepared) {
            menu.add(0, MENU_PLAY_PAUSE, 0, audioPlayer.isPlaying() ? "Pause" : "Play");
        }

        menu.add(0, MENU_SAVE, 1, "Save attachment");
        if (parts.size() > 1) {
            menu.add(0, MENU_SAVE_ALL, 2, "Save all (" + parts.size() + ")");
        }
        if (WaveTapbacks.canReactToUri(act, mmsUri)) {
            menu.add(0, MENU_REACT, 3, "React");
        }
    }

    private boolean handleMenuItem(MenuItem item) {
        if (parts.isEmpty()) return false;
        PartItem cur = parts.get(currentIndex);
        switch (item.getItemId()) {
            case MENU_ZOOM:
                togglePhotoZoom();
                return true;
            case MENU_PLAY_PAUSE:
                if (cur.kind == PartItem.Kind.VIDEO) toggleVideoPlayPause();
                else if (cur.kind == PartItem.Kind.AUDIO) toggleAudioPlayPause();
                return true;
            case MENU_SAVE:
                if (!WaveIMessageSave.savePart(act, cur.uri)) {
                    WaveIMessageSave.saveLocalPart(act, cur.uri, cur.mime, cur.filename);
                }
                return true;
            case MENU_SAVE_ALL:
                if (!WaveIMessageSave.saveAll(act, mmsUri)) {
                    List<Uri> uris = new ArrayList<>();
                    List<String> mimes = new ArrayList<>();
                    List<String> names = new ArrayList<>();
                    for (PartItem p : parts) {
                        uris.add(p.uri);
                        mimes.add(p.mime);
                        names.add(p.filename);
                    }
                    WaveIMessageSave.saveLocalParts(act, uris, mimes, names);
                }
                return true;
            case MENU_REACT:
                WaveTapbacks.showReactPickerForUri(act, mmsUri);
                return true;
            default:
                return false;
        }
    }

    // --- Progress & cleanup ---

    private void updateMediaProgress() {
        if (videoView != null && videoProgress != null) {
            int dur = videoView.getDuration();
            int pos = videoView.getCurrentPosition();
            if (dur > 0) {
                videoProgress.setProgress(Math.min(1f, Math.max(0f, pos / (float) dur)));
                if (videoElapsedTv != null) videoElapsedTv.setText(formatDuration(pos));
                if (videoTotalTv != null) videoTotalTv.setText(formatDuration(dur));
            }
        }
        if (audioPlayer != null && audioPrepared && audioWaveform != null) {
            try {
                int dur = audioPlayer.getDuration();
                int pos = audioPlayer.getCurrentPosition();
                if (dur > 0) {
                    float frac = audioCompleted ? 1f : Math.min(1f, Math.max(0f, pos / (float) dur));
                    audioWaveform.setProgress(frac);
                    if (audioElapsedTv != null) {
                        audioElapsedTv.setText(formatDuration(audioCompleted ? dur : pos));
                    }
                }
            } catch (Throwable ignored) {}
        }
    }

    private void pauseActiveMedia() {
        if (videoView != null && videoView.isPlaying()) {
            videoView.pause();
            videoPlaying = false;
            if (videoPauseOverlay != null) videoPauseOverlay.setVisibility(View.VISIBLE);
        }
        if (audioPlayer != null && audioPrepared) {
            try {
                if (audioPlayer.isPlaying()) {
                    audioPlayer.pause();
                    if (audioPlayBtn != null) audioPlayBtn.setPlaying(false);
                }
            } catch (Throwable ignored) {}
        }
    }

    private void stopActiveMedia() {
        main.removeCallbacks(progressTick);
        main.removeCallbacks(hideVideoControls);
        if (videoView != null) {
            try { videoView.stopPlayback(); } catch (Throwable ignored) {}
            videoView = null;
        }
        videoPauseOverlay = null;
        videoControls = null;
        videoProgress = null;
        videoElapsedTv = null;
        videoTotalTv = null;
        if (audioPlayer != null) {
            try { audioPlayer.stop(); } catch (Throwable ignored) {}
            try { audioPlayer.release(); } catch (Throwable ignored) {}
            audioPlayer = null;
        }
        audioPrepared = false;
        audioCompleted = false;
        audioWaveform = null;
        audioPlayBtn = null;
        audioElapsedTv = null;
        audioTotalTv = null;
        if (photoView != null) {
            photoView.recycleBitmap();
            photoView = null;
        }
        gifView = null;
        vcardOpenBtn = null;
    }

    private void release() {
        destroyed = true;
        stopActiveMedia();
    }

    // --- Custom Views ---

    /** Aspect-preserving full-screen photo view with crisp 2.2x D-pad zoom & clamped pan. */
    private static final class ZoomPhotoView extends View {
        private Bitmap bmp;
        private boolean zoomed = false;
        private float panX = 0f, panY = 0f;
        private final Matrix drawMatrix = new Matrix();
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);

        ZoomPhotoView(Context ctx) { super(ctx); }

        void setBitmap(Bitmap b) {
            recycleBitmap();
            bmp = b;
            zoomed = false;
            panX = 0f;
            panY = 0f;
            invalidate();
        }

        void recycleBitmap() {
            if (bmp != null && !bmp.isRecycled()) bmp.recycle();
            bmp = null;
        }

        boolean isZoomed() { return zoomed; }

        void setZoomed(boolean z) {
            zoomed = z;
            panX = 0f;
            panY = 0f;
            invalidate();
        }

        void pan(float dx, float dy) {
            if (!zoomed || bmp == null) return;
            panX += dx;
            panY += dy;
            clampPan();
            invalidate();
        }

        private float fitScale() {
            if (bmp == null || getWidth() <= 0 || getHeight() <= 0) return 1f;
            return Math.min(getWidth() / (float) bmp.getWidth(),
                    getHeight() / (float) bmp.getHeight());
        }

        private void clampPan() {
            if (bmp == null) return;
            float scale = fitScale() * (zoomed ? 2.2f : 1f);
            float bw = bmp.getWidth() * scale;
            float bh = bmp.getHeight() * scale;
            float maxX = Math.max(0f, (bw - getWidth()) * 0.5f);
            float maxY = Math.max(0f, (bh - getHeight()) * 0.5f);
            panX = Math.max(-maxX, Math.min(maxX, panX));
            panY = Math.max(-maxY, Math.min(maxY, panY));
        }

        @Override
        protected void onDraw(Canvas c) {
            if (bmp == null || bmp.isRecycled()) return;
            float vw = getWidth(), vh = getHeight();
            if (vw <= 0 || vh <= 0) return;
            float scale = fitScale() * (zoomed ? 2.2f : 1f);
            clampPan();
            float tx = (vw - bmp.getWidth() * scale) * 0.5f + panX;
            float ty = (vh - bmp.getHeight() * scale) * 0.5f + panY;
            drawMatrix.reset();
            drawMatrix.postScale(scale, scale);
            drawMatrix.postTranslate(tx, ty);
            c.drawBitmap(bmp, drawMatrix, paint);
        }
    }

    /** Smooth animated GIF renderer using Android Movie. */
    private static final class GifView extends View {
        private Movie movie;
        private long startMs;

        GifView(Context ctx) {
            super(ctx);
            setLayerType(LAYER_TYPE_SOFTWARE, null);
        }

        void setMovie(Movie m) {
            movie = m;
            startMs = SystemClock.uptimeMillis();
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            if (movie == null || movie.width() <= 0 || movie.height() <= 0) return;
            int dur = movie.duration();
            if (dur <= 0) dur = 1000;
            int rel = (int) ((SystemClock.uptimeMillis() - startMs) % dur);
            movie.setTime(rel);

            float scale = Math.min(getWidth() / (float) movie.width(),
                    getHeight() / (float) movie.height());
            float dx = (getWidth() - movie.width() * scale) * 0.5f;
            float dy = (getHeight() - movie.height() * scale) * 0.5f;
            c.save();
            c.translate(dx, dy);
            c.scale(scale, scale);
            movie.draw(c, 0, 0);
            c.restore();
            postInvalidateOnAnimation();
        }
    }

    /** Translucent dark circle with crisp white Play triangle (shown over paused video). */
    private static final class PlayBadgeOverlay extends View {
        private final Paint bg = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint fg = new Paint(Paint.ANTI_ALIAS_FLAG);

        PlayBadgeOverlay(Context ctx) {
            super(ctx);
            bg.setColor(0x99000000);
            fg.setColor(Color.WHITE);
        }

        @Override
        protected void onDraw(Canvas c) {
            float cx = getWidth() * 0.5f;
            float cy = getHeight() * 0.5f;
            float r = Math.min(cx, cy);
            c.drawCircle(cx, cy, r, bg);
            float s = r * 0.46f;
            Path tri = new Path();
            tri.moveTo(cx - s * 0.55f, cy - s);
            tri.lineTo(cx + s * 1.05f, cy);
            tri.lineTo(cx - s * 0.55f, cy + s);
            tri.close();
            c.drawPath(tri, fg);
        }
    }

    /** Thin crisp white-on-translucent iOS video scrubber bar. */
    private static final class VideoProgressView extends View {
        private float progress = 0f;
        private final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();

        VideoProgressView(Context ctx) {
            super(ctx);
            track.setColor(0x4DFFFFFF);
            fill.setColor(Color.WHITE);
        }

        void setProgress(float p) {
            progress = Math.max(0f, Math.min(1f, p));
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            float h = 3f * den;
            float y = (getHeight() - h) * 0.5f;
            float rad = h * 0.5f;
            rect.set(0, y, getWidth(), y + h);
            c.drawRoundRect(rect, rad, rad, track);
            float fw = getWidth() * progress;
            if (fw > 0f) {
                rect.set(0, y, Math.max(h, fw), y + h);
                c.drawRoundRect(rect, rad, rad, fill);
            }
        }
    }

    /** Tactile circular Play/Pause button for the Voice Message viewer. */
    private static final class AudioPlayButton extends View {
        private final int accent;
        private boolean playing = false;
        private final Paint bg = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint fg = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();

        AudioPlayButton(Context ctx, int accent) {
            super(ctx);
            this.accent = accent;
            bg.setColor(accent);
            fg.setColor(Color.WHITE);
        }

        void setPlaying(boolean p) {
            playing = p;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            float cx = getWidth() * 0.5f;
            float cy = getHeight() * 0.5f;
            float r = Math.min(cx, cy) - 2f;
            bg.setColor(accent);
            c.drawCircle(cx, cy, r, bg);
            if (playing) {
                float bw = r * 0.24f;
                float bh = r * 0.72f;
                float gap = r * 0.16f;
                float rad = bw * 0.35f;
                rect.set(cx - gap * 0.5f - bw, cy - bh * 0.5f, cx - gap * 0.5f, cy + bh * 0.5f);
                c.drawRoundRect(rect, rad, rad, fg);
                rect.set(cx + gap * 0.5f, cy - bh * 0.5f, cx + gap * 0.5f + bw, cy + bh * 0.5f);
                c.drawRoundRect(rect, rad, rad, fg);
            } else {
                float s = r * 0.42f;
                Path tri = new Path();
                tri.moveTo(cx - s * 0.52f, cy - s);
                tri.lineTo(cx + s * 1.05f, cy);
                tri.lineTo(cx - s * 0.52f, cy + s);
                tri.close();
                c.drawPath(tri, fg);
            }
        }
    }

    /** 28-bar iOS Voice Message waveform progress indicator. */
    private static final class WaveformView extends View {
        private static final float[] PROFILE = {
            0.25f, 0.45f, 0.72f, 0.55f, 0.90f, 0.62f, 0.38f, 0.80f,
            0.95f, 0.70f, 0.48f, 0.66f, 0.88f, 1.00f, 0.74f, 0.52f,
            0.36f, 0.68f, 0.84f, 0.60f, 0.42f, 0.76f, 0.92f, 0.58f,
            0.40f, 0.62f, 0.44f, 0.26f
        };
        private final Paint playedPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint restPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();
        private float progress = 0f;

        WaveformView(Context ctx, int accent) {
            super(ctx);
            playedPaint.setColor(accent);
            restPaint.setColor(0xFFD1D1D6);
        }

        void setProgress(float p) {
            progress = Math.max(0f, Math.min(1f, p));
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            int n = PROFILE.length;
            float w = getWidth();
            float h = getHeight();
            if (w <= 0 || h <= 0) return;
            float step = w / (float) n;
            float barW = Math.max(2f, step * 0.52f);
            float rad = barW * 0.5f;
            float cy = h * 0.5f;
            float filledX = w * progress;

            for (int i = 0; i < n; i++) {
                float cx = step * (i + 0.5f);
                float bh = Math.max(barW, h * PROFILE[i]);
                rect.set(cx - barW * 0.5f, cy - bh * 0.5f, cx + barW * 0.5f, cy + bh * 0.5f);
                c.drawRoundRect(rect, rad, rad, cx <= filledX ? playedPaint : restPaint);
            }
        }
    }

    /** Minimal dot strip shown only when a message has multiple attachments. */
    private static final class DotsView extends View {
        private int count = 0;
        private int active = 0;
        private boolean dark = true;
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);

        DotsView(Context ctx) { super(ctx); }

        void setState(int count, int active) {
            this.count = Math.min(count, 10);
            this.active = Math.min(active, Math.max(0, this.count - 1));
            requestLayout();
            invalidate();
        }

        void setDarkMode(boolean dark) {
            this.dark = dark;
            invalidate();
        }

        private float d() { return getResources().getDisplayMetrics().density; }

        @Override
        protected void onMeasure(int wSpec, int hSpec) {
            if (count <= 1) {
                setMeasuredDimension(0, 0);
                return;
            }
            float den = d();
            int w = Math.round(count * 10f * den);
            int h = Math.round(10f * den);
            setMeasuredDimension(w, h);
        }

        @Override
        protected void onDraw(Canvas c) {
            if (count <= 1) return;
            float den = d();
            float step = 10f * den;
            float cy = getHeight() * 0.5f;
            for (int i = 0; i < count; i++) {
                float cx = step * (i + 0.5f);
                boolean isSel = (i == active);
                paint.setColor(dark
                        ? (isSel ? Color.WHITE : 0x55FFFFFF)
                        : (isSel ? COLOR_IMSG_BLUE : 0x44000000));
                c.drawCircle(cx, cy, (isSel ? 3f : 2f) * den, paint);
            }
        }
    }

    // --- Helpers ---

    private TextView makeFloatingPill(Context ctx) {
        TextView tv = new TextView(ctx);
        tv.setTextColor(Color.WHITE);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
        tv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        tv.setPadding(dp(8), dp(3), dp(8), dp(3));
        GradientDrawable gd = new GradientDrawable();
        gd.setColor(0x99000000);
        gd.setCornerRadius(dp(10));
        tv.setBackground(gd);
        return tv;
    }

    private void setStatusBar(int color, boolean lightIcons) {
        Window w = act.getWindow();
        if (w == null) return;
        w.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        w.setStatusBarColor(color);
    }

    private static int activeAccentColor() {
        int c = ComposeMessageActivity.getSendContactColor();
        return c != 0 ? c : COLOR_IMSG_BLUE;
    }

    static String friendlyAudioTitle(String filename) {
        String s = friendlyFileName(filename, "Voice message");
        String low = s.toLowerCase(Locale.ROOT);
        if (low.contains("voice") || low.contains("audio_message") || low.contains("audio message")
                || low.startsWith("amr") || low.startsWith("recording")) {
            return "Voice message";
        }
        int dot = s.lastIndexOf('.');
        if (dot > 0) s = s.substring(0, dot);
        return s.replace('_', ' ').trim();
    }

    static String friendlyFileName(String filename, String fallback) {
        if (filename == null || filename.trim().isEmpty()) return fallback;
        String s = filename.trim();
        int slash = Math.max(s.lastIndexOf('/'), s.lastIndexOf('\\'));
        if (slash >= 0) s = s.substring(slash + 1);
        if (s.startsWith("imsg") && s.contains("_")) {
            int us = s.indexOf('_');
            if (us > 0 && us < 8 && us + 1 < s.length()) {
                s = s.substring(us + 1);
            }
        }
        return s.isEmpty() ? fallback : s;
    }

    private static String initials(String name) {
        if (name == null || name.trim().isEmpty()) return "?";
        String[] parts = name.trim().split("\\s+");
        if (parts.length == 1) return parts[0].substring(0, 1).toUpperCase(Locale.ROOT);
        return (parts[0].substring(0, 1) + parts[parts.length - 1].substring(0, 1))
                .toUpperCase(Locale.ROOT);
    }

    static String formatDuration(int ms) {
        if (ms < 0) ms = 0;
        int sec = Math.round(ms / 1000f);
        int m = sec / 60;
        int s = sec % 60;
        return m + ":" + (s < 10 ? "0" : "") + s;
    }

    private static byte[] readAllBytes(Context ctx, Uri uri) {
        try (InputStream in = ctx.getContentResolver().openInputStream(uri)) {
            if (in == null) return null;
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[16384];
            int r;
            while ((r = in.read(buf)) >= 0) {
                if (r > 0) out.write(buf, 0, r);
            }
            return out.toByteArray();
        } catch (Throwable t) {
            return null;
        }
    }

    private static long parseMmsId(Uri uri) {
        try {
            String last = uri.getLastPathSegment();
            return last == null ? -1 : Long.parseLong(last);
        } catch (Throwable t) {
            return -1;
        }
    }

    private static String safeStr(String s) { return s == null ? "" : s.trim(); }

    private int dp(int v) {
        return Math.round(v * act.getResources().getDisplayMetrics().density);
    }
}
