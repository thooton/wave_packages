package com.teslacharge.xp3.data;
public final class HarnessAccess {
    public static java.util.Set<String> live() { return HttpJson.live; }
    public static int exchanges() { return HttpJson.exchanges.get(); }
    public static void during(Runnable r) { HttpJson.during = r; }
}
