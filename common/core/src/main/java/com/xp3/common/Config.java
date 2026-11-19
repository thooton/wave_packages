package com.xp3.common;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * What an app was set up with: a setup payload (spec/setup-payload.md in
 * thooton/wave), checked against the app's {@link SetupSpec}. Either the
 * direct backend's settings, or a Delta command center's {@link Login}.
 *
 * This replaces the logins that used to be baked into APKs: an app reads its
 * Config at run time, from its private storage, where `Setup` (common/ui)
 * put it. Messages are phrased for a person; nothing in them repeats a value,
 * so a secret never reaches the screen or a log through an error.
 */
public final class Config {

    /** The payload format this reads and writes. */
    public static final int VERSION = 1;
    /** The largest payload accepted, in characters. */
    public static final int MAX_LENGTH = 8192;

    private final String app;
    private final String label;
    private final Map<String, String> settings;
    private final Login delta;
    private final SetupSpec spec;

    private Config(SetupSpec spec, String label, Map<String, String> settings, Login delta) {
        this.spec = spec;
        this.app = spec.app;
        this.label = label;
        this.settings = settings == null ? null : Collections.unmodifiableMap(settings);
        this.delta = delta;
    }

    /** A payload, checked. Throws IllegalArgumentException saying what is wrong. */
    public static Config parse(String payload, SetupSpec spec) {
        if (payload == null || payload.trim().length() == 0) throw new IllegalArgumentException("The setup file is empty");
        if (payload.length() > MAX_LENGTH) throw new IllegalArgumentException("That is too big to be a setup file");
        String text = payload.charAt(0) == '\uFEFF' ? payload.substring(1) : payload;
        Map<String, Object> root;
        try {
            root = Json.object(Json.parse(text.trim()));
        } catch (RuntimeException e) {
            throw new IllegalArgumentException("That isn't a setup file");
        }
        Object version = root.get("wave");
        if (!(version instanceof Number)) throw new IllegalArgumentException("That isn't a setup file");
        if (((Number) version).doubleValue() != VERSION) {
            throw new IllegalArgumentException(((Number) version).doubleValue() > VERSION
                ? "This setup file is for a newer version of the app" : "That isn't a setup file");
        }
        String app = Json.text(root, "app");
        if (app == null) throw new IllegalArgumentException("The setup file doesn't say which app it is for");
        if (!app.equals(spec.app)) throw new IllegalArgumentException("This setup file is for " + named(app) + ", not " + spec.name);
        Object label = root.get("label");
        if (label != null && !(label instanceof String)) throw new IllegalArgumentException("The setup file's label isn't text");
        String shown = label == null ? null : clean((String) label);
        if (shown != null && shown.length() > 60) throw new IllegalArgumentException("The setup file's label is too long");
        boolean hasSettings = root.containsKey("settings");
        boolean hasDelta = root.containsKey("delta");
        if (hasSettings == hasDelta) {
            throw new IllegalArgumentException("A setup file has either settings or a command center, and this has "
                + (hasSettings ? "both" : "neither"));
        }
        if (hasDelta) {
            if (!spec.deltaSupported) throw new IllegalArgumentException(spec.name + " can't be set up with a command center");
            Object found = root.get("delta");
            if (!(found instanceof Map)) throw new IllegalArgumentException("The command center in the setup file is unreadable");
            Map<String, Object> center = Json.object(found);
            Login login = Login.of(Json.text(center, "server"), Json.text(center, "token"));
            if (!login.ready()) throw new IllegalArgumentException("The setup file needs both the command center's address and its token");
            return new Config(spec, shown, null, login);
        }
        Object found = root.get("settings");
        if (!(found instanceof Map)) throw new IllegalArgumentException("The settings in the setup file are unreadable");
        Map<String, String> values = new LinkedHashMap<String, String>();
        for (Map.Entry<String, Object> entry : Json.object(found).entrySet()) {
            if (!(entry.getValue() instanceof String)) {
                if (entry.getValue() == null) continue;
                throw new IllegalArgumentException(labelOf(spec, entry.getKey()) + " must be text");
            }
            values.put(entry.getKey(), (String) entry.getValue());
        }
        return direct(spec, shown, values);
    }

    /** The direct backend with these settings, checked as an imported payload would be. */
    public static Config direct(SetupSpec spec, String label, Map<String, String> given) {
        if (!spec.directSupported) throw new IllegalArgumentException(spec.name + " needs a command center");
        Map<String, String> values = new LinkedHashMap<String, String>();
        for (Map.Entry<String, String> entry : given.entrySet()) {
            SetupSpec.Setting setting = spec.setting(entry.getKey());
            if (setting == null) throw new IllegalArgumentException("Unknown setting: " + entry.getKey());
            String value = entry.getValue() == null ? "" : entry.getValue().trim();
            if (value.length() == 0) continue;
            if (value.length() > setting.max) throw new IllegalArgumentException(setting.label + " is too long");
            if (setting.pattern != null && !setting.pattern.matcher(value).matches()) {
                throw new IllegalArgumentException(setting.label + " doesn't look right"
                    + (setting.example != null && !setting.secret ? ", e.g. " + setting.example : ""));
            }
            values.put(setting.name, value);
        }
        for (SetupSpec.Setting setting : spec.settings) {
            if (setting.required && !values.containsKey(setting.name)) {
                throw new IllegalArgumentException("The setup file has no " + setting.label);
            }
        }
        for (SetupSpec.Alternative choice : spec.alternatives) {
            int complete = 0;
            int touched = 0;
            for (List<String> set : choice.sets) {
                int present = 0;
                for (String name : set) if (values.containsKey(name)) present++;
                if (present == set.size()) complete++;
                if (present > 0) touched++;
            }
            if (complete != 1 || touched != 1) {
                throw new IllegalArgumentException(choice.label + ": give exactly one of " + describe(spec, choice));
            }
        }
        return new Config(spec, label == null ? null : clean(label), values, null);
    }

