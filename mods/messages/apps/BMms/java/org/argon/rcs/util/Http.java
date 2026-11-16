package org.argon.rcs.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/** Minimal HttpURLConnection wrapper with a per-instance cookie jar (no global CookieHandler). */
public final class Http {
    public interface BodyWriter { void write(OutputStream o) throws IOException; }

    public static final class Response {
        public int code;
        public String message;
        public final Map<String, List<String>> headers = new LinkedHashMap<>();
        public byte[] body = new byte[0];
        public String header(String name) {
            List<String> l = headers.get(name.toLowerCase(Locale.ROOT));
            return l == null || l.isEmpty() ? null : l.get(0);
        }
        public List<String> headers(String name) {
            List<String> l = headers.get(name.toLowerCase(Locale.ROOT));
            return l == null ? new ArrayList<>() : l;
        }
        public String text() { return new String(body, java.nio.charset.StandardCharsets.UTF_8); }
    }

    private final SSLSocketFactory ssl;
    private final Map<String, String> cookies = new LinkedHashMap<>();
    public int connectTimeoutMs = 15000, readTimeoutMs = 30000;
    public String userAgent = "Argon-RCS/1.0";

    public Http(SSLSocketFactory ssl) { this.ssl = ssl; }

    public void clearCookies() { cookies.clear(); }

    public Response get(String url, Map<String, String> headers) throws IOException {
        return request("GET", url, headers, null, -1, null);
    }

    /** body may be null (no body); length -1 = chunked when body != null. downloadTo != null streams the body there. */
    public Response request(String method, String url, Map<String, String> headers, BodyWriter body, long length,
                            OutputStream downloadTo) throws IOException {
        HttpURLConnection c = (HttpURLConnection) new URL(url).openConnection();
        try {
            if (c instanceof HttpsURLConnection && ssl != null) ((HttpsURLConnection) c).setSSLSocketFactory(ssl);
            c.setInstanceFollowRedirects(true);
            c.setUseCaches(false);
            c.setConnectTimeout(connectTimeoutMs);
            c.setReadTimeout(readTimeoutMs);
            c.setRequestMethod(method);
            c.setRequestProperty("User-Agent", userAgent);
            c.setRequestProperty("Accept-Encoding", "identity");
            if (!cookies.isEmpty()) {
                StringBuilder b = new StringBuilder();
                for (Map.Entry<String, String> e : cookies.entrySet()) {
                    if (b.length() > 0) b.append("; ");
                    b.append(e.getKey()).append('=').append(e.getValue());
                }
                c.setRequestProperty("Cookie", b.toString());
            }
            if (headers != null) for (Map.Entry<String, String> e : headers.entrySet()) c.setRequestProperty(e.getKey(), e.getValue());
            if (body != null) {
                c.setDoOutput(true);
                if (length >= 0) c.setFixedLengthStreamingMode(length); else c.setChunkedStreamingMode(8192);
                try (OutputStream o = c.getOutputStream()) { body.write(o); }
            } else if (method.equals("POST") || method.equals("PUT")) {
                c.setDoOutput(true);
                c.setFixedLengthStreamingMode(0);
                c.getOutputStream().close();
            }
            Response r = new Response();
            r.code = c.getResponseCode();
            r.message = c.getResponseMessage();
            for (Map.Entry<String, List<String>> e : c.getHeaderFields().entrySet()) {
                if (e.getKey() == null) continue;
                r.headers.put(e.getKey().toLowerCase(Locale.ROOT), new ArrayList<>(e.getValue()));
            }
            for (String sc : r.headers("set-cookie")) {
                String kv = sc.split(";", 2)[0];
                int eq = kv.indexOf('=');
                if (eq > 0) cookies.put(kv.substring(0, eq).trim(), kv.substring(eq + 1).trim());
            }
            InputStream in = r.code >= 400 ? c.getErrorStream() : c.getInputStream();
            if (in != null) {
                try {
                    if (downloadTo != null && r.code >= 200 && r.code < 300) {
                        byte[] buf = new byte[16384];
                        int n;
                        while ((n = in.read(buf)) > 0) downloadTo.write(buf, 0, n);
                    } else {
                        r.body = readAll(in, 4 * 1024 * 1024);
                    }
                } finally { in.close(); }
            }
            return r;
        } finally {
            c.disconnect();
        }
    }

    public static byte[] readAll(InputStream in, int max) throws IOException {
        ByteArrayOutputStream o = new ByteArrayOutputStream();
        byte[] buf = new byte[8192];
        int n;
        while ((n = in.read(buf)) > 0) {
            o.write(buf, 0, n);
            if (o.size() > max) throw new IOException("response too large");
        }
        return o.toByteArray();
    }

    public static String urlEncode(String s) {
        try { return java.net.URLEncoder.encode(s, "UTF-8").replace("+", "%20"); } catch (Exception e) { return s; }
    }

    /** Path+query part of a URL for Digest uri=. */
    public static String requestUri(String url) {
        try {
            URL u = new URL(url);
            String p = u.getPath().isEmpty() ? "/" : u.getPath();
            return u.getQuery() != null ? p + "?" + u.getQuery() : p;
        } catch (Exception e) { return url; }
    }
}
