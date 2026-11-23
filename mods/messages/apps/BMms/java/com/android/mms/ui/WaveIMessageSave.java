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
 * ComposeMessageActivity.saveAttachment}, and the attachment viewer's Save attachment / Save all in
 * {@code BaseAttachmentViewActivity}). Files go to the phone's Download folder. The download works
 * whether or not the push connection is up; it needs only the server.
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
        Toast.makeText(a, items.size() == 1 ? "Downloading full-size file\u2026"
                : "Downloading " + items.size() + " full-size files\u2026", Toast.LENGTH_SHORT).show();
        new Thread(new Runnable() {
            @Override
            public void run() {
                int saved = 0;
                String error = null;
                File dir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                dir.mkdirs();
                List<String> paths = new ArrayList<String>();
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
                if (!paths.isEmpty()) {
                    MediaScannerConnection.scanFile(app, paths.toArray(new String[paths.size()]), null, null);
                }
                final String msg = saved == items.size()
                        ? (saved == 1 ? "Saved to Download" : saved + " files saved to Download")
                        : saved > 0 ? saved + " of " + items.size() + " saved to Download"
                        : "Couldn't download" + (error == null ? "" : ": " + error);
                MAIN.post(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(app, msg, Toast.LENGTH_LONG).show();
                    }
                });
            }
        }, "wave-imsg-save").start();
        return true;
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
}
