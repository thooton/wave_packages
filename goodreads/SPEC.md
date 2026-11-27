# Goodreads

## Purpose

A way to discover books on Goodreads from the Sonim XP3 (240x320, d-pad,
soft keys, T9 keypad), driven one-handed with keys, never touch. It is laid
out after the classic goodreads.com: the beige header with the wordmark,
white pages, brown section headings, covers with orange stars, the green
Want to Read button, Merriweather for titles and what people wrote, Lato for
the rest.

It reads Goodreads without an account: the GraphQL service the website
itself asks (with the key every page of the site carries), the site's search
suggestions, and a few of its list pages. It must stay a read-only browser
for finding books: popular and new books, genres, search, a book's page with
similar books and community reviews, and a Want to Read list kept on the
phone. It must never sign in, rate, review, shelve on Goodreads, or show
friends' activity, groups, quotes, quizzes, giveaways, or ads.

## Not wanted

- An account, a sign-in, or anything that writes to Goodreads. Want to Read
  is the phone's own list.
- Writing or rating reviews; reviews are read only.
- My Books, friends, the feed, groups, giveaways, challenges, quotes, Q&A,
  ads, store links. (The Goodreads app's own data comes from
  kca.amazon.com, which needs an Amazon sign-in; it is not used.)
- Spoilers: a review marked as having them shows a note instead of its text.
- Touch as the way to drive it.

## Screens

### Tabs (Home, Discover, Search, Want to Read)

The beige header with "goodreads" ("good" in Merriweather, "reads" in its
bold, brown) at the top, the tab's content in the middle, the tab bar at the
foot: beige, the open tab brown and bold under a short brown rule, the
others grey.

- **Home**: "Popular in <Month>": the ten most popular books published this
  month (last month's while this month's list has fewer than five), each
  noted with its rank (#1...), then See all; then "Most read this week": the
  site's ten most read, each noted "N people read it", then See all.
- **Discover**: "Popular by month": this month and the three before it,
  each opening its top list; then "Genres": the site's main genres (Art...
  Young Adult), each opening the genre.
- **Search**: a search box under the header, hint "Title or author", the
  keys in it when the tab opens. Typing searches after a pause (0.8 s); OK
  searches at once. Results: "Books", Goodreads' own top matches (at most
  five: the site's search page is behind a bot check, so only its
  suggestions can be had), then "Genres" whose names contain the words (three
  letters or more). "No books found" when there are neither.
- **Want to Read**: the books put there, newest first, under the title
  "Want to Read"; "No books yet" when empty.

A book row: the cover (40x60dp, beige when there is none or until it loads),
the title in Merriweather bold (two lines at most), "by" (grey) and the
author, the stars and "4.19 · 615,284 ratings" when the list gives a
rating, and the list's note (rank, readers) in grey. Hairlines between book
rows. The chosen row is washed beige (#EDE6D6).

### A genre

Its name as the page title, then New releases, Most read this week and
Popular, as the genre's pages on the site have them: the first six books of
each, then See all (the whole of that page's list). Each section shows a
spinner until it is in; a section that fails says "Couldn’t load them:
<why>"; all three failing is the screen's error with Try again.

### A top list (a month)

"Popular books published in <Month Year>", then its books in rank order,
thirty at a time; More books at the end fetches the next thirty.

### A book

A spinner only, until the book is in. Then:

- the cover (70x105dp) at the left; at the right the title (Merriweather
  bold), the series ("House #1", teal) unless the title already names it,
  "by" the author, the stars with the average in bold, and the counts of
  ratings and reviews;
- **Want to Read**: the site's green button; once the book is on the list,
  outlined in the green with a check. OK on it adds or removes the book
  and toasts "Added to Want to Read" / "Removed from Want to Read";
- the description, in Merriweather, its paragraphs as the site breaks
  them; a leading librarians' note ("Alternate cover edition of ISBN...")
  is left out;
- GENRES (up to eight, teal), the pages and format, "First published
  <date>", the publisher;
- **Readers also enjoyed**: up to eight similar books as book rows (a
  spinner until they arrive; the section is left out if there are none);
- **Community reviews**: how the ratings fall, five stars to one, as orange
  bars with their shares; then reviews, most helpful first, five at a time:
  the reader in bold, their stars and the date, the text in Merriweather
  (cut at about 1100 characters with "…"), and the likes. More reviews at
  the end fetches five more. "No reviews yet" when there are none.

A failure shows "Couldn’t load this book", why in grey, and Try again.

## Keys

| Key | |
| --- | --- |
| Up / Down | The next row that can be chosen, at once when it is wholly on screen; otherwise the list moves 36dp and the row is chosen once it is well onto the screen. Rows with nothing to do (a description, reviews) are read this way. |
| Left / Right | On the tabs: the previous / next tab, wrapping. On a book: a screen back / on, keeping 36dp of the last. |
| OK | Opens the chosen row (a book, See all, a genre, a month, More...), or presses Want to Read. Nothing when the chosen row has scrolled out of sight. |
| Menu or left soft key (on release) | On a list: Open and Want to Read (or Remove from Want to Read) for the chosen book; Refresh on Home and Discover; Clear search on Search. On a book: Want to Read (or Remove), Open <the chosen similar book>, Back to top. |
| Back | From a book or a list, back where it was opened. In Search's results, back to the box; from the box, leaves the app. |

In Search, Down from the box goes to the results (when there are any) and
Up from the first result goes back to the box.

Each tab remembers the row last chosen, across tab changes and returning
from a book.

## Behaviour

- Data, in the app's private files:
  - `home.json`: the last good Home, shown at once on launch while a fresh
    one is fetched; written only when a fetch has books.
  - `genres.json`: the genres, fetched again when a day old.
  - `shelf.json`: Want to Read, newest first. A file that no longer reads
    is treated as empty, never a crash.
  - `api` preferences: the site's GraphQL key, fetched from
    `/book/popular_by_date/1990/1` (about 10 kB) when there is none, and
    again once when the service refuses it.
- Home is fetched on launch, and again when its tab is opened more than 30
  minutes after the last fetch, or by Refresh. A failed refresh with Home on
  screen keeps it and toasts "Couldn’t refresh: <error>".
- Network: www.goodreads.com (pages and search suggestions, with a phone
  browser's User-Agent; redirects followed by hand, at most four, never off
  the site); the AppSync GraphQL endpoint goodreads.com uses; covers from
  Amazon's image service (m.media-amazon.com, i.gr-assets.com), asked for at
  the size shown. HTTPS only. Requests time out after 45 s, covers after
  30 s; a cover over 4 MB is refused. Covers are kept in memory only (about
  6 MB).
- When the site answers with its bot check (202 with no body), the error is
  "Goodreads turned the request away. Try again later."
- Permissions: Internet only.
- Portrait only.

## Look

As the Goodreads section of DESIGN.md says: white pages; header and tab bar
beige `#F4F1EA` over `#D6D0C4` rules; brown `#382110` for the wordmark,
headings and the open tab; text `#333333`, grey `#767676`, links teal
`#00635D`; hairlines `#D8D8D8`; Want to Read green `#409D69`; stars orange
`#E87400` on `#D8D8D8`; the chosen row `#EDE6D6`. Merriweather for titles,
the wordmark, descriptions and reviews; Lato for everything else. Both are
the cuts goodreads.com serves, under the OFL (`OFL.txt`).

## Open questions

- Search shows at most five books, because the site's search results page
  wants a browser that runs its bot check's script. Is that enough, or
  should it page through the GraphQL search if one turns up?
- Should Want to Read rows show when they were added, or be sortable?
