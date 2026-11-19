import java.util.ArrayList;
import java.util.List;

/** Tiny test harness: named tests, checks, summary. No JUnit. */
public final class T {
    public interface Body { void run() throws Exception; }

    static int passed, failed;
    static final List<String> failures = new ArrayList<>();
    static String current;
    static String only = System.getenv("RCS_TEST");

    public static void test(String name, Body b) {
        if (only != null && !only.isEmpty() && !name.contains(only)) return;
        current = name;
        long t0 = System.currentTimeMillis();
        System.out.println("--- " + name);
        try {
            b.run();
            passed++;
            System.out.println("PASS " + name + " (" + (System.currentTimeMillis() - t0) + " ms)");
        } catch (Throwable t) {
            failed++;
            failures.add(name + ": " + t);
            System.out.println("FAIL " + name + ": " + t);
            t.printStackTrace(System.out);
        }
    }

    public static void check(boolean cond, String what) {
        if (!cond) throw new AssertionError(what);
    }

    public static void eq(Object expected, Object actual, String what) {
        if (expected == null ? actual != null : !expected.equals(actual))
            throw new AssertionError(what + ": expected <" + expected + "> got <" + actual + ">");
    }

    public static void contains(String hay, String needle, String what) {
        if (hay == null || !hay.contains(needle)) throw new AssertionError(what + ": <" + needle + "> not in <" + hay + ">");
    }

    public static int summary() {
        System.out.println();
        System.out.println("==== " + passed + " passed, " + failed + " failed");
        for (String f : failures) System.out.println("  FAILED " + f);
        return failed == 0 ? 0 : 1;
    }

    /** Polls cond until true or timeout. */
    public interface Cond { boolean ok() throws Exception; }
    public static void waitFor(String what, long timeoutMs, Cond c) throws Exception {
        long end = System.currentTimeMillis() + timeoutMs;
        while (System.currentTimeMillis() < end) {
            if (c.ok()) return;
            Thread.sleep(100);
        }
        if (c.ok()) return;
        throw new AssertionError("timeout waiting for " + what);
    }
}
