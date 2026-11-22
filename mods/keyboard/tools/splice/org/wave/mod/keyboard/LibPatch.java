package org.wave.mod.keyboard;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.util.Arrays;

/**
 * Applies module/xt9lib.patch (made by native/gen.py) to the phone's own engine library, as the
 * module installer does with app_process. The input must hash to the patch's "in" line and the
 * result to its "out" line, or nothing is written.
 *
 * <p>usage: LibPatch &lt;stock lib&gt; &lt;patch&gt; &lt;out lib&gt;; exit status 0 written,
 * 3 the input isn't the library the patch is for, 1 anything else.
 */
public final class LibPatch {
    public static void main(String[] args) {
        if (args.length != 3) {
            System.err.println("usage: LibPatch <stock lib> <patch> <out lib>");
            System.exit(2);
        }
        File out = new File(args[2]);
        try {
            byte[] lib = apply(Files.readAllBytes(new File(args[0]).toPath()), new File(args[1]));
            File tmp = new File(out.getPath() + ".tmp");
            try (OutputStream o = new FileOutputStream(tmp)) {
                o.write(lib);
                ((FileOutputStream) o).getFD().sync();
            }
            if (!Arrays.equals(Files.readAllBytes(tmp.toPath()), lib) || !tmp.renameTo(out)) {
                tmp.delete();
                throw new IOException("couldn't write " + out);
            }
        } catch (WrongInput e) {
            System.err.println(e.getMessage());
            System.exit(3);
        } catch (Exception e) {
            out.delete();
            System.err.println("library patch failed: " + e.getMessage());
            System.exit(1);
        }
    }

    static final class WrongInput extends Exception {
        WrongInput(String m) {
            super(m);
        }
    }

    static byte[] apply(byte[] in, File patch) throws Exception {
        String inSha = null, outSha = null;
        int outSize = -1;
        byte[] lib = null;
        try (BufferedReader r = new BufferedReader(new FileReader(patch))) {
            for (String line; (line = r.readLine()) != null; ) {
                if (line.isEmpty() || line.startsWith("#")) continue;
                String[] f = line.split(" ");
                if (f[0].equals("in") && f.length == 3) {
                    inSha = f[1];
                    if (in.length != Integer.parseInt(f[2]) || !sha256(in).equals(inSha)) {
                        throw new WrongInput("not the library this patch is for");
                    }
                } else if (f[0].equals("out") && f.length == 3 && inSha != null && lib == null) {
                    outSha = f[1];
                    outSize = Integer.parseInt(f[2]);
                    if (outSize < in.length) throw new IOException("bad patch: output smaller");
                    lib = Arrays.copyOf(in, outSize);
                } else if (f[0].equals("at") && f.length == 3 && lib != null) {
                    long at = Long.parseLong(f[1], 16);
                    byte[] b = hex(f[2]);
                    if (at < 0 || at + b.length > lib.length) throw new IOException("bad patch: " + f[1]);
                    System.arraycopy(b, 0, lib, (int) at, b.length);
                } else {
                    throw new IOException("bad patch line: " + line);
                }
            }
        }
        if (lib == null) throw new IOException("bad patch: no in/out");
        if (!sha256(lib).equals(outSha)) throw new IOException("result doesn't match the patch");
        return lib;
    }

    static byte[] hex(String s) throws IOException {
        if ((s.length() & 1) != 0) throw new IOException("bad patch: odd hex");
        byte[] b = new byte[s.length() / 2];
        for (int i = 0; i < b.length; i++) {
            int hi = Character.digit(s.charAt(2 * i), 16), lo = Character.digit(s.charAt(2 * i + 1), 16);
            if (hi < 0 || lo < 0) throw new IOException("bad patch: hex");
            b[i] = (byte) (hi << 4 | lo);
        }
        return b;
    }

    static String sha256(byte[] b) throws Exception {
        StringBuilder s = new StringBuilder();
        for (byte x : MessageDigest.getInstance("SHA-256").digest(b)) s.append(String.format("%02x", x & 0xff));
        return s.toString();
    }
}
