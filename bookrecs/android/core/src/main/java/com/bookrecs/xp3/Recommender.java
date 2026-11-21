package com.bookrecs.xp3;

import com.xp3.common.Http;
import com.xp3.common.Json;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * The book recommendation service (services/book-recommender in
 * thooton/wave): one POST of the prompt, answered with books.
 *
 * <pre>
 * POST {server}/v1/recommendations   {"prompt": "..."}
 * 200 {"books": [{"isbn": "978...", "title": "...", "author": "..."}]}
 * 4xx/5xx {"error": "invalid_request" | "unauthorized" | "busy" | "service_unavailable" | ...}
 * </pre>
 *
 * The service holds the OpenRouter key and searches the ISBN database; the
 * phone only ever has the service's address and, when the service asks for
 * one, its own bearer token. An empty list is an answer, not a failure: it is
 * what a request that can't be met, or isn't a request for books, gets.
 */
public final class Recommender {

    /** The service's own limit on a prompt, in Unicode code points. */
    public static final int MAX_PROMPT = 1200;
    /** The service answers with at most 20; more than this is not a list to scroll on a flip phone. */
    static final int MAX_BOOKS = 50;
    static final String PATH = "/v1/recommendations";
    /** The service gives up after 45 s; a cold request can take most of that. */
    static final int TIMEOUT_MS = 90000;

    /** How a request reaches the service: the network, or the sample mode's made-up answers. */
    public interface Transport {
        Reply post(URI uri, Map<String, String> headers, String body, int timeoutMs) throws IOException, InterruptedException;
    }

    /** A status and a body. */
    public static final class Reply {
        public final int status;
        public final String body;

        public Reply(int status, String body) {
            this.status = status;
            this.body = body == null ? "" : body;
        }
    }

    /** What went wrong, phrased for the screen. Never quotes the response or the token. */
    public static final class Failure extends IOException {
        public enum Kind { NETWORK, BUSY, UNAVAILABLE, REJECTED, UNAUTHORIZED, ADDRESS, UNREADABLE }

        public final Kind kind;

        public Failure(Kind kind, String message) {
            super(message);
            this.kind = kind;
        }

        /** Whether trying the same request again may work. */
        public boolean retryable() {
            return kind == Kind.NETWORK || kind == Kind.BUSY || kind == Kind.UNAVAILABLE || kind == Kind.UNREADABLE;
        }
    }

    /** The real network, through common's Http: bounded body, no redirects, fixed deadlines. */
    public static final Transport NETWORK = (uri, headers, body, timeoutMs) -> {
        Http.Request request = Http.Request.to(uri).post(body).timeout(timeoutMs);
        for (Map.Entry<String, String> header : headers.entrySet()) request.header(header.getKey(), header.getValue());
        Http.Response response = new Http().send(request);
        return new Reply(response.status(), response.body());
    };

    private final URI endpoint;
    private final String token;
    private final Transport transport;

    /**
     * `server` is the service's https address, with or without a path, or its
     * full /v1/recommendations endpoint. `token` may be null or empty.
     */
    public Recommender(String server, String token, Transport transport) {
        this.endpoint = endpoint(server);
        this.token = token == null || token.trim().length() == 0 ? null : token.trim();
        this.transport = transport;
    }

    public URI endpoint() {
        return endpoint;
    }

    /**
     * The endpoint for a server address: https only (plain http only to this
     * machine, for the tests), no query or fragment, and /v1/recommendations
     * appended once unless the address already ends with it.
     */
    static URI endpoint(String server) {
        String value = server == null ? "" : server.trim();
        URI uri;
        try {
            uri = new URI(value);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("The service address doesn't look right");
        }
        String scheme = uri.getScheme() == null ? "" : uri.getScheme().toLowerCase(Locale.US);
        String host = uri.getHost();
        if (host == null || uri.getRawUserInfo() != null || uri.getRawQuery() != null || uri.getRawFragment() != null) {
            throw new IllegalArgumentException("The service address doesn't look right");
        }
        boolean local = host.equals("127.0.0.1") || host.equalsIgnoreCase("localhost");
        if (!scheme.equals("https") && !(scheme.equals("http") && local)) {
            throw new IllegalArgumentException("The service address must start with https://");
        }
        String path = uri.getRawPath() == null ? "" : uri.getRawPath();
        while (path.endsWith("/")) path = path.substring(0, path.length() - 1);
        if (!path.endsWith(PATH)) path += PATH;
        try {
            return new URI(scheme + "://" + uri.getRawAuthority() + path);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("The service address doesn't look right");
        }
    }

