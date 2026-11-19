package com.xp3.common;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * The shared setup pieces, checked on a desktop JVM: every app's
 * wave-setup.json descriptor in the tree, and payloads against them.
 * `./gradlew :common:core:selfTest`.
 */
public final class SelfTest {

    static final String PLACES = "{\"format\":1,\"app\":\"places\",\"name\":\"Places\",\"package\":\"com.places.xp3\","
        + "\"settings\":[{\"name\":\"key\",\"label\":\"Maps API key\",\"secret\":true,\"required\":true,"
        + "\"pattern\":\"^[A-Za-z0-9_-]{30,60}$\",\"max\":60}],\"delta\":{\"supported\":true}}";
    static final String CANVAS = "{\"format\":1,\"app\":\"canvas\",\"name\":\"Canvas\",\"package\":\"com.todo.xp3\","
        + "\"settings\":[{\"name\":\"baseUrl\",\"label\":\"Canvas address\",\"secret\":false,\"required\":true,\"manual\":true},"
        + "{\"name\":\"accessToken\",\"label\":\"Access token\",\"secret\":true,\"required\":false},"
        + "{\"name\":\"cookieUrl\",\"label\":\"Cookie service\",\"secret\":false,\"required\":false},"
        + "{\"name\":\"cookieToken\",\"label\":\"Cookie token\",\"secret\":true,\"required\":false},"
        + "{\"name\":\"timezone\",\"label\":\"Time zone\",\"secret\":false,\"required\":false,\"default\":\"UTC\"}],"
        + "\"alternatives\":[{\"label\":\"Sign-in\",\"sets\":[[\"accessToken\"],[\"cookieUrl\",\"cookieToken\"]]}],"
        + "\"delta\":{\"supported\":true}}";
    static final String KEY = "AIzaSyD3xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

