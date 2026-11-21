package com.notes.xp3.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Every note and folder, and every change to them, under Apple Notes' rules:
 *
 * - "Notes" is always there and can't be renamed or deleted.
 * - A deleted note goes to Recently Deleted for 30 days, then is gone.
 *   Deleting it there, or emptying Recently Deleted, removes it at once.
 * - Deleting a folder sends its notes to Recently Deleted. A note recovered
 *   after its folder has gone goes to Notes.
 * - A note's edit time moves only when its text changes.
 *
 * Not thread-safe: the app changes it on the main thread and hands Store a
 * copy to write.
 */
public final class Notebook {

    public static final String NOTES = "notes";
    public static final String NOTES_NAME = "Notes";
    public static final String DELETED_NAME = "Recently Deleted";

    public static final int MAX_NOTES = 3000;
    public static final int MAX_FOLDERS = 60;
    public static final int MAX_NAME = 40;
    public static final long KEEP_DELETED = 30L * 24 * 60 * 60 * 1000;

    private final List<Folder> folders = new ArrayList<Folder>();
    private final List<Note> notes = new ArrayList<Note>();
    private long next = 1;

    public Notebook() {
        folders.add(new Folder(NOTES, NOTES_NAME));
    }

    // ------------------------------------------------------------------
    // Reading
    // ------------------------------------------------------------------

    /** Notes first, then the user's folders by name. */
    public List<Folder> folders() {
        List<Folder> result = new ArrayList<Folder>(folders);
        Collections.sort(result, new Comparator<Folder>() {
            @Override
            public int compare(Folder a, Folder b) {
                if (a.isDefault() != b.isDefault()) return a.isDefault() ? -1 : 1;
                int byName = a.name.compareToIgnoreCase(b.name);
                return byName != 0 ? byName : a.name.compareTo(b.name);
            }
        });
        return result;
    }

    public Folder folder(String id) {
        for (Folder folder : folders) if (folder.id.equals(id)) return folder;
        return null;
    }

    public Note note(String id) {
        for (Note note : notes) if (note.id.equals(id)) return note;
        return null;
    }

    /** Every note, deleted or not, in no particular order. */
    public List<Note> all() {
        return new ArrayList<Note>(notes);
    }

    /** The notes in a folder, latest change first. */
    public List<Note> notesIn(String folder) {
        List<Note> result = new ArrayList<Note>();
        for (Note note : notes) if (!note.isDeleted() && note.folder.equals(folder)) result.add(note);
        return newestFirst(result);
    }

    /** Recently Deleted, latest change first. */
    public List<Note> deleted() {
        List<Note> result = new ArrayList<Note>();
        for (Note note : notes) if (note.isDeleted()) result.add(note);
        return newestFirst(result);
    }

    public int count(String folder) {
        return notesIn(folder).size();
    }

    /**
     * Every note outside Recently Deleted with `query` in it, ignoring case,
     * latest change first. A blank query finds nothing.
     */
    public List<Note> search(String query) {
        List<Note> result = new ArrayList<Note>();
        String wanted = query.trim();
        if (wanted.length() == 0) return result;
        for (Note note : notes) {
            if (!note.isDeleted() && Text.matches(note.text, wanted)) result.add(note);
        }
        return newestFirst(result);
    }

    // ------------------------------------------------------------------
    // Notes
    // ------------------------------------------------------------------

    /** A new, empty note at the top of `folder` (Notes, if that folder has gone). */
    public Note create(String folder, long now) {
        if (notes.size() >= MAX_NOTES) throw new IllegalStateException("There's no room for another note");
        String home = folder(folder) == null ? NOTES : folder;
        Note note = new Note("n" + next++, home, "", now, now, false, 0);
        notes.add(note);
        return note;
    }

    /** Replaces a note's text. Returns whether it changed (and so whether its time moved). */
    public boolean setText(String id, String text, long now) {
        Note note = require(id);
        if (text.length() > Note.MAX_TEXT) throw new IllegalArgumentException("This note is too long");
        if (note.text.equals(text)) return false;
        note.text = text;
        note.modified = now;
        return true;
    }

    public void pin(String id, boolean pinned) {
        require(id).pinned = pinned;
    }

    /** Moves a note into a folder; a deleted note is recovered into it. */
    public void move(String id, String folder) {
        if (folder(folder) == null) throw new IllegalArgumentException("That folder has gone");
        Note note = require(id);
        note.folder = folder;
        note.deleted = 0;
    }

    /**
     * Deletes a note: to Recently Deleted, or for good if it is there
     * already or has nothing in it.
     */
    public void delete(String id, long now) {
        Note note = require(id);
        if (note.isDeleted() || note.isBlank()) notes.remove(note);
        else {
            note.deleted = Math.max(1, now);
            note.pinned = false;
        }
    }

