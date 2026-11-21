# AGENTS.md

A small, dependency-free Android app for the Sonim XP3 that shows book
recommendations from the book recommendation service. A sibling of
`../places` and the rest, under the same constraints: 240x320 mdpi, d-pad
driven, no AndroidX or third-party libraries, `:core` plain Java
`--release 8` running on API 27. It follows the family look (`../DESIGN.md`)
in an oxblood hue.

## The service

`services/book-recommender` in thooton/wave holds the OpenRouter key and
the ISBN database search; this app never has either. The contract, agreed
with that service:

- `POST {server}/v1/recommendations`, `Content-Type: application/json`,
  body `{"prompt": "..."}`, the prompt at most 1200 Unicode code points.
  `server` may already end in `/v1/recommendations`; it is appended once
  otherwise. `Authorization: Bearer <token>` only when the setup has a
  token (the service's `WAVE_BOOK_RECS_TOKEN`).
- `200 {"books": [{"isbn", "title", "author"}]}`: canonical ISBN-13s, at
  most 20, at least five when the service finds enough. An empty list is
  both "nothing matched" and "that wasn't a request for books" (for
  instance a prompt trying to get a message out through book titles); the
  app shows both as "No books to recommend" and never as a failure.
- Otherwise `{"error": code}`: 400 `invalid_request`, 401 `unauthorized`,
  404 `not_found`, 405 `method_not_allowed`, 415
  `unsupported_media_type`, 429 `busy`, 503 `service_unavailable`.
  `Recommender.failure` maps these (and a proxy's bare 502/504 or redirect)
  to a `Failure.Kind`, whose message is shown; nothing from a response
  body is ever shown.
- The service gives up after about 45 s; the app's deadline is 90 s
  (common `Http`: no redirects, bounded body).

## How it works

- `android/core`: `Recommender` (endpoint, prompt check, request, parse,
  failures, behind a `Transport` so the tests and the sample mode share
  the real parsing), `Book` (ISBN-13 check, one-line text), `Search` (the
  last prompt and its books, kept in `files/last-search.json`), `Sample`
  (made-up answers). Tests in `src/test` run via `:core:selfTest`, against
  common's loopback `TestServer`.
- `android/app`: `MainActivity`, the one screen.
- Books the service sends without a valid ISBN-13 or a title are dropped,
  duplicates by ISBN too; a missing author shows as nothing.
- `am start -n com.bookrecs.xp3/.MainActivity -e sample 1` uses `Sample`
  instead of the network, without a setup, and keeps nothing. Its prompt
  picks the answer: "busy", "down", "token", "garbled", "nothing", a number
  from 1 to 20, or six books. Everything in it is invented; use it for the
  Actions emulator, which must never see a real setup or token.
