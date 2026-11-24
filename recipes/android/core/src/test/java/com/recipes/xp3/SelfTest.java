package com.recipes.xp3;

import com.xp3.common.Check;
import com.xp3.common.Disk;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/** Everything in :core, checked on a desktop JVM. */
public final class SelfTest {

    public static void main(String[] args) {
        Check check = new Check();
        check.run("recipe", () -> recipe(check));
        check.run("cookbook", () -> cookbook(check));
        check.run("store", () -> store(check));
        check.run("quantity", () -> quantity(check));
        check.run("starters", () -> starters(check));
        if (!check.report()) System.exit(1);
    }

    private static Recipe sample(String id, String title) {
        return new Recipe(id, title, 4, "30 min", Arrays.asList("200 g flour", "2 eggs"),
            Arrays.asList("Mix.", "Bake."), "");
    }

    private static void recipe(Check check) {
        Recipe r = Recipe.fromFields("a", "  Lemon   tart ", " 6 ", " 1  hr ",
            "- 1 lemon\n\n* 200 g sugar\r\n\u2022 3 eggs\n   ", "1. Zest the lemon.\n2) Whisk.\nStep 3: Bake\n10 eggs, beaten", "  Serve cold.  ");
        check.same("title one line", "Lemon tart", r.title);
        check.same("serves", 6, r.serves);
        check.same("time", "1 hr", r.time);
        check.same("ingredients cleaned", Arrays.asList("1 lemon", "200 g sugar", "3 eggs"), r.ingredients);
        check.same("steps unnumbered", Arrays.asList("Zest the lemon.", "Whisk.", "Bake", "10 eggs, beaten"), r.steps);
        check.same("notes trimmed", "Serve cold.", r.notes);
        check.same("summary", "Serves 6 \u00b7 1 hr", r.summary());
        check.same("summary without serves", "20 min",
            new Recipe("b", "x", 0, "20 min", null, null, null).summary());
        check.same("summary empty", "", new Recipe("b", "x", 0, "", null, null, null).summary());
        check.same("joined", "1 lemon\n200 g sugar\n3 eggs", Recipe.joined(r.ingredients));

        check.fails("blank title", "needs a title", () -> Recipe.fromFields("a", "   ", "", "", "", "", ""));
        char[] longTitle = new char[Recipe.MAX_TITLE + 1];
        Arrays.fill(longTitle, 'x');
        check.fails("long title", "at most", () -> Recipe.fromFields("a", new String(longTitle), "", "", "", "", ""));
        check.same("blank serves", 0, Recipe.parseServes("  "));
        check.same("serves 99", 99, Recipe.parseServes("99"));
        check.fails("serves 0", "Serves must", () -> Recipe.parseServes("0"));
        check.fails("serves 100", "Serves must", () -> Recipe.parseServes("100"));
        check.fails("serves letters", "Serves must", () -> Recipe.parseServes("four"));
        List<String> many = new ArrayList<String>();
        for (int i = 0; i <= Recipe.MAX_LINES; i++) many.add("line " + i);
        check.fails("too many lines", "at most", () -> new Recipe("a", "x", 0, "", many, null, null));
        char[] longLine = new char[Recipe.MAX_LINE + 1];
        Arrays.fill(longLine, 'y');
        check.fails("long line", "at most", () -> new Recipe("a", "x", 0, "",
            Collections.singletonList(new String(longLine)), null, null));

        Recipe creme = new Recipe("c", "Cr\u00e8me br\u00fbl\u00e9e", 4, "", Arrays.asList("500 ml double cream", "5 egg yolks"), null, null);
        check.ok("accents folded", creme.matches("creme"));
        check.ok("case folded", creme.matches("BRULEE"));
        check.ok("ingredient words", creme.matches("cream yolks"));
        check.ok("every word needed", !creme.matches("creme chocolate"));
        check.ok("blank matches", creme.matches("   "));
        check.ok("same content", creme.sameContent(creme.withId("d")));
        check.ok("different content", !creme.sameContent(r));
    }

    private static void cookbook(Check check) {
        Cookbook book = new Cookbook(Arrays.asList(sample("1", "pancakes"), sample("2", "Apple pie"),
            sample("3", "\u00c9clairs"), sample("1", "duplicate id")));
        check.same("deduplicated", 3, book.size());
        check.same("title order, accents folded", "Apple pie", book.all().get(0).title);
        check.same("\u00c9clairs before pancakes", "\u00c9clairs", book.all().get(1).title);
        book.put(sample("4", "Bread"));
        check.same("added in order", "Bread", book.all().get(1).title);
        book.put(sample("2", "Zucchini fritters"));
        check.same("replaced", "Zucchini fritters", book.get("2").title);
        check.same("replacement moved", "Zucchini fritters", book.all().get(3).title);
        check.same("search", 1, book.search("bread").size());
        check.same("search ingredients", 4, book.search("flour").size());
        check.ok("removed", book.remove("4"));
        check.ok("remove missing", !book.remove("4"));
        check.same("get missing", null, book.get("4"));

        List<Recipe> lots = new ArrayList<Recipe>();
        for (int i = 0; i < Cookbook.MAX_RECIPES; i++) lots.add(sample("id" + i, "Recipe " + i));
        Cookbook full = new Cookbook(lots);
        check.ok("full", full.isFull());
        check.fails("full refuses new", "full", () -> full.put(sample("new", "One more")));
        full.put(sample("id5", "Still replaceable"));
        check.same("full still replaces", "Still replaceable", full.get("id5").title);
        check.ok("ids differ", !Cookbook.newId().equals(Cookbook.newId()));
    }