    /** Back from Recently Deleted to the folder it was in, or to Notes if that has gone. */
    public void recover(String id) {
        Note note = require(id);
        if (folder(note.folder) == null) note.folder = NOTES;
        note.deleted = 0;
    }

    /** Removes a note for good if it has nothing in it, as Apple drops an empty note on leaving it. */
    public boolean dropIfBlank(String id) {
        Note note = note(id);
        if (note == null || !note.isBlank()) return false;
        notes.remove(note);
        return true;
    }

    public void emptyDeleted() {
        for (int i = notes.size() - 1; i >= 0; i--) if (notes.get(i).isDeleted()) notes.remove(i);
    }

    /** Removes what has been in Recently Deleted for 30 days. Returns whether anything went. */
    public boolean purge(long now) {
        boolean any = false;
        for (int i = notes.size() - 1; i >= 0; i--) {
            Note note = notes.get(i);
            if (note.isDeleted() && now - note.deleted >= KEEP_DELETED) {
                notes.remove(i);
                any = true;
            }
        }
        return any;
    }

    // ------------------------------------------------------------------
    // Folders
    // ------------------------------------------------------------------

    public Folder addFolder(String name) {
        if (folders.size() > MAX_FOLDERS) throw new IllegalArgumentException("There's no room for another folder");
        String clean = checkName(name, null);
        Folder folder = new Folder("f" + next++, clean);
        folders.add(folder);
        return folder;
    }

    public void renameFolder(String id, String name) {
        Folder folder = folder(id);
        if (folder == null) throw new IllegalArgumentException("That folder has gone");
        if (folder.isDefault()) throw new IllegalArgumentException("Notes can't be renamed");
        folder.name = checkName(name, folder);
    }

    /** Deletes a folder, sending its notes to Recently Deleted. */
    public void deleteFolder(String id, long now) {
        Folder folder = folder(id);
        if (folder == null) return;
        if (folder.isDefault()) throw new IllegalArgumentException("Notes can't be deleted");
        for (Note note : notesIn(id)) delete(note.id, now);
        folders.remove(folder);
    }

    /**
     * The name trimmed, or an error in Apple's words: a folder needs a name,
     * and no two folders (nor Recently Deleted) share one, whatever the case.
     */
    public String checkName(String name, Folder renaming) {
        String clean = name == null ? "" : name.replace('\n', ' ').trim();
        if (clean.length() == 0) throw new IllegalArgumentException("Name the folder");
        if (clean.length() > MAX_NAME) throw new IllegalArgumentException("That name is too long");
        if (clean.equalsIgnoreCase(DELETED_NAME)) throw new IllegalArgumentException("Name Taken");
        for (Folder folder : folders) {
            if (folder != renaming && folder.name.equalsIgnoreCase(clean)) {
                throw new IllegalArgumentException("Name Taken");
            }
        }
        return clean;
    }

    // ------------------------------------------------------------------
    // Loading (Store only)
    // ------------------------------------------------------------------

    void restoreFolder(String id, String name) {
        if (NOTES.equals(id)) return;
        if (folder(id) != null || folders.size() > MAX_FOLDERS) return;
        try {
            folders.add(new Folder(id, checkName(name, null)));
        } catch (IllegalArgumentException duplicate) {
            // Two folders of one name, from a hand-edited file: the second is
            // dropped and its notes land in Notes.
        }
    }

    void restoreNote(String id, String folder, String text, long created, long modified, boolean pinned, long deleted) {
        if (note(id) != null || notes.size() >= MAX_NOTES || text.length() > Note.MAX_TEXT) return;
        notes.add(new Note(id, folder, text, created, modified, pinned, deleted));
    }

    /** After loading: notes whose folder is missing go to Notes, and new ids won't clash. */
    void settle(long savedNext) {
        long highest = 0;
        for (Note note : notes) {
            if (folder(note.folder) == null && !note.isDeleted()) note.folder = NOTES;
            highest = Math.max(highest, serial(note.id));
        }
        for (Folder folder : folders) highest = Math.max(highest, serial(folder.id));
        next = Math.max(savedNext, highest + 1);
    }

    long next() {
        return next;
    }

    private static long serial(String id) {
        try {
            return Long.parseLong(id.substring(1));
        } catch (RuntimeException e) {
            return 0;
        }
    }

    private Note require(String id) {
        Note note = note(id);
        if (note == null) throw new IllegalArgumentException("That note has gone");
        return note;
    }

    private static List<Note> newestFirst(List<Note> list) {
        Collections.sort(list, new Comparator<Note>() {
            @Override
            public int compare(Note a, Note b) {
                if (a.modified != b.modified) return a.modified > b.modified ? -1 : 1;
                long x = serial(a.id), y = serial(b.id);
                return x == y ? b.id.compareTo(a.id) : (x > y ? -1 : 1);
            }
        });
        return list;
    }
}
