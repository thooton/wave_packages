# Recipes, for the Sonim XP3

A recipe box for the XP3's 240x320 screen, d-pad and keypad: write recipes
down, find them by title or ingredient, and cook from them with the
servings scaled and the ingredients and steps ticked off as you go. It has
no network access; the recipes stay in the app's private storage.

## Build and test

```bash
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew :recipes:core:selfTest :recipes:app:assembleRelease
adb install -r recipes/android/app/build/outputs/apk/release/app-release.apk
```

## Controls

| Where | Key | Action |
| --- | --- | --- |
| List | Up / Down | Move between recipes; Up from the first goes to the search box |
| List | OK | Open the recipe |
| List | Menu | New recipe, Edit, Delete, Clear search |
| List | Back | Clear the search, then leave |
| Recipe | Up / Down | Move through the title, ingredients, steps and notes |
| Recipe | Left / Right | Fewer or more servings; the amounts follow |
| Recipe | OK | Tick an ingredient or a step off, or back on |
| Recipe | Menu | Edit, back to the recipe's servings, Clear ticks, Delete |
| Editor | Down / Up | Move between the fields |
| Editor | OK | Next field; in Ingredients, Steps and Notes a new line |
| Editor | Menu | Save, or Discard changes |
