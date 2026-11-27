package com.goodreads.xp3.books;

import com.xp3.common.Json;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * A titled run of books ("Most read this week"), and where the whole of it
 * can be had when the run shows only its first few.
 */
public final class Section {

    public final String title;
    public final List<Book> books;
    /** The whole list, or null when these are all there is. */
    public final Source more;

    public Section(String title, List<Book> books, Source more) {
        this.title = title;
        this.books = Collections.unmodifiableList(new ArrayList<Book>(books));
        this.more = more;
    }

    public Map<String, Object> toJson() {
        List<Object> list = new ArrayList<Object>();
        for (Book book : books) list.add(book.toJson());
        return Json.map("title", title, "books", list, "more", more == null ? null : more.toJson());
    }

    public static Section fromJson(Map<String, Object> source) {
        List<Book> books = new ArrayList<Book>();
        for (Object each : Json.children(source, "books")) books.add(Book.fromJson(Json.object(each)));
        Object more = source.get("more");
        return new Section(Json.string(source, "title"), books, more instanceof Map ? Source.fromJson(Json.object(more)) : null);
    }

    public static String write(List<Section> sections) {
        List<Object> list = new ArrayList<Object>();
        for (Section section : sections) list.add(section.toJson());
        return Json.write(list);
    }

    /** Sections read back from `text`; an empty list when it no longer reads. */
    public static List<Section> read(String text) {
        List<Section> sections = new ArrayList<Section>();
        if (text == null) return sections;
        try {
            for (Object each : Json.array(Json.parse(text))) sections.add(fromJson(Json.object(each)));
        } catch (RuntimeException e) {
            sections.clear();
        }
        return sections;
    }
}
