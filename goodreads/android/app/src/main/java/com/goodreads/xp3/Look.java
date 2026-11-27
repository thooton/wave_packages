package com.goodreads.xp3;

import android.content.Context;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.TypefaceSpan;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * The classic goodreads.com, as its styles set it: Lato for the words of
 * the interface, Merriweather for titles and for what people wrote. Both are
 * the cuts the site serves, under the SIL Open Font License (see OFL.txt).
 */
final class Look {

    static final int REGULAR = 0;
    static final int BOLD = 1;
    static final int ITALIC = 2;

    private static Typeface[] lato;
    private static Typeface[] merriweather;

    private Look() {}

    static synchronized Typeface lato(Context context, int style) {
        if (lato == null) {
            lato = new Typeface[] {
                load(context, "lato_regular", Typeface.SANS_SERIF, Typeface.NORMAL),
                load(context, "lato_bold", Typeface.SANS_SERIF, Typeface.BOLD),
                load(context, "lato_italic", Typeface.SANS_SERIF, Typeface.ITALIC),
            };
        }
        return lato[style];
    }

    static synchronized Typeface serif(Context context, int style) {
        if (merriweather == null) {
            merriweather = new Typeface[] {
                load(context, "merriweather_regular", Typeface.SERIF, Typeface.NORMAL),
                load(context, "merriweather_bold", Typeface.SERIF, Typeface.BOLD),
                load(context, "merriweather_italic", Typeface.SERIF, Typeface.ITALIC),
            };
        }
        return merriweather[style];
    }

    private static Typeface load(Context context, String name, Typeface fallback, int style) {
        try {
            return Typeface.createFromAsset(context.getAssets(), "fonts/" + name + ".ttf");
        } catch (RuntimeException e) {
            return Typeface.create(fallback, style);
        }
    }

    static int dp(Context context, float value) {
        return Math.round(value * context.getResources().getDisplayMetrics().density);
    }

    static TextView text(Context context, Typeface face, float sp, int colorRes) {
        TextView view = new TextView(context);
        view.setTypeface(face);
        view.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        view.setTextColor(context.getColor(colorRes));
        view.setIncludeFontPadding(false);
        return view;
    }

    /**
     * The site's header: its beige bar with the wordmark at the left, "good"
     * in the serif's book weight and "reads" in its bold, in the brown.
     */
    static View header(Context context) {
        LinearLayout bar = new LinearLayout(context);
        bar.setOrientation(LinearLayout.VERTICAL);
        bar.setBackgroundColor(context.getColor(R.color.beige));
        TextView mark = text(context, serif(context, REGULAR), 17, R.color.brown);
        SpannableStringBuilder word = new SpannableStringBuilder("goodreads");
        word.setSpan(new FaceSpan(serif(context, BOLD)), 4, 9, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        mark.setText(word);
        mark.setGravity(Gravity.CENTER_VERTICAL);
        mark.setPadding(dp(context, 10), 0, dp(context, 10), dp(context, 2));
        bar.addView(mark, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(context, 30)));
        View rule = new View(context);
        rule.setBackgroundColor(context.getColor(R.color.beige_rule));
        bar.addView(rule, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1));
        return bar;
    }

    /** A span setting text in a given face (TypefaceSpan takes only family names before API 28). */
    static final class FaceSpan extends TypefaceSpan {
        private final Typeface face;

        FaceSpan(Typeface face) {
            super("sans-serif");
            this.face = face;
        }

        @Override
        public void updateDrawState(android.text.TextPaint paint) {
            paint.setTypeface(face);
        }

        @Override
        public void updateMeasureState(android.text.TextPaint paint) {
            paint.setTypeface(face);
        }
    }
}
