# Recipes

## Purpose

A recipe box for the Sonim XP3 (240x320, d-pad, soft keys, T9 keypad),
driven with keys, never touch. It is for keeping the recipes you cook,
finding one quickly, and cooking from it with the phone propped on the
counter: the amounts scaled to the people at the table, and your place in
the recipe kept by ticking things off.

It stays offline, private and quick. Not wanted without the user asking:
network of any kind (web import, sync, accounts), photos, meal planning,
shopping lists, timers, ratings, categories or tags.

## Not wanted

- No INTERNET permission.
- No header naming the app, no counters for their own sake (DESIGN.md
  rule 8).
- No text telling the user how to use the app (rule 7). "One per line" in
  the Ingredients and Steps fields is their format, which rule 7 allows.
- No touch-first controls, AndroidX, Material or third-party libraries.

## The list (first screen)

On the dark terracotta header, a search box (hint "Search"). Under it,
every recipe matching the search, in title order (ignoring case and
accents), each a row with its title in Medium (at most two lines, then
"…") and under it, muted, "Serves 4 · 25 min" (either half alone
when the other is not given; nothing when neither is).

- On launch the highlight is on the first recipe, and the search box is
  empty.
- **Up / Down** move between recipes; Up from the first goes to the search
  box, Down from it to the list.
- **OK** on a recipe opens it.
- **Typing** in the search box filters at once: a recipe matches when every
  word typed is in its title or one of its ingredients, ignoring case and
  accents. OK (on its press) or the keyboard's Search moves to the results.
- With no recipes at all: "No recipes yet" and a **New recipe** button,
  which has the focus.
- With a search that matches nothing: "No matching recipes"; the focus
  stays in the search box.
- **Menu** (on its release) opens a popup over the highlighted row: New
  recipe; with a recipe highlighted, Edit and Delete; with a search typed,
  Clear search.
- **Delete** asks "Delete “Title”?" with Cancel (focused) and Delete.
  The highlight goes to the next recipe, else the one before.
- **New recipe** with 1000 recipes shows the toast "The cookbook is full"
  instead of opening the editor.
- After saving a new or edited recipe the list highlights it, clearing the
  search if the search would hide it.
- **Back** clears a typed search; with none, it leaves the app.

## A recipe

One page on white that Up and Down move through, row by row (a row taller
than the screen scrolls within itself). The screen stays on while it is
open.

1. **Head** (highlighted on opening): the title at 16sp Medium, the time
   muted under it if given, then "‹  Serves 4  ›" with the arrows in
   the accent. A recipe with no servings says "Amounts as written", or
   "Amounts ×2" and so on once changed.
2. **Ingredients** heading, then each ingredient after a muted bullet.
3. **Steps** heading, then each step after its number in the accent.
4. **Notes** heading and the notes, when there are any.

A heading is left out with nothing under it, and is never highlighted.

- **Left / Right**, anywhere on the page: one serving fewer or more, from 1
  to 99. Each ingredient's leading amount is scaled to match (see Scaling)
  and, while it differs from the recipe, shown in the accent, as is the
  servings label.
- **OK** on an ingredient ticks it off: a green tick replaces the bullet and
  the line turns muted and struck through. On a step: a green tick replaces
  its number and the text turns muted. OK again undoes it. OK on the head
  or the notes does nothing.
- Ticks and the servings last while the recipe is open (and through an
  edit that changes nothing); they are not saved. Editing the recipe's
  lines clears the ticks; changing its servings resets the servings.
- **Menu**: Edit; "Back to serves 4" (or "Amounts as written") when the
  servings were changed; Clear ticks when anything is ticked; Delete,
  which asks as on the list and returns to it.
- **Back** returns to the list.

## Scaling

Only an amount at the very start of an ingredient is scaled; the rest of
the line is kept as written. Amounts read: whole numbers, decimals with a
point or comma, fractions ("1/2"), mixed numbers ("1 1/2"), fraction
glyphs ("½", "1½", "1 ½"), and ranges of two of those joined by "-",
"–" or "to". Results:

