import android.content.ComponentName;
import android.content.Intent;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Method;
import java.util.Calendar;

/**
 * Root-only test helper: delivers a synthetic incoming GSM SMS to the Messages app exactly the way
 * the framework does (SMS_DELIVER broadcast with a 3GPP SMS-DELIVER PDU in the "pdus" extra).
 *
 * Usage (on device, as root):
 *   CLASSPATH=/data/local/tmp/smsinject.dex app_process /system/bin SmsInject <from> <body> [count] [delayMs]
 */
public class SmsInject {
    public static void main(String[] args) throws Exception {
        if (args.length < 2) {
            System.err.println("usage: SmsInject <from> <body> [count] [delayMs]");
            System.exit(2);
        }
        String from = args[0];
        String body = args[1];
        int count = args.length > 2 ? Integer.parseInt(args[2]) : 1;
        long delay = args.length > 3 ? Long.parseLong(args[3]) : 0;

        Class<?> amClass = Class.forName("android.app.ActivityManager");
        Object am = amClass.getMethod("getService").invoke(null);
        Method bcast = null;
        for (Method m : am.getClass().getMethods()) {
            if (m.getName().equals("broadcastIntent")) { bcast = m; break; }
        }
        if (bcast == null) throw new IllegalStateException("broadcastIntent not found");

        for (int n = 0; n < count; n++) {
            String text = count > 1 ? body + " #" + (n + 1) : body;
            byte[] pdu = buildDeliverPdu(from, text);
            Intent intent = new Intent("android.provider.Telephony.SMS_DELIVER");
            intent.setComponent(new ComponentName("com.android.mms",
                    "com.android.mms.transaction.PrivilegedSmsReceiver"));
            intent.putExtra("pdus", new Object[] { pdu });
            intent.putExtra("format", "3gpp");
            intent.putExtra("subscription", 1);
            intent.putExtra("phone", 0);
            intent.putExtra("slot", 0);
            intent.addFlags(0x10000000 /* FLAG_RECEIVER_FOREGROUND */);
            // broadcastIntent(caller, intent, resolvedType, resultTo, resultCode, resultData, map,
            //                 requiredPermissions, appOp, options, serialized, sticky, userId)
            Object r = bcast.invoke(am, null, intent, null, null, 0, null, null,
                    null, -1, null, false, false, 0);
            System.out.println("sent #" + (n + 1) + " from=" + from + " result=" + r);
            if (delay > 0 && n + 1 < count) Thread.sleep(delay);
        }
    }

    /** Builds an SMS-DELIVER TPDU (with empty SMSC prefix), GSM 7-bit default alphabet. */
    static byte[] buildDeliverPdu(String from, String text) {
        ByteArrayOutputStream o = new ByteArrayOutputStream();
        o.write(0x00);                         // no SMSC address
        o.write(0x04);                         // SMS-DELIVER, TP-MMS (no more messages)
        boolean intl = from.startsWith("+");
        String digits = intl ? from.substring(1) : from;
        o.write(digits.length());              // address length in digits
        o.write(intl ? 0x91 : 0x81);           // TON international / unknown, NPI ISDN
        for (int i = 0; i < digits.length(); i += 2) {
            int lo = digits.charAt(i) - '0';
            int hi = i + 1 < digits.length() ? digits.charAt(i + 1) - '0' : 0x0F;
            o.write((hi << 4) | lo);
        }
        o.write(0x00);                         // TP-PID
        o.write(0x00);                         // TP-DCS: GSM 7-bit
        Calendar c = Calendar.getInstance();
        int[] ts = { c.get(Calendar.YEAR) % 100, c.get(Calendar.MONTH) + 1, c.get(Calendar.DAY_OF_MONTH),
                c.get(Calendar.HOUR_OF_DAY), c.get(Calendar.MINUTE), c.get(Calendar.SECOND), 0 };
        for (int v : ts) o.write(((v % 10) << 4) | (v / 10));   // swapped-nibble BCD
        byte[] septets = new byte[text.length()];
        for (int i = 0; i < text.length(); i++) {
            char ch = text.charAt(i);
            septets[i] = (byte) ((ch >= 0x20 && ch < 0x7f && ch != '@' && ch != '$' && ch != '_'
                    && ch != '`' && ch != '[' && ch != ']' && ch != '{' && ch != '}' && ch != '\\'
                    && ch != '^' && ch != '~' && ch != '|') ? ch : ' ');
        }
        o.write(septets.length);               // TP-UDL in septets
        int acc = 0, bits = 0;
        for (byte s : septets) {
            acc |= (s & 0x7f) << bits;
            bits += 7;
            while (bits >= 8) { o.write(acc & 0xff); acc >>>= 8; bits -= 8; }
        }
        if (bits > 0) o.write(acc & 0xff);
        return o.toByteArray();
    }
}
