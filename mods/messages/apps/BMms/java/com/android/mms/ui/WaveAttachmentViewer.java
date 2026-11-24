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
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioManager;
import android.media.ExifInterface;
import android.media.MediaMetadataRetriever;
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
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
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
 * Sonim-native attachment details viewer for AttachmentViewActivity.
 *
 * Keeps Sonim's native Attachment Details look (white backdrop, grey status bar, red indicator dot,
 * black horizontal divider, bottom thumbnail carousel with blue-grey selection border and file
 * sizes) while fixing stock's bugs and adding D-pad photo zoom:
 * - Eliminates bogus "NO MEDIA" slides: caption text renders cleanly above the divider instead.
 * - Full-resolution EXIF-oriented photo decode + OK 2.2x D-pad zoom & pan (no overlay hint text;
 *   bottom carousel hides temporarily while zoomed so the full screen is available).
 * - Animated GIF support, clean video playback with Sonim-style white-ring play icon and red
 *   progress bar, audio fallback, and parsed vCard contact cards.
 * - Unified Menu: Zoom in/Fit, Play/Pause, Save attachment (full-size iMessage or local MMS),
 *   Save all, and React.
 */
public final class WaveAttachmentViewer {
    private static final String TAG = "WaveAttachmentViewer";

    private static final int MENU_SAVE = 0x5801;
    private static final int MENU_SAVE_ALL = 0x5802;
    private static final int MENU_ZOOM = 0x5803;
    private static final int MENU_PLAY_PAUSE = 0x5804;
    private static final int MENU_REACT = 0x5805;

    /** Native Sonim Attachment Details colors. */
    private static final int COLOR_BG = 0xFFFFFFFF;
    private static final int COLOR_STATUS_BAR = 0xFF757575;
    private static final int COLOR_SONIM_RED = 0xFFD32F2F;
    private static final int COLOR_FOCUS_FILL = 0xFFEDF2F4;
    private static final int COLOR_FOCUS_STROKE = 0xFF607D8B;

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

    private LinearLayout root;
    private FrameLayout contentHost;
    private TextView captionTv;
    private View bottomSection;
    private HorizontalScrollView stripScroll;
    private LinearLayout stripRow;
    private final List<ThumbTileView> stripTiles = new ArrayList<>();

    // Active media views/players
    private ZoomPhotoView photoView;
    private GifView gifView;
    private FrameLayout videoPreviewBox;
    private Bitmap videoThumbBmp;
    private FrameLayout videoPlayerBox;
    private VideoView videoView;
    private View videoHud;
    private MovieSeekBarView videoProgress;
    private MovieControlsView videoControls;
    private TextView videoPosTv;
    private TextView videoDurTv;
    private boolean videoFullscreen = false;
    private boolean singleVideoDirect = false;

    private final Runnable hideVideoScrubber = new Runnable() {
        @Override
        public void run() {
            if (videoFullscreen && videoView != null && videoView.isPlaying()) {
                setVideoHudVisible(false);
            }
        }
    };

    private MediaPlayer audioPlayer;
    private SonimProgressView audioProgress;
    private TextView audioTimeTv;
    private TextView audioStateTv;
    private boolean audioPrepared = false;
    private boolean audioCompleted = false;

    private final Runnable progressTick = new Runnable() {
        @Override
        public void run() {
            if (destroyed) return;
            updateMediaProgress();
            main.postDelayed(this, 120);
        }
    };

    static final class PartItem {
        final long partId;
        final Uri uri;
        final String mime;
        final String filename;
        final Kind kind;
        long sizeBytes;

        enum Kind { IMAGE, GIF, VIDEO, AUDIO, VCARD, OTHER }

