package com.goodreads.xp3;

import com.goodreads.xp3.books.Api;
import com.goodreads.xp3.books.Book;
import com.goodreads.xp3.books.Detail;
import com.goodreads.xp3.books.Genre;
import com.goodreads.xp3.books.Pages;
import com.goodreads.xp3.books.Review;
import com.goodreads.xp3.books.Section;
import com.goodreads.xp3.books.Shelf;
import com.goodreads.xp3.books.Source;
import com.goodreads.xp3.books.Text;
import com.xp3.common.Check;
import com.xp3.common.Disk;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class BooksTests {

    private BooksTests() {}

    static void run(Check check) {
        check.run("text", () -> text(check));
        check.run("pages", () -> pages(check));
        check.run("suggestions", () -> suggestions(check));
        check.run("api", () -> api(check));
        check.run("shelf", () -> shelf(check));
        check.run("sections", () -> sections(check));
    }

    private static void text(Check check) {
        check.same("entities", "Reap & Sow \u2014 \u201Cit\u2019s\u201D \u00E9", Text.entities("Reap &amp; Sow &mdash; &ldquo;it&#8217;s&rdquo; &#xe9;"));
        check.same("unknown entity kept", "&bogus; &#0;", Text.entities("&bogus; &#0;"));
        check.same("strip", "Winner of the prize.\n\nI was in a house & more.",
            Text.strip("**<i>Winner</i> of the <a href=\"x\">prize</a>.**<br><br>   I was in a  house &amp; more.<br/><br/><br/>").replace("**", ""));
        check.same("strip paragraphs", "One.\n\nTwo.", Text.strip("<p>One.</p>\r\n<p>Two.</p>"));
        check.same("markup ignores its own newlines", "From the podcast Call Her Daddy, offering a story.\n\nLong before.",
            Text.strip("<b>From the podcast <i>Call Her </i></b><b>\n  <i>Daddy</i>\n</b><b>, offering a story.</b><br /><br />Long before."));
        check.same("plain text keeps its lines", "One.\n\nTwo.", Text.strip("One.\r\n\r\nTwo."));
        check.same("line", "Harry Potter (Harry, #1)", Text.line("  Harry\n Potter&nbsp;(Harry, #1) "));
        check.same("cut", "The quick brown\u2026", Text.cut("The quick brown fox jumps", 18));
        check.same("cut short", "Short", Text.cut("Short", 18));
        check.same("count", "615,284", Text.count(615284));
        check.same("counted one", "1 rating", Text.counted(1, "rating", "ratings"));
        check.same("rating", "4.70", Text.rating(4.7));
        check.same("date", "September 15, 2020", Text.date(1600153200000L));
        check.same("cover bare", "https://m.media-amazon.com/images/S/b/books/1i/50202953._SY120_.jpg",
            Text.cover("https://m.media-amazon.com/images/S/b/books/1i/50202953.jpg", 120));
        check.same("cover resized", "https://i.gr-assets.com/images/S/b/books/1i/44232064._SY90_.jpg",
            Text.cover("https://i.gr-assets.com/images/S/b/books/1i/44232064._UX160_.jpg", 90));
        check.same("cover elsewhere", "https://example.com/a.jpg", Text.cover("https://example.com/a.jpg", 90));
        check.same("no photo", "", Text.cover("https://i.gr-assets.com/assets/nophoto/book/111x148.png", 90));
    }

    static final String GENRE_PAGE = "<html><body><h1 class='gr-h1 gr-h1--serif'> Fantasy New Releases </h1>"
        + "<ul class='mobileGenreBookList'>"
        + "<li class='bookItem padded' id='book_44232064' itemscope itemtype='https://schema.org/Book' rel='44232064'>"
        + "<cite hidden itemprop='name'> Victorious </cite>"
        + "<span hidden itemprop='author' itemscope itemtype='https://schema.org/Person'> <cite itemprop='name'>V.E. Schwab</cite> </span>"
        + "<div class='bookCover'><a href=\"/book/show/44232064-victorious\"><img alt=\"Victorious (Villains, #3)\" class=\"bookCoverImage\""
        + " src=\"https://i.gr-assets.com/images/S/c/books/1i/44232064._UX160_.jpg\" /></a></div>"
        + "<div class='wtrButton jsWTR'><button class='areaPrimary'><span class='txt'>Want to Read</span></button></div></li>"
        + "<li class='bookItem padded' id='book_242464658' rel='242464658'><cite hidden itemprop='name'> Reap &amp; Sow </cite>"
        + "<span hidden itemprop='author'><cite itemprop='name'>Charlotte B. Plumb</cite></span>"
        + "<a href=\"/book/show/242464658-reap-sow\"><img alt=\"Reap &amp; Sow\" src=\"https://i.gr-assets.com/x/242464658._UY240_.jpg\" /></a></li>"
        + "<li class='bookItem padded' rel='44232064'><cite itemprop='name'>Victorious again</cite></li>"
        + "</ul></body></html>";

    static final String TABLE_PAGE = "<table class=\"tableList\"><tr itemscope itemtype=\"http://schema.org/Book\">"
        + "<td class=\"number\">1</td><td><a title=\"A Court\" href=\"/book/show/31050358-a-court\">"
        + "<img alt=\"A Court of Splintered Harmo...\" class=\"bookCover\" itemprop=\"image\" src=\"https://i.gr-assets.com/x/31050358._SY75_.jpg\" /></a></td>"
        + "<td><a class=\"bookTitle\" itemprop=\"url\" href=\"/book/show/31050358-a-court\">"
        + "<span itemprop='name' role='heading' aria-level='4'>A Court of Splintered Harmony (A Court of Thorns and Roses, #6)</span></a>"
        + "<span itemprop='author'><div class='authorName__container'><a class=\"authorName\" itemprop=\"url\" href=\"/author/show/1\">"
        + "<span itemprop=\"name\">Sarah J. Maas</span></a></div></span>"
        + "<span class=\"minirating\"><span class=\"stars\"></span> 3.79 avg rating &mdash; 402,989 ratings</span> &mdash; published 2026"
        + "<span class=\"greyText statistic\">\n <br/>\n\n 30,075\n    people read it\n </span></td></tr>"
        + "<tr itemscope itemtype=\"http://schema.org/Book\"><td><a class=\"bookTitle\" href=\"/book/show/7-x\">"
        + "<span itemprop='name'>Seven</span></a> 4 avg rating &mdash; 1 rating</td></tr></table>";

    private static void pages(Check check) {
        List<Book> books = Pages.books(GENRE_PAGE);
        check.same("genre count", 2, books.size());
        check.same("genre id", 44232064L, books.get(0).id);
        check.same("genre title from alt", "Victorious (Villains, #3)", books.get(0).title);
        check.same("genre author", "V.E. Schwab", books.get(0).author);
        check.same("genre cover", "https://i.gr-assets.com/images/S/c/books/1i/44232064._UX160_.jpg", books.get(0).cover);
        check.same("genre entities", "Reap & Sow", books.get(1).title);
        check.same("genre no rating", 0.0, books.get(1).rating);

        List<Book> rows = Pages.books(TABLE_PAGE);
        check.same("table count", 2, rows.size());
        Book court = rows.get(0);
        check.same("table id", 31050358L, court.id);
        check.same("table title", "A Court of Splintered Harmony (A Court of Thorns and Roses, #6)", court.title);
        check.same("table author", "Sarah J. Maas", court.author);
        check.close("table rating", 3.79, court.rating, 1e-9);
        check.same("table ratings", 402989L, court.ratings);
        check.same("table readers", "30,075 people read it", court.note);
        check.same("one rating", 1L, rows.get(1).ratings);
        check.same("nothing", 0, Pages.books("<html><li class='other'>x</li></html>").size());
    }

    private static void suggestions(Check check) {
        List<Book> books = Pages.suggestions("[{\"imageUrl\":\"https://i.gr-assets.com/x/50202953._SY75_.jpg\",\"bookId\":\"50202953\","
            + "\"title\":\"Piranesi\",\"numPages\":245,\"avgRating\":\"4.19\",\"ratingsCount\":615284,"
            + "\"author\":{\"id\":8842,\"name\":\"Susanna Clarke\"}},{\"bookId\":\"x\",\"title\":\"Bad\"},{\"bookId\":\"9\",\"title\":\"\"}]");
        check.same("suggestion count", 1, books.size());
        check.same("suggestion id", 50202953L, books.get(0).id);
        check.same("suggestion author", "Susanna Clarke", books.get(0).author);
        check.close("suggestion rating", 4.19, books.get(0).rating, 1e-9);
        check.same("suggestion ratings", 615284L, books.get(0).ratings);
        check.fails("not json", () -> Pages.suggestions("<html>"));
    }

    /** A transport answering from a script of replies, keeping what it was asked. */
    static final class Script implements Api.Transport {
        final List<Api.Reply> replies = new ArrayList<Api.Reply>();
        final List<String> asked = new ArrayList<String>();
        final List<String> keys = new ArrayList<String>();
        final List<String> bodies = new ArrayList<String>();

        Script then(int status, String body) {
            replies.add(new Api.Reply(status, body));
            return this;
        }

        @Override
        public Api.Reply send(String url, String body, String key) throws IOException {
            asked.add(url);
            keys.add(key);
            bodies.add(body);
            if (replies.isEmpty()) throw new IOException("Nothing scripted");
            return replies.remove(0);
        }
    }

    static final String KEY_PAGE = "<script id=\"__NEXT_DATA__\" type=\"application/json\">{\"props\":{\"pageProps\":"
        + "{\"dataSource\":\"Production\",\"apiKey\":\"da2-fresh0key\"}}}</script>";

    static final String BOOK_ANSWER = "{\"data\":{\"getBookByLegacyId\":{\"id\":\"kca://book/b1\",\"legacyId\":50202953,"
        + "\"title\":\"Piranesi\",\"titleComplete\":\"Piranesi\",\"imageUrl\":\"https://m.media-amazon.com/images/S/x/50202953.jpg\","
        + "\"description\":\"<i>Alternate cover edition of ISBN <a href=\\\"x\\\">9781635575637</a>.</i><br /><br />"
        + "Piranesi\\u2019s house is no ordinary building.<br /><br />There is one other person.\","
        + "\"primaryContributorEdge\":{\"node\":{\"name\":\"Susanna Clarke\"}},"
        + "\"bookSeries\":[{\"userPosition\":\"1\",\"series\":{\"title\":\"House\"}}],"
        + "\"bookGenres\":[{\"genre\":{\"name\":\"Fantasy\"}},{\"genre\":{\"name\":\"Fiction\"}},{\"genre\":{\"name\":\"Fantasy\"}}],"
        + "\"details\":{\"numPages\":245,\"publicationTime\":1.7E12,\"publisher\":\"Bloomsbury\",\"format\":\"Hardcover\"},"
        + "\"work\":{\"id\":\"kca://work/w1\",\"details\":{\"publicationTime\":1.6001532E12},"
        + "\"stats\":{\"averageRating\":4.19,\"ratingsCount\":615284,\"textReviewsCount\":98404,"
        + "\"ratingsCountDist\":[6408,21258,89000,235457,263161]}}}}}";

    private static void api(Check check) throws Exception {
        List<String> kept = new ArrayList<String>();
        Script script = new Script()
            .then(401, "{\"errors\":[{\"errorType\":\"UnauthorizedException\"}]}")
            .then(200, KEY_PAGE)
            .then(200, BOOK_ANSWER);
        Api api = new Api(script, "da2-stale", kept::add);
        Detail detail = api.book(50202953);
        check.same("stale key first", "da2-stale", script.keys.get(0));
        check.same("key page", Api.KEY_PAGE, script.asked.get(1));
        check.same("fresh key used", "da2-fresh0key", script.keys.get(2));
        check.same("fresh key kept", Arrays.asList("da2-fresh0key"), kept);
        check.ok("asks by number", script.bodies.get(2).contains("\"id\":50202953"));
        check.same("title", "Piranesi", detail.book.title);
        check.same("author", "Susanna Clarke", detail.book.author);
        check.close("rating", 4.19, detail.book.rating, 1e-9);
        check.same("ratings", 615284L, detail.book.ratings);
        check.same("reviews", 98404L, detail.reviews);
        check.same("series", "House #1", detail.series);
        check.same("genres deduplicated", Arrays.asList("Fantasy", "Fiction"), detail.genres);
        check.same("description", "Piranesi\u2019s house is no ordinary building.\n\nThere is one other person.", detail.description);
        check.same("first published", 1600153200000L, detail.published);
        check.same("edition", "245 pages, Hardcover", detail.edition());
        check.same("work", "kca://work/w1", detail.workUri);
        check.same("book uri", "kca://book/b1", detail.bookUri);
        check.same("five star", 263161L, detail.stars[4]);

        Script missing = new Script().then(200, "{\"data\":{\"getBookByLegacyId\":null},\"errors\":[{\"errorType\":\"RESOURCE_NOT_FOUND\"}]}");
        check.fails("no such book", "no such book", () -> new Api(missing, "da2-k", null).book(1));

        Script refusedTwice = new Script().then(401, "").then(200, KEY_PAGE).then(401, "");
        check.fails("refused twice", "key", () -> new Api(refusedTwice, "da2-k", null).book(1));

        Script turnedAway = new Script().then(202, "");
        check.fails("bot check", Api.TURNED_AWAY, () -> new Api(turnedAway, null, null).book(1));

        Script noKey = new Script().then(200, "<html>no data</html>");
        check.fails("page without key", "changed", () -> new Api(noKey, null, null).genres());

        Script top = new Script().then(200, "{\"data\":{\"getTopList\":{\"pageInfo\":{\"hasNextPage\":true,\"nextPageToken\":\"7B22\"},"
            + "\"edges\":[{\"rank\":1,\"node\":{\"legacyId\":251612960,\"title\":\"Peculiar Stars\",\"imageUrl\":\"https://m.media-amazon.com/x/1.jpg\","
            + "\"primaryContributorEdge\":{\"node\":{\"name\":\"Rebecca Yarros\"}},\"work\":{\"stats\":{\"averageRating\":4.7,\"ratingsCount\":26233}}}},"
            + "{\"rank\":2,\"node\":{\"legacyId\":null,\"title\":\"Nobody\"}}]}}}");
        Api.Page<Book> page = new Api(top, "da2-k", null).top(Api.monthList(2026, 11), null, 15);
        check.ok("top list name", top.bodies.get(0).contains("\"name\":\"books-by-release-date-2026-11\""));
        check.same("top count", 1, page.items.size());
        check.same("top rank", "#1", page.items.get(0).note);
        check.same("top author", "Rebecca Yarros", page.items.get(0).author);
        check.same("top next", "7B22", page.next);

        Script genres = new Script().then(200, "{\"data\":{\"getBasicGenres\":{\"genres\":[{\"name\":\"Children's\","
            + "\"webUrl\":\"https://www.goodreads.com/genres/children-s\"},{\"name\":\"Odd\",\"webUrl\":\"https://example.com/x\"}]}}}");
        List<Genre> found = new Api(genres, "da2-k", null).genres();
        check.same("genres", 1, found.size());
        check.same("genre slug", "children-s", found.get(0).slug);
        check.same("genre page", "https://www.goodreads.com/genres/most_read/children-s", found.get(0).mostRead());

        Script reviews = new Script().then(200, "{\"data\":{\"getReviews\":{\"totalCount\":98130,"
            + "\"pageInfo\":{\"hasNextPage\":null,\"nextPageToken\":\"NjAw\"},\"edges\":[{\"node\":{\"rating\":4,"
            + "\"text\":\"<i>Loved</i> it.<br><br>Really.\",\"spoilerStatus\":false,\"likeCount\":12,\"createdAt\":1.6E12,"
            + "\"creator\":{\"name\":\"Emily May\"}}},{\"node\":{\"rating\":null,\"text\":\"Hmm\",\"spoilerStatus\":true,\"creator\":{}}}]}}}");
        Api.Page<Review> some = new Api(reviews, "da2-k", null).reviews("kca://work/w1", null, 5);
        check.same("review count", 2, some.items.size());
        check.same("review total", 98130L, some.total);
        check.same("review token without hasNextPage", "NjAw", some.next);
        check.same("review text", "Loved it.\n\nReally.", some.items.get(0).text);
        check.same("review stars", 4, some.items.get(0).stars);
        check.same("review reader", "Emily May", some.items.get(0).reader);
        check.same("unrated", 0, some.items.get(1).stars);
        check.same("anonymous", "A reader", some.items.get(1).reader);
        check.ok("spoilers", some.items.get(1).spoilers);

        Script search = new Script().then(200, "[{\"bookId\":\"1\",\"title\":\"Dune\",\"author\":{\"name\":\"Frank Herbert\"}}]");
        List<Book> results = new Api(search, null, null).search("dune & co");
        check.same("search address", Api.SITE + "/book/auto_complete?format=json&q=dune+%26+co", search.asked.get(0));
        check.same("search result", "Dune", results.get(0).title);
        check.same("search needs no key", null, search.keys.get(0));
    }

    private static void shelf(Check check) throws Exception {
        File folder = Files.createTempDirectory("shelf").toFile();
        File file = new File(folder, "shelf.json");
        Shelf shelf = new Shelf(file);
        check.same("empty", 0, shelf.books().size());
        shelf.add(new Book(1, "One", "A", "", 4, 10, "#1"));
        shelf.add(new Book(2, "Two", "B", "", 0, 0, ""));
        shelf.add(new Book(1, "One", "A", "", 4, 10, ""));
        List<Book> books = new Shelf(file).books();
        check.same("kept, newest first", 1L, books.get(0).id);
        check.same("no duplicates", 2, books.size());
        check.same("list note dropped", "", books.get(0).note);
        check.ok("contains", shelf.contains(2));
        shelf.remove(2);
        check.ok("removed", !new Shelf(file).contains(2));
        Disk.write(file, "{broken", false);
        check.same("broken file is empty", 0, new Shelf(file).books().size());
    }

    private static void sections(Check check) {
        Genre fantasy = new Genre("Fantasy", "fantasy");
        List<Section> sections = Arrays.asList(
            new Section("Popular this month", Arrays.asList(new Book(5, "Five", "F", "", 4.5, 3, "#1")), Source.top("November", "books-by-release-date-2026-11")),
            new Section("Genre", new ArrayList<Book>(), Source.genre(fantasy)));
        List<Section> back = Section.read(Section.write(sections));
        check.same("sections", 2, back.size());
        check.same("book back", "Five", back.get(0).books.get(0).title);
        check.same("note back", "#1", back.get(0).books.get(0).note);
        check.same("more back", "books-by-release-date-2026-11", back.get(0).more.target);
        check.same("genre back", "fantasy", back.get(1).more.genre().slug);
        check.same("broken", 0, Section.read("[{]").size());
        check.fails("page off the site", () -> Source.page("x", "https://example.com/"));
    }
}
