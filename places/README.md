# Places, for the Sonim XP3

Finds places with Google Maps: pizza in Denver, a pharmacy near 85281, coffee
by Union Station. It works the way the delta CLI's former `delta maps` did
([thooton/delta](https://github.com/thooton/delta)): the Google Maps key is
the one kept on the command center (`PUT /maps-key` sets it), and the app
signs in with the delta token.

It takes its look from Google Maps in its dark theme, in Google Sans, laid
out for a d-pad: what to find in the header, filter chips under it, then
the places found as a compact list, each with its name, rating, price,
kind, address (without the country), whether it is open and how far. Before a search,
the recent searches are listed.

- **Near** (the first chip): where to search in or close to: a city, zip
  code, address or landmark, or `lat,lng`. It is remembered between searches,
  so set it once. Left as "Anywhere", Google guesses.
- **Open now** and **Top rated** (4.5 and up) narrow the search, as Maps'
  chips do, and are remembered too.

OK on a place opens its page, all on one page to scroll through: the name
(which shrinks to a small line as you scroll), the rating, kind and whether
it is open, one photo, the address, the week's hours (and happy hour and the
like), website and phone, then Reviews (the rating, Google's summary and the
reviews) and About (what it offers, payment, parking, wheelchair access and
fuel prices).

| Key | |
| --- | --- |
| OK | Header: search. Near chip: change it. Other chips: turn on or off. A result: open it. A recent search: run it again. A place: Call, Copy address, Copy website URL |
| Up / Down | Move between the header, the chips and the results; through the results (past the last loads more); scroll a place |
| Left / Right | Along the chips |
| Call | Put the picked place's number in the dialer |
| Back | Stop what's loading, leave a place, go back to the header, clear the results, or leave |
| Menu | Search, more results, change Near, clear; on a place, call or copy; command center |

Photos are billed by Google one by one (Place Photos), so only a place's
first photo is shown, on its page, fetched small and kept until the app
closes. The results show none.

## Build

```bash
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew :places:core:selfTest :places:app:assembleRelease
```

Nothing is baked in: the APK carries no login. On first launch the app
opens on its setup screen; import a setup file made by the Wave site's
generator (your own Maps key, or a command center), by copying
`wave-setup-places.json` to `Android/data/com.places.xp3/files` on the
phone, or by choosing it with the file picker. A command center login an
older build kept is adopted as the setup. Menu → Setup... changes it.

The typeface is Google Sans Flex (`app/src/main/res/font`), under the SIL
Open Font License 1.1 (`OFL.txt`).
