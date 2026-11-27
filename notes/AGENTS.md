# AGENTS.md

## Purpose and scope

Apple Notes for the Sonim XP3: folders, plain-text notes, search, pinning
and Recently Deleted, driven by keys. `SPEC.md` says what it does and what
it must not become; read it first.

- Target: 240x320 mdpi, portrait, d-pad/keypad-driven. Not touch-first.
- Platform Android only: no AndroidX, Material or third-party libraries.
  `:core` is plain Java 8 and must run on API 27.
- No network: the manifest has no INTERNET permission. Keep it that way.

## Design first

The screens were drawn before the code: `mockups/first/index.html` (the
first pass) and `mockups/index.html` (refined; what the app follows). Open
the refined file in a browser at any zoom: each phone is 240x320 CSS px.
Change the mockup with the app when the look changes, and keep
`../DESIGN.md` ("Notes") in step. Mockups are not build inputs.

## Layout

- `android/core`, package `com.notes.xp3.data`: `Note`, `Folder`,
  `Notebook` (every rule about notes and folders, its limits and Recently
  Deleted), `Text` (titles, previews, search and snippets), `Dates`
  (Pinned first, then one run; row dates), `Store` (`notes.json`, via the shared
  `Json` and `Disk`). Tests in `src/test` run via `:notes:core:selfTest`
  with the shared `Check` harness.
- `android/app`: `MainActivity` (the page stack, every key, and the pages:
  Folders, a folder or Recently Deleted, search, the folder picker, the
  name page, a note), `Rows` (the one adapter behind every list: back row,
  large title, headings and card rows), `RowView` (a row that paints its
  slice of a rounded card, its hairline and the yellow wash), `Overlay`
  (Apple's bottom context menu and the iOS alert).

## Rules that are easy to break

- All keys go through `MainActivity.dispatchKeyEvent` before any view, so
  pages behave the same whatever has focus. Back and Menu act on their
  *release*, only when their press was seen (so a release left over from
  another screen does nothing). Lists act on OK's release. Text fields act
  on OK's *press* (T9 swallows the release) and record it with
  `consumeOk`, so that release does nothing underneath.
- Overlays take every key while up and act only on releases they saw the
  press of.
- The selection is `Rows`' own, painted by `RowView`; ListView's selector is
  transparent and its divider off. Keep the row keys (`Row.key`) stable so
  the selection survives rebuilds and returning to a page.
- Save through `MainActivity.save()`: a snapshot is taken on the main
  thread and written by one worker, in order. Never touch `Notebook` off
  the main thread.
- A blank new note is dropped when its page is popped (`dropIfBlank`).

## Build and validation

```bash
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew :notes:core:selfTest :notes:app:assembleRelease
.github/build-apks.sh notes
```

There are no UI automation tests. Check key, focus and overlay changes on
the API 27 emulator (`../wave/tools/qa/emulator`, see its README) and, when
one is reserved for you, a handset.

## Releases

Bump `versionCode` and `versionName` in `android/app/build.gradle` for any
change to the APK's inputs; releases are immutable. Docs, `mockups/` and
`wave/` are not inputs.

## Credentials

There are none: no login and no network.
