package com.recipes.xp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * The three recipes a new cookbook opens with, so there is something to
 * cook and to scale on the first launch. They are ordinary recipes: edit or
 * delete them like any other. They are never added again once the
 * cookbook has been saved.
 */
public final class Starters {

    private Starters() {}

    public static List<Recipe> all() {
        List<Recipe> out = new ArrayList<Recipe>();
        out.add(new Recipe("starter-banana-bread", "Banana bread", 8, "1 hr 10 min",
            Arrays.asList(
                "3 ripe bananas",
                "75 g butter, melted",
                "150 g sugar",
                "1 egg, beaten",
                "1 tsp vanilla extract",
                "1 tsp baking soda",
                "A pinch of salt",
                "190 g plain flour"),
            Arrays.asList(
                "Heat the oven to 175\u00B0C and butter a 23 x 13 cm loaf tin.",
                "Mash the bananas in a bowl, then stir in the melted butter.",
                "Mix in the sugar, egg and vanilla.",
                "Sprinkle over the baking soda and salt, then fold in the flour until just combined.",
                "Pour into the tin and bake for 55 to 65 minutes, until a skewer comes out clean.",
                "Cool in the tin for 10 minutes before turning out."),
            "Keeps for three days wrapped at room temperature."));
        out.add(new Recipe("starter-pancakes", "Pancakes", 4, "25 min",
            Arrays.asList(
                "200 g plain flour",
                "2 tsp baking powder",
                "1 tbsp sugar",
                "1/2 tsp salt",
                "2 eggs",
                "300 ml milk",
                "2 tbsp butter, melted, plus more for the pan"),
            Arrays.asList(
                "Whisk the flour, baking powder, sugar and salt in a bowl.",
                "Beat the eggs with the milk and melted butter, then whisk into the flour until just smooth.",
                "Heat a buttered frying pan over a medium heat.",
                "Pour in about 3 tbsp of batter per pancake and cook until bubbles appear, about 2 minutes.",
                "Flip and cook 1 minute more. Keep warm while you cook the rest."),
            ""));
        out.add(new Recipe("starter-tomato-pasta", "Tomato pasta", 2, "20 min",
            Arrays.asList(
                "200 g spaghetti",
                "2 tbsp olive oil",
                "2 cloves garlic, sliced",
                "1 x 400 g tin chopped tomatoes",
                "1/2 tsp chilli flakes",
                "A handful of basil leaves",
                "Salt and pepper",
                "Grated parmesan, to serve"),
            Arrays.asList(
                "Cook the spaghetti in plenty of salted boiling water until just tender.",
                "Meanwhile, warm the oil in a pan and fry the garlic gently for 1 minute.",
                "Add the tomatoes and chilli, and simmer for 10 minutes until thick. Season.",
                "Drain the pasta, keeping a cup of its water, and toss it in the sauce, loosening with a little of the water.",
                "Tear in the basil and serve with parmesan."),
            ""));
        return out;
    }
}
