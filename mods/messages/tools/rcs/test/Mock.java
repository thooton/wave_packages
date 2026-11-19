import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;

/** Client of the mock's control API (tools/rcs/mock/README.md). */
public final class Mock {
    public final String base;
    public final int acsPort;

    public Mock(int controlPort, int acsPort) { this.base = "http://127.0.0.1:" + controlPort; this.acsPort = acsPort; }

    public static String enc(String n) { return n.replace("+", "%2B"); }

    public Object call(String method, String path, Object body) throws Exception {
        HttpURLConnection c = (HttpURLConnection) new URL(base + path).openConnection();
        c.setRequestMethod(method);
        c.setConnectTimeout(5000);
        c.setReadTimeout(60000);
        if (body != null) {
            c.setDoOutput(true);
            c.setRequestProperty("Content-Type", "application/json");
            try (OutputStream o = c.getOutputStream()) { o.write(Json.write(body).getBytes(StandardCharsets.UTF_8)); }
        }
        int code = c.getResponseCode();
        InputStream in = code >= 400 ? c.getErrorStream() : c.getInputStream();
        String text = "";
        if (in != null) {
            ByteArrayOutputStream b = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) b.write(buf, 0, n);
            text = b.toString("UTF-8");
        }
        if (code >= 400 && code != 502) throw new RuntimeException(method + " " + path + " -> " + code + " " + text);
        return text.isEmpty() ? null : Json.parse(text);
    }

    public Map<String, Object> get(String path) throws Exception { return Json.obj(call("GET", path, null)); }
    public List<Object> list(String path) throws Exception { return Json.arr(call("GET", path, null)); }
    public Map<String, Object> post(String path, Object body) throws Exception { return Json.obj(call("POST", path, body == null ? Json.m() : body)); }

    public void reset() throws Exception { call("POST", "/api/reset", Json.m()); }

    public void user(String number, Object... kv) throws Exception {
        Map<String, Object> m = Json.m(kv);
        m.put("number", number);
        call("POST", "/api/users", m);
    }

    public void patchUser(String number, Object... kv) throws Exception { call("PUT", "/api/users/" + enc(number), Json.m(kv)); }

    public List<Object> received(String number, String kind) throws Exception {
        return list("/api/users/" + enc(number) + "/received" + (kind != null ? "?kind=" + kind : ""));
    }

    public void clear(String number) throws Exception { call("DELETE", "/api/users/" + enc(number) + "/received", null); }

    public Map<String, Object> send(String from, Object... kv) throws Exception {
        return Json.obj(call("POST", "/api/users/" + enc(from) + "/send", Json.m(kv)));
    }

    public String otp(String msisdn) throws Exception {
        Map<String, Object> m;
        try { m = get("/api/otp?msisdn=" + enc(msisdn)); } catch (RuntimeException e) { return null; } // 404 = none yet
        return m == null ? null : (String) m.get("otp");
    }

    public void dropSip() throws Exception { call("POST", "/api/events/drop-connection", Json.m("which", "sip")); }

    public List<Object> registrations() throws Exception {
        Object o = call("GET", "/api/registrations", null);
        if (o instanceof List) return Json.arr(o);
        Map<String, Object> m = Json.obj(o);
        for (Object v : m.values()) if (v instanceof List) return Json.arr(v);
        return null;
    }

    public String trace(String contains) throws Exception {
        HttpURLConnection c = (HttpURLConnection) new URL(base + "/api/trace?format=text&limit=4000" + (contains != null ? "&contains=" + contains : "")).openConnection();
        try (InputStream in = c.getInputStream()) {
            ByteArrayOutputStream b = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) b.write(buf, 0, n);
            return b.toString("UTF-8");
        }
    }

    public String configXml(String msisdn) throws Exception {
        HttpURLConnection c = (HttpURLConnection) new URL("http://127.0.0.1:" + acsPort + "/config.xml?msisdn=" + enc(msisdn)).openConnection();
        try (InputStream in = c.getInputStream()) {
            ByteArrayOutputStream b = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) b.write(buf, 0, n);
            return b.toString("UTF-8");
        }
    }
}
