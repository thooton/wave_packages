package com.bookrecs.xp3;

import com.xp3.common.Json;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/** A prompt and the books it got: the last one is kept, so the app opens on it. */
public final class Search {

    public final String prompt;
    public final List<Book> books;

    public Search(String prompt, List<Book> books) {
        this.prompt = prompt;
        this.books = Collections.unmodifiableList(new ArrayList<Book>(books));
    }

    public String toJson() {
        List<Object> items = new ArrayList<Object>();
        for (Book book : books) items.add(book.toJson());
        return Json.write(Json.map("format", Integer.valueOf(1), "prompt", prompt, "books", items));
    }

    /** A kept search, or null when there is none or it doesn't read. */
    public static Search parse(String text) {
        if (text == null) return null;
        try {
            Map<String, Object> root = Json.object(Json.parse(text));
            String prompt = Json.text(root, "prompt");
            if (prompt == null || prompt.trim().length() == 0) return null;
            List<Book> books = new ArrayList<Book>();
            for (Object item : Json.children(root, "books")) {
                Book book = Book.from(item);
                if (book != null) books.add(book);
            }
            return new Search(prompt, books);
        } catch (RuntimeException e) {
            return null;
        }
    }
}
