package com.goodreads.xp3.books;

import com.xp3.common.Json;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Goodreads, read without an account, the way goodreads.com reads itself.
 *
 * The site's pages ask an AWS AppSync GraphQL service for books, similar
 * books, top lists and reviews, with an API key that every one of its
 * Next.js pages carries in its __NEXT_DATA__. The key is taken from the
 * smallest such page and kept; when the service stops accepting it, it is
 * fetched again once. (The Goodreads app itself reads its own service at
 * kca.amazon.com, which wants an Amazon sign-in, so it is no use here.)
 *
 * Search and the genre lists come from the site: the search suggestions'
 * JSON, and the HTML of the list pages (see Pages).
 */
public final class Api {

    public static final String SITE = "https://www.goodreads.com";
    public static final String GRAPHQL = "https://kxbwmqov6jgg3daaamb744ycu4.appsync-api.us-east-1.amazonaws.com/graphql";
    /** The smallest page of the site that carries the key: about 10 kB. */
    public static final String KEY_PAGE = SITE + "/book/popular_by_date/1990/1";

    /** What goes over the network: a GET when `body` is null, else a POST of JSON with the key. */
    public interface Transport {
        Reply send(String url, String body, String key) throws IOException, InterruptedException;
    }

    public static final class Reply {
        public final int status;
        public final String body;

        public Reply(int status, String body) {
            this.status = status;
            this.body = body == null ? "" : body;
        }
    }

    /** Told each newly fetched key, to keep it for next time. */
    public interface Keeper {
        void keep(String key);
    }

    /** The site's bot check, which wants a browser that runs its script. */
    public static final String TURNED_AWAY = "Goodreads turned the request away. Try again later.";

    private static final Pattern KEY = Pattern.compile("\"apiKey\"\\s*:\\s*\"(da2-[A-Za-z0-9]+)\"");

    private final Transport transport;
    private final Keeper keeper;
    private String key;

    public Api(Transport transport, String key, Keeper keeper) {
        this.transport = transport;
        this.key = key == null || key.isEmpty() ? null : key;
        this.keeper = keeper;
    }

    // ---- The site.

    /** A page of the site, or the reason it can't be had. */
    public String page(String url) throws IOException, InterruptedException {
        Reply reply = transport.send(url, null, null);
        if (reply.status == 202 && reply.body.trim().isEmpty() || reply.status == 405) throw new IOException(TURNED_AWAY);
        if (reply.status == 404) throw new IOException("Goodreads has no such page.");
        if (reply.status != 200) throw new IOException("Goodreads answered " + reply.status + ".");
        return reply.body;
    }

    /** The books of one of the site's list pages. */
    public List<Book> list(String url) throws IOException, InterruptedException {
        List<Book> books = Pages.books(page(url));
        if (books.isEmpty()) throw new IOException("The page had no books on it.");
        return books;
    }

