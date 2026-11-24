package com.recipes.xp3;

import com.xp3.common.Disk;
import com.xp3.common.Json;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * The one file the app keeps, `recipes.json` in its private directory.
 *
 * Reads are defensive: a recipe that cannot be read is skipped rather than
 * costing the rest. A file that cannot be read at all is copied aside to
 * `recipes.json.bad` before anything can be written over it. Writes replace
 * the file whole or not at all (see Disk).
 */
public final class Store {

    static final String FILE = "recipes.json";
    static final String BAD = "recipes.json.bad";
    private static final long MAX_FILE = 8000000;

    private final File directory;

    public Store(File directory) {
        this.directory = directory;
    }

    /**
     * Whether there has ever been a cookbook here: false only on a first
     * launch. A cookbook kept aside as unreadable counts, so the starters
     * are not added over it.
     */
    public synchronized boolean exists() {
        return new File(directory, FILE).exists() || new File(directory, BAD).exists();
    }

    public synchronized List<Recipe> load() {
        File file = new File(directory, FILE);
        List<Recipe> out = new ArrayList<Recipe>();
        if (!file.exists()) return out;
        String json = Disk.read(file, MAX_FILE);
        try {
            if (json == null) throw new IllegalArgumentException("unreadable");
            for (Object entry : Json.children(Json.object(Json.parse(json)), "recipes")) {
                if (!(entry instanceof Map) || out.size() >= Cookbook.MAX_RECIPES) continue;
                try {
                    out.add(read(Json.object(entry)));
                } catch (RuntimeException skipped) {
                    // One bad recipe, from a damaged file or a newer version.
                }
            }
        } catch (RuntimeException e) {
            keepAside(file);
            return new ArrayList<Recipe>();
        }
        return out;
    }

    public synchronized void save(List<Recipe> recipes) throws IOException {
        List<Object> saved = new ArrayList<Object>();
        for (Recipe recipe : recipes) {
            saved.add(Json.map(
                "id", recipe.id,
                "title", recipe.title,
                "serves", Integer.valueOf(recipe.serves),
                "time", recipe.time,
                "ingredients", new ArrayList<Object>(recipe.ingredients),
                "steps", new ArrayList<Object>(recipe.steps),
                "notes", recipe.notes));
        }
        Disk.write(new File(directory, FILE), Json.write(Json.map("version", Integer.valueOf(1), "recipes", saved)), false);
    }

    private static Recipe read(Map<String, Object> fields) {
        Double serves = Json.number(fields, "serves");
        int count = serves == null ? 0 : (int) Math.round(serves.doubleValue());
        if (count < 0 || count > Recipe.MAX_SERVES) count = 0;
        return new Recipe(Json.string(fields, "id"), Json.string(fields, "title"), count,
            Json.text(fields, "time"), strings(fields, "ingredients"), strings(fields, "steps"),
            Json.text(fields, "notes"));
    }

    private static List<String> strings(Map<String, Object> fields, String key) {
        List<String> out = new ArrayList<String>();
        for (Object value : Json.children(fields, key)) {
            if (value instanceof String && out.size() < Recipe.MAX_LINES) {
                String line = (String) value;
                out.add(line.length() > Recipe.MAX_LINE ? line.substring(0, Recipe.MAX_LINE) : line);
            }
        }
        return out;
    }

    private void keepAside(File file) {
        File bad = new File(directory, BAD);
        bad.delete();
        file.renameTo(bad);
    }
}
