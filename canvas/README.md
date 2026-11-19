# Canvas, for the Sonim XP3

Week Strip: a calm, planner-style Canvas app for the XP3's 240x320 screen, d-pad and keypad.

The home screen is the week: Assigned work on a timeline under a strip of days, with Missing and Done beside it. This semester's classes (worked out from Canvas's term names) have Stream, Classwork, People and Grades. An assignment page shows the due date, instructions and the teacher's files. Links in a teacher's text are stops for Up and Down: OK opens one (a PDF, a picture or a web page's text) or saves it to the SD card's Download folder. You can add typed answers (bold, italic, underline and lists from Options; pasted Markdown arrives formatted), photos of paper work (saved as one PDF), audio, files and links, then turn them in. Grades, private comments, class comments, classic quizzes, notifications and opt-in reminders are all here. Everything is kept for offline use. A turn-in made with no signal waits on the phone and finishes when the phone reconnects.

## Build and test

```bash
JAVA_HOME=/usr/lib/jvm/java-21-openjdk ./gradlew :canvas:core:selfTest :canvas:app:assembleRelease
adb install -r canvas/android/app/build/outputs/apk/release/app-release.apk
```

## Setup

On first launch the app opens on its setup screen. Make a setup file on the Wave site: your school's Canvas address with a Canvas access token (Account, Settings, Approved integrations) or a canvas-cookie service and its token, and optionally an IANA time zone; or a Delta command center, whose Canvas relay signs in for the app. Copy `wave-setup-canvas.json` to `Android/data/com.todo.xp3/files` on the phone and choose Import, or pick it with the file picker; it is deleted once read. **Options → Settings → Account** shows the setup and opens the setup screen again. Cookies from a cookie service are held in memory for fifteen minutes and never saved.

## Controls

| Key | Action |
| --- | --- |
| Menu | Options for this screen (Zoom, Clear, Gallery, Pause…) |
| OK | Open, select, or press the button the d-pad is on |
| Up / Down | Move through the list; Up from the top of the list reaches the strip, then the tabs |
| Left / Right | Change the day, the tab or the page |
| 1–7, 0 | Jump to a day of the week, or back to today |
| Back / Clear | Back one screen (deletes a character in a text field) |

What the app sends to Canvas is limited to the student's own work: submissions, comments on them, discussion replies, planner check marks and classic quiz answers. A link outside Canvas is fetched only when you open or save it, with no login sent. The APK carries no login; a setup file does, so treat it like a password. Bricolage Grotesque is under the SIL Open Font License (`OFL.txt`).
