package com.recipes.xp3;

import android.content.Context;

import com.xp3.common.ui.Ui;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.ExecutorService;

/**
 * The cookbook and its file, one for the whole process, so the list, a
 * recipe and the editor all see the same recipes. Saves run in order on one
 * background thread, each writing a snapshot.
 */
final class Backend {

    private static Backend instance;

    private final Store store;
    private final Cookbook cookbook;
    private final ExecutorService saver = Ui.worker("recipes-save");

    static synchronized Backend get(Context context) {
        if (instance == null) instance = new Backend(context.getApplicationContext());
        return instance;
    }

    private Backend(Context context) {
        store = new Store(context.getFilesDir());
        boolean first = !store.exists();
        cookbook = new Cookbook(first ? Starters.all() : store.load());
        // Written at once, so deleted starters never come back.
        if (first) save();
    }

    Cookbook cookbook() {
        return cookbook;
    }

    void save() {
        final List<Recipe> snapshot = cookbook.all();
        saver.execute(() -> {
            try {
                store.save(snapshot);
            } catch (IOException e) {
                // The recipes are still in memory; the next change tries again.
            }
        });
    }
}
