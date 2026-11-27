package com.goodreads.xp3;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;

import com.goodreads.xp3.books.Api;
import com.goodreads.xp3.books.Book;
import com.goodreads.xp3.books.Genre;
import com.goodreads.xp3.books.Source;
import com.xp3.common.Json;

import java.util.ArrayList;
import java.util.List;

/**
 * A list of books from a Source: a genre's three lists as its page has
 * them (new releases, most read this week, popular), each its first few
 * with See all; a top list a page at a time, with More books at its end;
 * or the whole of one of the site's list pages.
 */
public final class ListActivity extends Screen {

    private static final int GENRE_FEW = 6;
    private static final int TOP_PAGE = 30;

    static Intent intent(Context context, Source source) {
        return new Intent(context, ListActivity.class).putExtra("source", Json.write(source.toJson()));
    }

    private Source source;
    private String place;

    // A genre: its three lists, null while each is on its way.
    private final String[] names = {"New releases", "Most read this week", "Popular"};
    private final List<List<Book>> lists = new ArrayList<List<Book>>();
    private final String[] errors = new String[3];
    private final boolean[] done = new boolean[3];

    // A top list or a page.
    private final List<Book> books = new ArrayList<Book>();
    private String next;
    private boolean loading;
    private String error;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        try {
            source = Source.fromJson(Json.object(Json.parse(getIntent().getStringExtra("source"))));
        } catch (RuntimeException e) {
            finish();
            return;
        }
        for (int i = 0; i < 3; i++) lists.add(null);
        load();
    }

    @Override
    protected void chose(String key) {
        place = key;
    }

    private void load() {
        if (Source.GENRE.equals(source.kind)) loadGenre();
        else loadBooks();
    }

    private void loadGenre() {
        final Genre genre = source.genre();
        final String[] urls = {genre.newReleases(), genre.mostRead(), genre.popular()};
        final Api api = Books.api(this);
        for (int i = 0; i < 3; i++) {
            done[i] = false;
            errors[i] = null;
            lists.set(i, null);
            final int which = i;
            worker.execute(() -> {
                List<Book> found = null;
                String failure = null;
                try {
                    found = api.list(urls[which]);
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e) {
                    failure = message(e);
                }
                final List<Book> result = found;
                final String why = failure;
                runOnUiThread(() -> {
                    if (isDestroyed()) return;
                    done[which] = true;
                    lists.set(which, result);
                    errors[which] = why;
                    build();
                });
            });
        }
        build();
    }

    private void loadBooks() {
        if (loading) return;
        loading = true;
        error = null;
        build();
        final Api api = Books.api(this);
        final String after = next;
        worker.execute(() -> {
            List<Book> found = null;
            String nextPage = null;
            String failure = null;
            try {
                if (Source.TOP.equals(source.kind)) {
                    Api.Page<Book> page = api.top(source.target, after, TOP_PAGE);
                    found = page.items;
                    nextPage = page.next;
                } else {
                    found = api.list(source.target);
                }
            } catch (InterruptedException e) {
                return;
            } catch (Exception e) {
                failure = message(e);
            }
            final List<Book> result = found;
            final String token = nextPage;
            final String why = failure;
            runOnUiThread(() -> {
                if (isDestroyed()) return;
                loading = false;
                if (result != null) {
                    for (Book book : result) if (!has(book.id)) books.add(book);
                    next = token;
                }
                error = why;
                build();
            });
        });
    }

    private boolean has(long id) {
        for (Book book : books) if (book.id == id) return true;
        return false;
    }

    private void build() {
        List<Rows.Item> items = new ArrayList<Rows.Item>();
        items.add(Rows.title(source.title));
        if (Source.GENRE.equals(source.kind)) {
            boolean all = true;
            boolean failed = true;
            for (int i = 0; i < 3; i++) {
                all &= done[i];
                failed &= done[i] && lists.get(i) == null;
            }
            if (all && failed) {
                state("Couldn\u2019t load " + source.title, errors[0], this::load);
                return;
            }
            Genre genre = source.genre();
            String[] titles = {"New releases in " + genre.name, "Most read this week in " + genre.name, "Popular in " + genre.name};
            String[] urls = {genre.newReleases(), genre.mostRead(), genre.popular()};
            for (int i = 0; i < 3; i++) {
                items.add(Rows.heading(names[i]));
                List<Book> found = lists.get(i);
                if (!done[i]) {
                    items.add(Rows.spinner());
                    continue;
                }
                if (found == null) {
                    items.add(Rows.note("Couldn\u2019t load them: " + errors[i]));
                    continue;
                }
                for (int j = 0; j < Math.min(GENRE_FEW, found.size()); j++) {
                    final Book book = found.get(j);
                    items.add(Rows.book(book, () -> openBook(book)));
                }
                if (found.size() > GENRE_FEW) {
                    final Source whole = Source.page(titles[i], urls[i]);
                    items.add(Rows.link("all:" + i, "See all", () -> startActivity(intent(this, whole))));
                }
            }
        } else {
            if (books.isEmpty()) {
                if (loading) spinner();
                else state("Couldn\u2019t load " + source.title, error, this::loadBooks);
                return;
            }
            for (final Book book : books) items.add(Rows.book(book, () -> openBook(book)));
            if (loading) items.add(Rows.spinner());
            else if (error != null) items.add(Rows.note("Couldn\u2019t load more: " + error));
            if (!loading && next != null) items.add(Rows.link("more", "More books", this::loadBooks));
        }
        boolean fresh = list.getParent() == null;
        rows.set(items);
        if (fresh) showListFromTop();
        else ensureChosen();
    }

    @Override
    protected void fill(Menu menu) {
        fillBook(menu);
    }
}
