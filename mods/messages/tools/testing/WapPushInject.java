import android.content.ComponentName;
import android.content.Intent;
import java.lang.reflect.Method;

/**
 * Root-only test helper: delivers a WAP push carrying an MMS M-Notification.ind to Messages the
 * way the framework does (WAP_PUSH_DELIVER to PushReceiver, PDU in the "data" extra).
 *
 * Usage (on device, as root):
 *   CLASSPATH=/data/local/tmp/smsinject.dex app_process /system/bin WapPushInject <pdu-hex>
 * The PDU comes from tools/testing/fake_mmsc.py (POST /ctl/new -> push_hex).
 */
public class WapPushInject {
    public static void main(String[] args) throws Exception {
        if (args.length < 1) {
            System.err.println("usage: WapPushInject <pdu-hex>");
            System.exit(2);
        }
        byte[] pdu = hex(args[0]);
        Class<?> amClass = Class.forName("android.app.ActivityManager");
        Object am = amClass.getMethod("getService").invoke(null);
        Method bcast = null;
        for (Method m : am.getClass().getMethods()) {
            if (m.getName().equals("broadcastIntent")) { bcast = m; break; }
        }
        Intent intent = new Intent("android.provider.Telephony.WAP_PUSH_DELIVER");
        intent.setComponent(new ComponentName("com.android.mms",
                "com.android.mms.transaction.PushReceiver"));
        intent.setType("application/vnd.wap.mms-message");
        intent.putExtra("transactionId", 1);
        intent.putExtra("pduType", 6);
        intent.putExtra("header", new byte[0]);
        intent.putExtra("data", pdu);
        intent.putExtra("subscription", 1);
        intent.putExtra("phone", 0);
        intent.addFlags(0x10000000 /* FLAG_RECEIVER_FOREGROUND */);
        Object r = bcast.invoke(am, null, intent, "application/vnd.wap.mms-message", null, 0, null,
                null, null, -1, null, false, false, 0);
        System.out.println("wap push sent (" + pdu.length + " bytes) result=" + r);
    }

    static byte[] hex(String s) {
        byte[] b = new byte[s.length() / 2];
        for (int i = 0; i < b.length; i++) b[i] = (byte) Integer.parseInt(s.substring(2 * i, 2 * i + 2), 16);
        return b;
    }
}
