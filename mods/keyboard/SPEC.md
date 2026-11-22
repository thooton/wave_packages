# Keyboard Improved behavior

Keyboard Improved is the stock XP3800 XT9 keyboard (`com.nuance.flext9_OEM.input`, FlexT9),
made responsive. Everything it does is what the stock keyboard does; only when it happens
changes.

## Same as stock

- The same text, the same suggestion list in the same order with the same selection, and the
  same learning: the keyboard's word databases (`files/asdb.bin`, `cdb.bin`, `udb.bin`) end up
  byte-identical to stock after the same typing.
- Every key works as on stock: 2–9 in predictive and ABC/multitap modes, 0 (space; held, 0),
  1 (punctuation and its cycle), `*` (symbols), `#` (shift and mode cycle), Clear/Back
  (delete), the D-pad on the suggestion bar, OK to pick a suggestion, and holding 2–9 for the
  popup of the key's characters and digit.
- Settings, languages, the status bar input-mode icon, auto-capitalization, password and other
  field types, and the first-run EULA behave as on stock.

## Faster

- A letter key shows its letter and suggestions when it goes down, not when it is released.
  If the key is held for the popup, the letter is taken back first and the popup opens as on
  stock.
- Suggestions are worked out ahead while the user is between keys, so the bar usually updates
  on the next screen refresh after a key press; the space after a word, and the next word's
  first letter, are worked out ahead too.
- The suggestion bar is drawn as soon as it changes, and the keyboard avoids waiting on the
  app and the system during a key press (text before the cursor, caps mode, status icon,
  display info).
- While typing, the CPU is held at its top frequency (released about 0.4 s after the last key),
  and while a key is handled and drawn the keyboard's own threads run ahead of the app's
  (for about 0.1 s per key). Candidate widths are remembered between keys.
- The XT9 engine itself runs faster: the phone's own engine library is patched when the
  module is installed (float arithmetic in hardware, direct calls), with every engine result
  bit-identical to stock. On any other library the module installs without this.

## Phone checks

In Messages, type a sentence with predictive text: check that each letter and its
suggestions appear as the key goes down, and that the suggestions match the stock keyboard's
for the same words. Hold 2 for the popup and pick a character; hold 0 for the digit. Delete
with Clear, pick a suggestion with the D-pad and OK, cycle punctuation with 1, change case and
mode with `#`, open symbols with `*`, and type in ABC (multitap) mode. Type in a password
field. Open the keyboard settings from the status bar or Settings. Uninstalling the module
restores the stock keyboard.