    public static void main(String[] args) throws Exception {
        final Check check = new Check();
        final File root = new File(args.length > 0 ? args[0] : "../..").getCanonicalFile();

        check.run("descriptors in the tree", () -> {
            List<File> found = descriptors(root);
            check.ok("descriptors found under " + root, !found.isEmpty());
            for (File file : found) {
                String app = file.getParentFile().getParentFile().getParentFile().getParentFile().getParentFile()
                    .getParentFile().getName();
                SetupSpec spec = SetupSpec.parse(read(file));
                check.same(file + ": app is its directory", app, spec.app);
                check.ok(file + ": has a name", spec.name.length() > 0);
                for (SetupSpec.Setting setting : spec.settings) {
                    check.ok(file + ": " + setting.name + " label fits", setting.label.length() <= 24);
                    if (setting.example != null && setting.pattern != null && !setting.example.contains("...")) {
                        check.ok(file + ": " + setting.name + " example matches", setting.pattern.matcher(setting.example).matches());
                    }
                    if (setting.fallback != null && setting.pattern != null) {
                        check.ok(file + ": " + setting.name + " default matches", setting.pattern.matcher(setting.fallback).matches());
                    }
                }
                if (spec.needsNothing()) {
                    Config local = Config.parse("{\"wave\":1,\"app\":\"" + spec.app + "\",\"settings\":{}}", spec);
                    check.ok(file + ": empty settings are the direct backend", !local.isDelta());
                }
                if (spec.deltaSupported) {
                    Config delta = Config.parse("{\"wave\":1,\"app\":\"" + spec.app + "\",\"delta\":{\"server\":\"https://cc.example.com\",\"token\":\"t0k3n\"}}", spec);
                    check.ok(file + ": a Delta payload is accepted", delta.isDelta());
                } else {
                    check.fails(file + ": a Delta payload is refused", "command center",
                        () -> Config.parse("{\"wave\":1,\"app\":\"" + spec.app + "\",\"delta\":{\"server\":\"https://cc.example.com\",\"token\":\"t\"}}", spec));
                }
            }
        });

        check.run("direct payloads", () -> {
            SetupSpec spec = SetupSpec.parse(PLACES);
            Config config = Config.parse("\uFEFF{\"wave\":1,\"app\":\"places\",\"label\":\" Mine \",\"settings\":{\"key\":\" " + KEY + " \"}}", spec);
            check.ok("direct", !config.isDelta());
            check.same("trimmed", KEY, config.get("key"));
            check.same("label", "Mine", config.label());
            check.ok("has", config.has("key"));
            Config back = Config.parse(config.toJson(), spec);
            check.same("round trip", KEY, back.get("key"));
            check.same("round trip label", "Mine", back.label());
            check.ok("unknown top-level fields are ignored",
                Config.parse("{\"wave\":1,\"app\":\"places\",\"later\":true,\"settings\":{\"key\":\"" + KEY + "\"}}", spec) != null);
            check.fails("required", "no Maps API key", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"settings\":{}}", spec));
            check.fails("empty counts as absent", "no Maps API key", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"settings\":{\"key\":\"  \"}}", spec));
            check.fails("pattern", "doesn't look right", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"settings\":{\"key\":\"short\"}}", spec));
            check.fails("a secret isn't echoed", "Maps API key doesn't look right", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"settings\":{\"key\":\"bad key!\"}}", spec));
            check.fails("unknown setting", "Unknown setting: kee", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"settings\":{\"kee\":\"" + KEY + "\"}}", spec));
            check.fails("not text", "must be text", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"settings\":{\"key\":5}}", spec));
            check.fails("other app", "for Mail, not Places", () -> Config.parse("{\"wave\":1,\"app\":\"mail\",\"settings\":{}}", spec));
            check.fails("newer", "newer version", () -> Config.parse("{\"wave\":2,\"app\":\"places\",\"settings\":{}}", spec));
            check.fails("not json", "isn't a setup file", () -> Config.parse("hello", spec));
            check.fails("no version", "isn't a setup file", () -> Config.parse("{\"app\":\"places\"}", spec));
            check.fails("both", "both", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"settings\":{},\"delta\":{}}", spec));
            check.fails("neither", "neither", () -> Config.parse("{\"wave\":1,\"app\":\"places\"}", spec));
            StringBuilder big = new StringBuilder("{\"wave\":1,\"app\":\"places\",\"label\":\"");
            for (int i = 0; i < 9000; i++) big.append('x');
            check.fails("too big", "too big", () -> Config.parse(big + "\"}", spec));
        });

        check.run("delta payloads", () -> {
            SetupSpec spec = SetupSpec.parse(PLACES);
            Config config = Config.parse("{\"wave\":1,\"app\":\"places\",\"delta\":{\"server\":\"cc.example.com/\",\"token\":\"abc\"}}", spec);
            check.ok("delta", config.isDelta());
            check.same("server normalised", "https://cc.example.com", config.delta().server());
            check.same("no settings", null, config.get("key"));
            check.same("round trip", "abc", Config.parse(config.toJson(), spec).delta().token());
            check.fails("http refused", "https", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"delta\":{\"server\":\"http://cc.example.com\",\"token\":\"abc\"}}", spec));
            check.fails("token with a space", "visible", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"delta\":{\"server\":\"https://cc.example.com\",\"token\":\"a b\"}}", spec));
            check.fails("half a login", "both", () -> Config.parse("{\"wave\":1,\"app\":\"places\",\"delta\":{\"server\":\"https://cc.example.com\"}}", spec));
            check.same("migrated", "https://x.example", Config.delta(spec, Login.of("https://x.example", "t")).delta().server());
        });

        check.run("alternatives and defaults", () -> {
            SetupSpec spec = SetupSpec.parse(CANVAS);
            Config token = Config.parse("{\"wave\":1,\"app\":\"canvas\",\"settings\":{\"baseUrl\":\"https://canvas.example.edu\",\"accessToken\":\"7~abc\"}}", spec);
            check.same("token", "7~abc", token.get("accessToken"));
            check.same("default", "UTC", token.get("timezone"));
            check.ok("defaulted isn't given", !token.has("timezone"));
            Config cookie = Config.parse("{\"wave\":1,\"app\":\"canvas\",\"settings\":{\"baseUrl\":\"https://c.example.edu\",\"cookieUrl\":\"https://x/cookie\",\"cookieToken\":\"t\"}}", spec);
            check.same("cookie service", "t", cookie.get("cookieToken"));
            check.fails("none", "Sign-in: give exactly one of Access token; Cookie service + Cookie token",
                () -> Config.parse("{\"wave\":1,\"app\":\"canvas\",\"settings\":{\"baseUrl\":\"https://c.example.edu\"}}", spec));
            check.fails("half a set", "exactly one", () -> Config.parse("{\"wave\":1,\"app\":\"canvas\",\"settings\":{\"baseUrl\":\"https://c\",\"cookieUrl\":\"https://x/cookie\"}}", spec));
            check.fails("both sets", "exactly one", () -> Config.parse("{\"wave\":1,\"app\":\"canvas\",\"settings\":{\"baseUrl\":\"https://c\",\"accessToken\":\"a\",\"cookieUrl\":\"https://x/cookie\",\"cookieToken\":\"t\"}}", spec));
            check.fails("a token and half a cookie service", "exactly one", () -> Config.parse("{\"wave\":1,\"app\":\"canvas\",\"settings\":{\"baseUrl\":\"https://c\",\"accessToken\":\"a\",\"cookieToken\":\"t\"}}", spec));
            check.ok("manual entry needs every required setting typeable", !SetupSpec.parse(PLACES).manualEnough());
        });

        check.run("command center only", () -> {
            SetupSpec spec = SetupSpec.parse("{\"format\":1,\"app\":\"source\",\"name\":\"Source\",\"package\":\"com.source.xp3\","
                + "\"settings\":[],\"direct\":false,\"delta\":{\"supported\":true}}");
            check.ok("no direct backend", !spec.directSupported);
            check.ok("so not set up by nothing", !spec.needsNothing());
            check.fails("settings refused", "Source needs a command center",
                () -> Config.parse("{\"wave\":1,\"app\":\"source\",\"settings\":{}}", spec));
            check.ok("delta taken", Config.parse("{\"wave\":1,\"app\":\"source\",\"delta\":{\"server\":\"https://cc.example.com\",\"token\":\"t\"}}", spec).isDelta());
            check.ok("direct by default", SetupSpec.parse(PLACES).directSupported);
            check.fails("no backend at all", "needs a backend", () -> SetupSpec.parse("{\"format\":1,\"app\":\"x\",\"name\":\"X\",\"package\":\"x.y\","
                + "\"settings\":[],\"direct\":false,\"delta\":{\"supported\":false}}"));
        });

        check.run("chunks", () -> {
            String payload = "{\"wave\":1,\"app\":\"places\",\"settings\":{\"key\":\"" + KEY + "\"}}";
            String id = Config.Chunks.sha256(payload).substring(0, 8);
            Config.Chunks chunks = new Config.Chunks();
            int third = payload.length() / 3;
            check.ok("first of three", !chunks.add("WS1/2/3/" + id + "/" + payload.substring(third, 2 * third)));
            check.same("progress", "1/3", chunks.progress()[0] + "/" + chunks.progress()[1]);
            check.ok("second", !chunks.add("WS1/1/3/" + id + "/" + payload.substring(0, third)));
            check.ok("again is harmless", !chunks.add("WS1/1/3/" + id + "/" + payload.substring(0, third)));
            check.ok("whole", chunks.add("WS1/3/3/" + id + "/" + payload.substring(2 * third)));
            check.same("payload", payload, chunks.payload());
            Config.Chunks single = new Config.Chunks();
            check.ok("one code", single.add(payload));
            check.same("one code's payload", payload, single.payload());
            check.fails("not a setup code", "isn't a setup code", () -> new Config.Chunks().add("otpauth://totp/x"));
            check.fails("out of range", "isn't a setup code", () -> new Config.Chunks().add("WS1/4/3/" + id + "/x"));
            Config.Chunks wrong = new Config.Chunks();
            wrong.add("WS1/1/2/" + id + "/" + payload.substring(0, 10));
            check.fails("mismatch", "don't fit", () -> wrong.add("WS1/2/2/" + id + "/nonsense"));
            Config.Chunks fresh = new Config.Chunks();
            fresh.add("WS1/1/2/00000000/x");
            check.ok("another id starts over", !fresh.add("WS1/1/2/" + id + "/" + payload.substring(0, 10)));
            check.same("started over", "1/2", fresh.progress()[0] + "/" + fresh.progress()[1]);
        });

        check.run("a key in an address never reaches an error", () -> {
            String key = "AIzaSyDUMMYDUMMYDUMMYDUMMYDUMMYDUMMY12";
            IOException quoted = Http.friendly(new java.io.FileNotFoundException(
                "https://maps.googleapis.com/maps/api/geocode/json?latlng=1,2&key=" + key));
            check.ok("the key is cut off", !quoted.getMessage().contains(key));
            check.ok("the address stays", quoted.getMessage().startsWith("https://maps.googleapis.com/maps/api/geocode/json?"));
            IOException wrapped = Http.friendly(new IOException("unexpected end of stream on https://x.example/a#t=" + key + " (retry)"));
            check.ok("in the middle of a sentence too", !wrapped.getMessage().contains(key) && wrapped.getMessage().endsWith("(retry)"));
            IOException plain = new IOException("The file changed while it was being sent.");
            check.ok("a message with no address is left alone", Http.friendly(plain) == plain);
            check.same("timeouts are named", "The connection timed out.",
                Http.friendly(new java.net.SocketTimeoutException("connect timed out to https://x/?key=" + key)).getMessage());
        });

        check.run("a pool left behind holds no thread", () -> {
            final String name = "workers-test-" + System.nanoTime();
            java.util.concurrent.ExecutorService pool = Workers.pool(name, 2, 200);
            final java.util.concurrent.atomic.AtomicInteger ran = new java.util.concurrent.atomic.AtomicInteger();
            for (int i = 0; i < 6; i++) pool.execute(ran::incrementAndGet);
            long until = System.currentTimeMillis() + 5000;
            while (ran.get() < 6 && System.currentTimeMillis() < until) Thread.sleep(10);
            check.same("all ran", 6, ran.get());
            until = System.currentTimeMillis() + 5000;
            while (threads(name) > 0 && System.currentTimeMillis() < until) Thread.sleep(50);
            check.same("idle threads ended", 0, threads(name));
            pool.execute(ran::incrementAndGet);
            until = System.currentTimeMillis() + 5000;
            while (ran.get() < 7 && System.currentTimeMillis() < until) Thread.sleep(10);
            check.same("and work queued later still runs", 7, ran.get());
            final StringBuilder order = new StringBuilder();
            java.util.concurrent.ExecutorService one = Workers.pool(name + "-1", 1, 200);
            for (int i = 0; i < 5; i++) {
                final int n = i;
                one.execute(() -> order.append(n));
            }
            one.shutdown();
            one.awaitTermination(5, java.util.concurrent.TimeUnit.SECONDS);
            check.same("one thread keeps the order", "01234", order.toString());
        });

        check.run("a setup file written from two threads at once", () -> {
            File dir = java.nio.file.Files.createTempDirectory("disk").toFile();
            final File file = new File(dir, "wave-setup.json");
            final java.util.Set<String> written = java.util.Collections.synchronizedSet(new java.util.HashSet<String>());
            final List<Throwable> failed = java.util.Collections.synchronizedList(new ArrayList<Throwable>());
            List<Thread> threads = new ArrayList<Thread>();
            for (int t = 0; t < 6; t++) {
                final int n = t;
                Thread thread = new Thread(() -> {
                    for (int i = 0; i < 40; i++) {
                        String text = "{\"writer\":" + n + ",\"i\":" + i + ",\"pad\":\"" + new String(new char[2000]).replace('\0', (char) ('a' + n)) + "\"}";
                        written.add(text);
                        try {
                            Disk.write(file, text, true);
                        } catch (Throwable e) {
                            failed.add(e);
                        }
                    }
                });
                threads.add(thread);
                thread.start();
            }
            for (Thread thread : threads) thread.join();
            check.same("no write failed", "[]", failed.toString());
            check.ok("the file is one whole write", written.contains(Disk.read(file, 1 << 20)));
            String[] left = dir.list();
            check.same("nothing left beside it", 1, left == null ? -1 : left.length);
            check.ok("owner-only", file.canRead() && !java.nio.file.Files.getPosixFilePermissions(file.toPath())
                .contains(java.nio.file.attribute.PosixFilePermission.OTHERS_READ));
            for (File f : dir.listFiles()) f.delete();
            dir.delete();
        });

        check.run("a damaged or foreign setup file is refused, never thrown at the app", () -> {
            SetupSpec places = SetupSpec.parse(PLACES);
            SetupSpec canvas = SetupSpec.parse(CANVAS);
            String good = "{\"wave\":1,\"app\":\"places\",\"label\":\"x\",\"settings\":{\"key\":\"" + KEY + "\"}}";
            String delta = "{\"wave\":1,\"app\":\"canvas\",\"delta\":{\"server\":\"https://cc.example.com/p\",\"token\":\"t\"}}";
            String[] odd = {
                "{\"wave\":1,\"app\":\"places\",\"settings\":[]}",
                "{\"wave\":1,\"app\":\"places\",\"settings\":{\"key\":5}}",
                "{\"wave\":1,\"app\":5,\"settings\":{}}",
                "{\"wave\":\"1\",\"app\":\"places\",\"settings\":{}}",
                "{\"wave\":2,\"app\":\"places\",\"settings\":{}}",
                "{\"wave\":1e400,\"app\":\"places\",\"settings\":{}}",
                "{\"wave\":1,\"app\":\"canvas\",\"delta\":{\"server\":5,\"token\":[]}}",
                "{\"wave\":1,\"app\":\"canvas\",\"delta\":{\"server\":\"https://[::1\",\"token\":\"t\"}}",
                "{\"wave\":1,\"app\":\"canvas\",\"delta\":{\"server\":\"https://cc.example.com/%zz\",\"token\":\"t\"}}",
                "{\"wave\":1,\"app\":\"canvas\",\"delta\":{\"server\":\"https:///nohost\",\"token\":\"t\"}}",
                "{\"wave\":1,\"app\":\"canvas\",\"delta\":{\"server\":\"https://cc.example.com\",\"token\":\"t\"},\"label\":{}}",
                "[" + new String(new char[3000]).replace("\0", "[") , "\uFEFF", "\uFEFF ", "null", "\"x\"", "{}",
            };
            for (String text : odd) {
                for (SetupSpec spec : new SetupSpec[] {places, canvas}) {
                    try {
                        Config.parse(text, spec);
                    } catch (IllegalArgumentException expected) {
                        // Refused, as it should be.
                    } catch (Throwable e) {
                        check.ok("refused, not thrown: " + text.substring(0, Math.min(60, text.length())) + " (" + e + ")", false);
                    }
                }
            }
            final String NOISE = "{}[]\":,\\u0eE-+.9 ntf/%\uFEFF";
            java.util.Random random = new java.util.Random(14);
            int thrown = 0;
            for (int i = 0; i < 20000; i++) {
                String base = (i & 1) == 0 ? good : delta;
                StringBuilder text = new StringBuilder(base);
                for (int m = random.nextInt(4); m >= 0; m--) {
                    int at = random.nextInt(text.length() + 1);
                    switch (random.nextInt(4)) {
                        case 0: if (at < text.length()) text.deleteCharAt(at); break;
                        case 1: text.insert(at, NOISE.charAt(random.nextInt(NOISE.length()))); break;
                        case 2: text.setLength(Math.min(text.length(), at)); break;
                        default: if (at < text.length()) text.setCharAt(at, (char) random.nextInt(128));
                    }
                }
                for (SetupSpec spec : new SetupSpec[] {places, canvas}) {
                    try {
                        Config parsed = Config.parse(text.toString(), spec);
                        // What parses must survive being kept and read back.
                        Config.parse(parsed.toJson(), spec);
                        if (parsed.isDelta()) parsed.delta().host();
                    } catch (IllegalArgumentException expected) {
                        // Refused.
                    } catch (Throwable e) {
                        if (thrown++ < 5) check.ok("refused, not thrown: " + text + " (" + e + ")", false);
                    }
                }
            }
            check.same("damaged files only ever refused", 0, thrown);
            check.fails("a newer version says so", "newer version",
                () -> Config.parse("{\"wave\":2,\"app\":\"places\",\"settings\":{}}", places));
        });

        check.run("chunks that don't fit", () -> {
            String payload = "{\"wave\":1,\"app\":\"places\",\"settings\":{\"key\":\"" + KEY + "\"}}";
            String id = Config.Chunks.sha256(payload).substring(0, 8);
            for (String code : new String[] {"WS1/0/0/" + id + "/x", "WS1/99/99/" + id + "/", "", "WS1/1/1/ABCDEF12/x"}) {
                try {
                    new Config.Chunks().add(code);
                } catch (IllegalArgumentException expected) {
                    // Refused.
                } catch (Throwable e) {
                    check.ok("refused, not thrown: " + code + " (" + e + ")", false);
                }
            }
        });

        if (!check.report()) System.exit(1);
    }

    static int threads(String name) {
        int count = 0;
        for (Thread thread : Thread.getAllStackTraces().keySet()) if (thread.getName().equals(name)) count++;
        return count;
    }

    static List<File> descriptors(File root) {
        List<File> out = new ArrayList<File>();
        File[] dirs = root.listFiles();
        if (dirs == null) return out;
        java.util.Arrays.sort(dirs);
        for (File dir : dirs) {
            File file = new File(dir, "android/app/src/main/assets/wave-setup.json");
            if (file.isFile()) out.add(file);
        }
        return out;
    }

    static String read(File file) throws Exception {
        return new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8);
    }

    static Map<String, String> map(String... pairs) {
        Map<String, String> out = new LinkedHashMap<String, String>();
        for (int i = 0; i < pairs.length; i += 2) out.put(pairs[i], pairs[i + 1]);
        return out;
    }
}
