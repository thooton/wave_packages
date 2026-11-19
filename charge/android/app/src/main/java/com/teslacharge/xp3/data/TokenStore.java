package com.teslacharge.xp3.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;

import org.json.JSONObject;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

public final class TokenStore {
    private static final String AUTH_URL = "https://auth.tesla.com/oauth2/v3/token";
    private static final long ACCESS_SKEW_MS = 5 * 60_000L;
    public static final String SIGN_IN_EXPIRED = "Tesla sign-in has expired.";
    private final SharedPreferences preferences;
    private final Settings settings;
    /**
     * One lock for every store in the process, not one per store: a new
     * setup builds a new repository (and store) while the old one may still
     * be exchanging, and both work on the same preferences. Two monitors
     * would let two exchanges spend the same refresh token, or let the old
     * account's rotation land on top of the new setup's seed.
     */
    private static final Object LOCK = new Object();

    public TokenStore(Context context, Settings settings) {
        this.settings = settings;
        preferences = context.getSharedPreferences("tesla_credentials", Context.MODE_PRIVATE);
        seed(settings.refreshToken);
    }

    /**
     * Starts the rotation from the setup's refresh token, unless it already
     * has: Tesla spends a refresh token on every use, so the one imported is
     * soon dead and the live one is whichever this store last got back. A
     * different token imported starts over from it; signed out (none), the
     * rotated tokens are forgotten. The store remembers only a digest of the
     * token it was seeded with.
     */
    private void seed(String refreshToken) {
        synchronized (LOCK) {
            seedLocked(refreshToken);
        }
    }

    private void seedLocked(String refreshToken) {
        if (refreshToken.length() == 0) {
            if (preferences.getAll().size() > 0) preferences.edit().clear().commit();
            return;
        }
        String seed = digest(refreshToken);
        if (seed.equals(preferences.getString("seed", ""))) return;
        if (!preferences.contains("seed") && refreshToken.equals(preferences.getString("refresh_token", ""))) {
            // Adopted from an older version's store (the setup was made from it): keep its access token.
            preferences.edit().putString("seed", seed).commit();
            return;
        }
        preferences.edit().clear().putString("refresh_token", refreshToken).putString("seed", seed).commit();
    }

