package com.notes.xp3;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.LinearLayout;

/**
 * A row that paints its own slice of an iOS grouped card: the white card
 * (rounded where the card starts and ends), the hairline above it, and the
 * yellow wash when it is the d-pad's row. A row outside a card (a menu's)
 * paints only the hairline and the wash.
 *
 * ListView's own selector would draw under these opaque rows, so the
 * highlight is the row's to draw.
 */
final class RowView extends LinearLayout {

    private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private final RectF rect = new RectF();
    private final float density;

    /** Inset of the card from the row's sides, px; the card's own colour, or 0 for none. */
    int margin;
    int cardColor;
    boolean top;
    boolean bottom;
    float radius;
    /** Whether to draw the hairline at the top edge, and how far in from the card's left it starts. */
    boolean rule;
    int ruleInset;
    int ruleColor;
    /** Set while the row above is the yellow one, whose wash the hairline would cut into. */
    boolean ruleHidden;
    boolean focused;
    int washColor;

    RowView(Context context) {
        super(context);
        density = context.getResources().getDisplayMetrics().density;
        setWillNotDraw(false);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        float w = getWidth();
        float h = getHeight();
        if (cardColor != 0) {
            fill.setColor(cardColor);
            rect.set(margin, 0, w - margin, h);
            float t = top ? radius : 0;
            float b = bottom ? radius : 0;
            path.reset();
            path.addRoundRect(rect, new float[] {t, t, t, t, b, b, b, b}, Path.Direction.CW);
            canvas.drawPath(path, fill);
        }
        if (rule && !ruleHidden && !focused) {
            fill.setColor(ruleColor);
            canvas.drawRect(margin + ruleInset, 0, w - margin, Math.max(1, Math.round(density * 0.75f)), fill);
        }
        if (focused) {
            float inset = 3 * density;
            float r = 7 * density;
            fill.setColor(washColor);
            rect.set(margin + inset, inset, w - margin - inset, h - inset);
            canvas.drawRoundRect(rect, r, r, fill);
        }
        super.onDraw(canvas);
    }
}
