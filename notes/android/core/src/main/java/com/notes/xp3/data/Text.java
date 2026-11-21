package com.notes.xp3.data;

/** Reading a note's text: its title, its preview, and where a search matches it. */
public final class Text {

    private Text() {}

    /** The longest title or preview kept for a list row; a row shows one line of it. */
    static final int MAX_LINE = 200;

    /** The first line with anything but white space on it, trimmed; null when there is none. */
    public static String firstLine(String text) {
        int start = 0;
        while (start <= text.length()) {
            int end = lineEnd(text, start);
            String line = text.substring(start, end).trim();
            if (line.length() > 0) return clip(line);
            start = end + 1;
        }
        return null;
    }

    /**
     * Every line after the first with something on it, trimmed and joined
     * with single spaces, as a row's preview; "" when there are none.
     */
    public static String afterFirstLine(String text) {
        StringBuilder out = new StringBuilder();
        boolean titled = false;
        int start = 0;
        while (start <= text.length() && out.length() < MAX_LINE) {
            int end = lineEnd(text, start);
            String line = text.substring(start, end).trim();
            start = end + 1;
            if (line.length() == 0) continue;
            if (!titled) {
                titled = true;
                continue;
            }
            if (out.length() > 0) out.append(' ');
            out.append(line);
        }
        return clip(out.toString());
    }

    /**
     * Where `query` first appears in `text` at or after `from`, ignoring
     * case; -1 when it doesn't. The match is as long as the query.
     */
    public static int find(String text, String query, int from) {
        if (query.length() == 0) return -1;
        for (int i = Math.max(0, from); i + query.length() <= text.length(); i++) {
            if (text.regionMatches(true, i, query, 0, query.length())) return i;
        }
        return -1;
    }

    /** Whether the note's text has `query` in it, ignoring case. */
    public static boolean matches(String text, String query) {
        return find(text, query, 0) >= 0;
    }

    /**
     * What a search hit shows under its title: its preview when the query is
     * in the title or the preview's first stretch, else the line it was found
     * on, starting a few words before the match so the match can be seen in a
     * row about 35 characters wide.
     */
    public static String snippet(Note note, String query) {
        String title = note.title();
        String preview = note.preview();
        if (Text.matches(title, query)) return preview;
        int inPreview = find(preview, query, 0);
        if (inPreview >= 0 && inPreview < 24) return preview;
        int at = find(note.text, query, 0);
        if (at < 0) return preview;
        int start = note.text.lastIndexOf('\n', at) + 1;
        int end = lineEnd(note.text, at);
        String line = note.text.substring(start, end);
        int offset = at - start;
        if (offset > 16) {
            int cut = line.lastIndexOf(' ', offset - 8);
            cut = cut < 0 ? offset - 8 : cut + 1;
            line = "\u2026" + line.substring(cut);
        }
        return clip(line.trim());
    }

    private static int lineEnd(String text, int start) {
        int end = text.indexOf('\n', start);
        return end < 0 ? text.length() : end;
    }

    private static String clip(String line) {
        return line.length() <= MAX_LINE ? line : line.substring(0, MAX_LINE);
    }
}
