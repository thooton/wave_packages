package com.notes.xp3.data;

/** A folder of notes. "Notes" is always there; the rest are the user's. */
public final class Folder {

    public final String id;
    String name;

    Folder(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public String name() {
        return name;
    }

    /** Whether this is the "Notes" folder, which can't be renamed or deleted. */
    public boolean isDefault() {
        return Notebook.NOTES.equals(id);
    }
}
