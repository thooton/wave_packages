# AGENTS.md

A small, dependency-free recipe box for the Sonim XP3: a sibling of
`../list` and the rest, under the same constraints. 240x320 mdpi, portrait,
d-pad and keypad driven, never touch-first; no AndroidX, Material or
third-party libraries; `:core` is plain Java `--release 8` that must run on
API 27. It follows the family look (`../DESIGN.md`) in a terracotta hue.

- No network: the manifest has no INTERNET permission. Don't add one
  incidentally (no recipe import from the web, no sync) without the user
  asking for it.
- `SPEC.md` is how the app behaves; change it with the app.

## Layout

- `android/core`: `Recipe` (one recipe, validated, with the editor's line
  parsing, the list row's summary and the search match), `Cookbook` (every
  recipe in title order, synchronized, shared by the screens and the save
  worker), `Store` (`files/recipes.json`, defensive reads, an unreadable
  file kept aside as `recipes.json.bad`), `Quantity` (scaling an
  ingredient's leading amount) and `Starters` (the three recipes of a first
  launch). Tests: `SelfTest`, run by `:core:selfTest`.
- `android/app`: `Backend` (the process's one `Cookbook` and its ordered
  save worker), `Screen` (Menu on its release, text sizes, a confirmation
  with Cancel focused), `MainActivity` (search and the list),
  `RecipeActivity` (the page to cook from) and `EditActivity` (the form).

## Scaling

`Quantity.scale` multiplies only an amount at the very start of a line
("200 g", "1 1/2", "½", "2-3", "2 to 3"), keeping the rest as written,
and returns where the amount is so the page can colour it. It writes the
result the way the amount was written: whole numbers of ten or more stay
whole (grams), decimals stay decimals with the same separator, everything
else becomes the nearest common fraction as a single glyph (½ ¼ ¾
⅓ ⅔ and eighths) or a short decimal. A factor of exactly 1 returns the
line untouched. Lines whose amount comes later ("Flour, 200 g") are not
scaled; that is deliberate rather than guessing.

## Keys

- Lists act on OK through ListView's own click (DPAD_CENTER and ENTER).
  Text fields act on OK's *press*, as T9 eats the first release.
- Menu opens on its release (`Screen`), as a `PopupMenu` over the
  highlighted row.
- On a recipe, Left and Right are taken by the ListView's key listener
  anywhere on the page, since a ListView does nothing with them.
- In the editor's multi-line fields DPAD_CENTER inserts a line break
  (ENTER already does); in one-line fields OK moves to the next field.

## Build and validation

```bash
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew :recipes:core:selfTest :recipes:app:assembleRelease
```

There are no UI automation tests; key, focus and popup changes need a
check in the XP3 emulator or on the handset.

## Credentials

None: no login and no network.
