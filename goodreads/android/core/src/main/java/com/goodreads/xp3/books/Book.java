package com.goodreads.xp3.books;

import com.xp3.common.Json;

import java.util.Map;

/**
 * A book as a list shows it: its Goodreads number (the one in
 * /book/show/<id>), title, author, cover, and as much of its rating and a
 * list's own note ("#1", "30,075 people read it") as the list gave.
 */
public final class Book {

    public final long id;
    public final String title;
    public final String author;
    public final String cover;
    /** The average rating, 0 when the list didn't say. */
    public final double rating;
    /** How many ratings, 0 when the list didn't say. */
    public final long ratings;
    public final String note;

    public Book(long id, String title, String author, String cover, double rating, long ratings, String note) {
        this.id = id;
        this.title = Text.line(title);
        this.author = Text.line(author);
        this.cover = cover == null ? "" : cover;
        this.rating = rating;
        this.ratings = ratings;
        this.note = note == null ? "" : note;
    }

    public Book withNote(String value) {
        return new Book(id, title, author, cover, rating, ratings, value);
    }

    public String url() {
        return "https://www.goodreads.com/book/show/" + id;
    }

    public Map<String, Object> toJson() {
        return Json.map("id", id, "title", title, "author", author, "cover", cover,
            "rating", rating, "ratings", ratings, "note", note);
    }

    public static Book fromJson(Map<String, Object> source) {
        Double id = Json.number(source, "id");
        if (id == null || id <= 0) throw new IllegalArgumentException("A book without a number");
        Double rating = Json.number(source, "rating");
        Double ratings = Json.number(source, "ratings");
        return new Book(id.longValue(), Json.text(source, "title"), Json.text(source, "author"),
            Json.text(source, "cover"), rating == null ? 0 : rating, ratings == null ? 0 : ratings.longValue(),
            Json.text(source, "note"));
    }
}