- An amount written as a whole number of 10 or more (grams, millilitres)
  stays whole when the result is 10 or more, else gets one decimal:
  "200 g" ×1.5 is "300 g", "75 g" ÷8 is "9.4 g".
- A decimal stays a decimal, with the same separator, to two places (one
  from 10 up): "0,75 kg" ÷2 is "0,38 kg".
- Anything else becomes a whole number or the nearest of ½ ¼ ¾ ⅓ ⅔ ⅛
  ⅜ ⅝ ⅞ within 0.04, after any whole number ("1½"); otherwise a short
  decimal. From 20 up, a whole number.
- Lines starting with words ("A pinch of salt", "Salt and pepper") and
  "1/0" are left alone. At the recipe's own servings every line is shown
  exactly as written.

## The editor

A header "New recipe" or "Edit recipe", then a form: Title; Serves (digits)
beside Time (free text); Ingredients and Steps
("One per line"); Notes; and a full-width **Save** button. Fields are soft
pills that turn white with the accent outline while they take the keys.

- The focus starts in Title. Down and Up move between fields (within a
  multi-line field, between its lines first). OK in Title, Serves or Time
  moves to the next field; in Ingredients, Steps or Notes it starts a new
  line.
- **Save** is greyed out and does nothing while the title is blank. Saving
  checks the recipe and, if it can't be kept, shows why as a toast and
  stays: "Serves must be a number from 1 to 99", "A line can be at most 500
  characters", "A recipe can have at most 100 ingredients" (or steps), "The
  cookbook is full".
- What is saved: the title, serves and time each made one line (surrounding
  spaces trimmed, runs of whitespace one space); ingredients and steps one
  per non-blank line, without a leading bullet ("-", "*", "•"), and steps
  without a leading "1.", "2)" or "Step 3:" since the page numbers them;
  notes trimmed. Limits: title 120 characters, time 40, notes 4000.
- **Menu**: Save (while it can), and "Discard changes" (or "Close" with
  nothing changed).
- **Back** with nothing changed leaves at once. With changes it asks
  "Discard changes?" with Keep editing (focused) and Discard.

## Behaviour

- **Data**: one file, `recipes.json`, in the app's private storage:
  `{"version":1,"recipes":[{"id","title","serves","time","ingredients":[],
  "steps":[],"notes"}]}`. Nothing goes on the SD card; Android backup is on.
- **First launch**: three starter recipes (Banana bread, Pancakes, Tomato
  pasta), saved at once, so deleting them is for good.
- **Saving**: every change is saved at once, in order, on a background
  thread, by writing a temporary file and renaming it, so a killed app or a
  pulled battery keeps either the new cookbook or the previous one.
- **Bad data**: a recipe in the file that can't be read (no id, blank title)
  is skipped; the rest load. Servings out of range read as none. A file that
  can't be read at all opens as an empty cookbook and is kept aside as
  `recipes.json.bad`; the starters are not added over it. At most 1000
  recipes load.
- **Errors**: a failed save is silent; the recipes stay in memory and the
  next change tries again.
- **Network and permissions**: none. No notifications.
- **Orientation**: portrait only; keyboard and orientation changes don't
  recreate a screen, so the editor keeps what was typed.

## Look

The family look in a terracotta hue: header and status bar `#3A1C12`, dim
header text `#E3C2B5`, accent `#A3402A` on a `#FBEDE8` wash, text `#201A18`,
muted `#6E5C56`, the family's green `#1E7B34` for ticks. Rows use the family
focus card; the list has the family's inset hairlines. The icon is a white
pot with a terracotta lid and rising steam on the header's brown.

## Open questions

1. Should ticks and the chosen servings survive leaving the recipe (for a
   long bake with the phone used for something else meanwhile)?
2. Should a line whose amount comes later ("Flour, 200 g") be scaled too?
3. Should there be a way to share a recipe (as text over SMS), given the
   app has no network?
