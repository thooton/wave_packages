package org.wave.rcs.im;

import java.nio.charset.StandardCharsets;

import org.wave.rcs.util.U;
import org.wave.rcs.util.Xml;
import org.w3c.dom.Element;

/** IMDN XML (RFC 5438) and isComposing (RFC 3994) bodies. */
public final class Imdn {
    public static final String CT_IMDN = "message/imdn+xml";
    public static final String CT_COMPOSING = "application/im-iscomposing+xml";

    public String messageId;
    public String dateTime;
    /** "delivery" or "display" (or "processing"). */
    public String kind;
    /** delivered, failed, displayed, forbidden, error... */
    public String status;

    public static byte[] delivered(String originalMessageId, String originalDateTime) {
        String x = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n"
                + "<imdn xmlns=\"urn:ietf:params:xml:ns:imdn\">"
                + "<message-id>" + Xml.esc(originalMessageId) + "</message-id>"
                + "<datetime>" + Xml.esc(originalDateTime != null ? originalDateTime : U.isoNow()) + "</datetime>"
                + "<delivery-notification><status><delivered/></status></delivery-notification>"
                + "</imdn>";
        return x.getBytes(StandardCharsets.UTF_8);
    }

    public static Imdn parse(byte[] xml) {
        try {
            Element root = Xml.parse(xml).getDocumentElement();
            Imdn i = new Imdn();
            i.messageId = Xml.childText(root, "message-id");
            i.dateTime = Xml.childText(root, "datetime");
            for (String k : new String[]{"delivery-notification", "display-notification", "processing-notification"}) {
                Element n = Xml.child(root, k);
                if (n != null) {
                    i.kind = k.substring(0, k.indexOf('-'));
                    Element st = Xml.child(n, "status");
                    if (st != null) {
                        java.util.List<Element> c = Xml.children(st, null);
                        if (!c.isEmpty()) i.status = Xml.localName(c.get(0));
                    }
                }
            }
            return i;
        } catch (Exception e) {
            return null;
        }
    }

    public static byte[] composing(boolean active) {
        String x = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n"
                + "<isComposing xmlns=\"urn:ietf:params:xml:ns:im-iscomposing\">"
                + "<state>" + (active ? "active" : "idle") + "</state><contenttype>text/plain</contenttype>"
                + (active ? "<refresh>60</refresh>" : "") + "</isComposing>";
        return x.getBytes(StandardCharsets.UTF_8);
    }

    @Override public String toString() { return "imdn{" + messageId + " " + kind + "=" + status + "}"; }
}
