package com.goodreads.xp3.books;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/** Words as the site writes them, made into words to show: entities, tags, counts, dates. */
public final class Text {

    private Text() {}

    private static final Pattern ENTITY = Pattern.compile("&(#[xX][0-9a-fA-F]+|#[0-9]+|[a-zA-Z]+);");

    /** `text` with its HTML entities turned into the characters they stand for. */
    public static String entities(String text) {
        if (text == null || text.indexOf('&') < 0) return text == null ? "" : text;
        Matcher m = ENTITY.matcher(text);
        StringBuffer out = new StringBuffer();
        while (m.find()) {
            String name = m.group(1);
            String value = null;
            try {
                if (name.startsWith("#x") || name.startsWith("#X")) value = codePoint(Integer.parseInt(name.substring(2), 16));
                else if (name.startsWith("#")) value = codePoint(Integer.parseInt(name.substring(1)));
            } catch (NumberFormatException e) {
                value = null;
            }
            if (value == null) value = named(name);
            m.appendReplacement(out, Matcher.quoteReplacement(value == null ? m.group() : value));
        }
        m.appendTail(out);
        return out.toString();
    }

    private static String codePoint(int value) {
        if (value <= 0 || value > 0x10FFFF || (value >= 0xD800 && value <= 0xDFFF)) return null;
        return new String(Character.toChars(value));
    }

    private static String named(String name) {
        switch (name) {
            case "amp": return "&";
            case "lt": return "<";
            case "gt": return ">";
            case "quot": return "\"";
            case "apos": return "'";
            case "nbsp": return " ";
            case "mdash": return "\u2014";
            case "ndash": return "\u2013";
            case "hellip": return "\u2026";
            case "lsquo": return "\u2018";
            case "rsquo": return "\u2019";
            case "ldquo": return "\u201C";
            case "rdquo": return "\u201D";
            case "middot": return "\u00B7";
            case "eacute": return "\u00E9";
            case "copy": return "\u00A9";
            default: return null;
        }
    }

    private static final Pattern BREAK = Pattern.compile("(?i)<br\\s*/?>");
    private static final Pattern BLOCK_END = Pattern.compile("(?i)</(p|div|blockquote|li|h[1-6])>|<(p|div|blockquote|h[1-6])(\\s[^>]*)?>");
    private static final Pattern TAG = Pattern.compile("<[^>]*>");
    private static final Pattern MARKUP = Pattern.compile("(?i)<(br|p|div|b|i|em|strong|a)[\\s/>]");

    /**
     * Readable text from a review's or description's HTML: breaks and
     * paragraphs become line breaks (never more than one blank line), tags
     * go, entities are decoded, and runs of spaces close up.
     */
    public static String strip(String html) {
        if (html == null) return "";
        String text = html.replace("\r\n", "\n").replace('\r', '\n');
        // Marked-up text breaks only where its tags say; plain text where its lines do.
        if (MARKUP.matcher(text).find()) text = text.replaceAll("\\s+", " ");
        text = BREAK.matcher(text).replaceAll("\n");
        text = BLOCK_END.matcher(text).replaceAll("\n\n");
        text = TAG.matcher(text).replaceAll("");
        text = entities(text);
        text = text.replace('\u00A0', ' ');
        StringBuilder out = new StringBuilder();
        for (String line : text.split("\n", -1)) {
            // A space the markup left before punctuation ("Daddy</b> <b>, offering") closes up.
            String tidy = line.replaceAll("[ \\t\\f]+", " ").replaceAll(" ([,.;:!?])", "$1").trim();
            out.append(tidy).append('\n');
        }
        return out.toString().replaceAll("\n{3,}", "\n\n").trim();
    }

    /** One line: everything that would break it closed up into spaces. */
    public static String line(String text) {
        if (text == null) return "";
        return entities(text).replace('\u00A0', ' ').replaceAll("\\s+", " ").trim();
    }

    /** At most `max` characters, cut at a space where there is one near, ending in "…". */
    public static String cut(String text, int max) {
        if (text.length() <= max) return text;
        int at = text.lastIndexOf(' ', max);
        if (at < max * 3 / 4) at = max;
        return text.substring(0, at).replaceAll("[\\s,;:.]+$", "") + "\u2026";
    }

    /** 615284 as "615,284". */
    public static String count(long value) {
        return String.format(Locale.US, "%,d", value);
    }

    /** "1 rating", "615,284 ratings". */
    public static String counted(long value, String one, String many) {
        return count(value) + " " + (value == 1 ? one : many);
    }

    /** An average rating as the site prints it: "4.19". */
    public static String rating(double value) {
        return String.format(Locale.US, "%.2f", value);
    }

    /** "September 15, 2020", the day in UTC (the service gives midnight-ish instants). */
    public static String date(long millis) {
        SimpleDateFormat format = new SimpleDateFormat("MMMM d, yyyy", Locale.US);
        format.setTimeZone(TimeZone.getTimeZone("UTC"));
        return format.format(new Date(millis));
    }

    /** "Sep 15, 2020". */
    public static String shortDate(long millis) {
        SimpleDateFormat format = new SimpleDateFormat("MMM d, yyyy", Locale.US);
        format.setTimeZone(TimeZone.getTimeZone("UTC"));
        return format.format(new Date(millis));
    }

    private static final Pattern SIZE = Pattern.compile("\\._[A-Z]{2}\\d+_(?=\\.[a-zA-Z]+$)");
    private static final Pattern EXTENSION = Pattern.compile("\\.(jpe?g|png|gif)$", Pattern.CASE_INSENSITIVE);

    /**
     * A cover's address asking for it `height` pixels tall. The covers live on
     * Amazon's image service (m.media-amazon.com, i.gr-assets.com), which
     * scales on request: a `._SY120_` before the extension, in place of any
     * size the address already asks for. Other addresses are left alone.
     */
    public static String cover(String url, int height) {
        if (url == null || url.isEmpty()) return "";
        if (!url.startsWith("https://m.media-amazon.com/") && !url.startsWith("https://i.gr-assets.com/")) return url;
        if (url.contains("/nophoto/")) return "";
        String bare = SIZE.matcher(url).replaceFirst("");
        Matcher m = EXTENSION.matcher(bare);
        if (!m.find()) return url;
        return bare.substring(0, m.start()) + "._SY" + height + "_" + bare.substring(m.start());
    }
}
