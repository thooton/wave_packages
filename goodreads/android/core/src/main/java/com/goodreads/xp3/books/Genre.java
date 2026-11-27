package com.goodreads.xp3.books;

import com.xp3.common.Json;

import java.util.Map;

/** A genre, by its name and the slug its pages go by ("science-fiction"). */
public final class Genre {

    public final String name;
    public final String slug;

    public Genre(String name, String slug) {
        this.name = Text.line(name);
        this.slug = slug;
    }

    /** The genre at a page address such as https://www.goodreads.com/genres/science-fiction, or null. */
    static Genre at(String name, String url) {
        if (url == null) return null;
        int at = url.indexOf("/genres/");
        if (at < 0) return null;
        String slug = url.substring(at + "/genres/".length());
        int end = slug.indexOf('?');
        if (end >= 0) slug = slug.substring(0, end);
        if (!slug.matches("[a-z0-9-]+") || name == null || Text.line(name).isEmpty()) return null;
        return new Genre(name, slug);
    }

    public String newReleases() {
        return Api.SITE + "/genres/new_releases/" + slug;
    }

    public String mostRead() {
        return Api.SITE + "/genres/most_read/" + slug;
    }

    public String popular() {
        return Api.SITE + "/shelf/show/" + slug;
    }

    public Map<String, Object> toJson() {
        return Json.map("name", name, "slug", slug);
    }

    public static Genre fromJson(Map<String, Object> source) {
        Genre genre = at(Json.text(source, "name"), "/genres/" + Json.text(source, "slug"));
        if (genre == null) throw new IllegalArgumentException("Not a genre");
        return genre;
    }
}
