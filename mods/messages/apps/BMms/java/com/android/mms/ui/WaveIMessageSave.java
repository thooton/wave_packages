package com.android.mms.ui;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.MimeTypeMap;
import android.widget.Toast;

import com.android.mms.wave.WaveIMessageDb;
import com.android.mms.wave.WaveIMessageHost;
import com.android.mms.wave.imsg.MediaClient;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * FEAT(imessage): "Save attachment" on an iMessage saves the full-size photo or video from the
 * server instead of the screen-size preview stored on the phone ({@code
 * ComposeMessageActivity.saveAttachment}, and the attachment viewer's Save attachment / Save all).
 * Reuses one media connection via {@code keepOpen()} when saving multiple files at once.
 * Also provides local part saving to Download/ for non-iMessage MMS attachments.
 */
public final class WaveIMessageSave {
    private static final String TAG = "WaveIMsg";
    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private WaveIMessageSave() {}

    /** Conversation menu "Save attachment": true if it took over saving message {@code msgId}. */
    public static boolean saveFullSize(Activity a, long msgId) {
        return saveAll(a, Uri.parse("content://mms/" + msgId));
    }

    /** Attachment viewer "Save all": true if it took over saving the message at {@code msgUri}. */
    public static boolean saveAll(Activity a, Uri msgUri) {
        try {
            if (msgUri == null) return false;
            Context app = a.getApplicationContext();
            WaveIMessageDb db = WaveIMessageDb.get(app);
            Uri msg = Uri.parse(WaveIMessageDb.key(msgUri));
            if (!db.hasMedia(msg)) return false;
            List<String[]> items = new ArrayList<String[]>();
            Cursor cur = app.getContentResolver().query(Uri.parse(msg + "/part"), new String[]{"_id"}, null, null, null);
            if (cur != null) {
                try {
                    while (cur.moveToNext()) {
                        String[] m = db.mediaForPart(Uri.parse("content://mms/part/" + cur.getLong(0)));
                        if (m != null) items.add(m);
                    }
                } finally {
                    cur.close();
                }
            }
            // Files that came with the photos (PDFs, zips, ...) aren't parts: download them too.
            items.addAll(db.filesFor(msg));
            return start(a, items);
        } catch (Throwable t) {
            Log.w(TAG, "saveAll", t);
            return false;
        }
    }

    /** Attachment viewer "Save attachment": true if it took over saving the part at {@code partUri}. */
    public static boolean savePart(Activity a, Uri partUri) {
        try {
            if (partUri == null) return false;
            String[] m = WaveIMessageDb.get(a).mediaForPart(
                    Uri.parse("content://mms/part/" + partUri.getLastPathSegment()));
            if (m == null) return false;
            List<String[]> items = new ArrayList<String[]>();
            items.add(m);
            return start(a, items);
        } catch (Throwable t) {
            Log.w(TAG, "savePart", t);
            return false;
        }
    }

    /**
     * FEAT(imessage): "Download file" on an iMessage that came with files that have no preview
     * (PDFs, zips, ...): downloads the originals from the server into Download.
     */
    public static void downloadFiles(Activity a, Uri msgUri) {
        try {
            List<String[]> items = WaveIMessageDb.get(a).filesFor(msgUri);
            if (items.isEmpty()) return;
            if (WaveIMessageHost.get(a.getApplicationContext()).mediaClient() == null) {
                Toast.makeText(a, "iMessage isn't set up", Toast.LENGTH_SHORT).show();
                return;
            }
            start(a, items);
        } catch (Throwable t) {
            Log.w(TAG, "downloadFiles", t);
            Toast.makeText(a, "Couldn't download", Toast.LENGTH_SHORT).show();
        }
    }

    /** Saves a local MMS part URI directly to Download/ (fallback for carrier MMS). */
    public static void saveLocalPart(Activity a, final Uri partUri, final String mime, final String filename) {
        if (a == null || partUri == null) return;
        final Context app = a.getApplicationContext();
        new Thread(() -> {
            try {
                File dir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                dir.mkdirs();
                File dest = unique(dir, cleanName(filename, mime));
                try (InputStream in = app.getContentResolver().openInputStream(partUri);
                     OutputStream out = new FileOutputStream(dest)) {
                    if (in == null) {
                        toast(app, "Couldn't read attachment");
                        return;
                    }
                    byte[] buf = new byte[32 * 1024];
                    int r;
                    while ((r = in.read(buf)) > 0) out.write(buf, 0, r);
                }
                MediaScannerConnection.scanFile(app, new String[]{dest.getPath()},
                        mime != null ? new String[]{mime} : null, null);
                toast(app, "Saved to Download");
            } catch (Throwable t) {
                Log.w(TAG, "saveLocalPart failed", t);
                toast(app, "Couldn't save attachment");
            }
        }, "wave-mms-save").start();
    }

    /** Saves multiple local MMS parts to Download/. */
    public static void saveLocalParts(Activity a, final List<Uri> uris,
                                      final List<String> mimes, final List<String> names) {
        if (a == null || uris == null || uris.isEmpty()) return;
        final Context app = a.getApplicationContext();
        new Thread(() -> {
            File dir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
            dir.mkdirs();
            List<String> paths = new ArrayList<String>();
            int saved = 0;
            for (int i = 0; i < uris.size(); i++) {
                Uri u = uris.get(i);
                String mime = (mimes != null && i < mimes.size()) ? mimes.get(i) : null;
                String name = (names != null && i < names.size()) ? names.get(i) : null;
                if (u == null) continue;
                try {
                    File dest = unique(dir, cleanName(name, mime));
                    try (InputStream in = app.getContentResolver().openInputStream(u);
                         OutputStream out = new FileOutputStream(dest)) {
                        if (in == null) continue;
                        byte[] buf = new byte[32 * 1024];
                        int r;
                        while ((r = in.read(buf)) > 0) out.write(buf, 0, r);
                    }
                    paths.add(dest.getPath());
                    saved++;
                } catch (Throwable t) {
                    Log.w(TAG, "saveLocalParts item failed", t);
                }
            }
            if (!paths.isEmpty()) {
                MediaScannerConnection.scanFile(app, paths.toArray(new String[paths.size()]), null, null);
            }
            toast(app, saved == 0 ? "Couldn't save attachments"
                    : (saved == 1 ? "Saved to Download" : saved + " files saved to Download"));
        }, "wave-mms-save-all").start();
    }

    /** Downloads {mediaId, name} items full-size into Download; false (stock saves the preview) if offline. */
    private static boolean start(Activity a, final List<String[]> items) {
        if (items.isEmpty()) return false;
        final Context app = a.getApplicationContext();
        WaveIMessageHost host = WaveIMessageHost.get(app);
        final MediaClient mc = host.mediaClient();
        if (mc == null) {
            Toast.makeText(a, "iMessage isn't set up; saving the preview", Toast.LENGTH_SHORT).show();
            return false;
        }
        Toast.makeText(a, items.size() == 1 ? "Downloading " + displayName(items.get(0)[1]) + "\u2026"
                : "Downloading " + items.size() + " files\u2026", Toast.LENGTH_SHORT).show();
        new Thread(new Runnable() {
            @Override
            public void run() {
                int saved = 0;
                String error = null;
                File dir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                dir.mkdirs();
                List<String> paths = new ArrayList<String>();
                boolean reuse = items.size() > 1;
                if (reuse) mc.keepOpen();
                try {
                    for (String[] m : items) {
                        File tmp = new File(app.getCacheDir(), "full-" + m[0]);
                        try {
                            MediaClient.Result r = mc.download(m[0], true, tmp, null);
                            File out = unique(dir, r.name != null && !r.name.isEmpty() ? r.name : m[1]);
                            copy(r.file, out);
                            paths.add(out.getPath());
                            saved++;
                            Log.i(TAG, "saved full-size " + m[0] + " to " + out + " (" + r.length + " bytes)");
                        } catch (IOException e) {
                            Log.w(TAG, "full-size download of " + m[0] + " failed", e);
                            error = e.getMessage();
                        } finally {
                            tmp.delete();
                        }
                    }
                } finally {
                    if (reuse) mc.close();
                }
                if (!paths.isEmpty()) {
                    MediaScannerConnection.scanFile(app, paths.toArray(new String[paths.size()]), null, null);
                }
                final String msg = saved == items.size()
                        ? (saved == 1 ? "Saved to Download" : saved + " files saved to Download")
                        : saved > 0 ? saved + " of " + items.size() + " saved to Download"
                        : "Couldn't download" + (error == null ? "" : ": " + error);
                toast(app, msg);
            }
        }, "wave-imsg-save").start();
        return true;
    }

    private static String displayName(String name) {
        return name == null || name.trim().isEmpty() ? "file" : name.trim();
    }

    private static String cleanName(String filename, String mime) {
        String s = filename == null ? "" : filename.trim();
        int slash = Math.max(s.lastIndexOf('/'), s.lastIndexOf('\\'));
        if (slash >= 0) s = s.substring(slash + 1);
        if (s.startsWith("imsg") && s.contains("_")) {
            int us = s.indexOf('_');
            if (us > 0 && us < 8 && us + 1 < s.length()) s = s.substring(us + 1);
        }
        s = s.replaceAll("[^A-Za-z0-9._-]", "_");
        if (s.isEmpty() || ".".equals(s) || "..".equals(s)) s = "attachment";
        if (s.indexOf('.') < 0 && mime != null) {
            String ext = MimeTypeMap.getSingleton().getExtensionFromMimeType(mime);
            if (ext != null && !ext.isEmpty()) s = s + "." + ext;
        }
        return s;
    }

    private static File unique(File dir, String name) {
        String clean = name.replace('/', '_').replace('\\', '_');
        File f = new File(dir, clean);
        if (!f.exists()) return f;
        int dot = clean.lastIndexOf('.');
        String stem = dot > 0 ? clean.substring(0, dot) : clean;
        String ext = dot > 0 ? clean.substring(dot) : "";
        for (int i = 1; ; i++) {
            f = new File(dir, stem + " (" + i + ")" + ext);
            if (!f.exists()) return f;
        }
    }

    private static void copy(File from, File to) throws IOException {
        InputStream in = new FileInputStream(from);
        try {
            OutputStream out = new FileOutputStream(to);
            try {
                byte[] buf = new byte[64 * 1024];
                int r;
                while ((r = in.read(buf)) > 0) out.write(buf, 0, r);
            } finally {
                out.close();
            }
        } finally {
            in.close();
        }
    }

    private static void toast(final Context app, final String msg) {
        MAIN.post(new Runnable() {
            @Override
            public void run() {
                Toast.makeText(app, msg, Toast.LENGTH_LONG).show();
            }
        });
    }
}
