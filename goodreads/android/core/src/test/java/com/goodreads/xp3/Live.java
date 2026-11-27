package com.goodreads.xp3;

import com.goodreads.xp3.books.Api;
import com.goodreads.xp3.books.Book;
import com.goodreads.xp3.books.Detail;
import com.goodreads.xp3.books.Genre;
import com.goodreads.xp3.books.Review;
import com.xp3.common.Http;

import java.net.URI;
import java.util.List;

/**
 * Not part of the self-test: the same calls against the real site and
 * service, to see that they still answer as the tests assume. Run by hand:
 * java -cp <core classes>:<test classes>:<common classes> com.goodreads.xp3.Live
 */
public final class Live {

    public static void main(String[] args) throws Exception {
        final Http http = new Http();
        Api.Transport transport = (url, body, key) -> {
            String at = url;
            for (int hop = 0; hop < 4; hop++) {
                Http.Request request = Http.Request.to(URI.create(at))
                    .header("User-Agent", "Mozilla/5.0 (Linux; Android 8.1.0; XP3800) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Mobile Safari/537.36")
                    .timeout(60000);
                if (body != null) request.post(body).header("Content-Type", "application/json").header("x-api-key", key);
                Http.Response response = http.send(request);
                if (response.status() >= 300 && response.status() < 400) {
                    at = URI.create(at).resolve(response.header("Location")).toString();
                    continue;
                }
                return new Api.Reply(response.status(), response.body());
            }
            throw new java.io.IOException("redirects");
        };
        Api api = new Api(transport, null, key -> System.out.println("key " + key.substring(0, 6) + "..."));
        long t = System.currentTimeMillis();
        Detail d = api.book(50202953);
        System.out.println("book " + d.book.title + " / " + d.book.author + " " + d.book.rating + " " + d.book.ratings + " series=" + d.series
            + " genres=" + d.genres + " " + d.edition() + " pub=" + d.published + " reviews=" + d.reviews + " desc=" + d.description.length());
        List<Book> similar = api.similar(d.bookUri, 8);
        System.out.println("similar " + similar.size() + " " + (similar.isEmpty() ? "" : similar.get(0).title + " " + similar.get(0).id));
        Api.Page<Review> reviews = api.reviews(d.workUri, null, 5);
        System.out.println("reviews " + reviews.items.size() + " total=" + reviews.total + " next=" + (reviews.next != null));
        for (Review r : reviews.items) System.out.println("  " + r.reader + " " + r.stars + " likes=" + r.likes + " at=" + r.written + " len=" + r.text.length() + " spoil=" + r.spoilers);
        Api.Page<Review> more = api.reviews(d.workUri, reviews.next, 5);
        System.out.println("more reviews " + more.items.size() + " first=" + more.items.get(0).reader);
        Api.Page<Book> top = api.top(Api.monthList(2026, 11), null, 15);
        System.out.println("top " + top.items.size() + " " + top.items.get(0).note + " " + top.items.get(0).title + " next=" + (top.next != null));
        System.out.println("top page 2 " + api.top(Api.monthList(2026, 11), top.next, 15).items.get(0).note);
        List<Genre> genres = api.genres();
        System.out.println("genres " + genres.size() + " " + genres.get(0).name + "/" + genres.get(0).slug);
        System.out.println("search " + api.search("piranesi").size() + " " + api.search("dune").get(0).title);
        List<Book> mr = api.list(Api.SITE + "/book/most_read");
        System.out.println("most read " + mr.size() + " " + mr.get(0).title + " | " + mr.get(0).note + " " + mr.get(0).rating);
        Genre kids = null;
        for (Genre g : genres) if (g.slug.equals("children-s")) kids = g;
        for (String u : new String[] {genres.get(0).newReleases(), genres.get(0).mostRead(), genres.get(0).popular(), kids == null ? "" : kids.newReleases()}) {
            if (u.isEmpty()) continue;
            try {
                List<Book> b = api.list(u);
                System.out.println("list " + u + " " + b.size() + " " + b.get(0).title + " / " + b.get(0).author);
            } catch (Exception e) {
                System.out.println("list " + u + " FAILED " + e.getMessage());
            }
        }
        System.out.println("took " + (System.currentTimeMillis() - t) + "ms");
    }
}
