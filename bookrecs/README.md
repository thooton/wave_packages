# Book Recs, for the Sonim XP3

Book recommendations on the XP3's 240x320 screen: type what you'd like to
read (books like a title, a genre, a mood) and get a list of books with
their authors and ISBNs. The recommendations come from a book
recommendation service (`services/book-recommender` in
[thooton/wave](https://github.com/thooton/wave)), which asks OpenRouter and
checks every book against an ISBN database. The phone only knows the
service's address; the OpenRouter key stays with the service.

## Setup

The app opens on its setup screen until it has a setup file
(`../common/SETUP.md`), `wave-setup-bookrecs.json`:

```json
{"wave": 1, "app": "bookrecs", "settings": {"server": "https://books.example.com"}}
```

Add `"token": "..."` when the service was started with
`WAVE_BOOK_RECS_TOKEN`. Copy the file to
`Android/data/com.bookrecs.xp3/files/` on the phone and choose "Import setup
file", or type just the address with "Type it in...".

## Build and test

```bash
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew :bookrecs:core:selfTest :bookrecs:app:assembleRelease
adb install -r bookrecs/android/app/build/outputs/apk/release/app-release.apk
# Made-up books, no service or setup needed:
adb shell am start -n com.bookrecs.xp3/.MainActivity -e sample 1
```

## Controls

| Key | Action |
| --- | --- |
| Keypad | Type the prompt |
| OK in the prompt | Ask for books |
| Down / Up | Move between the prompt and the books |
| OK on a book | Its author and ISBN, with More like this and Copy ISBN |
| Menu | New search, Setup |
| Back | Stop a search under way; from the books, back to the prompt; then leave |
