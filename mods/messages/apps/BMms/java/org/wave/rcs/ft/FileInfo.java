package org.wave.rcs.ft;

import java.nio.charset.StandardCharsets;

import org.wave.rcs.util.U;
import org.wave.rcs.util.Xml;
import org.w3c.dom.Element;

/** FT-over-HTTP file-info document (RCC.07 section 3.2.5, application/vnd.gsma.rcs-ft-http+xml). */
public final class FileInfo {
    public static final String CT = "application/vnd.gsma.rcs-ft-http+xml";

    public static final class Item {
        public long size = -1;
        public String name;
        public String contentType;
        public String url;
        public String until;
        public String disposition; // file-disposition (render/attachment)
    }

    public Item file;
    public Item thumbnail;

    public static FileInfo parse(byte[] xml) {
        try {
            Element root = Xml.parse(xml).getDocumentElement();
            FileInfo fi = new FileInfo();
            for (Element e : Xml.descendants(root, "file-info")) {
                Item it = new Item();
                it.size = U.parseLong(Xml.childText(e, "file-size"), -1);
                it.name = Xml.childText(e, "file-name");
                it.contentType = Xml.childText(e, "content-type");
                it.disposition = Xml.attr(e, "file-disposition");
                Element data = Xml.child(e, "data");
                if (data != null) { it.url = Xml.attr(data, "url"); it.until = Xml.attr(data, "until"); }
                if ("thumbnail".equalsIgnoreCase(Xml.attr(e, "type"))) fi.thumbnail = it; else fi.file = it;
            }
            return fi.file != null && fi.file.url != null ? fi : null;
        } catch (Exception e) {
            return null;
        }
    }

    public byte[] toBytes() {
        StringBuilder b = new StringBuilder();
        b.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<file xmlns=\"urn:gsma:params:xml:ns:rcs:rcs:fthttp\">\r\n");
        if (thumbnail != null) item(b, "thumbnail", thumbnail);
        if (file != null) item(b, "file", file);
        b.append("</file>\r\n");
        return b.toString().getBytes(StandardCharsets.UTF_8);
    }

    private static void item(StringBuilder b, String type, Item it) {
        b.append("<file-info type=\"").append(type).append('"');
        if (it.disposition != null) b.append(" file-disposition=\"").append(Xml.esc(it.disposition)).append('"');
        b.append(">\r\n");
        if (it.size >= 0) b.append("<file-size>").append(it.size).append("</file-size>\r\n");
        if (it.name != null) b.append("<file-name>").append(Xml.esc(it.name)).append("</file-name>\r\n");
        if (it.contentType != null) b.append("<content-type>").append(Xml.esc(it.contentType)).append("</content-type>\r\n");
        b.append("<data url=\"").append(Xml.esc(it.url)).append('"');
        if (it.until != null) b.append(" until=\"").append(Xml.esc(it.until)).append('"');
        b.append("/>\r\n</file-info>\r\n");
    }
}
