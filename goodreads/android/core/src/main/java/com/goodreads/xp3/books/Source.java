package com.goodreads.xp3.books;

import com.xp3.common.Json;

import java.util.Map;

/**
 * Where a list of books comes from: one of the service's top lists (by its
 * name, a page at a time), one of the site's list pages (by its address), or
 * a genre (its three lists, as its page has them).
 */
public final class Source {

    public static final String TOP = "top";
    public static final String PAGE = "page";
    public static final String GENRE = "genre";

    public final String kind;
    public final String title;
    /** The top list's name, the page's address, or the genre's slug. */
    public final String target;

    public Source(String kind, String title, String target) {
        if (!TOP.equals(kind) && !PAGE.equals(kind) && !GENRE.equals(kind)) throw new IllegalArgumentException("Unknown source");
        if (PAGE.equals(kind) && !target.startsWith(Api.SITE + "/")) throw new IllegalArgumentException("Not a Goodreads page");
        this.kind = kind;
        this.title = title;
        this.target = target;
    }

    public static Source top(String title, String name) {
        return new Source(TOP, title, name);
    }

    public static Source page(String title, String url) {
        return new Source(PAGE, title, url);
    }

    public static Source genre(Genre genre) {
        return new Source(GENRE, genre.name, genre.slug);
    }

    public Genre genre() {
        return GENRE.equals(kind) ? new Genre(title, target) : null;
    }

    public Map<String, Object> toJson() {
        return Json.map("kind", kind, "title", title, "target", target);
    }

    public static Source fromJson(Map<String, Object> source) {
        return new Source(Json.string(source, "kind"), Json.string(source, "title"), Json.string(source, "target"));
    }
}
