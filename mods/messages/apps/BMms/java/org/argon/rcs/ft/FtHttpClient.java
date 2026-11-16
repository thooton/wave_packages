package org.argon.rcs.ft;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.net.ssl.SSLSocketFactory;

import org.argon.rcs.util.Digest;
import org.argon.rcs.util.Http;
import org.argon.rcs.util.Log;
import org.argon.rcs.util.U;

/** FT-over-HTTP content server client (RCC.07 section 3.2.5): upload with Digest, download. Blocking. */
public final class FtHttpClient {
    private final SSLSocketFactory ssl;
    private final Log log;
    private final String user, password;
    public String userAgent = "Argon-RCS/1.0";

    public FtHttpClient(SSLSocketFactory ssl, Log log, String user, String password) {
        this.ssl = ssl; this.log = log; this.user = user; this.password = password;
    }

    /** Uploads file (+ optional thumbnail) and returns the server's file-info. Throws on failure. */
    public FileInfo upload(String csUri, File file, String mime, String fileName, byte[] thumb, String thumbMime) throws IOException {
        Http http = newHttp();
        String tid = U.uuid();
        // 1) empty POST to get the Digest challenge
        Http.Response r = http.request("POST", csUri, null, null, 0, null);
        String auth = null;
        if (r.code == 401) {
            auth = authFor(r, "POST", csUri);
            if (auth == null) throw new IOException("FT upload: unsupported challenge " + r.header("www-authenticate"));
        } else if (r.code >= 300 && r.code != 400) {
            // 400 is fine: some servers reject an empty POST but accept the real one
            log.d("FT: empty POST -> " + r.code);
        }
        for (int attempt = 0; attempt < 2; attempt++) {
            r = postMultipart(http, csUri, auth, tid, file, mime, fileName, thumb, thumbMime);
            log.i("FT upload " + file.length() + " bytes -> " + r.code);
            if (r.code == 401 && attempt == 0) {
                auth = authFor(r, "POST", csUri);
                if (auth == null) break;
                continue;
            }
            break;
        }
        if (r.code != 200) throw new FtException(r.code, "FT upload HTTP " + r.code);
        FileInfo fi = FileInfo.parse(r.body);
        if (fi == null) throw new FtException(r.code, "FT upload: bad file-info");
        return fi;
    }

    public static final class FtException extends IOException {
        public final int code;
        public FtException(int code, String m) { super(m); this.code = code; }
    }

    private Http newHttp() {
        Http h = new Http(ssl);
        h.userAgent = userAgent;
        h.readTimeoutMs = 60000;
        return h;
    }

    private String authFor(Http.Response r, String method, String url) {
        for (String h : r.headers("www-authenticate")) {
            Digest d = Digest.parse(h);
            if (d != null && !d.isAka() && user != null) return d.authorization(method, Http.requestUri(url), user, password, false);
        }
        return null;
    }

    private Http.Response postMultipart(Http http, String url, String auth, String tid, File file, String mime, String fileName,
                                        byte[] thumb, String thumbMime) throws IOException {
        String boundary = "----ArgonFt" + U.randHex(8);
        byte[] p1 = ("--" + boundary + "\r\nContent-Disposition: form-data; name=\"tid\"\r\nContent-Type: text/plain\r\n\r\n" + tid + "\r\n")
                .getBytes(StandardCharsets.UTF_8);
        byte[] pThumb = new byte[0];
        if (thumb != null) {
            byte[] h = ("--" + boundary + "\r\nContent-Disposition: form-data; name=\"Thumbnail\"; filename=\"thumb\"\r\nContent-Type: "
                    + thumbMime + "\r\nContent-Length: " + thumb.length + "\r\n\r\n").getBytes(StandardCharsets.UTF_8);
            pThumb = concat(h, thumb, "\r\n".getBytes(StandardCharsets.ISO_8859_1));
        }
        byte[] fileHead = ("--" + boundary + "\r\nContent-Disposition: form-data; name=\"File\"; filename=\"" + fileName.replace("\"", "")
                + "\"\r\nContent-Type: " + mime + "\r\nContent-Length: " + file.length() + "\r\n\r\n").getBytes(StandardCharsets.UTF_8);
        byte[] tail = ("\r\n--" + boundary + "--\r\n").getBytes(StandardCharsets.UTF_8);
        long total = p1.length + pThumb.length + fileHead.length + file.length() + tail.length;
        Map<String, String> headers = new LinkedHashMap<>();
        headers.put("Content-Type", "multipart/form-data; boundary=" + boundary);
        if (auth != null) headers.put("Authorization", auth);
        final byte[] fThumb = pThumb;
        return http.request("POST", url, headers, o -> {
            o.write(p1);
            o.write(fThumb);
            o.write(fileHead);
            try (InputStream in = new FileInputStream(file)) { copy(in, o); }
            o.write(tail);
        }, total, null);
    }

    /** Downloads url to dest; Digest auth with our FT credentials if challenged. Returns bytes written. */
    public long download(String url, File dest, long maxBytes) throws IOException {
        Http http = newHttp();
        File tmp = new File(dest.getPath() + ".part");
        Http.Response r;
        try (OutputStream o = new FileOutputStream(tmp)) {
            r = http.request("GET", url, null, null, -1, o);
        }
        if (r.code == 401) {
            String auth = authFor(r, "GET", url);
            if (auth == null) throw new FtException(401, "FT download: unsupported challenge");
            Map<String, String> h = new LinkedHashMap<>();
            h.put("Authorization", auth);
            try (OutputStream o = new FileOutputStream(tmp)) {
                r = http.request("GET", url, h, null, -1, o);
            }
        }
        if (r.code != 200) { tmp.delete(); throw new FtException(r.code, "FT download HTTP " + r.code); }
        long n = tmp.length();
        if (maxBytes > 0 && n > maxBytes) { tmp.delete(); throw new FtException(413, "FT download too large"); }
        if (dest.exists()) dest.delete();
        if (!tmp.renameTo(dest)) throw new IOException("rename failed");
        return n;
    }

    private static void copy(InputStream in, OutputStream o) throws IOException {
        byte[] buf = new byte[16384];
        int n;
        while ((n = in.read(buf)) > 0) o.write(buf, 0, n);
    }

    private static byte[] concat(byte[]... a) {
        int n = 0;
        for (byte[] x : a) n += x.length;
        byte[] r = new byte[n];
        int off = 0;
        for (byte[] x : a) { System.arraycopy(x, 0, r, off, x.length); off += x.length; }
        return r;
    }
}
