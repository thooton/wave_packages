package com.teslacharge.xp3.data;
import org.json.*;
import java.util.Map;
/** Stands in for Tesla's token endpoint: each refresh token works once and rotates. */
final class HttpJson {
    static final class Response {
        final int status; final String text;
        Response(int status, String text) { this.status = status; this.text = text; }
        JSONObject object() throws ApiException { try { return new JSONObject(text); } catch (JSONException e) { throw new ApiException("bad", 502, e); } }
    }
    static final java.util.Set<String> live = java.util.Collections.synchronizedSet(new java.util.HashSet<>());
    static final java.util.concurrent.atomic.AtomicInteger exchanges = new java.util.concurrent.atomic.AtomicInteger();
    static volatile Runnable during = () -> {};
    static Response post(String url, Map<String, String> headers, JSONObject body) throws ApiException {
        String token = body.optString("refresh_token");
        int n = exchanges.incrementAndGet();
        try { Thread.sleep(30); } catch (InterruptedException e) { throw new ApiException("int", 500); }
        during.run();
        if (!live.remove(token)) return new Response(400, "{\"error\":\"invalid_grant\"}");
        String next = token.replaceAll("#.*", "") + "#" + n;
        live.add(next);
        return new Response(200, "{\"access_token\":\"at" + n + "\",\"refresh_token\":\"" + next + "\",\"expires_in\":28800}");
    }
}
