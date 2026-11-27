package com.goodreads.xp3.books;

import com.xp3.common.Json;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Books out of the site's own pages and its search suggestions.
 *
 * Two shapes of list page are read. A genre's lists (new releases, most
 * read, popular: the phone layout) are `li.bookItem` elements carrying the
 * book's number, its title in the cover's alt text and its author in a
 * hidden schema.org cite. The site-wide lists (most read this week,
 * Listopia) are table rows marked up as schema.org Books, with a title link,
 * an author link and a "3.79 avg rating — 402,989 ratings" line. Anything
 * else on the page is ignored, and a book named twice counts once.
 */
public final class Pages {

    private Pages() {}

    private static final Pattern ITEM = Pattern.compile("<li\\s+class=['\"]bookItem");
    private static final Pattern ROW = Pattern.compile("<tr[^>]*itemtype=['\"]https?://schema\\.org/Book['\"]");
    private static final Pattern SHOW = Pattern.compile("/book/show/(\\d+)");
    private static final Pattern REL = Pattern.compile("\\brel=['\"](\\d+)['\"]");
    private static final Pattern ALT = Pattern.compile("<img[^>]*\\balt=\"([^\"]*)\"");
    private static final Pattern SRC = Pattern.compile("<img[^>]*\\bsrc=\"(https://[^\"]+)\"");
    private static final Pattern CITE = Pattern.compile("<cite[^>]*itemprop=['\"]name['\"][^>]*>([^<]*)</cite>");
    private static final Pattern ITEM_AUTHOR = Pattern.compile(
        "itemprop=['\"]author['\"][\\s\\S]*?<cite[^>]*itemprop=['\"]name['\"][^>]*>([^<]*)</cite>");
    private static final Pattern ROW_TITLE = Pattern.compile(
        "class=['\"]bookTitle['\"][\\s\\S]*?<span[^>]*itemprop=['\"]name['\"][^>]*>([^<]*)</span>");
    private static final Pattern ROW_AUTHOR = Pattern.compile(
        "class=['\"]authorName['\"][^>]*>\\s*<span[^>]*itemprop=['\"]name['\"][^>]*>([^<]*)</span>");
    private static final Pattern AVERAGE = Pattern.compile(
        "([0-5](?:\\.\\d+)?) avg rating\\s*(?:&mdash;|\u2014|-)\\s*([0-9,]+) ratings?");
    private static final Pattern READERS = Pattern.compile("([0-9,]+)\\s+(?:people|person) read it");

    /** The books a list page lists, in its order. */
    public static List<Book> books(String html) {
        List<Book> books = new ArrayList<Book>();
        for (String chunk : chunks(html, ITEM, "</li>")) {
            long id = number(REL, chunk);
            if (id <= 0) id = number(SHOW, chunk);
            String title = group(ALT, chunk);
            if (title.isEmpty()) title = group(CITE, chunk);
            add(books, new Book(id, Text.entities(title), Text.entities(group(ITEM_AUTHOR, chunk)),
                Text.entities(group(SRC, chunk)), 0, 0, ""));
        }
        for (String chunk : chunks(html, ROW, "</tr>")) {
            Matcher average = AVERAGE.matcher(chunk);
            double rating = 0;
            long ratings = 0;
            if (average.find()) {
                rating = Double.parseDouble(average.group(1));
                ratings = Long.parseLong(average.group(2).replace(",", ""));
            }
            String readers = group(READERS, chunk);
            String note = readers.isEmpty() ? "" : readers + (readers.equals("1") ? " person read it" : " people read it");
            add(books, new Book(number(SHOW, chunk), Text.entities(group(ROW_TITLE, chunk)),
                Text.entities(group(ROW_AUTHOR, chunk)), Text.entities(group(SRC, chunk)), rating, ratings, note));
        }
        return books;
    }

    /** The books of the site's search suggestions (/book/auto_complete?format=json). */
    public static List<Book> suggestions(String json) {
        List<Book> books = new ArrayList<Book>();
        for (Object each : Json.array(Json.parse(json))) {
            if (!(each instanceof Map)) continue;
            Map<String, Object> item = Json.object(each);
            long id = 0;
            String bookId = Json.text(item, "bookId");
            Double numeric = Json.number(item, "bookId");
            try {
                if (bookId != null) id = Long.parseLong(bookId.trim());
                else if (numeric != null) id = numeric.longValue();
            } catch (NumberFormatException e) {
                id = 0;
            }
            double rating = 0;
            String average = Json.text(item, "avgRating");
            Double averageNumber = Json.number(item, "avgRating");
            try {
                if (average != null) rating = Double.parseDouble(average);
                else if (averageNumber != null) rating = averageNumber;
            } catch (NumberFormatException e) {
                rating = 0;
            }
            Double ratings = Json.number(item, "ratingsCount");
            add(books, new Book(id, Json.text(item, "title"), Json.text(Json.child(item, "author"), "name"),
                Json.text(item, "imageUrl"), rating, ratings == null ? 0 : ratings.longValue(), ""));
        }
        return books;
    }

    private static void add(List<Book> books, Book book) {
        if (book.id <= 0 || book.title.isEmpty()) return;
        for (Book had : books) if (had.id == book.id) return;
        books.add(book);
    }

    private static List<String> chunks(String html, Pattern start, String end) {
        List<String> chunks = new ArrayList<String>();
        Matcher m = start.matcher(html);
        List<Integer> starts = new ArrayList<Integer>();
        while (m.find()) starts.add(m.start());
        for (int i = 0; i < starts.size(); i++) {
            int from = starts.get(i);
            int next = i + 1 < starts.size() ? starts.get(i + 1) : html.length();
            int close = html.indexOf(end, from);
            // A row runs to its own close, or to the next row when the close is missing.
            int to = close >= 0 && close < next ? close : Math.min(next, from + 20000);
            chunks.add(html.substring(from, to));
        }
        return chunks;
    }

    private static String group(Pattern pattern, String text) {
        Matcher m = pattern.matcher(text);
        return m.find() ? m.group(1).trim() : "";
    }

    private static long number(Pattern pattern, String text) {
        String found = group(pattern, text);
        try {
            return found.isEmpty() ? 0 : Long.parseLong(found);
        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
