package com.goodreads.xp3;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;
import android.widget.ImageView;

import com.goodreads.xp3.books.Text;
import com.xp3.common.ui.Ui;

import java.util.concurrent.ExecutorService;

/**
 * Covers fetched in the background and kept in memory while the app runs.
 *
 * A view asks with its address; the view is tagged with it, so a list row
 * reused for another book by the time the cover arrives is left alone. Until
 * then, and for good when there is no cover, the view shows the site's
 * beige placeholder.
 */
final class Pictures {

    private static final ExecutorService WORKERS = Ui.workers("covers", 3);
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final LruCache<String, Bitmap> CACHE = new LruCache<String, Bitmap>(6 * 1024 * 1024) {
        @Override
        protected int sizeOf(String key, Bitmap value) {
            return value.getByteCount();
        }
    };

    private Pictures() {}

    /** The cover at `url`, asked for `height` pixels tall, into `view`. */
    static void cover(final ImageView view, String url, final int height) {
        final String sized = Text.cover(url, height);
        view.setTag(sized);
        Bitmap cached = sized.isEmpty() ? null : CACHE.get(sized);
        if (cached != null) {
            view.setImageBitmap(cached);
            return;
        }
        view.setImageDrawable(null);
        if (sized.isEmpty() || !sized.startsWith("https://")) return;
        WORKERS.execute(() -> {
            Bitmap bitmap;
            try {
                bitmap = CACHE.get(sized);
                if (bitmap == null) {
                    bitmap = Net.picture(sized, height);
                    CACHE.put(sized, bitmap);
                }
            } catch (Exception | OutOfMemoryError e) {
                bitmap = null;
            }
            final Bitmap result = bitmap;
            MAIN.post(() -> {
                if (result != null && sized.equals(view.getTag())) view.setImageBitmap(result);
            });
        });
    }
}
