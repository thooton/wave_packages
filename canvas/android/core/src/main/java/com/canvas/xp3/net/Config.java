package com.canvas.xp3.net;

import com.xp3.common.Json;
import java.net.URI;
import java.time.ZoneId;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Everything the app has been told about where to fetch from and who it is.
 *
 * It comes from the app's setup (common/ui's Setup, see {@link #of}): the
 * school's Canvas address with an access token or a cookie service, or a
 * Delta command center whose relay signs in for it. Versions before setup
 * files kept the cookie-service form in a settings document of their own;
 * {@link #parse} still reads that, once, to carry it over.
 */
public final class Config {

    /** Field names as the Settings screen addresses them. */
    public static final String CANVAS_URL = "canvas.baseUrl";
    public static final String COOKIE_URL = "canvas.cookieService.url";
    public static final String COOKIE_TOKEN = "canvas.cookieService.token";
    public static final String TIMEZONE = "timezone";

    private final URI canvasBase;
    private final URI cookieService;
    private final String cookieToken;
    private final String zone;
    private final String accessToken;
    /** The command center's relay ("<center>/canvas/"), or null. */
    private final URI relay;
    private final String deltaToken;

    private Config(URI canvasBase, URI cookieService, String cookieToken, String zone) {
        this(canvasBase, cookieService, cookieToken, zone, null, null, null);
    }

    private Config(URI canvasBase, URI cookieService, String cookieToken, String zone, String accessToken,
                   URI relay, String deltaToken) {
        this.canvasBase = canvasBase;
        this.cookieService = cookieService;
        this.cookieToken = cookieToken;
        this.zone = zone;
        this.accessToken = accessToken;
        this.relay = relay;
        this.deltaToken = deltaToken;
    }

    /**
     * The app's setup, checked against its descriptor already. Through a
     * command center the Canvas address is the relay's to say: `known` is
     * the one it said last time (or null), used for links and the settings.
     */
    public static Config of(com.xp3.common.Config setup, URI known) {
        if (setup == null) return blank();
        if (setup.isDelta()) {
            String server = setup.delta().server();
            return new Config(known, null, null, null, null,
                URI.create(server.replaceAll("/+$", "") + "/canvas/"), setup.delta().token());
        }
        String base = empty(setup.get("baseUrl"));
        String cookies = empty(setup.get("cookieUrl"));
        return new Config(base == null ? null : origin(base), cookies == null ? null : endpoint(cookies),
            empty(setup.get("cookieToken")), valid(empty(setup.get("timezone"))), empty(setup.get("accessToken")),
            null, null);
    }

    /** The same, with the Canvas address a command center's relay reported. */
    public Config learned(URI canvas) {
        return new Config(canvas, cookieService, cookieToken, zone, accessToken, relay, deltaToken);
    }

    private static String empty(String value) {
        return value == null || value.trim().length() == 0 ? null : value.trim();
    }

    private static String valid(String zone) {
        try {
            if (zone != null) ZoneId.of(zone);
            return zone;
        } catch (RuntimeException e) {
            return null;
        }
    }

    /** True when the setup is a command center's relay. */
    public boolean relayed() {
        return relay != null;
    }

    /** Where the Canvas API is asked: the school's Canvas, or the relay. */
    public URI apiBase() {
        return relay != null ? relay : canvasBase;
    }

    /** How the requests are signed in, as set up. */
    public Access access(com.xp3.common.Http http) {
        if (relay != null) return Access.delta(relay, deltaToken);
        if (accessToken != null) return Access.token(accessToken);
        return Access.cookies(new RemoteCookies(this, http));
    }

    /** Whether `other` reaches the same Canvas account's work (the same Canvas, or the same relay). */
    public boolean sameAccount(Config other) {
        if (other == null) return false;
        if (relay != null || other.relay != null) return relay != null && relay.equals(other.relay);
        return canvasBase != null && canvasBase.equals(other.canvasBase);
    }

    /** How it signs in, in a few words for the Account screen. */
    public String signIn() {
        if (relay != null) return "Command center at " + relay.getHost();
        if (accessToken != null) return "Access token";
        if (cookieService != null) return "Cookie service at " + cookieService.getHost();
        return "Not set up";
    }

    /**
     * The old settings document's values as the setup's direct settings, or
     * null when it had nothing to sign in with.
     */
    public Map<String, String> setupValues() {
        if (canvasBase == null || cookieService == null || cookieToken == null) return null;
        Map<String, String> out = new LinkedHashMap<String, String>();
        out.put("baseUrl", trimSlash(canvasBase.toString()));
        out.put("cookieUrl", cookieService.toString());
        out.put("cookieToken", cookieToken);
        if (zone != null) out.put("timezone", zone);
        return out;
    }

    public static Config blank() {
        return new Config(null, null, null, null);
    }

    public static Config parse(String json) {
        return from(Json.object(Json.parse(json)));
    }

    /**
     * Validates a settings tree into a Config, or throws with a sentence short
     * enough to be the whole of a dialog on a 240px screen.
     *
     * An absent or empty field is "not set". Only a field that is present and
     * malformed is an error, because the only thing that writes this document
     * is the Settings screen, which validates through here before saving.
     * Fields this version does not know, such as an older version's model
     * login, are ignored.
     */
    public static Config from(Map<String, Object> root) {
        Map<String, Object> canvas = Json.child(root, "canvas");
        Map<String, Object> service = Json.child(canvas, "cookieService");

        URI base = null;
        String baseUrl = value(canvas, "baseUrl");
        if (baseUrl != null) base = origin(baseUrl);

        URI cookies = null;
        String cookieUrl = value(service, "url");
        if (cookieUrl != null) cookies = endpoint(cookieUrl);

        String token = value(service, "token");
        if (token != null && !token.matches("[A-Za-z0-9_-]{32,128}")) {
            throw new IllegalArgumentException("The service token must be 32 to 128 letters, digits, - or _");
        }

        String zone = value(root, "timezone");
        if (zone != null) {
            try {
                ZoneId.of(zone);
            } catch (RuntimeException e) {
                throw new IllegalArgumentException("Not a time zone name, e.g. America/Phoenix");
            }
        }

        return new Config(base, cookies, token, zone);
    }

    private static String value(Map<String, Object> source, String key) {
        String found = Json.text(source, key);
        if (found == null) return null;
        String trimmed = found.trim();
        return trimmed.length() == 0 ? null : trimmed;
    }

    static URI origin(String value) {
        URI uri;
        try {
            uri = URI.create(value.trim());
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Not a web address, e.g. https://canvas.asu.edu");
        }
        if (!"https".equals(uri.getScheme()) || uri.getHost() == null || uri.getUserInfo() != null
            || uri.getQuery() != null || uri.getFragment() != null
            || !(uri.getPath() == null || uri.getPath().isEmpty() || uri.getPath().equals("/"))) {
            throw new IllegalArgumentException("Must be an https address with nothing after the host, e.g. https://canvas.asu.edu");
        }
        return URI.create(value.trim().replaceAll("/+$", "") + "/");
    }

    static URI endpoint(String value) {
        URI uri;
        try {
            uri = URI.create(value.trim());
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Not a web address");
        }
        if (!"https".equals(uri.getScheme()) || uri.getHost() == null || uri.getUserInfo() != null
            || uri.getQuery() != null || uri.getFragment() != null || !uri.normalize().equals(uri)
            || uri.getPath() == null || !uri.getPath().endsWith("/cookie")) {
            throw new IllegalArgumentException("Must be an https address ending in /cookie");
        }
        return uri;
    }

    /** The same settings tree, ready to be written back out as JSON. */
    public Map<String, Object> toMap() {
        Map<String, Object> service = new LinkedHashMap<String, Object>();
        put(service, "url", cookieService == null ? null : cookieService.toString());
        put(service, "token", cookieToken);

        Map<String, Object> canvas = new LinkedHashMap<String, Object>();
        put(canvas, "baseUrl", canvasBase == null ? null : trimSlash(canvasBase.toString()));
        if (!service.isEmpty()) canvas.put("cookieService", service);

        Map<String, Object> root = new LinkedHashMap<String, Object>();
        if (!canvas.isEmpty()) root.put("canvas", canvas);
        put(root, "timezone", zone);
        return root;
    }

    public String toJson() {
        return Json.write(toMap());
    }

    private static void put(Map<String, Object> into, String key, String value) {
        if (value != null) into.put(key, value);
    }

    private static String trimSlash(String value) {
        return value.endsWith("/") ? value.substring(0, value.length() - 1) : value;
    }

    /**
     * One field changed, validated, and returned as a new configuration.
     *
     * Editing goes through the settings tree rather than through setters
     * so that there is exactly one place that decides whether a value is
     * acceptable, and it is the same place that reads the file at startup.
     */
    public Config with(String field, String value) {
        Map<String, Object> root = toMap();
        String[] path = field.split("\\.");
        Map<String, Object> node = root;
        for (int i = 0; i < path.length - 1; i++) {
            Map<String, Object> next = Json.child(node, path[i]);
            node.put(path[i], next);
            node = next;
        }
        String last = path[path.length - 1];
        if (value == null || value.trim().length() == 0) node.remove(last);
        else node.put(last, value.trim());
        return from(root);
    }

    /** What is currently in one field, for the Settings screen to show. */
    public String get(String field) {
        Map<String, Object> node = toMap();
        String[] path = field.split("\\.");
        for (int i = 0; i < path.length - 1; i++) node = Json.child(node, path[i]);
        String found = Json.text(node, path[path.length - 1]);
        return found == null ? "" : found;
    }

    /** Whether the three work lists can be filled from Canvas. */
    public boolean canvasReady() {
        if (relay != null) return deltaToken != null;
        return canvasBase != null && (accessToken != null || cookieService != null && cookieToken != null);
    }

    public URI canvasBase() {
        return canvasBase;
    }

    public URI cookieService() {
        return cookieService;
    }

    public String cookieToken() {
        return cookieToken;
    }

    public ZoneId zone() {
        if (zone == null) return ZoneId.systemDefault();
        try {
            return ZoneId.of(zone);
        } catch (RuntimeException e) {
            return ZoneId.systemDefault();
        }
    }
}
