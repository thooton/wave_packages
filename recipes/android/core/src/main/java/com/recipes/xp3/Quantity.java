package com.recipes.xp3;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Scaling an ingredient line to another number of servings: the amount it
 * starts with ("200 g", "1 1/2 cups", "\u00BD tsp", "2-3 cloves") is
 * multiplied, and the rest of the line is kept as written. A line with no
 * leading amount ("Salt and pepper", "A pinch of salt") is left alone.
 *
 * Amounts come back the way a cook writes them: a whole number of grams
 * stays a whole number, a fraction stays a fraction (in the single glyphs
 * the phone's font has, "1\u00BD"), a decimal stays a decimal with the same
 * separator.
 */
public final class Quantity {

    private Quantity() {}

    private static final String VULGAR =
        "\u00BD\u2153\u2154\u00BC\u00BE\u215B\u215C\u215D\u215E\u2155\u2156\u2157\u2158\u2159\u215A";
    private static final double[] VULGAR_VALUES = {
        1 / 2.0, 1 / 3.0, 2 / 3.0, 1 / 4.0, 3 / 4.0, 1 / 8.0, 3 / 8.0, 5 / 8.0, 7 / 8.0,
        1 / 5.0, 2 / 5.0, 3 / 5.0, 4 / 5.0, 1 / 6.0, 5 / 6.0,
    };

    /** The fractions written back, in order of preference when two are as close. */
    private static final String NICE = "\u00BD\u00BC\u00BE\u2153\u2154\u215B\u215C\u215D\u215E";
    private static final double[] NICE_VALUES = {
        1 / 2.0, 1 / 4.0, 3 / 4.0, 1 / 3.0, 2 / 3.0, 1 / 8.0, 3 / 8.0, 5 / 8.0, 7 / 8.0,
    };

    private static final String AMOUNT = "(?:\\d+\\s+\\d+/\\d+|\\d+/\\d+|\\d+(?:[.,]\\d+)?(?:\\s?[" + VULGAR + "])?|["
        + VULGAR + "])";
    private static final Pattern LEAD = Pattern.compile(
        "^(" + AMOUNT + ")(?:(\\s*(?:-|\u2013|to)\\s*)(" + AMOUNT + "))?(?![\\d/" + VULGAR + "])");

    /** A line after scaling, and where its amount is in it ([start, end), or -1 when nothing changed). */
    public static final class Scaled {
        public final String text;
        public final int start;
        public final int end;

        Scaled(String text, int start, int end) {
            this.text = text;
            this.start = start;
            this.end = end;
        }

        public boolean changed() {
            return start >= 0;
        }
    }

    /** The line with its leading amount multiplied by `factor`. A factor of 1 keeps it exactly. */
    public static Scaled scale(String line, double factor) {
        Scaled same = new Scaled(line, -1, -1);
        if (factor == 1 || !(factor > 0) || Double.isInfinite(factor)) return same;
        Matcher m = LEAD.matcher(line);
        if (!m.find()) return same;
        String first = scaleAmount(m.group(1), factor);
        if (first == null) return same;
        String amount = first;
        if (m.group(3) != null) {
            String second = scaleAmount(m.group(3), factor);
            if (second == null) return same;
            amount = first + m.group(2) + second;
        }
        return new Scaled(amount + line.substring(m.end()), 0, amount.length());
    }

    private static String scaleAmount(String written, double factor) {
        double value = parse(written);
        if (!(value > 0) || Double.isInfinite(value)) return null;
        double scaled = value * factor;
        boolean fraction = written.indexOf('/') >= 0 || containsVulgar(written);
        if (!fraction && (written.indexOf('.') >= 0 || written.indexOf(',') >= 0)) {
            String out = decimal(scaled, scaled >= 10 ? 1 : 2);
            return written.indexOf(',') >= 0 ? out.replace('.', ',') : out;
        }
        if (!fraction && value >= 10) {
            // Grams, millilitres: whole numbers, one decimal under ten.
            return scaled >= 10 ? Long.toString(Math.round(scaled)) : decimal(scaled, 1);
        }
        return fraction(scaled);
    }

    /** The amount as a number: "2", "1.5", "1,5", "3/4", "1 1/2", "\u00BD", "1\u00BD", "1 \u00BD". NaN when it isn't one. */
    static double parse(String written) {
        String text = written.trim();
        try {
            int slash = text.indexOf('/');
            if (slash >= 0) {
                double whole = 0;
                String[] parts = text.split("\\s+");
                String fraction = parts[parts.length - 1];
                if (parts.length == 2) whole = Double.parseDouble(parts[0]);
                String[] nd = fraction.split("/");
                double denominator = Double.parseDouble(nd[1]);
                if (denominator == 0) return Double.NaN;
                return whole + Double.parseDouble(nd[0]) / denominator;
            }
            double extra = 0;
            if (text.length() > 0) {
                int at = VULGAR.indexOf(text.charAt(text.length() - 1));
                if (at >= 0) {
                    extra = VULGAR_VALUES[at];
                    text = text.substring(0, text.length() - 1).trim();
                }
            }
            double base = text.length() == 0 ? 0 : Double.parseDouble(text.replace(',', '.'));
            return base + extra;
        } catch (RuntimeException e) {
            return Double.NaN;
        }
    }

    /** "3", "1\u00BD", "\u00BE", or a decimal when no common fraction is close. */
    static String fraction(double value) {
        if (value >= 20) return Long.toString(Math.round(value));
        long whole = (long) Math.floor(value);
        double rest = value - whole;
        if (rest < 0.04) return whole > 0 ? Long.toString(whole) : decimal(value, 2);
        if (rest > 0.96) return Long.toString(whole + 1);
        int best = -1;
        double bestError = 0.04;
        for (int i = 0; i < NICE_VALUES.length; i++) {
            double error = Math.abs(rest - NICE_VALUES[i]);
            if (error < bestError - 1e-9) {
                best = i;
                bestError = error;
            }
        }
        if (best < 0) return decimal(value, value >= 1 ? 1 : 2);
        return (whole > 0 ? Long.toString(whole) : "") + NICE.charAt(best);
    }

    static String decimal(double value, int places) {
        BigDecimal rounded = BigDecimal.valueOf(value).setScale(places, RoundingMode.HALF_UP).stripTrailingZeros();
        if (rounded.signum() == 0) rounded = BigDecimal.valueOf(value).setScale(2, RoundingMode.HALF_UP).stripTrailingZeros();
        return rounded.toPlainString();
    }

    private static boolean containsVulgar(String text) {
        for (int i = 0; i < text.length(); i++) if (VULGAR.indexOf(text.charAt(i)) >= 0) return true;
        return false;
    }

    /** "Serves 6" for a recipe for 6, or "Amounts \u00D72" for one that says no number. */
    public static String servingsLabel(int recipeServes, int shown) {
        if (recipeServes > 0) return "Serves " + shown;
        return shown == 1 ? "Amounts as written" : "Amounts \u00D7" + shown;
    }

    /** The factor the amounts are multiplied by to serve `shown`. */
    public static double factor(int recipeServes, int shown) {
        return shown / (double) (recipeServes > 0 ? recipeServes : 1);
    }
}
