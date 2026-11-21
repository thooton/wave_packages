package org.wave.mod.keyboard;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.zip.CRC32;

/**
 * Splices compiled dex into the stock XT9IME.apk, on the build host and on the phone (the module
 * installer runs it with app_process, so the stock APK is never redistributed).
 *
 * <p>Every stock entry other than the dex is copied as its raw stored or compressed bytes, with
 * the stock CRC and sizes: the result doesn't depend on any zlib. META-INF keeps the stock v1
 * signature, which Android 8.1 checks for a system APK against AndroidManifest.xml only (see
 * mods/tools/splice_apk.py). The APK Signature Scheme v2 block is dropped, since it would be
 * verified in full and fail. The new dex entries are stored uncompressed, where the stock
 * classes.dex was; stored entries start on 4-byte boundaries (zipalign -p 4). The output is then
 * read back and checked against the stock APK and the dex files.
 *
 * <p>usage: Splice &lt;stock.apk&gt; &lt;out.apk&gt; &lt;classes.dex&gt; [classes2.dex ...]
 */
public final class Splice {
    private static final int LOCAL = 0x04034b50, CENTRAL = 0x02014b50, END = 0x06054b50;

    static final class Entry {
        String name;
        byte[] nameBytes, extra, comment;
        int made, need, flags, method, time, date, disk, internal;
        long crc, csize, usize, external;
        /** Stock: local header offset and data offset. Output: local header offset. */
        long local, data;
        /** A new dex entry: its file. */
        File dex;
    }

    public static void main(String[] args) throws Exception {
        if (args.length < 3) {
            System.err.println("usage: Splice <stock.apk> <out.apk> <classes.dex> [classes2.dex ...]");
            System.exit(2);
        }
        File stock = new File(args[0]), out = new File(args[1]);
        List<File> dex = new ArrayList<File>();
        for (int i = 2; i < args.length; i++) dex.add(new File(args[i]));
        try {
            splice(stock, out, dex);
            verify(stock, out, dex);
        } catch (Exception e) {
            out.delete();
            System.err.println("splice failed: " + e.getMessage());
            System.exit(1);
        }
        System.out.println(out.getName() + ": spliced " + dex.size() + " dex into the stock APK, verified");
    }

    static boolean isDex(String name) {
        return name.matches("classes\\d*\\.dex");
    }

    /** The central directory of a zip (no zip64, no multi-disk). */
    static List<Entry> entries(RandomAccessFile f) throws IOException {
        long len = f.length();
        int tail = (int) Math.min(len, 22 + 65535);
        byte[] t = new byte[tail];
        f.seek(len - tail);
        f.readFully(t);
        ByteBuffer b = ByteBuffer.wrap(t).order(ByteOrder.LITTLE_ENDIAN);
        int end = -1;
        for (int i = tail - 22; i >= 0; i--) {
            if (b.getInt(i) == END && i + 22 + (b.getShort(i + 20) & 0xffff) == tail) { end = i; break; }
        }
        if (end < 0) throw new IOException("no end of central directory");
        int count = b.getShort(end + 10) & 0xffff;
        long size = b.getInt(end + 12) & 0xffffffffL, at = b.getInt(end + 16) & 0xffffffffL;
        byte[] cd = new byte[(int) size];
        f.seek(at);
        f.readFully(cd);
        ByteBuffer c = ByteBuffer.wrap(cd).order(ByteOrder.LITTLE_ENDIAN);
        List<Entry> list = new ArrayList<Entry>();
        int p = 0;
        for (int i = 0; i < count; i++) {
            if (c.getInt(p) != CENTRAL) throw new IOException("bad central directory entry " + i);
            Entry e = new Entry();
            e.made = c.getShort(p + 4) & 0xffff;
            e.need = c.getShort(p + 6) & 0xffff;
            e.flags = c.getShort(p + 8) & 0xffff;
            e.method = c.getShort(p + 10) & 0xffff;
            e.time = c.getShort(p + 12) & 0xffff;
            e.date = c.getShort(p + 14) & 0xffff;
            e.crc = c.getInt(p + 16) & 0xffffffffL;
            e.csize = c.getInt(p + 20) & 0xffffffffL;
            e.usize = c.getInt(p + 24) & 0xffffffffL;
            int n = c.getShort(p + 28) & 0xffff, x = c.getShort(p + 30) & 0xffff, k = c.getShort(p + 32) & 0xffff;
            e.disk = c.getShort(p + 34) & 0xffff;
            e.internal = c.getShort(p + 36) & 0xffff;
            e.external = c.getInt(p + 38) & 0xffffffffL;
            e.local = c.getInt(p + 42) & 0xffffffffL;
            e.nameBytes = Arrays.copyOfRange(cd, p + 46, p + 46 + n);
            e.extra = Arrays.copyOfRange(cd, p + 46 + n, p + 46 + n + x);
            e.comment = Arrays.copyOfRange(cd, p + 46 + n + x, p + 46 + n + x + k);
            e.name = new String(e.nameBytes, StandardCharsets.UTF_8);
            if (e.csize == 0xffffffffL || e.usize == 0xffffffffL || e.local == 0xffffffffL) throw new IOException("zip64");
            if (e.method != 0 && e.method != 8) throw new IOException(e.name + ": method " + e.method);
            if ((e.flags & 1) != 0) throw new IOException(e.name + ": encrypted");
            byte[] h = new byte[30];
            f.seek(e.local);
            f.readFully(h);
            ByteBuffer hb = ByteBuffer.wrap(h).order(ByteOrder.LITTLE_ENDIAN);
            if (hb.getInt(0) != LOCAL) throw new IOException(e.name + ": bad local header");
            e.data = e.local + 30 + (hb.getShort(26) & 0xffff) + (hb.getShort(28) & 0xffff);
            list.add(e);
            p += 46 + n + x + k;
        }
        return list;
    }

