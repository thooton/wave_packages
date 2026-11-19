# The setup screen (common/ui `Setup`, `SetupActivity`)

Canvas, Charge, Mail, Places, Authenticator and Flashcards carry no login in
their APKs. Each is set up on the phone from a setup payload, as
`spec/setup-payload.md` in thooton/wave specifies (the site's generator
writes them). This is how the shared screen behaves; each app's `SPEC.md`
says only what is its own. An app's settings are described in
`<app>/android/app/src/main/assets/wave-setup.json`, from which the screen
(and the generator) are built; `common/core`'s `Config` checks a payload
against it, and its self-test checks every descriptor in the tree.

## When it shows

- An app with no setup opens on its setup screen instead of its own, and
  shows nothing that needs one. Once a setup is imported the app opens.
  Back leaves the app.
- From the app (its menu's Setup... or Settings), the screen shows the
  current setup. Back returns to the app. If the setup changed (imported
  again, signed out) the app starts over with the new one; signed out, it
  opens on the setup screen again.
- Versions from before setup payloads kept a login; it is adopted once as
  the setup (a command center login as a Delta setup, Charge's Tesla tokens
  and Canvas's settings as a direct one), and the old copy is removed.

## The screen

A 36dp header in the app's primary colour: "Set up <App>" with nothing set
up, "<App> setup" otherwise. Under it, on a white page that scrolls:

- Nothing set up: the app's one-line description, "Not set up yet.", and
  buttons: "On this phone only" (Authenticator and Flashcards only: their
  direct backend needs nothing), "Import setup file" ("Import a command
  center" for those two), "Choose a file...", "Type it in..." (only for an
  app whose required settings are all short enough to type; none today),
  and "Command center..." (apps with a Delta backend).
- Set up: what it is set up with ("Directly", "On this phone only" or
  "Through the command center at <host>"), the setup's label, and each
  given setting as "<Label>: <value>", a secret as "set" only. Buttons:
  "Import again", "Choose a file...", "Change <setting>..." for each
  setting short enough to type (a direct setup only), "On this phone only"
  (Authenticator and Flashcards set up through a command center), and
  "Sign out".
- Then, always: "Setup file" (where to put one), the app's limits under
  "Without a command center" (or "Good to know" for Charge), and what the
  command center does under "With a command center".

The first button has the focus. Up and Down move through the buttons, OK
presses one.

## Importing

- **Import setup file** reads every `wave-setup*.json` in
  `Android/data/<package>/files` on the phone's storage (no permission
  needed). None there: an alert says where to copy one. One that reads:
  "Import this setup?" with the summary, Import and Cancel. Several: a list
  of their names first. None that read: "Can't import" and the first
  file's problem ("This setup file is for Mail, not Places", "Maps API key
  doesn't look right", ...), then "The file is still in <folder>.", with
  OK and "Delete it" ("Delete them"). A value is never shown in a message.
- **Choose a file...** opens Android's file picker; the picked file is
  read and confirmed the same way.
- After Import, the file is deleted (through the picker's provider when
  picked); from the app's folder, every setup file there goes, the spare
  copies too, since on Android 8 any app with storage access can read
  Android/data. If it can't be, an alert names it and asks the user to delete
  it, since it holds secrets. Then the toast "<App> is set up" and the app
  opens.
- **Command center...** is a dialog with the address and a masked token,
  Save and Cancel. Both are needed ("Both the address and the token are
  needed"); the address must be https.
- **Change <setting>...** is a dialog with that one field, checked as an
  import would be.
- **Sign out** asks "Sign out?" ("<App> forgets its setup on this phone,
  and needs a setup file again."), then forgets it, toasts "Signed out"
  and shows the screen with nothing set up.

## Where it is kept

`files/wave-setup.json` in the app's private storage, owner-only, as the
payload was imported, written whole or not at all (a temporary file renamed
over it). Never on shared storage, never logged. It is part of
Android backup like the rest of the app's data (allowBackup is on in every
app so `adb backup` can move a phone's data to another, logins included).
That is a decision of the owner's (Wave `docs/decisions.md`, decided item
11), with a cost: whoever holds an `adb backup` of the phone can read every
app's setup, so Tesla tokens, Authenticator accounts, Canvas and Flashcards
tokens, Mail's login and a command center sign-in. The owner accepted that
for moving a phone with its logins on their own device. Keep a backup like
the secrets it holds, and sign out or revoke what it held if one is lost.
Don't set `allowBackup="false"` in an app, or leave the setup file out of
backup, without changing that decision first.

`Setup.stamp` changes with every save and sign-out, and with the file's
size and time, so a setup written just before the process died still
counts as a change.
