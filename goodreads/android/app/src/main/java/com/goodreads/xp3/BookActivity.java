package com.goodreads.xp3;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;

import com.goodreads.xp3.books.Api;
import com.goodreads.xp3.books.Book;
import com.goodreads.xp3.books.Detail;
import com.goodreads.xp3.books.Review;
import com.xp3.common.Json;

import java.util.ArrayList;
import java.util.List;

/**
 * A book's page: its head, Want to Read, the description and facts, then
 * Readers also enjoyed and Community reviews, which arrive after the book.
 * The page shows only a spinner until the book itself is in.
 */
public final class BookActivity extends Screen {

    private static final int SIMILAR = 8;
    private static final int REVIEWS = 5;

    static Intent intent(Context context, Book book) {
        return new Intent(context, BookActivity.class).putExtra("book", Json.write(book.toJson()));
    }

    private Book book;
    private Detail detail;
    private List<Book> similar;
    private String similarError;
    private final List<Review> reviews = new ArrayList<Review>();
    private String reviewsNext;
    private boolean reviewsLoading;
    private String reviewsError;
    private boolean loading;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        try {
            book = Book.fromJson(Json.object(Json.parse(getIntent().getStringExtra("book"))));
        } catch (RuntimeException e) {
            finish();
            return;
        }
        load();
    }

    @Override
    protected void onResume() {
        super.onResume();
        // The shelf may have changed on another book's page opened from this one.
        if (detail != null) build();
    }

    private void load() {
        if (loading) return;
        loading = true;
        spinner();
        final Api api = Books.api(this);
        worker.execute(() -> {
            Detail found = null;
            String error = null;
            try {
                found = api.book(book.id);
            } catch (InterruptedException e) {
                return;
            } catch (Exception e) {
                error = message(e);
            }
            final Detail result = found;
            final String failure = error;
            runOnUiThread(() -> loaded(result, failure));
        });
    }

    private void loaded(Detail found, String error) {
        loading = false;
        if (isDestroyed()) return;
        if (found == null) {
            state("Couldn\u2019t load this book", error, this::load);
            return;
        }
        detail = found;
        build();
        showListFromTop();
        loadSimilar();
        loadReviews();
    }

    private void loadSimilar() {
        final Api api = Books.api(this);
        final String uri = detail.bookUri;
        worker.execute(() -> {
            List<Book> found = null;
            String error = null;
            try {
                found = api.similar(uri, SIMILAR);
            } catch (InterruptedException e) {
                return;
            } catch (Exception e) {
                error = message(e);
            }
            final List<Book> result = found;
            final String failure = error;
            runOnUiThread(() -> {
                if (isDestroyed()) return;
                similar = result == null ? new ArrayList<Book>() : result;
                similarError = failure;
                build();
            });
        });
    }

    private void loadReviews() {
        if (reviewsLoading) return;
        reviewsLoading = true;
        reviewsError = null;
        if (detail != null && !reviews.isEmpty()) build();
        final Api api = Books.api(this);
        final String uri = detail.workUri;
        final String after = reviewsNext;
        worker.execute(() -> {
            Api.Page<Review> found = null;
            String error = null;
            try {
                found = api.reviews(uri, after, REVIEWS);
            } catch (InterruptedException e) {
                return;
            } catch (Exception e) {
                error = message(e);
            }
            final Api.Page<Review> result = found;
            final String failure = error;
            runOnUiThread(() -> {
                if (isDestroyed()) return;
                reviewsLoading = false;
                if (result != null) {
                    reviews.addAll(result.items);
                    reviewsNext = result.next;
                }
                reviewsError = failure;
                build();
            });
        });
    }

    private void build() {
        List<Rows.Item> items = new ArrayList<Rows.Item>();
        final Book shown = detail.book;
        items.add(Rows.head(detail));
        items.add(Rows.button(Books.shelf(this).contains(shown.id), () -> {
            toggle(shown);
            build();
        }));
        if (!detail.description.isEmpty()) items.add(Rows.paragraph(detail.description));
        items.add(Rows.facts(detail));

        if (similar == null || !similar.isEmpty() || similarError != null) {
            items.add(Rows.heading("Readers also enjoyed"));
            if (similar == null) items.add(Rows.spinner());
            else if (similarError != null) items.add(Rows.note("Couldn\u2019t load them: " + similarError));
            for (final Book other : similar == null ? new ArrayList<Book>() : similar) {
                items.add(Rows.book(other, () -> openBook(other)));
            }
        }

        items.add(Rows.heading("Community reviews"));
        long rated = 0;
        for (long count : detail.stars) rated += count;
        if (rated > 0) items.add(Rows.spread(detail));
        for (Review review : reviews) items.add(Rows.review(review));
        if (reviewsLoading) items.add(Rows.spinner());
        else if (reviewsError != null) items.add(Rows.note("Couldn\u2019t load reviews: " + reviewsError));
        else if (reviews.isEmpty()) items.add(Rows.note("No reviews yet"));
        if (!reviewsLoading && reviewsNext != null) items.add(Rows.link("more-reviews", "More reviews", this::loadReviews));
        rows.set(items);
        ensureChosen();
    }

    /** Right and Left turn a screen on and back, keeping a little of the last in view. */
    @Override
    protected boolean keys(KeyEvent event) {
        int keyCode = event.getKeyCode();
        if (keyCode != KeyEvent.KEYCODE_DPAD_RIGHT && keyCode != KeyEvent.KEYCODE_DPAD_LEFT) return false;
        if (event.getAction() == KeyEvent.ACTION_DOWN && list.getParent() != null) {
            int step = list.getHeight() - dp(36);
            scroll(keyCode == KeyEvent.KEYCODE_DPAD_RIGHT ? step : -step);
        }
        return list.getParent() != null;
    }

    @Override
    protected void fill(Menu menu) {
        if (detail == null) return;
        menu.add(0, WANT, 0, Books.shelf(this).contains(detail.book.id) ? "Remove from Want to Read" : "Want to Read");
        Book other = chosenBook();
        if (other != null) menu.add(0, OPEN, 0, "Open " + shorten(other.title));
        menu.add(0, TOP, 0, "Back to top");
    }

    private static String shorten(String title) {
        return title.length() > 24 ? title.substring(0, 23).trim() + "\u2026" : title;
    }

    @Override
    protected void chosen(int id) {
        if (id == WANT && detail != null) {
            toggle(detail.book);
            build();
        } else if (id == OPEN) {
            Book other = chosenBook();
            if (other != null) openBook(other);
        } else if (id == TOP) {
            showListFromTop();
        }
    }
}