    private static String digest(String value) {
        try {
            byte[] hash = java.security.MessageDigest.getInstance("SHA-256").digest(value.getBytes(StandardCharsets.UTF_8));
            return Base64.encodeToString(hash, Base64.NO_WRAP | Base64.NO_PADDING | Base64.URL_SAFE);
        } catch (java.security.NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    /**
     * The access token to send. Refreshes only when the stored one is spent or
     * close enough to it to be worth not finding out at a stall.
     *
     * The expiry check is inside the monitor on purpose: several callers
     * arriving at once on an expired token produce one exchange, not one each,
     * because everyone behind the first re-reads what the first stored.
     */
    public String getAccessToken() throws ApiException {
        synchronized (LOCK) {
            return accessLocked();
        }
    }

    private String accessLocked() throws ApiException {
        String access = preferences.getString("access_token", "");
        long expiry = preferences.getLong("access_expires_at", 0L);
        if (access.length() > 0 && System.currentTimeMillis() < expiry - ACCESS_SKEW_MS) return access;
        return refresh();
    }

    /**
     * Replaces an access token the server has just rejected, given the token
     * that was actually rejected.
     *
     * Tesla rotates the refresh token on every use, so a rejection arriving on
     * several requests at once must not become several rotations. Whoever gets
     * here first exchanges; the rest find an access token that is no longer the
     * one they failed with, which means the exchange already happened, and they
     * take its result. The token has to be passed in rather than read here,
     * because reading it back would just find whatever is current and could
     * never tell "already fixed" from "still broken".
     */
    public String refreshRejected(String rejected) throws ApiException {
        synchronized (LOCK) {
            return rejectedLocked(rejected);
        }
    }

    private String rejectedLocked(String rejected) throws ApiException {
        String access = preferences.getString("access_token", "");
        if (access.length() > 0 && !access.equals(rejected)) return access;
        return refresh();
    }

    /** Callers hold LOCK. */
    private String refresh() throws ApiException {
        if (!settings.refreshToken.isEmpty() && !digest(settings.refreshToken).equals(preferences.getString("seed", ""))) {
            // A newer setup has reseeded the store since this one was made:
            // its tokens are another sign-in's, not this store's to spend.
            throw new ApiException("Charge's setup changed. Try again.", 409);
        }
        String current = preferences.getString("refresh_token", "");
        String previous = preferences.getString("previous_refresh_token", "");
        if (current.length() == 0) throw new ApiException("Charge isn't set up.", 401);
        try {
            return exchangeAndStore(current);
        } catch (ApiException first) {
            if ((first.status == 400 || first.status == 401) && previous.length() > 0 && !previous.equals(current)) {
                try { return exchangeAndStore(previous); }
                catch (ApiException ignored) { /* Report the original rejection. */ }
            }
            throw first;
        }
    }

    private String exchangeAndStore(String refreshToken) throws ApiException {
        try {
            JSONObject body = new JSONObject().put("grant_type", "refresh_token")
                .put("refresh_token", refreshToken).put("client_id", "ownerapi")
                .put("scope", "openid email offline_access phone");
            Map<String, String> headers = new HashMap<>();
            headers.put("content-type", "application/json");
            headers.put("accept", "*/*");
            headers.put("accept-language", settings.language);
            headers.put("user-agent", "TeslaV4/" + settings.appVersion + " (com.teslamotors.TeslaApp; build:4542; iOS 26.0.0)");
            headers.put("x-tesla-user-agent", settings.userAgent);

            HttpJson.Response response = HttpJson.post(AUTH_URL, headers, body);
            JSONObject payload = response.object();
            if (response.status < 200 || response.status >= 300) {
                // Tesla answers a spent or revoked refresh token with 400/401 and
                // OAuth jargon ("The refresh_token is invalid"). It will not fix
                // itself, unlike a dropped connection, so say so plainly.
                if (response.status == 400 || response.status == 401) {
                    throw new ApiException(SIGN_IN_EXPIRED, response.status);
                }
                String message = payload.optString("error_description", payload.optString("error", "Sign-in failed."));
                throw new ApiException(message, response.status);
            }
            String access = payload.optString("access_token", "");
            String nextRefresh = payload.optString("refresh_token", refreshToken);
            long accessExpiry = System.currentTimeMillis() + payload.optLong("expires_in", 28_800L) * 1000L;
            long refreshExpiry = jwtExpiry(nextRefresh);
            preferences.edit().putString("access_token", access)
                .putLong("access_expires_at", accessExpiry).putString("refresh_token", nextRefresh)
                .putString("previous_refresh_token", nextRefresh.equals(refreshToken) ? preferences.getString("previous_refresh_token", "") : refreshToken)
                .putLong("refresh_expires_at", refreshExpiry)
                .putLong("last_refresh_at", System.currentTimeMillis()).commit();
            return access;
        } catch (ApiException e) {
            throw e;
        } catch (Exception e) {
            throw new ApiException("Could not refresh sign-in.", 500, e);
        }
    }

    private static long jwtExpiry(String token) {
        try {
            String[] parts = token.split("\\.");
            if (parts.length < 2) return 0L;
            byte[] decoded = Base64.decode(parts[1], Base64.URL_SAFE | Base64.NO_WRAP | Base64.NO_PADDING);
            return new JSONObject(new String(decoded, StandardCharsets.UTF_8)).optLong("exp", 0L) * 1000L;
        } catch (Exception ignored) { return 0L; }
    }

    public long getRefreshExpiresAt() {
        long stored = preferences.getLong("refresh_expires_at", 0L);
        if (stored > 0) return stored;
        return jwtExpiry(preferences.getString("refresh_token", ""));
    }
}
