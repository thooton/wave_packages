package com.goodreads.xp3;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import com.goodreads.xp3.books.Api;
import com.xp3.common.Http;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;

/**
 * The network: the site's pages and search suggestions, its GraphQL
 * service, and the covers.
 *
 * The shared client never follows a redirect; the site redirects a genre's
 * old address to its new one, so redirects are followed by hand, a few hops
 * at most and never off www.goodreads.com. Nothing else is ever asked for.
 */
final class Net implements Api.Transport {

    /** A phone's browser, so the site sends the pages it sends phones. */
    private static final String AGENT =
        "Mozilla/5.0 (Linux; Android 8.1.0; XP3800) AppleWebKit/537.36 (KHTML, like Gecko) "
        + "Chrome/120.0 Mobile Safari/537.36";

    private static final Http HTTP = new Http();

    @Override
    public Api.Reply send(String url, String body, String key) throws IOException, InterruptedException {
        if (!url.equals(Api.GRAPHQL) && !url.startsWith(Api.SITE + "/")) throw new IOException("Not a Goodreads address.");
        String at = url;
        for (int hop = 0; hop < 4; hop++) {
            Http.Request request = Http.Request.to(URI.create(at))
                .header("User-Agent", AGENT)
                .header("Accept-Language", "en-US,en")
                .timeout(45000);
            if (body != null) {
                request.post(body)
                    .header("Content-Type", "application/json")
                    .header("Accept", "application/json")
                    .header("x-api-key", key);
            } else {
                request.header("Accept", "text/html,application/json");
            }
            Http.Response response = HTTP.send(request);
            int status = response.status();
            if (body == null && status >= 300 && status < 400 && !response.header("Location").isEmpty()) {
                String next = URI.create(at).resolve(response.header("Location")).toString();
                if (!next.startsWith(Api.SITE + "/")) throw new IOException("Goodreads sent the request elsewhere.");
                at = next;
                continue;
            }
            return new Api.Reply(status, response.body());
        }
        throw new IOException("Goodreads sent the request elsewhere.");
    }

    /** A cover, scaled down on decoding so it is no taller than `height` pixels. */
    static Bitmap picture(String url, int height) throws IOException, InterruptedException {
        Http.Stream stream = HTTP.stream(Http.Request.to(URI.create(url))
            .header("User-Agent", AGENT)
            .timeout(30000));
        byte[] bytes;
        try {
            if (stream.status() != 200) throw new IOException("Picture " + stream.status());
            bytes = read(stream.stream());
        } finally {
            stream.close();
        }
        BitmapFactory.Options bounds = new BitmapFactory.Options();
        bounds.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bytes, 0, bytes.length, bounds);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 1;
        while (bounds.outHeight / (options.inSampleSize * 2) >= height) options.inSampleSize *= 2;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        Bitmap bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.length, options);
        if (bitmap == null) throw new IOException("Not a picture");
        return bitmap;
    }

    private static byte[] read(InputStream in) throws IOException, InterruptedException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buffer = new byte[16384];
        for (int count; (count = in.read(buffer)) >= 0; ) {
            if (Thread.currentThread().isInterrupted()) throw new InterruptedException();
            out.write(buffer, 0, count);
            if (out.size() > 4000000) throw new IOException("Picture too large");
        }
        return out.toByteArray();
    }
}
