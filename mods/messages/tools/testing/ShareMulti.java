import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import java.lang.reflect.Method;
import java.util.ArrayList;

/**
 * Test helper: shares several files to Messages the way a gallery's "Share" does
 * (ACTION_SEND_MULTIPLE with an ArrayList of URIs), addressed to one recipient, which `am start`
 * can't express. Opens the compose screen with the attachments; send it from there.
 *
 * Usage (on device):
 *   CLASSPATH=/data/local/tmp/smsinject.dex app_process /system/bin ShareMulti <address> <mime> <uri>...
 */
public class ShareMulti {
    public static void main(String[] args) throws Exception {
        if (args.length < 3) {
            System.err.println("usage: ShareMulti <address> <mime> <uri>...");
            System.exit(2);
        }
        ArrayList<Uri> uris = new ArrayList<Uri>();
        for (int i = 2; i < args.length; i++) uris.add(Uri.parse(args[i]));
        Intent intent = new Intent(Intent.ACTION_SEND_MULTIPLE);
        intent.setComponent(new ComponentName("com.android.mms", "com.android.mms.ui.ComposeMessageActivity"));
        intent.setType(args[1]);
        intent.putParcelableArrayListExtra(Intent.EXTRA_STREAM, uris);
        intent.putExtra("address", args[0]);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_GRANT_READ_URI_PERMISSION);
        Object am = Class.forName("android.app.ActivityManager").getMethod("getService").invoke(null);
        Method start = null;
        for (Method m : am.getClass().getMethods()) {
            if (m.getName().equals("startActivity") && m.getParameterTypes().length == 10) {
                start = m;
                break;
            }
        }
        Object r = start.invoke(am, null, "com.android.shell", intent, args[1], null, null, 0, 0, null, null);
        System.out.println("started compose with " + uris.size() + " attachments, result=" + r);
    }
}
