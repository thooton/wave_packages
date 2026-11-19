package com.canvas.xp3.net;

import com.xp3.common.Http;
import java.io.IOException;
import java.net.URI;

/**
 * How a request reaches Canvas signed in: the backends the app can be set up
 * with (common/ui's Setup).
 *
 * - **Token**: the student's own Canvas access token, as a Bearer header.
 * - **Cookies**: a canvas-cookie service the student runs, whose session
 *   cookie goes with each request (and Canvas's CSRF token with a change).
 * - **Delta**: a command center's Canvas relay, which signs the requests in
 *   itself; the app talks only to the relay, with the delta token.
 *
 * Canvas only ever sees what one of these adds to a request that {@link
 * Canvas} has already checked is for Canvas itself.
 */
public abstract class Access {

    /** Where a Canvas address is actually sent: itself, except through a relay. */
    URI route(URI canvas) {
        return canvas;
    }

    /** Signs a request that is going to Canvas (or its relay); `write` for a change. */
    abstract void sign(Http.Request request, boolean write) throws IOException, InterruptedException;

    /** Canvas refused the sign-in (401). Forgets anything cached; true when trying again can help. */
    abstract boolean refused();

    /** What to tell the user when the sign-in is refused for good. */
    abstract String refusal();

    /** True when uploads go through the relay's own route rather than Canvas's three steps. */
    boolean relayed() {
        return false;
    }

    public static Access token(final String token) {
        if (token == null || token.length() == 0) throw new IllegalArgumentException("There is no access token");
        return new Access() {
            @Override
            void sign(Http.Request request, boolean write) {
                request.header("Authorization", "Bearer " + token);
            }

            @Override
            boolean refused() {
                return false;
            }

            @Override
            String refusal() {
                return "Canvas refused the access token; make a new one and import a new setup file";
            }
        };
    }

    public static Access cookies(final RemoteCookies cookies) {
        return new Access() {
            @Override
            void sign(Http.Request request, boolean write) throws IOException, InterruptedException {
                String cookie = cookies.fetch();
                request.header("Cookie", cookie);
                if (write) request.header("X-CSRF-Token", Canvas.csrf(cookie));
            }

            @Override
            boolean refused() {
                cookies.invalidate();
                return true;
            }

            @Override
            String refusal() {
                return "Canvas would not accept the session; the cookie service's own login may have expired";
            }
        };
    }

    /**
     * A command center's relay at `relay` (its address followed by
     * "/canvas/"). Canvas's own addresses (a next page, a file's download)
     * are sent to the relay with the same path; nothing but the relay ever
     * gets the delta token.
     */
    public static Access delta(final URI relay, final String token) {
        if (token == null || token.length() == 0) throw new IllegalArgumentException("There is no command center token");
        return new Access() {
            @Override
            URI route(URI canvas) {
                if (relay.getHost().equals(canvas.getHost()) && relay.getPort() == canvas.getPort()) return canvas;
                String path = canvas.getRawPath();
                if (path == null || !(path.startsWith("/api/v1/") || Canvas.DOWNLOAD.matcher(path).matches())) return canvas;
                return URI.create(relay.toString() + path.substring(1)
                    + (canvas.getRawQuery() == null ? "" : "?" + canvas.getRawQuery()));
            }

            @Override
            void sign(Http.Request request, boolean write) {
                request.header("Authorization", "Bearer " + token);
            }

            @Override
            boolean refused() {
                return false;
            }

            @Override
            String refusal() {
                return "The command center refused its token, or its Canvas sign-in has expired";
            }

            @Override
            boolean relayed() {
                return true;
            }
        };
    }
}