    static void splice(File stock, File out, List<File> dexFiles) throws IOException {
        RandomAccessFile in = new RandomAccessFile(stock, "r");
        try {
            List<Entry> src = entries(in), dst = new ArrayList<Entry>();
            Entry stockDex = null;
            for (Entry e : src) {
                if (!isDex(e.name)) { dst.add(e); continue; }
                if (stockDex == null) {
                    stockDex = e;
                    for (int i = 0; i < dexFiles.size(); i++) {
                        Entry d = new Entry();
                        d.name = i == 0 ? "classes.dex" : "classes" + (i + 1) + ".dex";
                        d.nameBytes = d.name.getBytes(StandardCharsets.UTF_8);
                        d.extra = new byte[0];
                        d.comment = new byte[0];
                        d.made = e.made; d.need = 10; d.time = e.time; d.date = e.date;
                        d.external = e.external;
                        d.dex = dexFiles.get(i);
                        d.usize = d.csize = d.dex.length();
                        d.crc = crc(d.dex);
                        dst.add(d);
                    }
                }
            }
            if (stockDex == null) throw new IOException("no classes.dex in " + stock);
            File tmp = new File(out.getPath() + ".tmp");
            OutputStream o = new FileOutputStream(tmp);
            long pos = 0;
            byte[] buf = new byte[1 << 16];
            try {
                for (Entry e : dst) {
                    int method = e.dex != null ? 0 : e.method;
                    long head = pos + 30 + e.nameBytes.length;
                    int pad = method == 0 ? (int) ((4 - head % 4) % 4) : 0;
                    ByteBuffer h = ByteBuffer.allocate(30).order(ByteOrder.LITTLE_ENDIAN);
                    h.putInt(LOCAL).putShort((short) e.need).putShort((short) (e.flags & ~8))
                            .putShort((short) method).putShort((short) e.time).putShort((short) e.date)
                            .putInt((int) e.crc).putInt((int) e.csize).putInt((int) e.usize)
                            .putShort((short) e.nameBytes.length).putShort((short) pad);
                    o.write(h.array());
                    o.write(e.nameBytes);
                    o.write(new byte[pad]);
                    e.local = pos;
                    pos = head + pad;
                    if (e.dex != null) {
                        java.io.FileInputStream d = new java.io.FileInputStream(e.dex);
                        try {
                            for (int r; (r = d.read(buf)) > 0; ) o.write(buf, 0, r);
                        } finally {
                            d.close();
                        }
                    } else {
                        in.seek(e.data);
                        for (long left = e.csize; left > 0; ) {
                            int r = in.read(buf, 0, (int) Math.min(buf.length, left));
                            if (r < 0) throw new IOException(e.name + ": truncated");
                            o.write(buf, 0, r);
                            left -= r;
                        }
                    }
                    pos += e.csize;
                }
                ByteArrayOutputStream cd = new ByteArrayOutputStream();
                for (Entry e : dst) {
                    int method = e.dex != null ? 0 : e.method;
                    ByteBuffer c = ByteBuffer.allocate(46).order(ByteOrder.LITTLE_ENDIAN);
                    c.putInt(CENTRAL).putShort((short) e.made).putShort((short) e.need)
                            .putShort((short) (e.flags & ~8)).putShort((short) method).putShort((short) e.time)
                            .putShort((short) e.date).putInt((int) e.crc).putInt((int) e.csize).putInt((int) e.usize)
                            .putShort((short) e.nameBytes.length).putShort((short) e.extra.length)
                            .putShort((short) e.comment.length).putShort((short) 0).putShort((short) e.internal)
                            .putInt((int) e.external).putInt((int) e.local);
                    cd.write(c.array());
                    cd.write(e.nameBytes);
                    cd.write(e.extra);
                    cd.write(e.comment);
                }
                o.write(cd.toByteArray());
                ByteBuffer end = ByteBuffer.allocate(22).order(ByteOrder.LITTLE_ENDIAN);
                end.putInt(END).putShort((short) 0).putShort((short) 0).putShort((short) dst.size())
                        .putShort((short) dst.size()).putInt(cd.size()).putInt((int) pos).putShort((short) 0);
                o.write(end.array());
            } finally {
                o.close();
            }
            if (!tmp.renameTo(out)) {
                out.delete();
                if (!tmp.renameTo(out)) throw new IOException("can't write " + out);
            }
        } finally {
            in.close();
        }
    }

