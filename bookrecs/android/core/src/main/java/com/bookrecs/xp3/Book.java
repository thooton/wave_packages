package com.bookrecs.xp3;

import com.xp3.common.Json;
import java.util.Map;

/** One recommended book, as the service names it: an ISBN-13, a title and an author. */
public final class Book {

    /** Longest title or author kept; the service's own are far shorter. */
    static final int MAX_TEXT = 300;

    public final String isbn;
    public final String title;
    public final String author;

    public Book(String isbn, String title, String author) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
    }

    /**
     * A book from the service's JSON, or null when it has no title or no
     * valid ISBN-13. Hyphens and spaces in the ISBN are dropped; a missing
     * author reads as "".
     */
    static Book from(Object value) {
        if (!(value instanceof Map)) return null;
        Map<String, Object> item = Json.object(value);
        String isbn = isbn13(Json.text(item, "isbn"));
        String title = clean(Json.text(item, "title"));
        String author = clean(Json.text(item, "author"));
        if (isbn == null || title.length() == 0) return null;
        return new Book(isbn, title, author);
    }

    Map<String, Object> toJson() {
        return Json.map("isbn", isbn, "title", title, "author", author);
    }

    /** The digits of a valid ISBN-13 (978 or 979), or null. */
    static String isbn13(String raw) {
        if (raw == null) return null;
        StringBuilder digits = new StringBuilder();
        for (int i = 0; i < raw.length(); i++) {
            char c = raw.charAt(i);
            if (c >= '0' && c <= '9') digits.append(c);
            else if (c != '-' && c != ' ') return null;
        }
        if (digits.length() != 13) return null;
        String value = digits.toString();
        if (!value.startsWith("978") && !value.startsWith("979")) return null;
        return value.charAt(12) == checkDigit(value) ? value : null;
    }

    /** The check digit for the first twelve digits of an ISBN-13. */
    static char checkDigit(String digits) {
        int sum = 0;
        for (int i = 0; i < 12; i++) sum += (digits.charAt(i) - '0') * (i % 2 == 0 ? 1 : 3);
        return (char) ('0' + (10 - sum % 10) % 10);
    }

    /** One line of text: control characters and runs of space become one space, and long text is cut. */
    static String clean(String value) {
        if (value == null) return "";
        StringBuilder out = new StringBuilder();
        boolean space = false;
        for (int i = 0; i < value.length(); ) {
            int c = value.codePointAt(i);
            i += Character.charCount(c);
            if (Character.isWhitespace(c) || Character.isISOControl(c) || c == 0x2028 || c == 0x2029) {
                space = out.length() > 0;
                continue;
            }
            if (space) out.append(' ');
            space = false;
            out.appendCodePoint(c);
            if (out.length() >= MAX_TEXT) break;
        }
        return out.toString();
    }
}
