package org.argon.rcs.util;

import org.argon.rcs.RcsPlatform;

/** Logging through RcsPlatform.log. INFO and above must never contain bodies or passwords. */
public final class Log {
    public static final int V = 2, D = 3, I = 4, W = 5, E = 6;
    private final RcsPlatform p;
    private final String prefix;

    public Log(RcsPlatform p, String prefix) { this.p = p; this.prefix = prefix == null ? "" : prefix; }

    public Log sub(String name) { return new Log(p, prefix + name + ": "); }

    private void log(int level, String msg) {
        try { p.log(level, prefix + msg); } catch (Throwable ignored) {}
    }

    public void v(String m) { log(V, m); }
    public void d(String m) { log(D, m); }
    public void i(String m) { log(I, m); }
    public void w(String m) { log(W, m); }
    public void e(String m) { log(E, m); }
    public void w(String m, Throwable t) { log(W, m + ": " + describe(t)); }
    public void e(String m, Throwable t) {
        log(E, m + ": " + describe(t));
        java.io.StringWriter sw = new java.io.StringWriter();
        t.printStackTrace(new java.io.PrintWriter(sw));
        log(D, sw.toString());
    }

    public static String describe(Throwable t) {
        if (t == null) return "null";
        String s = t.getClass().getSimpleName() + (t.getMessage() != null ? " " + t.getMessage() : "");
        if (t.getCause() != null && t.getCause() != t) s += " (cause " + describe(t.getCause()) + ")";
        return s;
    }
}