    /** The output has every stock entry but the dex with identical bytes, then exactly the dex files. */
    static void verify(File stock, File out, List<File> dexFiles) throws IOException {
        RandomAccessFile a = new RandomAccessFile(stock, "r"), b = new RandomAccessFile(out, "r");
        try {
            List<Entry> sa = entries(a), sb = entries(b);
            List<Entry> keep = new ArrayList<Entry>();
            for (Entry e : sa) if (!isDex(e.name)) keep.add(e);
            int i = 0, dex = 0;
            for (Entry e : sb) {
                if (isDex(e.name)) {
                    File f = dex < dexFiles.size() ? dexFiles.get(dex) : null;
                    String want = dex == 0 ? "classes.dex" : "classes" + (dex + 1) + ".dex";
                    dex++;
                    if (f == null || !e.name.equals(want) || e.method != 0 || e.csize != f.length()
                            || e.crc != crc(f) || !Arrays.equals(read(b, e.data, e.csize), Files.readAllBytes(f.toPath()))) {
                        throw new IOException(e.name + " is not the built dex");
                    }
                    if (e.data % 4 != 0) throw new IOException(e.name + " is not aligned");
                    continue;
                }
                if (i >= keep.size()) throw new IOException("extra entry " + e.name);
                Entry s = keep.get(i++);
                if (!s.name.equals(e.name) || s.method != e.method || s.crc != e.crc || s.csize != e.csize
                        || s.usize != e.usize || !Arrays.equals(read(a, s.data, s.csize), read(b, e.data, e.csize))) {
                    throw new IOException(e.name + " differs from the stock entry " + s.name);
                }
                if (e.method == 0 && e.data % 4 != 0) throw new IOException(e.name + " is not aligned");
            }
            if (i != keep.size()) throw new IOException("missing stock entries");
            if (dex != dexFiles.size()) throw new IOException("missing dex entries");
        } finally {
            a.close();
            b.close();
        }
    }

    static byte[] read(RandomAccessFile f, long at, long n) throws IOException {
        byte[] d = new byte[(int) n];
        f.seek(at);
        f.readFully(d);
        return d;
    }

    static long crc(File f) throws IOException {
        CRC32 c = new CRC32();
        c.update(Files.readAllBytes(f.toPath()));
        return c.getValue();
    }
}
