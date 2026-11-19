package com.xp3.common;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/**
 * What an app is set up with: its descriptor, `wave-setup.json` in the app's
 * assets (spec/setup-payload.md in thooton/wave). The app's setup screen and
 * the site's generator are both built from the same file, and {@link Config}
 * checks an imported payload against it.
 */
public final class SetupSpec {

    /** One setting a payload may carry. */
    public static final class Setting {
        public final String name;
        public final String label;
        public final boolean secret;
        public final boolean required;
        public final boolean manual;
        public final Pattern pattern;
        public final int max;
        public final String fallback;
        public final String example;
        public final String obtain;

        Setting(Map<String, Object> source) {
            name = Json.string(source, "name");
            if (!name.matches("[a-z][A-Za-z0-9]*")) throw new IllegalArgumentException("Bad setting name: " + name);
            label = Json.string(source, "label");
            secret = Json.flag(source, "secret");
            required = Json.flag(source, "required");
            manual = Json.flag(source, "manual");
            String regex = Json.text(source, "pattern");
            try {
                pattern = regex == null ? null : Pattern.compile(regex);
            } catch (PatternSyntaxException e) {
                throw new IllegalArgumentException("Bad pattern for " + name);
            }
            Double limit = Json.number(source, "max");
            max = limit == null ? 2000 : limit.intValue();
            fallback = Json.text(source, "default");
            example = Json.text(source, "example");
            obtain = Json.text(source, "obtain");
        }
    }

    /** Settings of which exactly one set is given in full. */
    public static final class Alternative {
        public final String label;
        public final List<List<String>> sets;

        Alternative(String label, List<List<String>> sets) {
            this.label = label;
            this.sets = sets;
        }
    }

    public final String app;
    public final String name;
    public final String packageName;
    public final String about;
    public final List<Setting> settings;
    public final List<Alternative> alternatives;
    public final List<String> limits;
    /** Whether the direct backend exists ("direct": false for an app that only works through a command center). */
    public final boolean directSupported;
    public final boolean deltaSupported;
    public final String deltaAbout;

    private SetupSpec(Map<String, Object> root) {
        Double format = Json.number(root, "format");
        if (format == null || format.intValue() != 1) throw new IllegalArgumentException("Unknown descriptor format");
        app = Json.string(root, "app");
        name = Json.string(root, "name");
        packageName = Json.string(root, "package");
        about = Json.text(root, "about");
        List<Setting> found = new ArrayList<Setting>();
        for (Object one : Json.children(root, "settings")) found.add(new Setting(Json.object(one)));
        settings = Collections.unmodifiableList(found);
        List<Alternative> choices = new ArrayList<Alternative>();
        for (Object one : Json.children(root, "alternatives")) {
            Map<String, Object> entry = Json.object(one);
            List<List<String>> sets = new ArrayList<List<String>>();
            for (Object set : Json.children(entry, "sets")) {
                List<String> names = new ArrayList<String>();
                for (Object item : Json.array(set)) {
                    String setting = (String) item;
                    if (setting(setting) == null) throw new IllegalArgumentException("Unknown setting in alternatives: " + setting);
                    names.add(setting);
                }
                sets.add(names);
            }
            choices.add(new Alternative(Json.string(entry, "label"), sets));
        }
        alternatives = Collections.unmodifiableList(choices);
        List<String> notes = new ArrayList<String>();
        for (Object one : Json.children(root, "limits")) notes.add((String) one);
        limits = Collections.unmodifiableList(notes);
        Map<String, Object> delta = Json.child(root, "delta");
        deltaSupported = Json.flag(delta, "supported");
        deltaAbout = Json.text(delta, "about");
        Object direct = root.get("direct");
        if (direct != null && !(direct instanceof Boolean)) throw new IllegalArgumentException("Bad direct");
        directSupported = direct == null || (Boolean) direct;
        if (!directSupported && !deltaSupported) throw new IllegalArgumentException("A descriptor needs a backend");
        if (!directSupported && !settings.isEmpty()) throw new IllegalArgumentException("Settings without a direct backend");
    }

    /** Throws IllegalArgumentException when the descriptor is malformed. */
    public static SetupSpec parse(String json) {
        try {
            return new SetupSpec(Json.object(Json.parse(json)));
        } catch (ClassCastException e) {
            throw new IllegalArgumentException("Malformed descriptor");
        }
    }

    public Setting setting(String name) {
        for (Setting one : settings) if (one.name.equals(name)) return one;
        return null;
    }

    /** Whether the direct backend needs nothing imported (Authenticator, Flashcards). */
    public boolean needsNothing() {
        return directSupported && settings.isEmpty();
    }

    /** Whether every required setting can be typed on the phone, so manual entry is worth offering. */
    public boolean manualEnough() {
        if (!directSupported || settings.isEmpty()) return false;
        for (Setting one : settings) if (one.required && !one.manual) return false;
        for (Alternative choice : alternatives) {
            boolean typeable = false;
            for (List<String> set : choice.sets) {
                boolean all = true;
                for (String name : set) if (!setting(name).manual) all = false;
                if (all) typeable = true;
            }
            if (!typeable) return false;
        }
        return true;
    }
}
