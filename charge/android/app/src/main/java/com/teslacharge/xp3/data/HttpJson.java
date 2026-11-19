package com.teslacharge.xp3.data;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.xp3.common.Http;

import java.io.IOException;
import java.net.URI;
import java.util.Map;

/** Tesla's Android JSON adapter; HTTP limits, deadlines and redirects are shared. */
final class HttpJson {
    private static final Http HTTP = new Http();
    static final class Response {
        final int status;
        final String text;

        Response(int status, String text) {
            this.status = status;
            this.text = text;
        }

        JSONObject object() throws ApiException {
            try { return new JSONObject(text); }
            catch (JSONException e) { throw new ApiException("The service returned an unreadable response.", 502, e); }
        }

        JSONArray array() throws ApiException {
            try { return new JSONArray(text); }
            catch (JSONException e) { throw new ApiException("The service returned an unreadable response.", 502, e); }
        }
    }

    private HttpJson() {}

    static Response get(String url, Map<String, String> headers) throws ApiException {
        return request("GET", url, headers, null);
    }

    static Response post(String url, Map<String, String> headers, JSONObject body) throws ApiException {
        return request("POST", url, headers, body == null ? "{}" : body.toString());
    }

    private static Response request(String method, String url, Map<String, String> headers, String body) throws ApiException {
        try {
            Http.Request request = Http.Request.to(URI.create(url)).method(method).timeout(35_000);
            if (headers != null) {
                for (Map.Entry<String, String> header : headers.entrySet()) {
                    request.header(header.getKey(), header.getValue());
                }
            }
            if (body != null) request.post(body);
            Http.Response response = HTTP.send(request);
            return new Response(response.status(), response.body());
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ApiException("The request was cancelled.", 0, e);
        } catch (IOException e) {
            String message = e.getMessage();
            if ("No network, or that address does not exist.".equals(message) || "Could not connect.".equals(message)) {
                message = "No connection.";
            } else if ("Request timed out".equals(message)) {
                message = "The connection timed out.";
            } else if (!"The connection timed out.".equals(message) && !"The secure connection failed.".equals(message)) {
                // Low-level errors can contain a URL or service response; don't display either.
                message = "Network error. Try again.";
            }
            throw new ApiException(message, 0, e);
        } catch (IllegalArgumentException e) {
            throw new ApiException("The service address is invalid.", 0, e);
        }
    }
}
