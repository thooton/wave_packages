package org.wave.rcs.im;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.wave.rcs.util.Xml;
import org.w3c.dom.Element;

/** resource-lists (RFC 4826/5366) and conference-info (RFC 4575) for group chat. */
public final class GroupXml {
    public static final String CT_RESOURCE_LISTS = "application/resource-lists+xml";
    public static final String CT_CONFERENCE_INFO = "application/conference-info+xml";

    public static byte[] resourceList(List<String> uris) {
        StringBuilder b = new StringBuilder();
        b.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n");
        b.append("<resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\" xmlns:cp=\"urn:ietf:params:xml:ns:copycontrol\">\r\n<list>\r\n");
        for (String u : uris) b.append("<entry uri=\"").append(Xml.esc(u)).append("\" cp:copyControl=\"to\"/>\r\n");
        b.append("</list>\r\n</resource-lists>\r\n");
        return b.toString().getBytes(StandardCharsets.UTF_8);
    }

    public static List<String> parseResourceList(byte[] xml) {
        List<String> out = new ArrayList<>();
        try {
            Element root = Xml.parse(xml).getDocumentElement();
            for (Element e : Xml.descendants(root, "entry")) {
                String u = Xml.attr(e, "uri");
                if (u != null && !u.isEmpty()) out.add(u.trim());
            }
        } catch (Exception ignored) {}
        return out;
    }

    /** One user from conference-info. */
    public static final class User {
        public String entity;
        public String state;          // full / partial / deleted (user element)
        public String status;         // endpoint status: connected, disconnected, pending, dialing-out...
        public String disconnectionMethod; // departed, booted, failed, busy
        public String displayText;
        public boolean isFocusEndpoint;

        /** Still a member of the group? */
        public boolean member() {
            if ("deleted".equalsIgnoreCase(state)) return false;
            if (disconnectionMethod != null) {
                String d = disconnectionMethod.toLowerCase(Locale.ROOT);
                if (d.equals("departed") || d.equals("booted")) return false;
            }
            return true;
        }

        @Override public String toString() { return entity + "(" + state + "/" + status + (disconnectionMethod != null ? "/" + disconnectionMethod : "") + ")"; }
    }

    public static final class ConferenceInfo {
        public String entity;
        public String state;          // full / partial / deleted
        public String subject;
        public int version = -1;
        public final List<User> users = new ArrayList<>();
    }

    public static ConferenceInfo parseConferenceInfo(byte[] xml) {
        try {
            Element root = Xml.parse(xml).getDocumentElement();
            ConferenceInfo ci = new ConferenceInfo();
            ci.entity = Xml.attr(root, "entity");
            ci.state = Xml.attr(root, "state");
            String v = Xml.attr(root, "version");
            if (v != null) try { ci.version = Integer.parseInt(v.trim()); } catch (NumberFormatException ignored) {}
            Element desc = Xml.child(root, "conference-description");
            if (desc != null) ci.subject = Xml.childText(desc, "subject");
            Element users = Xml.child(root, "users");
            if (users != null) {
                for (Element u : Xml.children(users, "user")) {
                    User x = new User();
                    x.entity = Xml.attr(u, "entity");
                    x.state = Xml.attr(u, "state");
                    x.displayText = Xml.childText(u, "display-text");
                    Element ep = Xml.child(u, "endpoint");
                    if (ep != null) {
                        x.status = Xml.childText(ep, "status");
                        x.disconnectionMethod = Xml.childText(ep, "disconnection-method");
                        if (x.state == null || "full".equals(x.state)) {
                            String eps = Xml.attr(ep, "state");
                            if ("deleted".equalsIgnoreCase(eps) && x.state == null) x.state = "deleted";
                        }
                    }
                    if (x.entity != null) ci.users.add(x);
                }
            }
            return ci;
        } catch (Exception e) {
            return null;
        }
    }
}
