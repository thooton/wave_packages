package com.bookrecs.xp3;

import com.xp3.common.Json;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Made-up answers in the service's own format, for screenshots and the
 * emulator, where there is no service to ask (`am start -e sample 1`).
 * Every title, author and ISBN here is invented.
 *
 * The prompt picks the answer: "busy", "down", "token", "garbled" and
 * "nothing" get the service's failures and its empty list; a number from 1
 * to 20 ("12 books like...") gets that many books; anything else gets six.
 */
public final class Sample implements Recommender.Transport {

    static final String[][] BOOKS = {
        {"The Lantern Orchard", "Mara Ellison"},
        {"Salt and Signal", "Theo Varga"},
        {"A Map of Quiet Rooms", "June Okafor"},
        {"The Glass Archivist", "Ilse Moreau"},
        {"Winter at Halloway Station", "Desmond Reyes"},
        {"Letters from the Tidewater", "Priya Nandakumar"},
        {"The Clockmaker's Second Daughter", "Hana Lindqvist"},
        {"Under a Borrowed Moon", "Felix Aranda"},
        {"The Cartographer of Small Things", "Odile Brennan"},
        {"Nine Bells for Marrow Hill", "Caspian Hale"},
        {"What the River Kept", "Amara Sutton"},
        {"The Paper Lighthouse", "Rowan Achterberg"},
        {"A Season of Copper Leaves", "Leila Haddad"},
        {"The Last Ferry to Ostend", "Bram Kowalczyk"},
        {"House of Patient Clocks", "Tamsin Rhee"},
        {"The Beekeeper's Almanac", "Silas Morrow"},
        {"Echoes in the Salt Marsh", "Noor Castellanos"},
        {"The Midnight Bindery", "Esme Thackeray"},
        {"A Small Rebellion of Stars", "Kofi Mensah-Lund"},
        {"The Orchard Beyond the Wall", "Greta Vasquez-Hill"},
    };

    private static final Pattern COUNT = Pattern.compile("\\b([1-9]|1[0-9]|20)\\b");

    private final long delayMs;

    public Sample(long delayMs) {
        this.delayMs = delayMs;
    }

    @Override
    public Recommender.Reply post(URI uri, Map<String, String> headers, String body, int timeoutMs) throws InterruptedException {
        if (delayMs > 0) Thread.sleep(delayMs);
        String prompt = Json.text(Json.object(Json.parse(body)), "prompt").toLowerCase(Locale.US);
        if (prompt.contains("busy")) return new Recommender.Reply(429, "{\"error\":\"busy\"}");
        if (prompt.contains("down")) return new Recommender.Reply(503, "{\"error\":\"service_unavailable\"}");
        if (prompt.contains("token")) return new Recommender.Reply(401, "{\"error\":\"unauthorized\"}");
        if (prompt.contains("garbled")) return new Recommender.Reply(200, "<html>");
        if (prompt.contains("nothing")) return new Recommender.Reply(200, "{\"books\":[]}");
        Matcher count = COUNT.matcher(prompt);
        int wanted = count.find() ? Integer.parseInt(count.group(1)) : 6;
        List<Object> books = new ArrayList<Object>();
        for (int i = 0; i < wanted; i++) {
            books.add(Json.map("isbn", isbn(i), "title", BOOKS[i][0], "author", BOOKS[i][1]));
        }
        return new Recommender.Reply(200, Json.write(Json.map("books", books)));
    }

    /** An invented ISBN-13 with a correct check digit. */
    static String isbn(int i) {
        String twelve = "979800" + String.format(Locale.US, "%06d", 104729 * (i + 1) % 1000000);
        return twelve + Book.checkDigit(twelve);
    }
}
