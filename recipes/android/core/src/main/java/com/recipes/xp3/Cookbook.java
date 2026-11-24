package com.recipes.xp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;

/**
 * Every recipe, in memory, kept in title order. The screens and the save
 * worker share one; every method is synchronized, and lists handed out are
 * copies.
 */
public final class Cookbook {

    public static final int MAX_RECIPES = 1000;

    static final Comparator<Recipe> ORDER = new Comparator<Recipe>() {
        @Override
        public int compare(Recipe a, Recipe b) {
            int byTitle = Recipe.fold(a.title).compareTo(Recipe.fold(b.title));
            if (byTitle != 0) return byTitle;
            int exact = a.title.compareTo(b.title);
            return exact != 0 ? exact : a.id.compareTo(b.id);
        }
    };

    private final List<Recipe> recipes = new ArrayList<Recipe>();

    public Cookbook(List<Recipe> initial) {
        for (Recipe recipe : initial) {
            if (recipes.size() >= MAX_RECIPES) break;
            if (indexOf(recipe.id) < 0) recipes.add(recipe);
        }
        Collections.sort(recipes, ORDER);
    }

    public synchronized List<Recipe> all() {
        return new ArrayList<Recipe>(recipes);
    }

    public synchronized int size() {
        return recipes.size();
    }

    /** The recipes matching the query (see {@link Recipe#matches}), in title order. */
    public synchronized List<Recipe> search(String query) {
        List<Recipe> out = new ArrayList<Recipe>();
        for (Recipe recipe : recipes) if (recipe.matches(query)) out.add(recipe);
        return out;
    }

    public synchronized Recipe get(String id) {
        int at = indexOf(id);
        return at < 0 ? null : recipes.get(at);
    }

    /** Adds the recipe, or replaces the one with its id. A full cookbook refuses a new one. */
    public synchronized void put(Recipe recipe) {
        int at = indexOf(recipe.id);
        if (at >= 0) {
            recipes.set(at, recipe);
        } else {
            if (recipes.size() >= MAX_RECIPES) throw new IllegalStateException("The cookbook is full");
            recipes.add(recipe);
        }
        Collections.sort(recipes, ORDER);
    }

    public synchronized boolean remove(String id) {
        int at = indexOf(id);
        if (at < 0) return false;
        recipes.remove(at);
        return true;
    }

    public synchronized boolean isFull() {
        return recipes.size() >= MAX_RECIPES;
    }

    public static String newId() {
        return UUID.randomUUID().toString();
    }

    private int indexOf(String id) {
        for (int i = 0; i < recipes.size(); i++) if (recipes.get(i).id.equals(id)) return i;
        return -1;
    }
}
