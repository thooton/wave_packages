import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Root-only test helper: repeatedly performs a write on the telephony provider for N seconds,
 * simulating any other SMS/MMS DB write that happens concurrently with message reception
 * (ConversationList/Compose obsolete-thread cleanup, MMS NotificationTransaction, sms deletes, ...).
 *
 *   CLASSPATH=/data/local/tmp/smsinject.dex app_process /system/bin ProviderHammer <seconds> [uri]
 * default uri: content://mms-sms/conversations/obsolete
 */
public class ProviderHammer {
    public static void main(String[] args) throws Exception {
        long secs = Long.parseLong(args[0]);
        Uri uri = Uri.parse(args.length > 1 ? args[1] : "content://mms-sms/conversations/obsolete");
        Object am = Class.forName("android.app.ActivityManager").getMethod("getService").invoke(null);
        IBinder token = new Binder();
        Method getExt = null;
        for (Method m : am.getClass().getMethods())
            if (m.getName().equals("getContentProviderExternal")) getExt = m;
        Object holder = getExt.invoke(am, uri.getAuthority(), 0, token);
        Field f = holder.getClass().getField("provider");
        Object provider = f.get(holder);
        Method del = null;
        for (Method m : provider.getClass().getMethods())
            if (m.getName().equals("delete") && m.getParameterTypes().length == 4) del = m;
        long end = System.currentTimeMillis() + secs * 1000, n = 0, deleted = 0;
        while (System.currentTimeMillis() < end) {
            deleted += (Integer) del.invoke(provider, "com.android.shell", uri, null, null);
            n++;
        }
        System.out.println("calls=" + n + " threadsDeleted=" + deleted);
        for (Method m : am.getClass().getMethods())
            if (m.getName().equals("removeContentProviderExternal")) { m.invoke(am, uri.getAuthority(), token); break; }
    }
}