    /** Goodreads' own top matches for `query`: at most five, as the site's search box offers. */
    public List<Book> search(String query) throws IOException, InterruptedException {
        String text;
        try {
            text = page(SITE + "/book/auto_complete?format=json&q=" + URLEncoder.encode(query.trim(), "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
        try {
            return Pages.suggestions(text);
        } catch (RuntimeException e) {
            throw new IOException("Goodreads' answer was unreadable.");
        }
    }

    synchronized String key(boolean fresh) throws IOException, InterruptedException {
        if (key != null && !fresh) return key;
        Matcher m = KEY.matcher(page(KEY_PAGE));
        if (!m.find()) throw new IOException("Goodreads' pages have changed; the app can't read them.");
        key = m.group(1);
        if (keeper != null) keeper.keep(key);
        return key;
    }

    // ---- The GraphQL service.

    /** The `data` of a query, asking for a fresh key once if the service refuses the one kept. */
    Map<String, Object> query(String query, Map<String, Object> variables) throws IOException, InterruptedException {
        String body = Json.write(Json.map("query", query, "variables", variables));
        for (int attempt = 0; ; attempt++) {
            Reply reply = transport.send(GRAPHQL, body, key(attempt > 0));
            boolean refused = reply.status == 401 || reply.status == 403
                || reply.status != 200 && reply.body.contains("UnauthorizedException");
            if (refused) {
                if (attempt == 0) continue;
                throw new IOException("Goodreads didn't accept the site's key.");
            }
            if (reply.status == 429) throw new IOException("Goodreads is busy. Try again in a moment.");
            if (reply.status != 200) throw new IOException("Goodreads answered " + reply.status + ".");
            Map<String, Object> answer;
            try {
                answer = Json.object(Json.parse(reply.body));
            } catch (RuntimeException e) {
                throw new IOException("Goodreads' answer was unreadable.");
            }
            Map<String, Object> data = Json.child(answer, "data");
            boolean empty = true;
            for (Object value : data.values()) if (value != null) empty = false;
            if (empty) {
                if (reply.body.contains("RESOURCE_NOT_FOUND") || reply.body.contains("NOT_FOUND")) {
                    throw new IOException("Goodreads has no such book.");
                }
                throw new IOException("Goodreads couldn't answer that.");
            }
            return data;
        }
    }

    private static final String BOOK_FIELDS = "legacyId title titleComplete imageUrl "
        + "primaryContributorEdge { node { name } } work { stats { averageRating ratingsCount } }";

    /** A book node of the service as a list's book. */
    static Book book(Map<String, Object> node) {
        Double id = Json.number(node, "legacyId");
        String title = Json.text(node, "titleComplete");
        if (title == null || title.trim().isEmpty()) title = Json.text(node, "title");
        Map<String, Object> stats = Json.child(Json.child(node, "work"), "stats");
        Double rating = Json.number(stats, "averageRating");
        Double ratings = Json.number(stats, "ratingsCount");
        return new Book(id == null ? 0 : id.longValue(), title,
            Json.text(Json.child(Json.child(node, "primaryContributorEdge"), "node"), "name"),
            Json.text(node, "imageUrl"), rating == null ? 0 : rating, ratings == null ? 0 : ratings.longValue(), "");
    }

    private static final String BOOK = "query Book($id: Int!) { getBookByLegacyId(legacyId: $id) { id " + BOOK_FIELDS
        + " description bookSeries { userPosition series { title } } bookGenres { genre { name } }"
        + " details { numPages publicationTime publisher format }"
        + " work { id details { publicationTime } stats { averageRating ratingsCount textReviewsCount ratingsCountDist } } } }";

    public Detail book(long id) throws IOException, InterruptedException {
        Map<String, Object> node = Json.child(query(BOOK, Json.map("id", id)), "getBookByLegacyId");
        try {
            return Detail.fromGraph(node);
        } catch (RuntimeException e) {
            throw new IOException("Goodreads has no such book.");
        }
    }

    private static final String SIMILAR = "query Similar($id: ID!, $limit: Int!) { getSimilarBooks(id: $id, "
        + "pagination: { limit: $limit }) { edges { node { " + BOOK_FIELDS + " } } } }";

    /** Readers also enjoyed: books like the one named by `bookUri` (Detail.bookUri). */
    public List<Book> similar(String bookUri, int limit) throws IOException, InterruptedException {
        List<Book> books = new ArrayList<Book>();
        Map<String, Object> data = query(SIMILAR, Json.map("id", bookUri, "limit", limit));
        for (Object edge : Json.children(Json.child(data, "getSimilarBooks"), "edges")) {
            Book book = book(Json.child(Json.object(edge), "node"));
            if (book.id > 0 && !book.title.isEmpty()) books.add(book);
        }
        return books;
    }

    /** A page of a list, and the token for the next page (null at the end). */
    public static final class Page<T> {
        public final List<T> items;
        public final String next;
        public final long total;

        Page(List<T> items, String next, long total) {
            this.items = items;
            this.next = next;
            this.total = total;
        }
    }

    private static final String TOP = "query Top($name: String!, $after: String, $limit: Int) { getTopList("
        + "getTopListInput: { name: $name, period: \"A\", location: \"ALL\" }, pagination: { after: $after, limit: $limit }) {"
        + " pageInfo { hasNextPage nextPageToken } edges { ... on TopListBookEdge { rank node { " + BOOK_FIELDS + " } } } } }";

    /** The name of the top list of books published in a month: popular_by_date's list. */
    public static String monthList(int year, int month) {
        return String.format(java.util.Locale.US, "books-by-release-date-%04d-%02d", year, month);
    }

    /** One of the site's top lists, each book noted with its rank ("#1"). */
    public Page<Book> top(String name, String after, int limit) throws IOException, InterruptedException {
        Map<String, Object> list = Json.child(query(TOP, Json.map("name", name, "after", after, "limit", limit)), "getTopList");
        List<Book> books = new ArrayList<Book>();
        for (Object each : Json.children(list, "edges")) {
            Map<String, Object> edge = Json.object(each);
            Book book = book(Json.child(edge, "node"));
            Double rank = Json.number(edge, "rank");
            if (book.id > 0 && !book.title.isEmpty()) books.add(rank == null ? book : book.withNote("#" + rank.longValue()));
        }
        return new Page<Book>(books, next(list, books.size()), 0);
    }

    private static final String GENRES = "query Genres { getBasicGenres { genres { name webUrl } } }";

    /** The site's main genres, as its Genres page lists them. */
    public List<Genre> genres() throws IOException, InterruptedException {
        List<Genre> genres = new ArrayList<Genre>();
        for (Object each : Json.children(Json.child(query(GENRES, Json.map()), "getBasicGenres"), "genres")) {
            Map<String, Object> item = Json.object(each);
            Genre genre = Genre.at(Json.text(item, "name"), Json.text(item, "webUrl"));
            if (genre != null) genres.add(genre);
        }
        return genres;
    }

    private static final String REVIEWS = "query Reviews($id: ID!, $after: String, $limit: Int) { getReviews("
        + "filters: { resourceType: WORK, resourceId: $id }, pagination: { after: $after, limit: $limit }) {"
        + " totalCount pageInfo { hasNextPage nextPageToken }"
        + " edges { node { rating text spoilerStatus likeCount createdAt creator { name } } } } }";

    /** Community reviews of a work (Detail.workUri), the site's order: most helpful first. */
    public Page<Review> reviews(String workUri, String after, int limit) throws IOException, InterruptedException {
        Map<String, Object> list = Json.child(query(REVIEWS, Json.map("id", workUri, "after", after, "limit", limit)), "getReviews");
        List<Review> reviews = new ArrayList<Review>();
        for (Object edge : Json.children(list, "edges")) reviews.add(Review.fromGraph(Json.child(Json.object(edge), "node")));
        Double total = Json.number(list, "totalCount");
        return new Page<Review>(reviews, next(list, reviews.size()), total == null ? 0 : total.longValue());
    }

    /**
     * The token for the page after this one, or null at the end. The reviews
     * leave hasNextPage null while still sending a token, so a token counts
     * unless hasNextPage is plainly false or the page was empty.
     */
    private static String next(Map<String, Object> list, int count) {
        Map<String, Object> info = Json.child(list, "pageInfo");
        String token = Json.text(info, "nextPageToken");
        if (count == 0 || token == null || token.trim().isEmpty()) return null;
        return Boolean.FALSE.equals(info.get("hasNextPage")) ? null : token;
    }
}