    private static void store(Check check) throws Exception {
        File dir = Files.createTempDirectory("recipes-test").toFile();
        try {
            Store store = new Store(dir);
            check.ok("first launch", !store.exists());
            check.same("missing loads empty", 0, store.load().size());
            Recipe r = new Recipe("x", "Soup \"quoted\"", 3, "1 hr", Arrays.asList("1 \u00bd l stock", "Salt"),
                Arrays.asList("Simmer."), "Line one\nLine two");
            store.save(Arrays.asList(r, sample("y", "Bread")));
            check.ok("exists after save", store.exists());
            List<Recipe> back = store.load();
            check.same("round trip count", 2, back.size());
            check.ok("round trip content", r.sameContent(back.get(0)));
            check.same("round trip id", "x", back.get(0).id);

            File file = new File(dir, Store.FILE);
            Disk.write(file, "{\"recipes\":[{\"id\":\"a\",\"title\":\"Good\",\"serves\":2},"
                + "{\"id\":\"b\",\"title\":\"   \"},{\"title\":\"no id\"},7,"
                + "{\"id\":\"c\",\"title\":\"Odd serves\",\"serves\":500,\"ingredients\":[\"egg\",3,null]}]}", false);
            List<Recipe> partial = store.load();
            check.same("bad entries skipped", 2, partial.size());
            check.same("odd serves dropped", 0, partial.get(1).serves);
            check.same("non-strings skipped", Collections.singletonList("egg"), partial.get(1).ingredients);

            Disk.write(file, "{\"recipes\":[{\"id\":\"a\",\"title\":\"Tru", false);
            check.same("truncated loads empty", 0, store.load().size());
            check.ok("truncated kept aside", new File(dir, Store.BAD).isFile());
            check.ok("truncated moved", !file.exists());
            check.ok("kept aside is not a first launch", store.exists());
        } finally {
            for (File f : dir.listFiles()) f.delete();
            dir.delete();
        }
    }

    private static String scaled(String line, double factor) {
        return Quantity.scale(line, factor).text;
    }

    private static void quantity(Check check) {
        check.same("grams", "300 g flour", scaled("200 g flour", 1.5));
        check.same("grams glued", "300g flour", scaled("200g flour", 1.5));
        check.same("grams small", "9.4 g butter", scaled("75 g butter", 1 / 8.0));
        check.same("grams round", "38 g sugar", scaled("150 g sugar", 0.25));
        check.same("half doubled", "1 tsp salt", scaled("1/2 tsp salt", 2));
        check.same("mixed doubled", "3 cups", scaled("1 1/2 cups", 2));
        check.same("glyph tripled", "1\u00bd cup", scaled("\u00bd cup", 3));
        check.same("glyph mixed", "3 cups", scaled("1\u00bd cups", 2));
        check.same("glyph spaced", "2\u00bd cups", scaled("1 \u00bc cups", 2));
        check.same("eggs halved", "1 eggs", scaled("2 eggs", 0.5));
        check.same("quarter egg", "\u00bc egg", scaled("1 egg", 0.25));
        check.same("thirds", "\u2154 cup", scaled("1 cup", 2 / 3.0));
        check.same("range", "4-6 cloves", scaled("2-3 cloves", 2));
        check.same("range dash", "3\u20134\u00bd apples", scaled("2\u20133 apples", 1.5));
        check.same("range to", "4 to 6 apples", scaled("2 to 3 apples", 2));
        check.same("decimal", "3 l stock", scaled("1.5 l stock", 2));
        check.same("decimal comma", "0,38 kg", scaled("0,75 kg", 0.5));
        check.same("decimal big", "12.5 cl", scaled("2.5 cl", 5));
        check.same("tin count", "2 x 400 g tin", scaled("1 x 400 g tin", 2));
        check.same("no amount", "Salt and pepper", scaled("Salt and pepper", 2));
        check.same("words first", "A pinch of salt", scaled("A pinch of salt", 3));
        check.same("tomato is not a range", "2 tomatoes", scaled("1 tomatoes", 2));
        check.same("zero denominator", "1/0 cup", scaled("1/0 cup", 2));
        check.same("unchanged at 1", "1 1/2 cups", scaled("1 1/2 cups", 1));
        check.ok("unchanged not marked", !Quantity.scale("2 eggs", 1).changed());
        Quantity.Scaled marked = Quantity.scale("2-3 cloves garlic", 2);
        check.same("marked start", 0, marked.start);
        check.same("marked end", 3, marked.end);
        check.same("big fraction rounds", "23 cups", scaled("1 1/2 cups", 15));
        check.same("near an eighth", "1\u215c cup", scaled("1 cup", 1.4));
        check.same("no fraction close", "0.55 cup", scaled("1 cup", 0.55));
        check.same("tiny", "0.06 tsp", scaled("1/4 tsp", 0.25));
        check.same("label", "Serves 6", Quantity.servingsLabel(4, 6));
        check.same("label no serves", "Amounts \u00d72", Quantity.servingsLabel(0, 2));
        check.same("label as written", "Amounts as written", Quantity.servingsLabel(0, 1));
        check.close("factor", 1.5, Quantity.factor(4, 6), 1e-9);
        check.close("factor no serves", 3, Quantity.factor(0, 3), 1e-9);
    }

    private static void starters(Check check) {
        List<Recipe> starters = Starters.all();
        check.same("three", 3, starters.size());
        check.same("pancakes for 8", "400 g plain flour", scaled(starters.get(1).ingredients.get(0), 2));
        check.same("pasta for 3", "1\u00bd x 400 g tin chopped tomatoes", scaled(starters.get(2).ingredients.get(3), 1.5));
    }
}
