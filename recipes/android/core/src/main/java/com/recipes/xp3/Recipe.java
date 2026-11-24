package com.recipes.xp3;

import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/**
 * One recipe, as it is kept and shown: a title, how many it serves (0 when
 * not given), how long it takes (free text, "" when not given), its
 * ingredients and steps one line each, and notes.
 *
 * Immutable and always valid: the constructor refuses what the editor must
 * not save, with a message fit for a toast.
 */
public final class Recipe {

    public static final int MAX_TITLE = 120;
    public static final int MAX_TIME = 40;
    public static final int MAX_LINE = 500;
    public static final int MAX_LINES = 100;
    public static final int MAX_NOTES = 4000;
    public static final int MAX_SERVES = 99;

    public final String id;
    public final String title;
    public final int serves;
    public final String time;
    public final List<String> ingredients;
    public final List<String> steps;
    public final String notes;

    public Recipe(String id, String title, int serves, String time,
                  List<String> ingredients, List<String> steps, String notes) {
        if (id == null || id.trim().length() == 0) throw new IllegalArgumentException("A recipe needs an id");
        this.id = id;
        this.title = oneLine(title);
        if (this.title.length() == 0) throw new IllegalArgumentException("A recipe needs a title");
        if (this.title.length() > MAX_TITLE) {
            throw new IllegalArgumentException("A title can be at most " + MAX_TITLE + " characters");
        }
        if (serves < 0 || serves > MAX_SERVES) {
            throw new IllegalArgumentException("Serves must be a number from 1 to " + MAX_SERVES);
        }
        this.serves = serves;
        this.time = oneLine(time);
        if (this.time.length() > MAX_TIME) {
            throw new IllegalArgumentException("The time can be at most " + MAX_TIME + " characters");
        }
        this.ingredients = clean(ingredients, "ingredients");
        this.steps = clean(steps, "steps");
        this.notes = notes == null ? "" : notes.trim().replace("\r\n", "\n").replace('\r', '\n');
        if (this.notes.length() > MAX_NOTES) {
            throw new IllegalArgumentException("Notes can be at most " + MAX_NOTES + " characters");
        }
    }

    /**
     * A recipe from the editor's fields, as typed: serves as digits (blank
     * for none), and ingredients and steps one per line.
     */
    public static Recipe fromFields(String id, String title, String serves, String time,
                                    String ingredients, String steps, String notes) {
        return new Recipe(id, title, parseServes(serves), time,
            lines(ingredients, false), lines(steps, true), notes);
    }

    public static int parseServes(String text) {
        String value = text == null ? "" : text.trim();
        if (value.length() == 0) return 0;
        if (!value.matches("\\d{1,2}") || Integer.parseInt(value) < 1) {
            throw new IllegalArgumentException("Serves must be a number from 1 to " + MAX_SERVES);
        }
        return Integer.parseInt(value);
    }

    /** Everything as one line: surrounding space trimmed, runs of whitespace made one space. */
    public static String oneLine(String text) {
        return text == null ? "" : text.replaceAll("\\s+", " ").trim();
    }

    private static final Pattern BULLET = Pattern.compile("^[-*\u2022\u00b7\u2013]\\s*");
    private static final Pattern NUMBERING = Pattern.compile("^(?:step\\s*)?\\d{1,3}\\s*[.):]\\s*", Pattern.CASE_INSENSITIVE);

    /**
     * Typed text as lines: one per line break, each made one line, blank ones
     * dropped. A leading bullet goes, and for steps a leading "1." or "2)"
     * too, since the page numbers steps itself.
     */
    public static List<String> lines(String text, boolean steps) {
        List<String> out = new ArrayList<String>();
        if (text == null) return out;
        for (String raw : text.split("\r\n|\r|\n")) {
            String line = BULLET.matcher(oneLine(raw)).replaceFirst("");
            if (steps) line = NUMBERING.matcher(line).replaceFirst("");
            if (line.length() > 0) out.add(line);
        }
        return out;
    }

    /** Lines as the editor shows them, one per line. */
    public static String joined(List<String> lines) {
        StringBuilder out = new StringBuilder();
        for (String line : lines) {
            if (out.length() > 0) out.append('\n');
            out.append(line);
        }
        return out.toString();
    }

    private static List<String> clean(List<String> lines, String what) {
        List<String> out = new ArrayList<String>();
        if (lines != null) {
            for (String raw : lines) {
                String line = oneLine(raw);
                if (line.length() == 0) continue;
                if (line.length() > MAX_LINE) {
                    throw new IllegalArgumentException("A line can be at most " + MAX_LINE + " characters");
                }
                out.add(line);
            }
        }
        if (out.size() > MAX_LINES) throw new IllegalArgumentException("A recipe can have at most " + MAX_LINES + " " + what);
        return Collections.unmodifiableList(out);
    }

    /** What a list row shows under the title: "Serves 4 · 25 min", or "" with neither. */
    public String summary() {
        StringBuilder out = new StringBuilder();
        if (serves > 0) out.append("Serves ").append(serves);
        if (time.length() > 0) {
            if (out.length() > 0) out.append(" \u00b7 ");
            out.append(time);
        }
        return out.toString();
    }

    /**
     * Whether every word of the query is in the title or an ingredient,
     * ignoring case and accents. A blank query matches everything.
     */
    public boolean matches(String query) {
        String folded = fold(query).trim();
        if (folded.length() == 0) return true;
        StringBuilder haystack = new StringBuilder(fold(title));
        for (String line : ingredients) haystack.append('\n').append(fold(line));
        String text = haystack.toString();
        for (String word : folded.split("\\s+")) {
            if (!text.contains(word)) return false;
        }
        return true;
    }

    /** Lower case without accents, for comparing and sorting. */
    public static String fold(String text) {
        if (text == null) return "";
        String plain = Normalizer.normalize(text, Normalizer.Form.NFD).replaceAll("\\p{M}+", "");
        return plain.toLowerCase(Locale.ROOT);
    }

    /** The same recipe with another id, for a copy. */
    public Recipe withId(String newId) {
        return new Recipe(newId, title, serves, time, ingredients, steps, notes);
    }

    public boolean sameContent(Recipe other) {
        return other != null && title.equals(other.title) && serves == other.serves && time.equals(other.time)
            && ingredients.equals(other.ingredients) && steps.equals(other.steps) && notes.equals(other.notes);
    }
}
