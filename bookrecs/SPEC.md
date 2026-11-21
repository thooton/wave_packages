# Book Recs

## Purpose

Book Recs asks a book recommendation service for books and shows them on the
Sonim XP3 (240x320, d-pad, soft keys, T9 keypad), driven one-handed with
keys, never touch. The user types what they'd like to read in their own
words: books like a title ("books like Piranesi"), a genre ("cozy
mysteries"), a vibe ("melancholy books for a rainy weekend"), or a number of
them ("12 space operas"). The service (`services/book-recommender` in
thooton/wave) asks OpenRouter and checks each book against an ISBN
database; the app shows the list it answers with.

It must stay one prompt and one list. It must never hold an OpenRouter or
other model key, talk to a model or book database itself, or become a
reader, a shop, a library tracker or a chat.

## Not wanted

- No OpenRouter key, model choice or prompt engineering on the phone.
- No header naming the app, and no count of results (DESIGN.md rule 8).
- No text telling the user how to use the app (DESIGN.md rule 7). The
  prompt's hint, "A title, genre or mood", says what it takes.
- No covers, ratings or descriptions: the service doesn't send them, and
  fetching them would mean another service.
- No touch-first controls; everything works from keys.
- No third-party libraries, AndroidX or Material components.

## Setup

The shared setup screen (`../common/SETUP.md`), from
`android/app/src/main/assets/wave-setup.json`. Settings: **Service address**
(`server`, required, https only, typed or imported) and **Service token**
(`token`, optional, secret, imported only), sent as a bearer token. No
command center backend. With nothing set up the app opens on the setup
screen.

## The screen

Under the status bar, in the header's oxblood, the prompt: a soft field
(`family_field`) up to four lines tall, white with the accent outline while
it has the focus. Under it, on white:

- **Nothing asked yet** (first launch, or after New search): nothing; the
  prompt has the focus.
- **Asking**: a spinner in the accent over "Finding books".
- **Books**: one row each, in the service's order: the title in Medium,
  13.5sp, up to three lines; the author under it, 12sp, muted, up to two
  lines (no line when there is no author). The focus is a family card. The
  list takes the focus when the answer comes.
- **No books**: "No books to recommend", centred, the prompt keeping the
  focus. This is what the service's empty list shows, whether nothing
  matched or the service declined the request (a prompt that isn't a
  request for books, such as one trying to spell out a message in titles).
- **Failure**: "Couldn't get books" over why, in muted text: "No network,
  or that address does not exist.", "The connection timed out.", "The
  service is busy.", "The service is unavailable.", "The service failed
  (HTTP n).", "The service's answer was unreadable.", "The service couldn't
  take that request.", "The service didn't accept this phone's token.",
  "There is no book service at that address." or "The service address
  redirects elsewhere.". Under it a `FamilyButton` with the focus: "Try
  again" for the network, busy, unavailable and unreadable cases; "Setup"
  for the token and address cases; none when the request was refused.

The last prompt and its books are kept and shown when the app opens again
(not a failure, and not the sample mode's).

## Keys

| Key | In the prompt | On the books |
| --- | --- | --- |
| Keypad | Types; at most 1200 characters (code points) | |
| OK | Asks for the prompt, trimmed (nothing when blank) | Opens the book |
| Down | Down a line; from the last line, to the books or the button | Next book |
| Up | Up a line | Previous book; from the first, to the prompt |
| Menu | New search, Setup | Same |
| Back | Leaves the app | To the prompt |

While asking, Back stops the request and shows what was there before; its
answer, if it still comes, is dropped. Asking again while asking replaces
the request.

**A book** opens a dialog titled with the book: the author, then "ISBN
9780000000000" in muted text, then two full-width actions stacked, the
first focused: **More like this** (asks for "Books similar to <title> by
<author>", which also goes into the prompt) and **Copy ISBN** (toast "ISBN
copied"). Back closes it. (Three buttons side by side don't fit the
screen.)

**Menu**: New search (stops any request, clears the prompt, the list and
the kept search, and focuses the prompt) and Setup (the setup screen).
After the setup changes there, the app starts over with it.

## Network

`POST {server}/v1/recommendations` with `{"prompt"}`, JSON, the bearer token
when set; 90 s deadline, no redirects, at most 8 MB read. Books without a
valid ISBN-13 or a title are dropped, as are repeated ISBNs, and at most 50
are shown (the service sends at most 20). See `AGENTS.md` for the contract.

## Sample mode

`am start -n com.bookrecs.xp3/.MainActivity -e sample 1` answers from
invented books after a second, without a setup or the network, keeps
nothing, and has no Setup in its menu. "busy", "down", "token", "garbled"
and "nothing" in the prompt show those answers; a number from 1 to 20 gets
that many books; anything else six.
