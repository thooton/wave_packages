# Notes

## Purpose

Apple Notes for the Sonim XP3 (240x320, d-pad, soft keys, T9 keypad):
quick plain-text notes, kept in folders, found again by search, and driven
entirely from the keys. It opens straight into the folder last used, ready
to read or start a note.

It stays a notebook on the phone: offline, private and instant. Not wanted,
now or incidentally: network of any kind (the app has no INTERNET
permission), accounts or sync, rich text, checklists, tables, attachments,
drawings, tags, locked notes, sharing, settings, or text explaining how to
use the app (`../DESIGN.md` rule 7).

## The look

Apple Notes on iOS 17, light, as drawn in `mockups/index.html` (refined from
`mockups/first/`): the grey grouped page, white rounded cards of rows, bold
large titles, Notes' yellow for icons, the caret and the d-pad's row (a
yellow wash inset in the card), and Apple's bottom toolbar. The exact
colours and sizes are in `../DESIGN.md` ("Notes") and
`android/app/src/main/res/values/colors.xml`.

## Data

- A **note** is plain text, at most 40,000 characters. Its first line is its
  title (or "New Note" when the text is blank); the next line with text is
  its preview (or "No additional text"). It has a created and a modified
  time, a folder, and may be pinned.
- A **folder** has a name (1 to 40 characters, unique ignoring case).
  "Notes" always exists, comes first, and can't be renamed or deleted.
  Other folders follow by name. At most 60 folders and 3,000 notes.
- **Recently Deleted** holds deleted notes for 30 days, then they are gone
  (purged at launch). A deleted note remembers its folder; Recover puts it
  back there, or in Notes if that folder has gone. Deleting a note in
  Recently Deleted, or a blank note, deletes it for good. Recently Deleted
  appears in Folders only while it has notes.
- Everything is in `notes.json` in the app's private storage, written
  atomically off the main thread: while typing (1.5 s after the last
  change), on leaving a note, on pause, and after every other change. An
  unreadable file is kept aside as `notes.json.unreadable` and the app
  starts empty rather than overwrite it.

## Screens

The pages form a stack; Back (or Left) pops one. Launch opens the folder
last used, with Folders under it.

- **Folders**: "Folders", the heading "On My Phone", a card of folders, each
  with its icon, name, count of notes and a chevron, then Recently Deleted
  with a trash icon when it has notes. Toolbar: new-folder and compose icons.
- **A folder**: "‹ Folders", the folder's name, then its notes in sections:
  Pinned (if any), Today, Yesterday, Previous 7 Days, Previous 30 Days, then
  each month of this year, then each earlier year, newest first. A row is
  the title, then the time (today), "Yesterday", the weekday (this week) or
  the date, and the preview. The toolbar counts the notes ("1 Note",
  "N Notes") and has the compose icon. An empty folder shows "No Notes".
- **Recently Deleted**: the same, without Pinned or a compose icon.
- **A note**: a white page with "‹" and the folder's name, the full
  modified date centred, then the text, its first line large and bold.
  Typing edits it. A recently deleted note is read-only: OK or typing offers
  "Recover Note?".
- **Search**: a search box and Cancel. Matching notes from every folder
  (not Recently Deleted), under "Top Hits", newest first; each shows its
  title, date and the matching part of its text, the match marked in
  yellow, and its folder. "No Results" when nothing matches.
- **Select a folder** (Move Note): `Moving "title"`, the folders with a tick
  on the note's own, and "New Folder", which creates a folder and moves the
  note into it.
- **New Folder / Rename Folder**: Cancel, the title, Save (grey until there
  is a name), and a name field. A taken name gives "Name Taken".

## Keys

| Key | Lists | A note |
| --- | --- | --- |
| Up / Down | Move the yellow row; Up from the first row opens Search | Move the caret |
| OK | Open; on an empty folder, start a note | New line |
| Right | Open | Move the caret |
| Left / Back | Back a page; from the first page, leave | Left: caret; Back: back a page |
| Keypad | Start a search with that key | Type |
| Menu (left soft key) | The page's menu, on release | The note's menu |

Menus rise from the bottom of the screen, over a dimmed page, and act on
the row under the d-pad. Up/Down move in them, OK chooses, Back or Menu
closes them.

- A folder: New Note, then Pin/Unpin Note, Move Note, Delete.
- A note: the same.
- Recently Deleted (or a deleted note): Recover, Delete Now, then Delete
  All (from the list), which asks first.
- Folders: New Note (in the chosen folder), New Folder, and for a folder
  other than Notes, Rename Folder and Delete Folder; on Recently Deleted,
  Delete All. Delete Folder asks first ("Its N notes will be moved to
  Recently Deleted.").
- Search: on a hit, Pin/Unpin Note, Move Note, Delete.

A new note that is left blank is discarded on Back. Alerts have Cancel and
one action, side by side; Left/Right choose, OK acts, Back cancels. The
action starts chosen.

## Not done yet

There is no handset test. Key handling was checked on the API 27 emulator
only.
