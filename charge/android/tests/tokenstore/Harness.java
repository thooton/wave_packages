import com.teslacharge.xp3.data.*;
import java.util.*;
public class Harness {
    static int failed;
    static void ok(String what, boolean cond) { System.out.println((cond ? "ok    " : "FAIL  ") + what); if (!cond) failed++; }
    public static void main(String[] a) throws Exception {
        android.content.Context context = new android.content.Context();
        HarnessAccess.live().add("alice");
        final TokenStore store = new TokenStore(context, new Settings("alice"));
        final String first = store.getAccessToken();
        // Eight requests refused at once with the same access token: one rotation.
        List<Thread> threads = new ArrayList<>(); final List<String> got = Collections.synchronizedList(new ArrayList<>());
        final List<Throwable> errors = Collections.synchronizedList(new ArrayList<>());
        int before = HarnessAccess.exchanges();
        for (int i = 0; i < 8; i++) { Thread t = new Thread(() -> { try { got.add(store.refreshRejected(first)); } catch (Throwable e) { errors.add(e); } }); threads.add(t); t.start(); }
        for (Thread t : threads) t.join();
        ok("eight rejections, one exchange", HarnessAccess.exchanges() - before == 1);
        ok("all got the new token", errors.isEmpty() && new HashSet<>(got).size() == 1);
        // Two stores (an old repository and the one a new setup made) on the same preferences.
        HarnessAccess.live().add("bob");
        final TokenStore old = store;
        final String oldAccess = got.get(0);
        final TokenStore[] fresh = new TokenStore[1];
        final Thread[] importer = new Thread[1];
        HarnessAccess.during(() -> {
            // The setup screen imports bob's setup while alice's exchange is in flight: a new repository on the main thread.
            if (importer[0] == null) { importer[0] = new Thread(() -> fresh[0] = new TokenStore(context, new Settings("bob"))); importer[0].start(); try { Thread.sleep(50); } catch (InterruptedException e) {} }
        });
        String oldResult = null; Throwable oldError = null;
        try { oldResult = old.refreshRejected(oldAccess); } catch (Throwable e) { oldError = e; }
        HarnessAccess.during(() -> {});
        importer[0].join();
        if (fresh[0] == null) fresh[0] = new TokenStore(context, new Settings("bob"));
        String bobAccess = fresh[0].getAccessToken();
        android.content.SharedPreferences prefs = context.getSharedPreferences("tesla_credentials", 0);
        ok("the new setup's rotation is bob's", prefs.getString("refresh_token", "").startsWith("bob#"));
        ok("bob signs in", bobAccess.startsWith("at"));
        context.getSharedPreferences("tesla_credentials", 0).edit().putLong("access_expires_at", 0L).commit();
        try { old.getAccessToken(); ok("the old store can't spend bob's token", false); }
        catch (ApiException e) { ok("the old store can't spend bob's token (" + e.getMessage() + ")", e.status == 409); }
        System.out.println(failed == 0 ? "OK" : "FAILED " + failed);
        System.exit(failed == 0 ? 0 : 1);
    }
}
