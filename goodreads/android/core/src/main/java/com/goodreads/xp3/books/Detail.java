package com.goodreads.xp3.books;

import com.xp3.common.Json;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/** A book as its own page shows it: the list's summary and everything the page adds. */
public final class Detail {

    public final Book book;
    /** The service's own names for the book and its work, which similar books and reviews are asked by. */
    public final String bookUri;
    public final String workUri;
    public final String description;
    /** "The Stormlight Archive #1", or empty. */
    public final String series;
    public final List<String> genres;
    public final int pages;
    public final String format;
    public final String publisher;
    /** When the book (any edition) was first published, in epoch milliseconds; 0 when not known. */
    public final long published;
    public final long reviews;
    /** How many ratings of one star to five stars, in that order: five counts, or none. */
    public final long[] stars;

    Detail(Book book, String bookUri, String workUri, String description, String series, List<String> genres,
           int pages, String format, String publisher, long published, long reviews, long[] stars) {
        this.book = book;
        this.bookUri = bookUri;
        this.workUri = workUri;
        this.description = description;
        this.series = series;
        this.genres = Collections.unmodifiableList(genres);
        this.pages = pages;
        this.format = format;
        this.publisher = publisher;
        this.published = published;
        this.reviews = reviews;
        this.stars = stars;
    }

    /** The service's getBookByLegacyId answer. */
    static Detail fromGraph(Map<String, Object> node) {
        Double legacy = Json.number(node, "legacyId");
        if (legacy == null) throw new IllegalArgumentException("No such book");
        Map<String, Object> work = Json.child(node, "work");
        Map<String, Object> stats = Json.child(work, "stats");
        Map<String, Object> details = Json.child(node, "details");
        Book book = Api.book(node);

        String series = "";
        List<Object> inSeries = Json.children(node, "bookSeries");
        if (!inSeries.isEmpty()) {
            Map<String, Object> first = Json.object(inSeries.get(0));
            String name = Text.line(Json.text(Json.child(first, "series"), "title"));
            String position = Text.line(Json.text(first, "userPosition"));
            if (!name.isEmpty()) series = position.isEmpty() ? name : name + " #" + position;
        }
        List<String> genres = new ArrayList<String>();
        for (Object each : Json.children(node, "bookGenres")) {
            String name = Text.line(Json.text(Json.child(Json.object(each), "genre"), "name"));
            if (!name.isEmpty() && !genres.contains(name)) genres.add(name);
        }
        Double pages = Json.number(details, "numPages");
        long published = millis(Json.child(work, "details"), "publicationTime");
        if (published == 0) published = millis(details, "publicationTime");
        Double reviews = Json.number(stats, "textReviewsCount");
        long[] stars = new long[0];
        List<Object> spread = Json.children(stats, "ratingsCountDist");
        if (spread.size() == 5) {
            stars = new long[5];
            for (int i = 0; i < 5; i++) {
                Object count = spread.get(i);
                stars[i] = count instanceof Number ? Math.max(0, ((Number) count).longValue()) : 0;
            }
        }
        String description = withoutEditionNote(Text.strip(Json.text(node, "description")));
        return new Detail(book, nonNull(Json.text(node, "id")), nonNull(Json.text(work, "id")), description, series,
            genres, pages == null ? 0 : pages.intValue(), Text.line(Json.text(details, "format")),
            Text.line(Json.text(details, "publisher")), published, reviews == null ? 0 : reviews.longValue(), stars);
    }

    /**
     * The description without the librarians' note some editions open with
     * ("Alternate cover edition of ISBN 9781635575637."), which says nothing
     * about the book.
     */
    static String withoutEditionNote(String description) {
        String first = description;
        int end = description.indexOf("\n\n");
        if (end >= 0) first = description.substring(0, end);
        String lower = first.toLowerCase(java.util.Locale.US);
        boolean note = first.length() < 200 && (lower.startsWith("alternate cover") || lower.startsWith("this is an alternate cover")
            || lower.startsWith("alternative cover") || lower.startsWith("previously published as"));
        if (!note) return description;
        return end >= 0 ? description.substring(end + 2).trim() : "";
    }

    static long millis(Map<String, Object> source, String key) {
        Double value = Json.number(source, key);
        return value == null ? 0 : value.longValue();
    }

    private static String nonNull(String value) {
        return value == null ? "" : value;
    }

    /** "245 pages, Hardcover", or what there is of it. */
    public String edition() {
        String pageCount = pages > 0 ? Text.counted(pages, "page", "pages") : "";
        if (pageCount.isEmpty()) return format;
        return format.isEmpty() ? pageCount : pageCount + ", " + format;
    }
}
