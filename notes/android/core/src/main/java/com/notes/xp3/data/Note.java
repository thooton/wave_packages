package com.notes.xp3.data;

/**
 * One note. As in Apple Notes it is only text: its first line is its title
 * and the lines after it are its preview.
 *
 * Only Notebook changes a note, so every change goes through the rules there
 * (sizes, when the edit time moves, where a recovered note goes).
 */
public final class Note {

    /** At most this many characters in one note: about twenty pages. */
    public static final int MAX_TEXT = 40000;

    /** Apple's words for a note with nothing in it yet, and for one with only a title. */
    public static final String UNTITLED = "New Note";
    public static final String NO_MORE_TEXT = "No additional text";

    public final String id;
    public final long created;
    String folder;
    String text;
    long modified;
    boolean pinned;
    /** When it went to Recently Deleted, or 0 while it is in a folder. */
    long deleted;

    Note(String id, String folder, String text, long created, long modified, boolean pinned, long deleted) {
        this.id = id;
        this.folder = folder;
        this.text = text;
        this.created = created;
        this.modified = modified;
        this.pinned = pinned;
        this.deleted = deleted;
    }

    public String folder() {
        return folder;
    }

    public String text() {
        return text;
    }

    public long modified() {
        return modified;
    }

    public boolean pinned() {
        return pinned;
    }

    public boolean isDeleted() {
        return deleted != 0;
    }

    public long deleted() {
        return deleted;
    }

    /** Whether there is anything in it but white space. */
    public boolean isBlank() {
        return text.trim().length() == 0;
    }

    /** Its first line with something on it, trimmed; "New Note" when it has none. */
    public String title() {
        String line = Text.firstLine(text);
        return line == null ? UNTITLED : line;
    }

    /** The lines after the title, run together on one line; "No additional text" when there are none. */
    public String preview() {
        String rest = Text.afterFirstLine(text);
        return rest.length() == 0 ? NO_MORE_TEXT : rest;
    }
}