        PartItem(long partId, Uri uri, String mime, String filename, Kind kind, long sizeBytes) {
            this.partId = partId;
            this.uri = uri;
            this.mime = mime;
            this.filename = filename;
            this.kind = kind;
            this.sizeBytes = sizeBytes;
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
        setStatusBar(COLOR_STATUS_BAR);

        root = new LinearLayout(act);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(COLOR_BG);
        root.setFocusable(true);
        root.setFocusableInTouchMode(true);

        // Main preview area (white background, takes all remaining vertical space)
        contentHost = new FrameLayout(act);
        contentHost.setBackgroundColor(COLOR_BG);
        root.addView(contentHost, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        // Caption strip on white right above the bottom divider (replaces bogus "NO MEDIA" slide!)
        captionTv = new TextView(act);
        captionTv.setTextColor(0xFF212121);
        captionTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
        captionTv.setGravity(Gravity.CENTER_HORIZONTAL);
        captionTv.setPadding(dp(10), dp(4), dp(10), dp(2));
        captionTv.setMaxLines(3);
        captionTv.setEllipsize(TextUtils.TruncateAt.END);
        captionTv.setVisibility(View.GONE);
        root.addView(captionTv, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        // Native Sonim bottom section: red dot + black divider + horizontal thumbnail strip
        LinearLayout bottom = new LinearLayout(act);
        bottom.setOrientation(LinearLayout.VERTICAL);
        bottom.setBackgroundColor(COLOR_BG);

        RedDotView dot = new RedDotView(act);
        LinearLayout.LayoutParams dotLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(12));
        bottom.addView(dot, dotLp);

        View divider = new View(act);
        divider.setBackgroundColor(Color.BLACK);
        bottom.addView(divider, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Math.max(1, dp(1))));

        stripScroll = new HorizontalScrollView(act);
        stripScroll.setHorizontalScrollBarEnabled(false);
        stripScroll.setFocusable(false);
        stripRow = new LinearLayout(act);
        stripRow.setOrientation(LinearLayout.HORIZONTAL);
        stripRow.setPadding(dp(4), dp(3), dp(4), dp(3));
        stripScroll.addView(stripRow, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        bottom.addView(stripScroll, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(72)));

        bottomSection = bottom;
        root.addView(bottom, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        ProgressBar spinner = new ProgressBar(act);
        contentHost.addView(spinner, new FrameLayout.LayoutParams(dp(28), dp(28), Gravity.CENTER));

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
                        bottomSection.setVisibility(View.GONE);
                        showTextOnlyFallback();
                    } else {
                        Toast.makeText(act, "No attachment to display", Toast.LENGTH_SHORT).show();
                        act.finish();
                    }
                    return;
                }
                if (!captionText.isEmpty()) {
                    captionTv.setText(captionText);
                    captionTv.setVisibility(View.VISIBLE);
                }
                buildThumbnailStrip();
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
                long sz = measurePartSize(uri);
                parts.add(new PartItem(id, uri, ct, bestName, kind, sz));
            }
        } catch (Throwable t) {
            Log.w(TAG, "loadParts failed for " + mmsUri, t);
        }
        captionText = cap.toString().trim();
    }

    private long measurePartSize(Uri uri) {
        try (android.content.res.AssetFileDescriptor afd =
                     act.getContentResolver().openAssetFileDescriptor(uri, "r")) {
            if (afd != null && afd.getLength() >= 0) return afd.getLength();
        } catch (Throwable ignored) {}
        try (InputStream in = act.getContentResolver().openInputStream(uri)) {
            if (in == null) return 0;
            long total = 0;
            byte[] buf = new byte[4096];
            int r;
            while ((r = in.read(buf)) > 0) total += r;
            return total;
        } catch (Throwable ignored) {
            return 0;
        }
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

    private void buildThumbnailStrip() {
        stripRow.removeAllViews();
        stripTiles.clear();
        for (int i = 0; i < parts.size(); i++) {
            final int idx = i;
            ThumbTileView tile = new ThumbTileView(act, parts.get(i));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(68), dp(66));
            if (i > 0) lp.leftMargin = dp(4);
            tile.setOnClickListener(v -> showPart(idx));
            stripRow.addView(tile, lp);
            stripTiles.add(tile);
        }
    }

    private void updateStripSelection() {
        for (int i = 0; i < stripTiles.size(); i++) {
            stripTiles.get(i).setSelectedTile(i == currentIndex);
        }
        if (currentIndex >= 0 && currentIndex < stripTiles.size()) {
            final View target = stripTiles.get(currentIndex);
            stripScroll.post(() -> {
                int targetX = target.getLeft() - (stripScroll.getWidth() - target.getWidth()) / 2;
                stripScroll.smoothScrollTo(Math.max(0, targetX), 0);
            });
        }
    }

    private void showPart(int idx) {
        if (idx < 0 || idx >= parts.size()) return;
        stopActiveMedia();
        currentIndex = idx;
        updateStripSelection();
        bottomSection.setVisibility(View.VISIBLE);
        captionTv.setVisibility(captionText.isEmpty() ? View.GONE : View.VISIBLE);
        contentHost.removeAllViews();

        PartItem item = parts.get(idx);
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

    // --- Photo viewer (white Sonim background + crisp EXIF decode + D-pad 2.2x zoom & pan, NO hint pill) ---

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
                    showErrorLabel("Couldn't open image");
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
                    showErrorLabel("Couldn't open GIF");
                }
            });
        });
    }

    // --- Video viewer (single video opens straight into full-screen paused; multi-item previews first) ---

    private void showVideo(final PartItem item) {
        if (parts.size() == 1) {
            singleVideoDirect = true;
            startVideoFullscreen(item, false);
            return;
        }
        singleVideoDirect = false;
        FrameLayout preview = new FrameLayout(act);
        preview.setBackgroundColor(COLOR_BG);
        videoPreviewBox = preview;

        final ImageView thumbIv = new ImageView(act);
        thumbIv.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams tlp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.CENTER);
        tlp.setMargins(dp(12), dp(8), dp(12), dp(8));
        preview.addView(thumbIv, tlp);

        SonimPlayRingView playRing = new SonimPlayRingView(act);
        preview.addView(playRing, new FrameLayout.LayoutParams(dp(44), dp(44), Gravity.CENTER));
        preview.setOnClickListener(v -> startVideoFullscreen(item, true));

        contentHost.addView(preview, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        final int expectedIdx = currentIndex;
        IO_EXEC.execute(() -> {
            Bitmap frame = null;
            MediaMetadataRetriever mmr = new MediaMetadataRetriever();
            try {
                mmr.setDataSource(act, item.uri);
                frame = mmr.getFrameAtTime(0, MediaMetadataRetriever.OPTION_CLOSEST_SYNC);
            } catch (Throwable ignored) {
            } finally {
                try { mmr.release(); } catch (Throwable ignored) {}
            }
            final Bitmap loaded = frame;
            main.post(() -> {
                if (destroyed || currentIndex != expectedIdx || videoPreviewBox != preview) {
                    if (loaded != null && !loaded.isRecycled()) loaded.recycle();
                    return;
                }
                if (loaded != null && !loaded.isRecycled()) {
                    videoThumbBmp = loaded;
                    thumbIv.setImageBitmap(loaded);
                }
            });
        });
    }

    private void startVideoFullscreen(PartItem item, final boolean autoPlay) {
        if (item == null || destroyed) return;
        videoFullscreen = true;
        setStatusBar(Color.BLACK);
        root.setBackgroundColor(Color.BLACK);
        contentHost.setBackgroundColor(Color.BLACK);
        bottomSection.setVisibility(View.GONE);
        captionTv.setVisibility(View.GONE);
        if (videoPreviewBox != null) videoPreviewBox.setVisibility(View.GONE);

        FrameLayout box = new FrameLayout(act);
        box.setBackgroundColor(Color.BLACK);
        videoPlayerBox = box;

        VideoView vv = new VideoView(act);
        videoView = vv;
        box.addView(vv, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.CENTER));

        // Matches Sonim's built-in MovieView HUD: 00:00 [teal seekbar w/ white thumb] 00:00
        // over <<  ( || / > )  >> transport controls.
        LinearLayout hud = new LinearLayout(act);
        hud.setOrientation(LinearLayout.VERTICAL);
        hud.setPadding(dp(8), dp(14), dp(8), dp(6));
        hud.setBackground(new GradientDrawable(
                GradientDrawable.Orientation.BOTTOM_TOP, new int[]{0xD9000000, 0x00000000}));
        videoHud = hud;

        LinearLayout timeRow = new LinearLayout(act);
        timeRow.setOrientation(LinearLayout.HORIZONTAL);
        timeRow.setGravity(Gravity.CENTER_VERTICAL);

        videoPosTv = new TextView(act);
        videoPosTv.setText("00:00");
        videoPosTv.setTextColor(0xFFE0E0E0);
        videoPosTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.5f);
        videoPosTv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        timeRow.addView(videoPosTv);

        videoProgress = new MovieSeekBarView(act);
        LinearLayout.LayoutParams plp = new LinearLayout.LayoutParams(0, dp(16), 1f);
        plp.leftMargin = dp(8);
        plp.rightMargin = dp(8);
        timeRow.addView(videoProgress, plp);

        videoDurTv = new TextView(act);
        videoDurTv.setText("00:00");
        videoDurTv.setTextColor(0xFFE0E0E0);
        videoDurTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.5f);
        videoDurTv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        timeRow.addView(videoDurTv);

        hud.addView(timeRow, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        videoControls = new MovieControlsView(act);
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(42));
        clp.topMargin = dp(4);
        hud.addView(videoControls, clp);

        box.addView(hud, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT,
                Gravity.BOTTOM));

        contentHost.addView(box, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        vv.setVideoURI(item.uri);
        vv.setOnPreparedListener(mp -> {
            if (destroyed || !videoFullscreen || videoView != vv) return;
            if (videoDurTv != null) videoDurTv.setText(formatMovieTime(vv.getDuration()));
            if (autoPlay) {
                vv.start();
                if (videoControls != null) videoControls.setPlaying(true);
                main.removeCallbacks(progressTick);
                main.post(progressTick);
                scheduleScrubberHide();
            } else {
                // Show first frame paused with MovieView controls (no auto-play)
                vv.seekTo(1);
                if (videoControls != null) videoControls.setPlaying(false);
                if (videoPosTv != null) videoPosTv.setText("00:00");
                setVideoHudVisible(true);
            }
        });
        vv.setOnCompletionListener(mp -> {
            int dur = vv.getDuration();
            if (videoProgress != null) videoProgress.setProgress(1f);
            if (videoPosTv != null && dur > 0) videoPosTv.setText(formatMovieTime(dur));
            if (videoDurTv != null && dur > 0) videoDurTv.setText(formatMovieTime(dur));
            if (videoControls != null) videoControls.setPlaying(false);
            main.removeCallbacks(hideVideoScrubber);
            setVideoHudVisible(true);
        });
        vv.setOnErrorListener((mp, what, extra) -> {
            exitVideoFullscreen();
            Toast.makeText(act, "Couldn't play video", Toast.LENGTH_SHORT).show();
            return true;
        });
    }

    private void setVideoHudVisible(boolean visible) {
        if (videoHud != null) videoHud.setVisibility(visible ? View.VISIBLE : View.GONE);
        Window w = act.getWindow();
        if (w != null && w.getDecorView() != null) {
            int flags = visible ? View.SYSTEM_UI_FLAG_VISIBLE
                    : (View.SYSTEM_UI_FLAG_FULLSCREEN | View.SYSTEM_UI_FLAG_LOW_PROFILE);
            w.getDecorView().setSystemUiVisibility(flags);
        }
    }

    private void exitVideoFullscreen() {
        main.removeCallbacks(progressTick);
        main.removeCallbacks(hideVideoScrubber);
        videoFullscreen = false;
        singleVideoDirect = false;
        setVideoHudVisible(true);
        if (videoView != null) {
            try { videoView.stopPlayback(); } catch (Throwable ignored) {}
            videoView = null;
        }
        if (videoPlayerBox != null) {
            contentHost.removeView(videoPlayerBox);
            videoPlayerBox = null;
        }
        videoHud = null;
        videoProgress = null;
        videoControls = null;
        videoPosTv = null;
        videoDurTv = null;
        setStatusBar(COLOR_STATUS_BAR);
        root.setBackgroundColor(COLOR_BG);
        contentHost.setBackgroundColor(COLOR_BG);
        if (videoPreviewBox != null) videoPreviewBox.setVisibility(View.VISIBLE);
        bottomSection.setVisibility(View.VISIBLE);
        captionTv.setVisibility(captionText.isEmpty() ? View.GONE : View.VISIBLE);
    }

    private void scheduleScrubberHide() {
        main.removeCallbacks(hideVideoScrubber);
        setVideoHudVisible(true);
        main.postDelayed(hideVideoScrubber, 2500);
    }

    private void toggleVideoPlayPause(PartItem item) {
        if (!videoFullscreen || videoView == null) {
            startVideoFullscreen(item, true);
            return;
        }
        if (videoView.isPlaying()) {
            videoView.pause();
            main.removeCallbacks(hideVideoScrubber);
            if (videoControls != null) videoControls.setPlaying(false);
            setVideoHudVisible(true);
        } else {
            videoView.start();
            if (videoControls != null) videoControls.setPlaying(true);
            main.removeCallbacks(progressTick);
            main.post(progressTick);
            scheduleScrubberHide();
        }
    }

    // --- Audio fallback view (Sonim light style, for multi-attachment MMS with audio) ---

    private void showAudio(PartItem item) {
        LinearLayout outer = new LinearLayout(act);
        outer.setOrientation(LinearLayout.VERTICAL);
        outer.setGravity(Gravity.CENTER);
        outer.setPadding(dp(18), dp(12), dp(18), dp(12));

        TextView titleTv = new TextView(act);
        titleTv.setText(friendlyAudioTitle(item.filename));
        titleTv.setTextColor(0xFF212121);
        titleTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        titleTv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        titleTv.setGravity(Gravity.CENTER);
        outer.addView(titleTv);

        audioStateTv = new TextView(act);
        audioStateTv.setText("Playing");
        audioStateTv.setTextColor(0xFF757575);
        audioStateTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
        audioStateTv.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams stLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        stLp.topMargin = dp(4);
        outer.addView(audioStateTv, stLp);

        audioProgress = new SonimProgressView(act);
        LinearLayout.LayoutParams prLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(8));
        prLp.topMargin = dp(14);
        outer.addView(audioProgress, prLp);

        audioTimeTv = new TextView(act);
        audioTimeTv.setText("0:00");
        audioTimeTv.setTextColor(0xFF616161);
        audioTimeTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
        audioTimeTv.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams tmLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        tmLp.topMargin = dp(6);
        outer.addView(audioTimeTv, tmLp);

        contentHost.addView(outer, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

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
                p.start();
                if (audioStateTv != null) audioStateTv.setText("Playing");
                main.removeCallbacks(progressTick);
                main.post(progressTick);
            });
            mp.setOnCompletionListener(p -> {
                if (destroyed || audioPlayer != p) return;
                audioCompleted = true;
                if (audioStateTv != null) audioStateTv.setText("Paused");
                if (audioProgress != null) audioProgress.setProgress(1f);
            });
            mp.setOnErrorListener((p, w, e) -> {
                showErrorLabel("Couldn't play audio");
                return true;
            });
            mp.prepareAsync();
        } catch (Throwable t) {
            Log.w(TAG, "audio prepare failed", t);
            showErrorLabel("Couldn't play audio");
        }
    }

    private void toggleAudioPlayPause() {
        if (audioPlayer == null || !audioPrepared) return;
        try {
            if (audioPlayer.isPlaying()) {
                audioPlayer.pause();
                if (audioStateTv != null) audioStateTv.setText("Paused");
            } else {
                if (audioCompleted) {
                    audioPlayer.seekTo(0);
                    audioCompleted = false;
                }
                audioPlayer.start();
                if (audioStateTv != null) audioStateTv.setText("Playing");
                main.removeCallbacks(progressTick);
                main.post(progressTick);
            }
        } catch (Throwable t) {
            Log.w(TAG, "toggleAudio failed", t);
        }
    }

    // --- Parsed vCard / Contact Card Viewer ---

    private void showVcard(PartItem item) {
        ScrollView sv = new ScrollView(act);
        LinearLayout outer = new LinearLayout(act);
        outer.setOrientation(LinearLayout.VERTICAL);
        outer.setGravity(Gravity.CENTER_HORIZONTAL);
        outer.setPadding(dp(16), dp(14), dp(16), dp(14));

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
                    } else if (up.startsWith("SUMMARY:") || up.startsWith("SUMMARY;")) {
                        if (fn.isEmpty()) fn = val;
                    }
                }
            }
        } catch (Throwable ignored) {}

        if (fn.isEmpty()) fn = friendlyFileName(item.filename, isCal ? "Calendar Event" : "Contact");

        TextView nameTv = new TextView(act);
        nameTv.setText(fn);
        nameTv.setTextColor(0xFF212121);
        nameTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f);
        nameTv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        nameTv.setGravity(Gravity.CENTER);
        outer.addView(nameTv);

        if (!org.isEmpty()) addInfoLine(outer, org, 0xFF757575, 12f);
        if (!tel.isEmpty()) addInfoLine(outer, WaveTapbacks.formatAddress(tel), 0xFF424242, 13.5f);
        if (!email.isEmpty()) addInfoLine(outer, email, 0xFF424242, 12.5f);

        TextView hint = new TextView(act);
        hint.setText(isCal ? "Press OK to open event" : "Press OK to open in Contacts");
        hint.setTextColor(0xFF0099CC);
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12.5f);
        hint.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        hlp.topMargin = dp(12);
        outer.addView(hint, hlp);

        sv.addView(outer);
        contentHost.addView(sv, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
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
        title.setTextColor(0xFF212121);
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        title.setGravity(Gravity.CENTER);
        box.addView(title);

        TextView sub = new TextView(act);
        sub.setText("Press Menu to save");
        sub.setTextColor(0xFF757575);
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
        ScrollView sv = new ScrollView(act);
        TextView tv = new TextView(act);
        tv.setText(captionText);
        tv.setTextColor(0xFF212121);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f);
        tv.setPadding(dp(16), dp(16), dp(16), dp(16));
        sv.addView(tv);
        contentHost.addView(sv, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
    }

    private void showErrorLabel(String msg) {
        contentHost.removeAllViews();
        TextView tv = new TextView(act);
        tv.setText(msg);
        tv.setTextColor(0xFF616161);
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

        // Photo zoom & pan (no hint banner; bottom strip hides while zoomed for max viewing area)
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

        if (cur.kind == PartItem.Kind.VIDEO) {
            if (key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER) {
                toggleVideoPlayPause(cur);
                return true;
            }
            if (videoFullscreen && videoView != null) {
                if (key == KeyEvent.KEYCODE_DPAD_LEFT || key == KeyEvent.KEYCODE_DPAD_RIGHT) {
                    int dur = videoView.getDuration();
                    if (dur > 0) {
                        int pos = videoView.getCurrentPosition()
                                + (key == KeyEvent.KEYCODE_DPAD_RIGHT ? 5000 : -5000);
                        videoView.seekTo(Math.max(0, Math.min(dur, pos)));
                        updateMediaProgress();
                        scheduleScrubberHide();
                    }
                    return true;
                }
                if (key == KeyEvent.KEYCODE_DPAD_UP || key == KeyEvent.KEYCODE_DPAD_DOWN) {
                    if (videoHud != null && videoHud.getVisibility() == View.VISIBLE && videoView.isPlaying()) {
                        main.removeCallbacks(hideVideoScrubber);
                        setVideoHudVisible(false);
                    } else {
                        scheduleScrubberHide();
                    }
                    return true;
                }
            }
        }

        if (cur.kind == PartItem.Kind.AUDIO && audioPlayer != null) {
            if (key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER) {
                toggleAudioPlayPause();
                return true;
            }
        }

        if (cur.kind == PartItem.Kind.VCARD
                && (key == KeyEvent.KEYCODE_DPAD_CENTER || key == KeyEvent.KEYCODE_ENTER)) {
            openExternal(cur);
            return true;
        }

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
        if (videoFullscreen && !singleVideoDirect) {
            exitVideoFullscreen();
            return true;
        }
        if (photoView != null && photoView.isZoomed()) {
            setZoomed(false);
            return true;
        }
        return false;
    }

    private void togglePhotoZoom() {
        if (photoView == null) return;
        setZoomed(!photoView.isZoomed());
    }

    private void setZoomed(boolean zoomed) {
        if (photoView == null) return;
        photoView.setZoomed(zoomed);
        bottomSection.setVisibility(zoomed ? View.GONE : View.VISIBLE);
        captionTv.setVisibility((zoomed || captionText.isEmpty()) ? View.GONE : View.VISIBLE);
    }

    // --- Menu ---

    private void populateMenu(Menu menu) {
        menu.clear();
        if (parts.isEmpty()) return;
        PartItem cur = parts.get(currentIndex);

        if (cur.kind == PartItem.Kind.IMAGE && photoView != null) {
            menu.add(0, MENU_ZOOM, 0, photoView.isZoomed() ? "Fit to screen" : "Zoom in");
        } else if (cur.kind == PartItem.Kind.VIDEO) {
            boolean playing = videoFullscreen && videoView != null && videoView.isPlaying();
            menu.add(0, MENU_PLAY_PAUSE, 0, playing ? "Pause" : "Play");
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
                if (cur.kind == PartItem.Kind.VIDEO) toggleVideoPlayPause(cur);
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
                if (videoPosTv != null) videoPosTv.setText(formatMovieTime(pos));
                if (videoDurTv != null) videoDurTv.setText(formatMovieTime(dur));
            }
        }
        if (audioPlayer != null && audioPrepared && audioProgress != null) {
            try {
                int dur = audioPlayer.getDuration();
                int pos = audioPlayer.getCurrentPosition();
                if (dur > 0) {
                    float frac = audioCompleted ? 1f : Math.min(1f, Math.max(0f, pos / (float) dur));
                    audioProgress.setProgress(frac);
                    if (audioTimeTv != null) {
                        audioTimeTv.setText(formatDuration(audioCompleted ? dur : pos)
                                + " / " + formatDuration(dur));
                    }
                }
            } catch (Throwable ignored) {}
        }
    }

    private void pauseActiveMedia() {
        if (videoView != null && videoView.isPlaying()) {
            videoView.pause();
            if (videoControls != null) videoControls.setPlaying(false);
            setVideoHudVisible(true);
        }
        if (audioPlayer != null && audioPrepared) {
            try {
                if (audioPlayer.isPlaying()) {
                    audioPlayer.pause();
                    if (audioStateTv != null) audioStateTv.setText("Paused");
                }
            } catch (Throwable ignored) {}
        }
    }

    private void stopActiveMedia() {
        main.removeCallbacks(progressTick);
        main.removeCallbacks(hideVideoScrubber);
        videoFullscreen = false;
        singleVideoDirect = false;
        if (videoView != null) {
            try { videoView.stopPlayback(); } catch (Throwable ignored) {}
            videoView = null;
        }
        videoPlayerBox = null;
        videoPreviewBox = null;
        if (videoThumbBmp != null && !videoThumbBmp.isRecycled()) {
            videoThumbBmp.recycle();
        }
        videoThumbBmp = null;
        videoHud = null;
        videoProgress = null;
        videoControls = null;
        videoPosTv = null;
        videoDurTv = null;
        setVideoHudVisible(true);
        if (root != null) root.setBackgroundColor(COLOR_BG);
        if (contentHost != null) contentHost.setBackgroundColor(COLOR_BG);
        setStatusBar(COLOR_STATUS_BAR);
        if (audioPlayer != null) {
            try { audioPlayer.stop(); } catch (Throwable ignored) {}
            try { audioPlayer.release(); } catch (Throwable ignored) {}
            audioPlayer = null;
        }
        audioPrepared = false;
        audioCompleted = false;
        audioProgress = null;
        audioTimeTv = null;
        audioStateTv = null;
        if (photoView != null) {
            photoView.recycleBitmap();
            photoView = null;
        }
        gifView = null;
    }

    private void release() {
        destroyed = true;
        stopActiveMedia();
        for (ThumbTileView t : stripTiles) t.recycle();
    }

    // --- Custom Views ---

    /** Centered red indicator dot matching Sonim's AttachmentViewActivity. */
    private static final class RedDotView extends View {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        RedDotView(Context ctx) {
            super(ctx);
            paint.setColor(COLOR_SONIM_RED);
        }
        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            c.drawCircle(getWidth() * 0.5f, getHeight() * 0.5f, 2.2f * den, paint);
        }
    }

    /** Sonim bottom carousel thumbnail tile with blue-grey selection box & crisp size label. */
    private static final class ThumbTileView extends View {
        private final PartItem item;
        private Bitmap thumb;
        private boolean selected = false;
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        private final Paint strokePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint textPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF dstRect = new RectF();
        private final Rect srcRect = new Rect();

        ThumbTileView(Context ctx, PartItem item) {
            super(ctx);
            this.item = item;
            float den = ctx.getResources().getDisplayMetrics().density;
            strokePaint.setStyle(Paint.Style.STROKE);
            textPaint.setColor(0xFF616161);
            textPaint.setTextSize(10.5f * den);
            textPaint.setTextAlign(Paint.Align.CENTER);
            loadThumb();
        }

        void setSelectedTile(boolean sel) {
            if (selected != sel) {
                selected = sel;
                invalidate();
            }
        }

        void recycle() {
            if (thumb != null && !thumb.isRecycled()) thumb.recycle();
            thumb = null;
        }

        private void loadThumb() {
            final Context app = getContext().getApplicationContext();
            IO_EXEC.execute(() -> {
                Bitmap b = null;
                if (item.kind == PartItem.Kind.IMAGE || item.kind == PartItem.Kind.GIF) {
                    b = decodeCrispBitmap(app, item.uri, 120);
                } else if (item.kind == PartItem.Kind.VIDEO) {
                    MediaMetadataRetriever mmr = new MediaMetadataRetriever();
                    try {
                        mmr.setDataSource(app, item.uri);
                        b = mmr.getFrameAtTime(0, MediaMetadataRetriever.OPTION_CLOSEST_SYNC);
                    } catch (Throwable ignored) {
                    } finally {
                        try { mmr.release(); } catch (Throwable ignored) {}
                    }
                }
                final Bitmap loaded = b;
                post(() -> {
                    if (loaded != null && !loaded.isRecycled()) {
                        thumb = loaded;
                        invalidate();
                    }
                });
            });
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            float w = getWidth();
            float h = getHeight();

            // Sonim blue-grey selection box
            if (selected) {
                paint.setColor(COLOR_FOCUS_FILL);
                c.drawRect(0, 0, w, h, paint);
                strokePaint.setColor(COLOR_FOCUS_STROKE);
                strokePaint.setStrokeWidth(2f * den);
                c.drawRect(den, den, w - den, h - den, strokePaint);
            }

            // Inner framed thumbnail square
            float thumbW = 46f * den;
            float thumbH = 44f * den;
            float left = (w - thumbW) * 0.5f;
            float top = 5f * den;
            dstRect.set(left, top, left + thumbW, top + thumbH);

            paint.setColor(0xFFF5F5F5);
            c.drawRect(dstRect, paint);

            if (thumb != null && !thumb.isRecycled()) {
                int bw = thumb.getWidth(), bh = thumb.getHeight();
                float dstRatio = thumbW / thumbH;
                float bmpRatio = bw / (float) Math.max(1, bh);
                if (bmpRatio > dstRatio) {
                    int cw = Math.round(bh * dstRatio);
                    int l = (bw - cw) / 2;
                    srcRect.set(l, 0, l + cw, bh);
                } else {
                    int ch = Math.round(bw / dstRatio);
                    int t = (bh - ch) / 2;
                    srcRect.set(0, t, bw, t + ch);
                }
                c.drawBitmap(thumb, srcRect, dstRect, paint);
            } else {
                // Clean icon glyph for audio/vCard/other
                String tag = item.kind == PartItem.Kind.AUDIO ? "\u266B"
                        : (item.kind == PartItem.Kind.VCARD ? "VCF" : "FILE");
                Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
                p.setColor(0xFF757575);
                p.setTextAlign(Paint.Align.CENTER);
                p.setTextSize(12f * den);
                Paint.FontMetrics fm = p.getFontMetrics();
                c.drawText(tag, dstRect.centerX(),
                        dstRect.centerY() - (fm.ascent + fm.descent) * 0.5f, p);
            }

            // Mini white-ring play icon on video thumbnail (matches baseline 13_attach_video.png)
            if (item.kind == PartItem.Kind.VIDEO) {
                float cx = dstRect.centerX();
                float cy = dstRect.centerY();
                float r = 7f * den;
                strokePaint.setColor(Color.WHITE);
                strokePaint.setStrokeWidth(1.5f * den);
                c.drawCircle(cx, cy, r, strokePaint);
                paint.setColor(Color.WHITE);
                Path tri = new Path();
                float s = 3.2f * den;
                tri.moveTo(cx - s * 0.5f, cy - s);
                tri.lineTo(cx + s, cy);
                tri.lineTo(cx - s * 0.5f, cy + s);
                tri.close();
                c.drawPath(tri, paint);
            }

            // Crisp 1px black frame around thumbnail
            strokePaint.setColor(Color.BLACK);
            strokePaint.setStrokeWidth(Math.max(1f, den));
            c.drawRect(dstRect, strokePaint);

            // Size text below thumbnail (with enough bottom room so it never clips)
            String sz = formatSize(item.sizeBytes);
            if (!sz.isEmpty()) {
                c.drawText(sz, w * 0.5f, h - 4f * den, textPaint);
            }
        }
    }

    /** Aspect-preserving photo view with 2.2x D-pad zoom & clamped pan on white background. */
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

    /** Native Sonim hollow white circle + play triangle (matches baseline 13_attach_video.png). */
    private static final class SonimPlayRingView extends View {
        private final Paint ring = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);

        SonimPlayRingView(Context ctx) {
            super(ctx);
            float den = ctx.getResources().getDisplayMetrics().density;
            ring.setStyle(Paint.Style.STROKE);
            ring.setColor(Color.WHITE);
            ring.setStrokeWidth(3f * den);
            fill.setColor(Color.WHITE);
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            float cx = getWidth() * 0.5f;
            float cy = getHeight() * 0.5f;
            float r = Math.min(cx, cy) - 2f * den;
            c.drawCircle(cx, cy, r, ring);
            float s = r * 0.44f;
            Path tri = new Path();
            tri.moveTo(cx - s * 0.50f, cy - s);
            tri.lineTo(cx + s * 1.05f, cy);
            tri.lineTo(cx - s * 0.50f, cy + s);
            tri.close();
            c.drawPath(tri, fill);
        }
    }

    /** Sonim MovieView-matched teal progress bar with crisp white circular thumb. */
    private static final class MovieSeekBarView extends View {
        private float progress = 0f;
        private final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint thumb = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();

        MovieSeekBarView(Context ctx) {
            super(ctx);
            track.setColor(0xFF4A4A4A);
            fill.setColor(0xFF009688);
            thumb.setColor(Color.WHITE);
        }

        void setProgress(float p) {
            progress = Math.max(0f, Math.min(1f, p));
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            float h = 3.5f * den;
            float r = 4.8f * den;
            float cy = getHeight() * 0.5f;
            float left = r;
            float right = getWidth() - r;
            float w = Math.max(1f, right - left);

            rect.set(left, cy - h * 0.5f, right, cy + h * 0.5f);
            c.drawRoundRect(rect, h * 0.5f, h * 0.5f, track);

            float thumbX = left + w * progress;
            if (progress > 0f) {
                rect.set(left, cy - h * 0.5f, thumbX, cy + h * 0.5f);
                c.drawRoundRect(rect, h * 0.5f, h * 0.5f, fill);
            }
            c.drawCircle(thumbX, cy, r, thumb);
        }
    }

    /** Sonim MovieView-matched bottom transport row: <<   ( || / > )   >>. */
    private static final class MovieControlsView extends View {
        private boolean playing = true;
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint ring = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();

        MovieControlsView(Context ctx) {
            super(ctx);
            float den = ctx.getResources().getDisplayMetrics().density;
            fill.setColor(Color.WHITE);
            ring.setStyle(Paint.Style.STROKE);
            ring.setColor(0xFF9FA8DA);
            ring.setStrokeWidth(2f * den);
        }

        void setPlaying(boolean p) {
            if (playing != p) {
                playing = p;
                invalidate();
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            float den = getResources().getDisplayMetrics().density;
            float w = getWidth();
            float cy = getHeight() * 0.5f;
            float cx = w * 0.5f;

            // Left: Rewind <<
            drawDoubleTri(c, w * 0.17f, cy, 7.5f * den, true);

            // Center: Sonim circular focus ring + Play/Pause icon
            float cr = 17f * den;
            c.drawCircle(cx, cy, cr, ring);
            if (playing) {
                float bw = 4.5f * den;
                float bh = 15f * den;
                float gap = 4.5f * den;
                rect.set(cx - gap * 0.5f - bw, cy - bh * 0.5f, cx - gap * 0.5f, cy + bh * 0.5f);
                c.drawRect(rect, fill);
                rect.set(cx + gap * 0.5f, cy - bh * 0.5f, cx + gap * 0.5f + bw, cy + bh * 0.5f);
                c.drawRect(rect, fill);
            } else {
                float s = 8.5f * den;
                Path tri = new Path();
                tri.moveTo(cx - s * 0.45f, cy - s);
                tri.lineTo(cx + s * 1.05f, cy);
                tri.lineTo(cx - s * 0.45f, cy + s);
                tri.close();
                c.drawPath(tri, fill);
            }

            // Right: Fast-forward >>
            drawDoubleTri(c, w * 0.83f, cy, 7.5f * den, false);
        }

        private void drawDoubleTri(Canvas c, float cx, float cy, float s, boolean left) {
            float dir = left ? -1f : 1f;
            for (int k = 0; k < 2; k++) {
                float ox = cx + (k == 0 ? -s * 0.55f : s * 0.55f);
                Path p = new Path();
                p.moveTo(ox + dir * s * 0.65f, cy);
                p.lineTo(ox - dir * s * 0.55f, cy - s * 0.85f);
                p.lineTo(ox - dir * s * 0.55f, cy + s * 0.85f);
                p.close();
                c.drawPath(p, fill);
            }
        }
    }

    /** Sonim red horizontal progress bar for audio playback. */
    private static final class SonimProgressView extends View {
        private float progress = 0f;
        private final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();

        SonimProgressView(Context ctx) {
            super(ctx);
            track.setColor(0xFFE0E0E0);
            fill.setColor(COLOR_SONIM_RED);
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
            rect.set(0, y, getWidth(), y + h);
            c.drawRect(rect, track);
            float fw = getWidth() * progress;
            if (fw > 0f) {
                rect.set(0, y, fw, y + h);
                c.drawRect(rect, fill);
            }
        }
    }

    // --- Helpers ---

    private void setStatusBar(int color) {
        Window w = act.getWindow();
        if (w == null) return;
        w.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        w.setStatusBarColor(color);
    }

    static String formatSize(long bytes) {
        if (bytes <= 0) return "";
        if (bytes < 1024) return bytes + " B";
        long kb = Math.round(bytes / 1024.0);
        if (kb < 1024) return kb + " KB";
        return String.format(Locale.US, "%.1f MB", bytes / (1024.0 * 1024.0));
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

    static String formatMovieTime(int ms) {
        if (ms < 0) ms = 0;
        int sec = Math.round(ms / 1000f);
        int m = sec / 60;
        int s = sec % 60;
        return (m < 10 ? "0" : "") + m + ":" + (s < 10 ? "0" : "") + s;
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
