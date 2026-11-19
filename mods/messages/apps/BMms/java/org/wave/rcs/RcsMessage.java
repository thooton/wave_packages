package org.wave.rcs;

/** Incoming message (value object; the engine never changes it after delivery). */
public final class RcsMessage {
    /** IMDN Message-ID. */
    public String id;
    /** E.164 sender. */
    public String from;
    /** E.164 (self) for 1:1; for group messages also self. */
    public String to;
    /** null for 1:1. A copy, safe to keep. */
    public RcsGroup group;
    /** ms (CPIM DateTime, else receive time). */
    public long timestamp;
    /** text/plain, or the file's mime type. */
    public String contentType;
    /** For text/plain. */
    public String text;
    /** For files (already downloaded); null for text. */
    public java.io.File file;
    /** Original file name for files. */
    public String fileName;
    /** File size in bytes for files. */
    public long fileSize;

    public RcsMessage() {}

    public boolean isFile() { return file != null; }

    @Override public String toString() {
        return "RcsMessage{id=" + id + " from=" + from + " group=" + (group == null ? null : group.id)
                + " type=" + contentType + (file != null ? " file=" + file.getName() : "") + "}";
    }
}
