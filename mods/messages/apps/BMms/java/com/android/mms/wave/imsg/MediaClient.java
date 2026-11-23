package com.android.mms.wave.imsg;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.UUID;
import javax.net.ssl.SSLSocket;

/**
 * Attachment transfer over a short-lived ROLE_MEDIA connection, separate from the main push
 * connection so a large download never delays keepalives or incoming messages.
 *
 * Downloads resume: an interrupted {@link #download} keeps its partial file and the next call
 * asks the server to continue from where it stopped.
 */
public final class MediaClient {
    /** The server may need minutes to download from Apple and convert a long video. */
    private static final int READ_TIMEOUT_MS = 5 * 60 * 1000;
    private static final int CONNECT_TIMEOUT_MS = 15_000;
    private static final int ATTEMPTS = 3;

    public interface Progress {
        void onProgress(long done, long total);
    }

    /** What a download produced. */
    public static final class Result {
        public final File file;
        public final String mime;
        public final String name;
        public final long length;

        Result(File file, String mime, String name, long length) {
            this.file = file;
            this.mime = mime;
            this.name = name;
            this.length = length;
        }
    }

    /** The server answered with an error (missing / expired attachment): retrying won't help. */
    public static final class ServerError extends IOException {
        public ServerError(String message) {
            super(message);
        }
    }

    private final String host;
    private final int port;
    private final String tokenHex;

    /**
     * With {@link #keepOpen()}, one media connection serves every download and upload of this
     * client until {@link #close()} (the server takes any number of requests per connection and
     * drops it after 120 s idle). A message with five photos then costs one TLS handshake instead
     * of five, which on cellular is several radio round trips each. Without it every request opens
     * and closes its own connection, as callers that never call close() expect.
     */
    private boolean keepOpen;
    private SSLSocket sock;
    private InputStream sockIn;
    private OutputStream sockOut;
    private int opened;

    /** How many media connections this client has opened (tests). */
    public synchronized int connectionsOpened() {
        return opened;
    }

    public MediaClient(String host, int port, String tokenHex) {
        this.host = host;
        this.port = port;
        this.tokenHex = tokenHex;
    }

    /** Reuse one connection for every request until {@link #close()}; returns this. */
    public synchronized MediaClient keepOpen() {
        keepOpen = true;
        return this;
    }

    /** Ends the kept-open connection, if any. */
    public synchronized void close() {
        if (sock != null) {
            try {
                Frame.bye(Frame.BYE_NORMAL).writeTo(sockOut);
            } catch (IOException ignored) {
            }
        }
        drop();
    }

    /** The connection: the kept-open one, or a fresh one. */
    private SSLSocket open() throws IOException {
        if (sock != null) return sock;
        SSLSocket s = TlsHelper.connect(host, port, CONNECT_TIMEOUT_MS, CONNECT_TIMEOUT_MS);
        try {
            s.setSoTimeout(READ_TIMEOUT_MS);
            // One buffered pair per connection: a second BufferedInputStream would lose whatever
            // the first had read ahead.
            InputStream in = new BufferedInputStream(s.getInputStream(), 64 * 1024);
            OutputStream out = new BufferedOutputStream(s.getOutputStream(), 64 * 1024);
            Frame.hello(Frame.ROLE_MEDIA, tokenHex, 0L, 0).writeTo(out);
            Frame first = Frame.readFrom(in);
            if (first == null) throw new IOException("server closed the media connection");
            if (first.type == Frame.TYPE_BYE) {
                throw new ServerError("server refused media connection (" + Frame.byeReasonName(first.reason) + ")");
            }
            if (first.type != Frame.TYPE_WELCOME) throw new IOException("unexpected " + first);
            sock = s;
            sockIn = in;
            sockOut = out;
            opened++;
            return s;
        } catch (IOException e) {
            closeQuietly(s);
            throw e;
        }
    }

    /** After a request: keep the connection, or end it. */
    private void done() {
        if (!keepOpen) close();
    }

    /** The connection broke (or is in an unknown state mid-transfer): forget it. */
    private void drop() {
        if (sock != null) closeQuietly(sock);
        sock = null;
        sockIn = null;
        sockOut = null;
    }

