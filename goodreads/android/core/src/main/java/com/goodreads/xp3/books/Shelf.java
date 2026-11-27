package com.goodreads.xp3.books;

import com.xp3.common.Disk;
import com.xp3.common.Json;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Want to Read: the books kept on the phone, newest first, in shelf.json.
 * There is no account; nothing here goes to Goodreads.
 */
public final class Shelf {

    private final File file;
    private final List<Book> books = new ArrayList<Book>();

    public Shelf(File file) {
        this.file = file;
        String text = Disk.read(file, 4000000);
        if (text == null) return;
        try {
            for (Object each : Json.array(Json.parse(text))) {
                Book book = Book.fromJson(Json.object(each));
                if (indexOf(book.id) < 0) books.add(book);
            }
        } catch (RuntimeException e) {
            // A shelf that no longer reads starts again empty rather than crashing the app.
            books.clear();
        }
    }

    public synchronized List<Book> books() {
        return new ArrayList<Book>(books);
    }

    public synchronized boolean contains(long id) {
        return indexOf(id) >= 0;
    }

    /** Puts the book on the shelf, at the top; a book already there moves to the top. */
    public synchronized void add(Book book) throws IOException {
        int at = indexOf(book.id);
        if (at >= 0) books.remove(at);
        books.add(0, book.withNote(""));
        write();
    }

    public synchronized void remove(long id) throws IOException {
        int at = indexOf(id);
        if (at < 0) return;
        books.remove(at);
        write();
    }

    private int indexOf(long id) {
        for (int i = 0; i < books.size(); i++) if (books.get(i).id == id) return i;
        return -1;
    }

    private void write() throws IOException {
        List<Object> list = new ArrayList<Object>();
        for (Book book : books) list.add(book.toJson());
        Disk.write(file, Json.write(list), false);
    }
}
