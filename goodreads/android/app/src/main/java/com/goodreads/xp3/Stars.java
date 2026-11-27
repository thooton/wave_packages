package com.goodreads.xp3;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;

/**
 * Five stars filled to a rating, as the site's static stars are: the orange
 * up to the rating, to the fraction, and grey beyond.
 */
final class Stars extends View {

    private final Paint on = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint off = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path star = new Path();
    private final int size;
    private final int gap;
    private double rating;

    Stars(Context context, float sizeDp) {
        super(context);
        size = Look.dp(context, sizeDp);
        gap = Math.max(1, Math.round(size * 0.12f));
        on.setColor(context.getColor(R.color.star));
        off.setColor(context.getColor(R.color.star_off));
        // A five-pointed star in a size-by-size box, its points up.
        double outer = size / 2.0;
        double inner = outer * 0.4;
        for (int i = 0; i < 10; i++) {
            double radius = i % 2 == 0 ? outer : inner;
            double angle = Math.PI / 5 * i - Math.PI / 2;
            float x = (float) (outer + radius * Math.cos(angle));
            float y = (float) (outer * 1.08 + radius * Math.sin(angle));
            if (i == 0) star.moveTo(x, y);
            else star.lineTo(x, y);
        }
        star.close();
    }

    void setRating(double value) {
        rating = Math.max(0, Math.min(5, value));
        invalidate();
    }

    @Override
    protected void onMeasure(int widthSpec, int heightSpec) {
        setMeasuredDimension(size * 5 + gap * 4, size);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        for (int i = 0; i < 5; i++) {
            int left = i * (size + gap);
            canvas.save();
            canvas.translate(left, 0);
            canvas.drawPath(star, off);
            double fill = Math.max(0, Math.min(1, rating - i));
            if (fill > 0) {
                canvas.clipRect(0, 0, (float) (size * fill), size);
                canvas.drawPath(star, on);
            }
            canvas.restore();
        }
    }
}
