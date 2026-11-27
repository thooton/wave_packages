package com.goodreads.xp3.books;

import com.xp3.common.Json;

import java.util.Map;

/** One reader's review of a book: who, how many stars, when, and what they wrote. */
public final class Review {

    public final String reader;
    /** One to five stars, or 0 when they wrote without rating it. */
    public final int stars;
    public final String text;
    public final boolean spoilers;
    public final long likes;
    /** When it was written, in epoch milliseconds; 0 when not known. */
    public final long written;

    Review(String reader, int stars, String text, boolean spoilers, long likes, long written) {
        this.reader = reader;
        this.stars = stars;
        this.text = text;
        this.spoilers = spoilers;
        this.likes = likes;
        this.written = written;
    }

    static Review fromGraph(Map<String, Object> node) {
        Double rating = Json.number(node, "rating");
        Double likes = Json.number(node, "likeCount");
        int stars = rating == null ? 0 : (int) Math.round(rating);
        String reader = Text.line(Json.text(Json.child(node, "creator"), "name"));
        return new Review(reader.isEmpty() ? "A reader" : reader, Math.max(0, Math.min(5, stars)),
            Text.strip(Json.text(node, "text")), Json.flag(node, "spoilerStatus"),
            likes == null ? 0 : likes.longValue(), Detail.millis(node, "createdAt"));
    }
}