    /** The Delta backend with this login (for migrating a saved one). */
    public static Config delta(SetupSpec spec, Login login) {
        if (!spec.deltaSupported) throw new IllegalArgumentException(spec.name + " can't be set up with a command center");
        if (!login.ready()) throw new IllegalArgumentException("The command center login is incomplete");
        return new Config(spec, null, null, login);
    }

    /** The JSON payload this came from, as kept in the app's private storage. */
    public String toJson() {
        Map<String, Object> root = new LinkedHashMap<String, Object>();
        root.put("wave", Integer.valueOf(VERSION));
        root.put("app", app);
        if (label != null) root.put("label", label);
        if (delta != null) root.put("delta", Json.map("server", delta.server(), "token", delta.token()));
        else root.put("settings", new LinkedHashMap<String, Object>(settings));
        return Json.write(root);
    }

    public String app() {
        return app;
    }

    public SetupSpec spec() {
        return spec;
    }

    /** What the setup screen calls it, or null. */
    public String label() {
        return label;
    }

    public boolean isDelta() {
        return delta != null;
    }

    /** The command center login, or null for the direct backend. */
    public Login delta() {
        return delta;
    }

    /** A setting's value, its descriptor's default when absent, or null. Null for the Delta backend. */
    public String get(String name) {
        if (settings == null) return null;
        String value = settings.get(name);
        if (value != null) return value;
        SetupSpec.Setting setting = spec.setting(name);
        return setting == null ? null : setting.fallback;
    }

    /** Whether the setting was given (not just defaulted). */
    public boolean has(String name) {
        return settings != null && settings.containsKey(name);
    }

    /** The given settings, in order: empty for the Delta backend. */
    public Map<String, String> settings() {
        return settings == null ? Collections.<String, String>emptyMap() : settings;
    }

    private static String clean(String value) {
        String trimmed = value.trim();
        return trimmed.length() == 0 ? null : trimmed;
    }

    private static String named(String app) {
        return app.length() == 0 ? app : Character.toUpperCase(app.charAt(0)) + app.substring(1);
    }

    private static String labelOf(SetupSpec spec, String name) {
        SetupSpec.Setting setting = spec.setting(name);
        return setting == null ? name : setting.label;
    }

    private static String describe(SetupSpec spec, SetupSpec.Alternative choice) {
        StringBuilder out = new StringBuilder();
        for (List<String> set : choice.sets) {
            if (out.length() > 0) out.append("; ");
            for (int i = 0; i < set.size(); i++) {
                if (i > 0) out.append(" + ");
                out.append(labelOf(spec, set.get(i)));
            }
        }
        return out.toString();
    }

    /**
     * Reassembles a payload split across several QR codes, each
     * "WS1/<i>/<n>/<id>/<part>" (spec/setup-payload.md): parts with one id,
     * 1 to n, concatenated in order, and checked against the id, the first
     * eight hex digits of the whole text's SHA-256. A code that is a payload
     * on its own (it starts with "{") is complete at once.
     */
    public static final class Chunks {
        private static final Pattern CHUNK = Pattern.compile("WS1/([0-9]{1,2})/([0-9]{1,2})/([0-9a-f]{8})/(.*)", Pattern.DOTALL);

        private String id;
        private String[] parts;
        private String whole;

        /** Takes one code's text; returns true once the payload is whole. Throws on a code that isn't a setup code. */
        public boolean add(String code) {
            if (code == null) throw new IllegalArgumentException("That isn't a setup code");
            String text = code.trim();
            if (text.startsWith("{")) {
                whole = text;
                return true;
            }
            Matcher match = CHUNK.matcher(text);
            if (!match.matches()) throw new IllegalArgumentException("That isn't a setup code");
            int index = Integer.parseInt(match.group(1));
            int count = Integer.parseInt(match.group(2));
            if (count < 1 || index < 1 || index > count) throw new IllegalArgumentException("That isn't a setup code");
            if (id == null || !id.equals(match.group(3)) || parts.length != count) {
                id = match.group(3);
                parts = new String[count];
            }
            parts[index - 1] = match.group(4);
            for (String part : parts) if (part == null) return false;
            StringBuilder joined = new StringBuilder();
            for (String part : parts) joined.append(part);
            if (!sha256(joined.toString()).startsWith(id)) {
                id = null;
                throw new IllegalArgumentException("The setup codes don't fit together; scan them again");
            }
            whole = joined.toString();
            return true;
        }

        /** How many of the codes have been read, and of how many. */
        public int[] progress() {
            if (whole != null) return new int[] {1, 1};
            if (parts == null) return new int[] {0, 0};
            int have = 0;
            for (String part : parts) if (part != null) have++;
            return new int[] {have, parts.length};
        }

        /** The payload once whole, else null. */
        public String payload() {
            return whole;
        }

        static String sha256(String text) {
            try {
                byte[] digest = MessageDigest.getInstance("SHA-256").digest(text.getBytes(StandardCharsets.UTF_8));
                StringBuilder out = new StringBuilder();
                for (byte b : digest) out.append(String.format("%02x", b & 0xff));
                return out.toString();
            } catch (NoSuchAlgorithmException e) {
                throw new IllegalStateException(e);
            }
        }
    }
}
