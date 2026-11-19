package org.json;
import java.util.*;
/** Just enough: flat objects of strings and numbers. */
public class JSONObject {
    final Map<String, Object> map = new LinkedHashMap<>();
    public JSONObject() {}
    public JSONObject(String text) throws JSONException {
        String t = text.trim();
        if (!t.startsWith("{") || !t.endsWith("}")) throw new JSONException("bad");
        t = t.substring(1, t.length() - 1).trim();
        if (t.isEmpty()) return;
        for (String part : t.split(",")) {
            String[] kv = part.split(":", 2);
            String k = kv[0].trim().replace("\"", ""); String v = kv[1].trim();
            map.put(k, v.startsWith("\"") ? v.substring(1, v.length() - 1) : (Object) Long.valueOf(v));
        }
    }
    public JSONObject put(String k, Object v) throws JSONException { map.put(k, v); return this; }
    public String optString(String k, String d) { Object v = map.get(k); return v == null ? d : v.toString(); }
    public String optString(String k) { return optString(k, ""); }
    public long optLong(String k, long d) { Object v = map.get(k); return v instanceof Long ? (Long) v : d; }
    public String toString() { StringBuilder b = new StringBuilder("{"); for (Map.Entry<String, Object> e : map.entrySet()) { if (b.length() > 1) b.append(','); b.append('"').append(e.getKey()).append("\":\"").append(e.getValue()).append('"'); } return b.append('}').toString(); }
}
