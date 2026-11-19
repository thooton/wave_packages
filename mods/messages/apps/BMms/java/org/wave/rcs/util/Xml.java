package org.wave.rcs.util;

import java.io.ByteArrayInputStream;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/** Small DOM helpers; namespace-unaware lookups by local name (prefix stripped). */
public final class Xml {
    private Xml() {}

    public static Document parse(String xml) throws Exception {
        return parse(xml.getBytes(StandardCharsets.UTF_8));
    }

    public static Document parse(byte[] xml) throws Exception {
        DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
        f.setNamespaceAware(false);
        f.setValidating(false);
        f.setExpandEntityReferences(false);
        trySet(f, "http://xml.org/sax/features/external-general-entities", false);
        trySet(f, "http://xml.org/sax/features/external-parameter-entities", false);
        trySet(f, "http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
        DocumentBuilder b = f.newDocumentBuilder();
        b.setEntityResolver((publicId, systemId) -> new InputSource(new StringReader("")));
        b.setErrorHandler(null);
        // strip a UTF-8 BOM and leading whitespace, which some servers send
        int off = 0;
        if (xml.length >= 3 && (xml[0] & 0xff) == 0xef && (xml[1] & 0xff) == 0xbb && (xml[2] & 0xff) == 0xbf) off = 3;
        while (off < xml.length && (xml[off] == ' ' || xml[off] == '\r' || xml[off] == '\n' || xml[off] == '\t')) off++;
        return b.parse(new ByteArrayInputStream(xml, off, xml.length - off));
    }

    private static void trySet(DocumentBuilderFactory f, String feature, boolean v) {
        try { f.setFeature(feature, v); } catch (Throwable ignored) {}
    }

    public static String localName(Node n) {
        String name = n.getNodeName();
        int i = name.indexOf(':');
        return i >= 0 ? name.substring(i + 1) : name;
    }

    public static List<Element> children(Element e, String local) {
        List<Element> out = new ArrayList<>();
        NodeList nl = e.getChildNodes();
        for (int i = 0; i < nl.getLength(); i++) {
            Node n = nl.item(i);
            if (n.getNodeType() == Node.ELEMENT_NODE && (local == null || localName(n).equalsIgnoreCase(local))) out.add((Element) n);
        }
        return out;
    }

    public static Element child(Element e, String local) {
        List<Element> l = children(e, local);
        return l.isEmpty() ? null : l.get(0);
    }

    /** All descendants with that local name (document order). */
    public static List<Element> descendants(Element e, String local) {
        List<Element> out = new ArrayList<>();
        collect(e, local, out);
        return out;
    }

    private static void collect(Element e, String local, List<Element> out) {
        for (Element c : children(e, null)) {
            if (localName(c).equalsIgnoreCase(local)) out.add(c);
            collect(c, local, out);
        }
    }

    public static String childText(Element e, String local) {
        Element c = child(e, local);
        return c == null ? null : c.getTextContent().trim();
    }

    /** Attribute by local name (ignores prefixes). null if absent. */
    public static String attr(Element e, String local) {
        if (e.hasAttribute(local)) return e.getAttribute(local);
        org.w3c.dom.NamedNodeMap m = e.getAttributes();
        for (int i = 0; i < m.getLength(); i++) {
            Node a = m.item(i);
            if (localName(a).equalsIgnoreCase(local)) return a.getNodeValue();
        }
        return null;
    }

    public static String esc(String s) {
        if (s == null) return "";
        StringBuilder b = new StringBuilder(s.length() + 8);
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            switch (c) {
                case '<': b.append("&lt;"); break;
                case '>': b.append("&gt;"); break;
                case '&': b.append("&amp;"); break;
                case '"': b.append("&quot;"); break;
                case '\'': b.append("&apos;"); break;
                default: b.append(c);
            }
        }
        return b.toString();
    }
}
