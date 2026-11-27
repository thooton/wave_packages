# AGENTS.md

## Purpose and scope

A dependency-free way to discover books on Goodreads on the Sonim XP3,
styled after the classic goodreads.com. A sibling of `../newyorker` and the
rest, under the same constraints: 240x320 mdpi, d-pad driven, no AndroidX or
third-party libraries, `:core` plain Java `--release 8` running on API 27.

Read-only and without an account, on purpose: no sign-in, rating, reviewing
or shelving on Goodreads. Want to Read is a list on the phone. See SPEC.md
for what is left out.

## How it reads Goodreads

The Goodreads Android app (2.77, `com.goodreads`) reads its own service at
`kca.amazon.com` (`kca://book/...`, `kca://work/...` URIs), signed in with an
Amazon account, so it is no use here. What it shares with the website is
the AWS AppSync GraphQL service the website's Next.js pages query, which
takes an API key every page carries. So:

- **The key**: `Api.KEY_PAGE` (`/book/popular_by_date/1990/1`, about 10 kB)
  carries `"apiKey":"da2-..."` in its `__NEXT_DATA__`. It is kept in the
  `api` preferences; a 401/403 or `UnauthorizedException` fetches it again
  once.
- **GraphQL** (`Api.GRAPHQL`, POST JSON, header `x-api-key`), with the
  queries cut down to what is shown:
  - `getBookByLegacyId(legacyId)`: a book, its work's stats
    (`ratingsCountDist` is one star to five), genres, series, details. The
    `description` is HTML (`<br />`, `<b>`, `<i>`): `Text.strip` follows the
    markup, not the raw newlines.
  - `getSimilarBooks(id: bookUri)`: Readers also enjoyed.
  - `getReviews(filters: {resourceType: WORK, resourceId: workUri})`:
    community reviews. Its `pageInfo.hasNextPage` comes back null while a
    `nextPageToken` is still sent; `Api.next` treats a token as more unless
    hasNextPage is plainly false.
  - `getTopList(name: "books-by-release-date-YYYY-MM", period: "A",
    location: "ALL")`: the month's popular books, by rank, paged.
  - `getBasicGenres`: the main genres, with `webUrl` giving the slug.
  The service does not allow introspection; the queries the website itself
  sends are in its `_next/static` chunks (`query getBookPageData`...), and
  the app's own GraphQL texts (a few: GetBook, GetCommunityReviews...) are
  plain strings in its dex.
- **The site's HTML** (`Pages.books`): a genre's new releases, most read and
  popular (`/genres/new_releases/<slug>`, `/genres/most_read/<slug>`,
  `/shelf/show/<slug>`: `li.bookItem` with `rel=<id>`, the title in the
  cover's alt, the author in a hidden schema.org cite) and the site-wide
  most read (`/book/most_read`: schema.org Book table rows with
  "X avg rating — N ratings" and "N people read it").
- **Search**: `/book/auto_complete?format=json&q=`, at most five books. The
  search results page (`/search?q=`) answers 202 with an empty body and
  `x-amzn-waf-action: challenge` (an AWS WAF script check); don't use it.
  Any page can do that; `Api.page` turns it into `Api.TURNED_AWAY`.
- **Covers**: Amazon's image service scales on request: `Text.cover`
  puts `._SY<height>_` before the extension in place of any size there.

If the service or the pages change shape, run `Live` (below) before
guessing; it prints what each call returns.

## Layout

- `android/core`, `com.goodreads.xp3.books`: `Api` (the key, GraphQL,
  search, pages, behind a `Transport`), `Pages` (books out of list pages and
  suggestions), `Book`, `Detail`, `Review`, `Genre`, `Section` and
  `Source` (Home's cached sections and where a list comes from), `Shelf`
  (Want to Read), `Text` (entities, HTML to text, counts, dates, cover
  sizes). Tests in `src/test` (`SelfTest`, `BooksTests`) use pages and
  answers written for the tests in the site's shapes, never copied from it:
  `./gradlew :goodreads:core:selfTest`. `Live` is not part of the self-test:
  it runs the same calls against the real site by hand:
  `java -cp goodreads/android/core/build/classes/java/main:goodreads/android/core/build/classes/java/test:common/core/build/classes/java/main:common/core/build/classes/java/testFixtures com.goodreads.xp3.Live`
  after `./gradlew :goodreads:core:testClasses`.
- `android/app`: `Screen` (the header, list, states, keys and the d-pad's
  movement every screen shares), `MainActivity` (the four tabs),
  `ListActivity` (a genre, a top list, a page), `BookActivity`, `Rows` (every
  kind of row), `Stars`, `Pictures` (covers, in-memory LRU), `Net` (the
  Transport, redirects within the site by hand), `Books` (the shared Api and
  Shelf), `Look` (fonts, the header).

## The d-pad and the list

Every row is enabled, but only rows with an action are washed or act on OK.
ListView snaps back to its selected row whenever it lays out (data arriving,
a wash changing) if that row has scrolled off, so the selection must always
sit on a row on screen: `Screen.scroll` moves it to the nearest row with an
action wholly on screen, or rests it on the first row on screen, and
`Screen.settle` does the same after rows change. Rows paint their own wash
(`Rows.wash`, via `SelectableAdapter`); the platform selector is
transparent. Don't go back to `isEnabled` false rows or a drawable selector.

## Look

See the Goodreads section of `../DESIGN.md`. The fonts are the site's own
Merriweather and Lato cuts from s.gr-assets.com, both OFL (`OFL.txt`). The
launcher icon is the classic Goodreads "g" (the app's
`icn_logo_goodreads_old` vector) in the brown on the header's beige.