    /** The prompt as sent: trimmed. Throws IllegalArgumentException when it is empty or too long. */
    public static String prompt(String typed) {
        String value = typed == null ? "" : typed.trim();
        if (value.length() == 0) throw new IllegalArgumentException("Nothing to ask for");
        if (value.codePointCount(0, value.length()) > MAX_PROMPT) {
            throw new IllegalArgumentException("That is longer than " + MAX_PROMPT + " characters");
        }
        return value;
    }

    /** The books the service recommends for `typed`; empty when it has none, or won't answer it. */
    public List<Book> recommend(String typed) throws IOException, InterruptedException {
        String prompt = prompt(typed);
        Map<String, String> headers = new java.util.LinkedHashMap<String, String>();
        headers.put("Content-Type", "application/json; charset=utf-8");
        headers.put("Accept", "application/json");
        if (token != null) headers.put("Authorization", "Bearer " + token);
        Reply reply;
        try {
            reply = transport.post(endpoint, headers, Json.write(Json.map("prompt", prompt)), TIMEOUT_MS);
        } catch (Failure e) {
            throw e;
        } catch (IOException e) {
            String message = e.getMessage();
            throw new Failure(Failure.Kind.NETWORK, message == null || message.length() == 0 ? "Could not reach the service." : message);
        }
        if (reply.status == 200) return books(reply.body);
        throw failure(reply);
    }

    /** The books in a 200 answer. */
    static List<Book> books(String body) throws Failure {
        List<Object> items;
        try {
            Map<String, Object> root = Json.object(Json.parse(body.trim()));
            Object found = root.get("books");
            if (!(found instanceof List)) throw new IllegalArgumentException("no books");
            items = Json.array(found);
        } catch (RuntimeException e) {
            throw new Failure(Failure.Kind.UNREADABLE, "The service's answer was unreadable.");
        }
        List<Book> out = new ArrayList<Book>();
        Set<String> seen = new LinkedHashSet<String>();
        for (Object item : items) {
            Book book = Book.from(item);
            if (book == null || !seen.add(book.isbn)) continue;
            out.add(book);
            if (out.size() == MAX_BOOKS) break;
        }
        return out;
    }

    /** A non-200 answer as a failure: by the service's error code when it gives a known one, else by status. */
    static Failure failure(Reply reply) {
        String code = null;
        try {
            code = Json.text(Json.object(Json.parse(reply.body.trim())), "error");
        } catch (RuntimeException ignored) {
            // A proxy's HTML page, or nothing: the status alone says what happened.
        }
        int status = reply.status;
        if ("busy".equals(code) || status == 429) {
            return new Failure(Failure.Kind.BUSY, "The service is busy.");
        }
        if ("service_unavailable".equals(code) || status == 502 || status == 503 || status == 504) {
            return new Failure(Failure.Kind.UNAVAILABLE, "The service is unavailable.");
        }
        if ("unauthorized".equals(code) || status == 401 || status == 403) {
            return new Failure(Failure.Kind.UNAUTHORIZED, "The service didn't accept this phone's token.");
        }
        if ("invalid_request".equals(code) || status == 400 || status == 413) {
            return new Failure(Failure.Kind.REJECTED, "The service couldn't take that request.");
        }
        if (status == 404 || status == 405 || status == 415 || "not_found".equals(code)
            || "method_not_allowed".equals(code) || "unsupported_media_type".equals(code)) {
            return new Failure(Failure.Kind.ADDRESS, "There is no book service at that address.");
        }
        if (status >= 300 && status < 400) {
            return new Failure(Failure.Kind.ADDRESS, "The service address redirects elsewhere.");
        }
        return new Failure(Failure.Kind.UNAVAILABLE, "The service failed (HTTP " + status + ").");
    }
}
