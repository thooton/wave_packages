package com.bookrecs.xp3;

import com.xp3.common.Check;
import com.xp3.common.Json;
import com.xp3.common.TestServer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/** Everything in :core, checked on a desktop JVM, against a loopback server where it talks to one. */
public final class SelfTest {

    static final String DUNE = "9780441172719";
    static final String HOBBIT = "9780547928227";

    public static void main(String[] args) {
        final Check check = new Check();

        check.run("isbn", () -> {
            check.same("plain", DUNE, Book.isbn13(DUNE));
            check.same("hyphens", DUNE, Book.isbn13("978-0-441-17271-9"));
            check.same("wrong check digit", null, Book.isbn13("9780441172718"));
            check.same("ISBN-10 is not ISBN-13", null, Book.isbn13("0441172717"));
            check.same("not a book prefix", null, Book.isbn13("1234567890128"));
            check.same("letters", null, Book.isbn13("97804411727X9"));
            check.same("missing", null, Book.isbn13(null));
            for (int i = 0; i < Sample.BOOKS.length; i++) {
                check.ok("sample isbn " + i + " is valid", Book.isbn13(Sample.isbn(i)) != null);
            }
        });

        check.run("text", () -> {
            check.same("one line", "A Wizard of Earthsea", Book.clean("  A Wizard\n of\tEarthsea \u2028"));
            check.same("controls are spaces", "a b", Book.clean("a\u0000\u0007b"));
            check.same("cut", Book.MAX_TEXT, Book.clean(repeat("x", 1000)).length());
            check.same("missing", "", Book.clean(null));
        });

        check.run("endpoint", () -> {
            check.same("base", "https://books.example.com/v1/recommendations",
                Recommender.endpoint("https://books.example.com").toString());
            check.same("trailing slash", "https://books.example.com/v1/recommendations",
                Recommender.endpoint(" https://books.example.com/ ").toString());
            check.same("prefix", "https://example.com/recs/v1/recommendations",
                Recommender.endpoint("https://example.com/recs/").toString());
            check.same("full endpoint once", "https://example.com:8443/v1/recommendations",
                Recommender.endpoint("https://example.com:8443/v1/recommendations").toString());
            check.same("loopback http for tests", "http://127.0.0.1:9/v1/recommendations",
                Recommender.endpoint("http://127.0.0.1:9").toString());
            check.fails("plain http", "https", () -> Recommender.endpoint("http://books.example.com"));
            check.fails("query", () -> Recommender.endpoint("https://books.example.com/?key=1"));
            check.fails("fragment", () -> Recommender.endpoint("https://books.example.com/#x"));
            check.fails("user info", () -> Recommender.endpoint("https://me:pw@books.example.com"));
            check.fails("no host", () -> Recommender.endpoint("https:///v1"));
            check.fails("empty", () -> Recommender.endpoint(""));
            check.fails("junk", () -> Recommender.endpoint("not a url"));
        });

        check.run("prompt", () -> {
            check.same("trimmed", "cozy mysteries", Recommender.prompt("  cozy mysteries \n"));
            check.fails("empty", () -> Recommender.prompt("   "));
            check.same("1200 code points", 1200, Recommender.prompt(repeat("\uD83D\uDCDA", 1200)).codePointCount(0, 2400));
            check.fails("1201 code points", "1200", () -> Recommender.prompt(repeat("a", 1201)));
            check.fails("1201 astral code points", "1200", () -> Recommender.prompt(repeat("\uD83D\uDCDA", 1201)));
        });

        check.run("books", () -> {
            List<Book> books = Recommender.books("{\"books\":["
                + "{\"isbn\":\"" + DUNE + "\",\"title\":\"Dune\",\"author\":\"Frank Herbert\"},"
                + "{\"isbn\":\"978-0-547-92822-7\",\"title\":\"The Hobbit\",\"author\":\"J. R. R. Tolkien\",\"extra\":1},"
                + "{\"isbn\":\"" + DUNE + "\",\"title\":\"Dune again\",\"author\":\"x\"},"
                + "{\"isbn\":\"9780441172718\",\"title\":\"Bad check digit\",\"author\":\"x\"},"
                + "{\"isbn\":\"" + HOBBIT + "\",\"title\":\"  \",\"author\":\"No title\"},"
                + "{\"title\":\"No ISBN\",\"author\":\"x\"},"
                + "\"not an object\", null,"
                + "{\"isbn\":\"9780000000002\",\"title\":\"No author\"}"
                + "],\"model\":\"ignored\"}");
            check.same("kept", 3, books.size());
            check.same("first", "Dune", books.get(0).title);
            check.same("author", "Frank Herbert", books.get(0).author);
            check.same("hyphens dropped", HOBBIT, books.get(1).isbn);
            check.same("no author is blank", "", books.get(2).author);
            check.same("empty", 0, Recommender.books("{\"books\":[]}").size());
            check.same("white space around", 0, Recommender.books("\n {\"books\":[]} \n").size());
            check.fails("no books", "unreadable", () -> Recommender.books("{}"));
            check.fails("books not a list", "unreadable", () -> Recommender.books("{\"books\":{}}"));
            check.fails("html", "unreadable", () -> Recommender.books("<html>"));
            check.fails("empty body", "unreadable", () -> Recommender.books(""));
            StringBuilder many = new StringBuilder("{\"books\":[");
            for (int i = 0; i < 80; i++) {
                String twelve = "978000" + String.format("%06d", i);
                if (i > 0) many.append(',');
                many.append("{\"isbn\":\"").append(twelve).append(Book.checkDigit(twelve))
                    .append("\",\"title\":\"T").append(i).append("\",\"author\":\"A\"}");
            }
            check.same("capped", Recommender.MAX_BOOKS, Recommender.books(many.append("]}").toString()).size());
        });

        check.run("failures", () -> {
            check.same("busy code", Recommender.Failure.Kind.BUSY, kind(500, "{\"error\":\"busy\"}"));
            check.same("429", Recommender.Failure.Kind.BUSY, kind(429, ""));
            check.same("503", Recommender.Failure.Kind.UNAVAILABLE, kind(503, "{\"error\":\"service_unavailable\"}"));
            check.same("502 from a proxy", Recommender.Failure.Kind.UNAVAILABLE, kind(502, "<html>bad gateway</html>"));
            check.same("401", Recommender.Failure.Kind.UNAUTHORIZED, kind(401, "{\"error\":\"unauthorized\"}"));
            check.same("400", Recommender.Failure.Kind.REJECTED, kind(400, "{\"error\":\"invalid_request\"}"));
            check.same("404", Recommender.Failure.Kind.ADDRESS, kind(404, "{\"error\":\"not_found\"}"));
            check.same("405", Recommender.Failure.Kind.ADDRESS, kind(405, "{\"error\":\"method_not_allowed\"}"));
            check.same("415", Recommender.Failure.Kind.ADDRESS, kind(415, "{\"error\":\"unsupported_media_type\"}"));
            check.same("redirect", Recommender.Failure.Kind.ADDRESS, kind(302, ""));
            check.same("500", Recommender.Failure.Kind.UNAVAILABLE, kind(500, ""));
            check.ok("busy may be retried", Recommender.failure(new Recommender.Reply(429, "")).retryable());
            check.ok("a bad token may not", !Recommender.failure(new Recommender.Reply(401, "")).retryable());
            check.ok("no body in the message",
                !Recommender.failure(new Recommender.Reply(500, "{\"error\":\"secret-detail\"}")).getMessage().contains("secret"));
        });

        check.run("over the wire", () -> {
            final AtomicReference<TestServer.Request> got = new AtomicReference<TestServer.Request>();
            try (TestServer server = new TestServer(request -> {
                got.set(request);
                String prompt = Json.text(Json.object(Json.parse(request.body)), "prompt");
                if (prompt.equals("busy")) return TestServer.Reply.of(429, "application/json", "{\"error\":\"busy\"}");
                if (prompt.equals("no")) return TestServer.Reply.json("{\"books\":[]}");
                if (prompt.equals("down")) return TestServer.Reply.of(503, "application/json", "{\"error\":\"service_unavailable\"}");
                return TestServer.Reply.json("{\"books\":[{\"isbn\":\"" + DUNE + "\",\"title\":\"Dune\",\"author\":\"Frank Herbert\"}]}");
            })) {
                String base = server.uri("/").toString();
                Recommender open = new Recommender(base, null, Recommender.NETWORK);
                List<Book> books = open.recommend("  books like Dune  ");
                check.same("one book", 1, books.size());
                check.same("its title", "Dune", books.get(0).title);
                check.same("POST", "POST", got.get().method);
                check.same("path", "/v1/recommendations", got.get().path);
                check.same("body", "{\"prompt\":\"books like Dune\"}", got.get().body);
                check.ok("json", got.get().header("Content-Type").startsWith("application/json"));
                check.same("no token, no Authorization", "", got.get().header("Authorization"));
                check.same("empty answer", 0, open.recommend("no").size());

                Recommender secured = new Recommender(base + "v1/recommendations", " sekrit-token ", Recommender.NETWORK);
                secured.recommend("books like Dune");
                check.same("bearer", "Bearer sekrit-token", got.get().header("Authorization"));
                check.same("endpoint not doubled", "/v1/recommendations", got.get().path);

                check.fails("busy", "busy", () -> open.recommend("busy"));
                check.fails("down", "unavailable", () -> open.recommend("down"));
                int before = server.seen.size();
                check.fails("empty prompt never sent", () -> open.recommend(" "));
                check.same("nothing sent", before, server.seen.size());
            }
            Recommender nowhere = new Recommender("http://127.0.0.1:1", null, Recommender.NETWORK);
            try {
                nowhere.recommend("anything");
                check.ok("refused connection fails", false);
            } catch (Recommender.Failure e) {
                check.same("network failure", Recommender.Failure.Kind.NETWORK, e.kind);
            }
        });

        check.run("sample", () -> {
            Recommender sample = new Recommender("https://sample.invalid", null, new Sample(0));
            check.same("six", 6, sample.recommend("cozy mysteries").size());
            check.same("asked for twelve", 12, sample.recommend("12 books like Dune").size());
            check.same("asked for twenty", 20, sample.recommend("20 space operas").size());
            check.same("nothing", 0, sample.recommend("nothing at all").size());
            check.same("busy", Recommender.Failure.Kind.BUSY, failed(sample, "busy"));
            check.same("down", Recommender.Failure.Kind.UNAVAILABLE, failed(sample, "down"));
            check.same("token", Recommender.Failure.Kind.UNAUTHORIZED, failed(sample, "bad token"));
            check.same("garbled", Recommender.Failure.Kind.UNREADABLE, failed(sample, "garbled"));
        });

        check.run("kept search", () -> {
            List<Book> books = new ArrayList<Book>();
            books.add(new Book(DUNE, "Dune", "Frank Herbert"));
            books.add(new Book(HOBBIT, "The Hobbit", ""));
            Search back = Search.parse(new Search("sand and spice", books).toJson());
            check.same("prompt", "sand and spice", back.prompt);
            check.same("books", 2, back.books.size());
            check.same("author", "Frank Herbert", back.books.get(0).author);
            check.same("blank author", "", back.books.get(1).author);
            check.same("no books", 0, Search.parse(new Search("nothing", new ArrayList<Book>()).toJson()).books.size());
            check.same("junk", null, Search.parse("{nope"));
            check.same("no prompt", null, Search.parse("{\"books\":[]}"));
            check.same("missing", null, Search.parse(null));
        });

        if (!check.report()) System.exit(1);
    }

    static Recommender.Failure.Kind kind(int status, String body) {
        return Recommender.failure(new Recommender.Reply(status, body)).kind;
    }

    static Recommender.Failure.Kind failed(Recommender recommender, String prompt) {
        try {
            recommender.recommend(prompt);
            return null;
        } catch (Recommender.Failure e) {
            return e.kind;
        } catch (Exception e) {
            return null;
        }
    }

    static String repeat(String value, int times) {
        StringBuilder out = new StringBuilder();
        for (int i = 0; i < times; i++) out.append(value);
        return out.toString();
    }
}
