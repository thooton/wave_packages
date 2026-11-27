package com.notes.xp3.data;

import com.xp3.common.Check;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.util.List;
import java.util.TimeZone;

public final class DataTests {

    private DataTests() {}

    private static final long MINUTE = 60L * 1000;
    private static final long DAY = 24 * 60 * MINUTE;
    private static final TimeZone UTC = TimeZone.getTimeZone("UTC");
    /** Friday, November 20, 2026, 10:41 UTC. */
    private static final long NOW = 1795171260000L;

    public static void run(final Check check) {
        check.run("Titles and previews", () -> {
            Notebook book = new Notebook();
            Note note = book.create(Notebook.NOTES, NOW);
            check.same("empty title", "New Note", note.title());
            check.same("empty preview", "No additional text", note.preview());
            book.setText(note.id, "\n  Groceries  \n\nMilk, eggs\n bread \n", NOW);
            check.same("first line with text", "Groceries", note.title());
            check.same("rest joined", "Milk, eggs bread", note.preview());
            book.setText(note.id, "Just a title", NOW);
            check.same("title only", "No additional text", note.preview());
            check.ok("blank", book.create(Notebook.NOTES, NOW).isBlank());
        });

        check.run("Notes and folders", () -> {
            Notebook book = new Notebook();
            check.same("Notes is there", "Notes", book.folders().get(0).name());
            Folder recipes = book.addFolder("  Recipes ");
            Folder work = book.addFolder("Work");
            book.addFolder("apples");
            check.same("trimmed", "Recipes", recipes.name());
            check.same("Notes first, then by name", "Notes apples Recipes Work", names(book.folders()));
            check.fails("duplicate", "Name Taken", () -> book.addFolder("recipes"));
            check.fails("reserved", "Name Taken", () -> book.addFolder("Recently Deleted"));
            check.fails("blank", "Name the folder", () -> book.addFolder("  "));
            check.fails("Notes fixed", () -> book.renameFolder(Notebook.NOTES, "Other"));
            check.fails("Notes stays", () -> book.deleteFolder(Notebook.NOTES, NOW));
            book.renameFolder(work.id, "work");
            check.same("case-only rename allowed", "work", work.name());

            Note a = book.create(recipes.id, NOW - 3 * DAY);
            book.setText(a.id, "Pancakes", NOW - 3 * DAY);
            Note b = book.create(recipes.id, NOW - DAY);
            book.setText(b.id, "Soup", NOW - DAY);
            check.same("count", Integer.valueOf(2), Integer.valueOf(book.count(recipes.id)));
            check.same("newest first", b.id, book.notesIn(recipes.id).get(0).id);
            check.ok("same text keeps time", !book.setText(a.id, "Pancakes", NOW));
            check.same("time kept", Long.valueOf(NOW - 3 * DAY), Long.valueOf(a.modified()));

            book.move(a.id, work.id);
            check.same("moved", work.id, a.folder());
            book.pin(a.id, true);
            check.ok("pinned", a.pinned());
            book.delete(a.id, NOW);
            check.ok("to Recently Deleted", a.isDeleted());
            check.ok("unpinned when deleted", !a.pinned());
            check.same("out of its folder", Integer.valueOf(0), Integer.valueOf(book.count(work.id)));
            book.recover(a.id);
            check.same("back to its folder", work.id, a.folder());

            book.deleteFolder(recipes.id, NOW);
            check.ok("folder gone", book.folder(recipes.id) == null);
            check.ok("its note deleted", b.isDeleted());
            book.recover(b.id);
            check.same("recovered to Notes", Notebook.NOTES, b.folder());

            Note blank = book.create(work.id, NOW);
            check.ok("blank dropped", book.dropIfBlank(blank.id));
            check.ok("gone", book.note(blank.id) == null);
            check.ok("text kept", !book.dropIfBlank(a.id));
            Note empty = book.create(work.id, NOW);
            book.delete(empty.id, NOW);
            check.ok("blank deleted for good", book.note(empty.id) == null);

            check.same("lost folder goes to Notes", Notebook.NOTES,
                book.create("f999", NOW).folder());
        });

        check.run("Recently Deleted", () -> {
            Notebook book = new Notebook();
            Note old = book.create(Notebook.NOTES, NOW);
            book.setText(old.id, "Old gate code", NOW);
            Note recent = book.create(Notebook.NOTES, NOW);
            book.setText(recent.id, "Parking", NOW);
            book.delete(old.id, NOW - 31 * DAY);
            book.delete(recent.id, NOW - 2 * DAY);
            check.same("both there", Integer.valueOf(2), Integer.valueOf(book.deleted().size()));
            check.ok("purged", book.purge(NOW));
            check.ok("old gone", book.note(old.id) == null);
            check.ok("recent kept", book.note(recent.id) != null);
            check.ok("nothing more", !book.purge(NOW));
            book.delete(recent.id, NOW);
            check.ok("delete now", book.note(recent.id) == null);
            Note c = book.create(Notebook.NOTES, NOW);
            book.setText(c.id, "C", NOW);
            book.delete(c.id, NOW);
            book.emptyDeleted();
            check.same("emptied", Integer.valueOf(0), Integer.valueOf(book.deleted().size()));
        });

        check.run("Search", () -> {
            Notebook book = new Notebook();
            Folder recipes = book.addFolder("Recipes");
            Note groceries = book.create(Notebook.NOTES, NOW);
            book.setText(groceries.id, "Groceries\nMilk, eggs, bread, coffee", NOW);
            Note pancakes = book.create(recipes.id, NOW - 10 * DAY);
            book.setText(pancakes.id, "Pancakes\n1 cup milk, 2 eggs", NOW - 10 * DAY);
            Note gone = book.create(Notebook.NOTES, NOW);
            book.setText(gone.id, "Milk run", NOW);
            book.delete(gone.id, NOW);
            List<Note> hits = book.search(" MILK ");
            check.same("hits outside Recently Deleted", Integer.valueOf(2), Integer.valueOf(hits.size()));
            check.same("newest first", groceries.id, hits.get(0).id);
            check.same("blank finds nothing", Integer.valueOf(0), Integer.valueOf(book.search("  ").size()));
            check.same("find", Integer.valueOf(6), Integer.valueOf(Text.find("1 cup milk", "MILK", 0)));
            check.same("from", Integer.valueOf(-1), Integer.valueOf(Text.find("milk", "milk", 1)));
            check.same("snippet is the preview", "1 cup milk, 2 eggs", Text.snippet(pancakes, "milk"));
            Note long1 = book.create(Notebook.NOTES, NOW);
            book.setText(long1.id, "Trip\nFirst pack the bags, then the passports and tickets\nCall the kennel about the dog", NOW);
            String snippet = Text.snippet(long1, "kennel");
            check.ok("snippet shows a far match", Text.matches(snippet, "kennel"));
            check.ok("from its line", snippet.startsWith("Call") || snippet.startsWith("\u2026"));
        });

        check.run("Dates", () -> {
            check.same("time today", "10:41 AM", Dates.row(NOW, NOW, UTC, false));
            check.same("24 hours", "10:41", Dates.row(NOW, NOW, UTC, true));
            check.same("midnight", "12:00 AM", Dates.row(NOW - (10 * 60 + 41) * MINUTE, NOW, UTC, false));
            check.same("row yesterday", "Yesterday", Dates.row(NOW - DAY, NOW, UTC, false));
            check.same("weekday", "Monday", Dates.row(NOW - 4 * DAY, NOW, UTC, false));
            check.same("short date", "11/2/26", Dates.row(NOW - 18 * DAY, NOW, UTC, false));
            check.same("full", "November 20, 2026 at 10:41 AM", Dates.full(NOW, UTC, false));
            TimeZone york = TimeZone.getTimeZone("America/New_York");
            check.same("days follow the zone", "Yesterday", Dates.row(NOW - 6 * 60 * MINUTE, NOW, york, false));

            Notebook book = new Notebook();
            Note pinned = book.create(Notebook.NOTES, NOW - 40 * DAY);
            book.setText(pinned.id, "Gift ideas", NOW - 40 * DAY);
            book.pin(pinned.id, true);
            Note today = book.create(Notebook.NOTES, NOW);
            book.setText(today.id, "Groceries", NOW);
            Note week = book.create(Notebook.NOTES, NOW);
            book.setText(week.id, "Trip", NOW - 3 * DAY);
            List<Dates.Section> sections = Dates.sections(book.notesIn(Notebook.NOTES), true);
            check.same("pinned, then the rest", 2, sections.size());
            check.same("pinned first", "Pinned", sections.get(0).title);
            check.same("the pinned note", pinned.id, sections.get(0).notes.get(0).id);
            check.ok("no date headings", sections.get(1).title == null);
            check.same("latest change first", today.id, sections.get(1).notes.get(0).id);
            check.same("then older", week.id, sections.get(1).notes.get(1).id);
            List<Dates.Section> flat = Dates.sections(book.notesIn(Notebook.NOTES), false);
            check.same("one run when not pinning", 1, flat.size());
            check.same("all of them", 3, flat.get(0).notes.size());
            check.same("by last change", pinned.id, flat.get(0).notes.get(2).id);
            book.pin(pinned.id, false);
            check.same("no pins, one run", 1, Dates.sections(book.notesIn(Notebook.NOTES), true).size());
        });

        check.run("Store round trip", () -> {
            File dir = Files.createTempDirectory("notes-test").toFile();
            Store store = new Store(dir);
            Notebook empty = store.load();
            check.same("missing file is empty", Integer.valueOf(0), Integer.valueOf(empty.all().size()));

            Notebook book = new Notebook();
            Folder recipes = book.addFolder("Recipes \"best\"");
            Note a = book.create(recipes.id, NOW);
            book.setText(a.id, "Pancakes\n1 cup milk\t\u00e9\u2603", NOW);
            book.pin(a.id, true);
            Note b = book.create(Notebook.NOTES, NOW - DAY);
            book.setText(b.id, "Parking", NOW - DAY);
            book.delete(b.id, NOW);
            store.save(Store.snapshot(book));

            Notebook back = store.load();
            check.same("folders", "Notes Recipes \"best\"", names(back.folders()));
            Note a2 = back.note(a.id);
            check.same("text", a.text(), a2.text());
            check.same("folder", recipes.id, a2.folder());
            check.ok("pinned", a2.pinned());
            check.same("created", Long.valueOf(NOW), Long.valueOf(a2.created));
            Note b2 = back.note(b.id);
            check.same("deleted at", Long.valueOf(NOW), Long.valueOf(b2.deleted()));
            check.same("deleted keeps its folder", Notebook.NOTES, b2.folder());
            Note fresh = back.create(Notebook.NOTES, NOW);
            check.ok("ids don't clash", back.note(a.id) != fresh && back.note(b.id) != fresh);

            File file = new File(dir, Store.FILE);
            try (FileOutputStream out = new FileOutputStream(file)) {
                out.write(("{\"notes\":[{\"id\":\"n1\",\"folder\":\"gone\",\"text\":\"Kept\",\"modified\":5},"
                    + "{\"id\":7},\"junk\",{\"id\":\"n1\",\"folder\":\"notes\",\"text\":\"dup\",\"modified\":1}],"
                    + "\"folders\":[{\"id\":\"f2\",\"name\":\"A\"},{\"id\":\"f3\",\"name\":\"a\"}]}")
                    .getBytes("UTF-8"));
            }
            Notebook odd = store.load();
            check.same("bad entries skipped", Integer.valueOf(1), Integer.valueOf(odd.all().size()));
            check.same("orphan to Notes", Notebook.NOTES, odd.note("n1").folder());
            check.same("duplicate folder dropped", "Notes A", names(odd.folders()));
            check.ok("next id past loaded", !"n1".equals(odd.create(Notebook.NOTES, NOW).id));

            try (FileOutputStream out = new FileOutputStream(file)) {
                out.write("{not json".getBytes("UTF-8"));
            }
            Notebook broken = store.load();
            check.same("unreadable is empty", Integer.valueOf(0), Integer.valueOf(broken.all().size()));
            check.ok("kept aside", new File(dir, Store.FILE + ".unreadable").isFile());
            check.ok("not overwritten later", !file.exists());
        });
    }

    private static String names(List<Folder> folders) {
        StringBuilder out = new StringBuilder();
        for (Folder folder : folders) {
            if (out.length() > 0) out.append(' ');
            out.append(folder.name());
        }
        return out.toString();
    }
}
