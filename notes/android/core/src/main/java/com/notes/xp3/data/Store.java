package com.notes.xp3.data;

import com.xp3.common.Disk;
import com.xp3.common.Json;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * The notebook on disk: one file, notes.json, in the app's private directory.
 *
 * Reads are defensive: a missing or unreadable file is an empty notebook, and
 * a note or folder that can't be read is skipped rather than costing the
 * rest. The file is replaced whole (Disk.write), so a battery pull leaves
 * the previous good copy. If the file is there but can't be read at all, it
 * is kept beside the new one as notes.json.unreadable rather than written
 * over, so nothing typed is lost to a bug.
 */
public final class Store {

    static final String FILE = "notes.json";
    private static final long MAX_FILE = 7000000;

    private final File directory;

    public Store(File directory) {
        this.directory = directory;
    }

    public synchronized Notebook load() {
        Notebook book = new Notebook();
        File file = new File(directory, FILE);
        String json = Disk.read(file, MAX_FILE);
        if (json == null) {
            if (file.length() > 0) keepUnreadable(file);
            book.settle(1);
            return book;
        }
        Map<String, Object> root;
        try {
            root = Json.object(Json.parse(json));
        } catch (RuntimeException e) {
            keepUnreadable(file);
            book.settle(1);
            return book;
        }
        for (Object entry : Json.children(root, "folders")) {
            if (!(entry instanceof Map)) continue;
            Map<String, Object> fields = Json.object(entry);
            String id = Json.text(fields, "id");
            String name = Json.text(fields, "name");
            if (id != null && name != null) book.restoreFolder(id, name);
        }
        for (Object entry : Json.children(root, "notes")) {
            if (!(entry instanceof Map)) continue;
            Map<String, Object> fields = Json.object(entry);
            String id = Json.text(fields, "id");
            String folder = Json.text(fields, "folder");
            String text = Json.text(fields, "text");
            if (id == null || folder == null || text == null) continue;
            long modified = time(fields, "modified");
            long created = fields.containsKey("created") ? time(fields, "created") : modified;
            book.restoreNote(id, folder, text, created, modified, Json.flag(fields, "pinned"), time(fields, "deleted"));
        }
        Double next = Json.number(root, "next");
        book.settle(next == null ? 1 : next.longValue());
        return book;
    }

    /** The notebook as it stands, as text, made on the main thread for {@link #save}. */
    public static String snapshot(Notebook book) {
        List<Object> folders = new ArrayList<Object>();
        for (Folder folder : book.folders()) {
            if (folder.isDefault()) continue;
            folders.add(Json.map("id", folder.id, "name", folder.name));
        }
        List<Object> notes = new ArrayList<Object>();
        for (Note note : book.all()) {
            Map<String, Object> fields = Json.map("id", note.id, "folder", note.folder, "text", note.text,
                "created", Long.valueOf(note.created), "modified", Long.valueOf(note.modified));
            if (note.pinned) fields.put("pinned", Boolean.TRUE);
            if (note.deleted != 0) fields.put("deleted", Long.valueOf(note.deleted));
            notes.add(fields);
        }
        return Json.write(Json.map("version", Integer.valueOf(1), "next", Long.valueOf(book.next()),
            "folders", folders, "notes", notes));
    }

    public synchronized void save(String snapshot) throws IOException {
        Disk.write(new File(directory, FILE), snapshot, false);
    }

    private static long time(Map<String, Object> fields, String key) {
        Double value = Json.number(fields, key);
        return value == null || value.doubleValue() < 0 ? 0 : value.longValue();
    }

    private void keepUnreadable(File file) {
        File kept = new File(directory, FILE + ".unreadable");
        if (!kept.exists()) file.renameTo(kept);
    }
}