    /**
     * Fetches attachment {@code id} into {@code dest} (preview, or the full-size file with
     * {@code full}). Retries network failures, resuming from {@code dest + ".part"}.
     */
    public synchronized Result download(String id, boolean full, File dest, Progress progress) throws IOException {
        File part = new File(dest.getPath() + ".part");
        IOException last = null;
        for (int attempt = 0; attempt < ATTEMPTS; attempt++) {
            boolean reused = sock != null;
            try {
                Result r = downloadOnce(id, full, dest, part, progress);
                done();
                return r;
            } catch (ServerError e) {
                // MEDIA_ERR leaves the connection usable; a refused connection was never kept.
                done();
                part.delete();
                throw e;
            } catch (IOException e) {
                drop();
                last = e;
                // A kept connection the server had already timed out: retry at once on a new one.
                if (reused) {
                    attempt--;
                    continue;
                }
                try {
                    Thread.sleep(2000L * (attempt + 1));
                } catch (InterruptedException ie) {
                    Thread.currentThread().interrupt();
                    throw e;
                }
            }
        }
        throw last;
    }

    private Result downloadOnce(String id, boolean full, File dest, File part, Progress progress) throws IOException {
        long have = part.exists() ? part.length() : 0L;
        open();
        RandomAccessFile raf = null;
        try {
            OutputStream out = sockOut;
            InputStream in = sockIn;
            Frame.mediaGet(id, full, have).writeTo(out);
            raf = new RandomAccessFile(part, "rw");
            String mime = null;
            String name = null;
            long total = -1;
            while (true) {
                Frame f = Frame.readFrom(in);
                if (f == null) throw new IOException("media connection closed after " + have + " bytes");
                if (f.type == Frame.TYPE_MEDIA_ERR) throw new ServerError(f.message);
                if (f.type != Frame.TYPE_MEDIA_DATA) throw new IOException("unexpected " + f);
                if (f.offset != have) {
                    // The server restarted from another offset (e.g. the file was re-created).
                    if (f.offset != 0) throw new IOException("media data at " + f.offset + ", expected " + have);
                    have = 0;
                }
                mime = f.mime;
                name = f.name;
                total = f.total;
                raf.setLength(have);
                raf.seek(have);
                if (f.body != null && f.body.length > 0) {
                    raf.write(f.body);
                    have += f.body.length;
                }
                if (progress != null) progress.onProgress(have, total);
                if (have >= total) break;
            }
            raf.close();
            raf = null;
            if (dest.exists() && !dest.delete()) throw new IOException("can't replace " + dest);
            if (!part.renameTo(dest)) throw new IOException("can't move download to " + dest);
            return new Result(dest, mime, name, total);
        } finally {
            if (raf != null) {
                try {
                    raf.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

    /** Uploads {@code data} and returns its upload id, to name in a SEND_MESSAGE. */
    public synchronized String upload(byte[] data, Progress progress) throws IOException {
        String id = "u-" + UUID.randomUUID().toString();
        IOException last = null;
        for (int attempt = 0; attempt < ATTEMPTS; attempt++) {
            boolean reused = sock != null;
            try {
                uploadOnce(id, data, progress);
                done();
                return id;
            } catch (ServerError e) {
                done();
                throw e;
            } catch (IOException e) {
                drop();
                last = e;
                if (reused) {
                    attempt--;
                    continue;
                }
                try {
                    Thread.sleep(2000L * (attempt + 1));
                } catch (InterruptedException ie) {
                    Thread.currentThread().interrupt();
                    throw e;
                }
            }
        }
        throw last;
    }

    private void uploadOnce(String id, byte[] data, Progress progress) throws IOException {
        open();
        {
            OutputStream out = sockOut;
            InputStream in = sockIn;
            long total = data.length;
            int off = 0;
            do {
                int n = Math.min(Frame.MEDIA_CHUNK_LEN, data.length - off);
                byte[] chunk = new byte[n];
                System.arraycopy(data, off, chunk, 0, n);
                out.write(Frame.mediaPut(id, off, total, chunk).encode());
                off += n;
                if (progress != null) progress.onProgress(off, total);
            } while (off < data.length);
            out.flush();
            Frame f = Frame.readFrom(in);
            if (f == null) throw new IOException("media connection closed during upload");
            if (f.type == Frame.TYPE_MEDIA_ERR) throw new ServerError(f.message);
            if (f.type != Frame.TYPE_MEDIA_PUT_ACK || f.total != total) throw new IOException("unexpected " + f);
        }
    }

    /** Copies a stream fully into memory (attachments from the MMS part store). */
    public static byte[] readAll(InputStream in) throws IOException {
        java.io.ByteArrayOutputStream bos = new java.io.ByteArrayOutputStream();
        byte[] buf = new byte[16 * 1024];
        int r;
        while ((r = in.read(buf)) > 0) bos.write(buf, 0, r);
        return bos.toByteArray();
    }

    static void writeFile(File f, byte[] data) throws IOException {
        FileOutputStream fos = new FileOutputStream(f);
        try {
            fos.write(data);
        } finally {
            fos.close();
        }
    }

    private static void closeQuietly(SSLSocket s) {
        try {
            s.close();
        } catch (IOException ignored) {
        }
    }
}
