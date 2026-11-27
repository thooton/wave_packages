# Goodreads, for the Sonim XP3

A way to discover books on Goodreads from the XP3's 240x320 screen, laid out
after the classic goodreads.com: the month's popular books and the week's
most read, genres with their new releases and most read, the month-by-month
top lists, search, and each book's page with its description, Readers also
enjoyed and community reviews. A Want to Read list is kept on the phone.

It needs no account: it reads the GraphQL service goodreads.com itself
uses, with the key the site's own pages carry, plus a few of the site's
list pages. Nothing is ever written to Goodreads.

## Keys

| Key | |
| --- | --- |
| Up / Down | Move; long descriptions and reviews scroll a step at a time |
| Left / Right | Home, Discover, Search, Want to Read; on a book, a screen back / on |
| OK | Open the book, list or genre; on a book, Want to Read |
| Menu | Open, Want to Read or remove, Refresh, Clear search, Back to top |
| Back | Back to where you were |

In Search, type a title or author with the keypad; results come as you
type. Down goes from the box to the results.

## Build and test

```bash
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew :goodreads:core:selfTest :goodreads:app:assembleRelease
adb install -r goodreads/android/app/build/outputs/apk/release/app-release.apk
```

The fonts are Merriweather and Lato, as goodreads.com serves them, under the
SIL Open Font License (`OFL.txt`).
