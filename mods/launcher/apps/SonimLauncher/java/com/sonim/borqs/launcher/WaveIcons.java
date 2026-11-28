package com.sonim.borqs.launcher;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.util.List;
import java.util.Locale;

/**
 * Launcher Improved: icons for every folder in the tray, drawn in the stock tray's folder style (a
 * rounded folder with a tab, like ic_colorful_folder_apps / ic_red_folder_apps) with the first
 * four apps inside shown as a 2x2 preview.
 */
final class WaveIcons {
    private WaveIcons() {
    }

    /** Stock tray icon size: app_tray_application_icon_height_width. */
    private static final int ICON_DP = 42;
    /** Stock red theme's folder outline. */
    private static final int RED = 0xFFD7182A;

    /** Colours for folders by name; others get one from the palette by a hash of their name. */
    private static int colorFor(String name) {
        String key = name == null ? "" : name.trim().toLowerCase(Locale.ROOT);
        switch (key) {
            case "reading": return 0xFF00897B;
            case "media": return 0xFFC2185B;
            case "daily": return 0xFF1E88E5;
            case "files": return 0xFF6D4C41;
            case "system": return 0xFF546E7A;
            case "school": return 0xFF3949AB;
            case "games": return 0xFF43A047;
            case "tools": return 0xFF43A047;         // the stock Tools folder's green
            case "applications": return 0xFFF57C00; // the stock Applications folder's orange
            case "talk": return 0xFF1E88E5;
            case "planner": return 0xFF8E24AA;
            case "travel": return 0xFFF4511E;
            default:
                int[] palette = {0xFF00897B, 0xFFC2185B, 0xFF1E88E5, 0xFF6D4C41, 0xFF546E7A, 0xFF3949AB,
                        0xFF8E24AA, 0xFF43A047, 0xFFE53935, 0xFFF4511E};
                return palette[(key.hashCode() & 0x7fffffff) % palette.length];
        }
    }

    private static int darker(int c) {
        return Color.rgb(Color.red(c) * 3 / 4, Color.green(c) * 3 / 4, Color.blue(c) * 3 / 4);
    }

    /** theme: the launcher's current_theme (0 colourful, 1 red). */
    static Drawable folder(Resources res, String name, List<Drawable> apps, int theme) {
        float density = res.getDisplayMetrics().density;
        int size = Math.round(ICON_DP * density);
        float u = size / 42f;
        Bitmap bmp = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bmp);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);

        RectF tab = new RectF(2 * u, 3 * u, 19 * u, 12 * u);
        RectF body = new RectF(1 * u, 7 * u, 41 * u, 41 * u);
        Path tabPath = new Path();
        tabPath.addRoundRect(tab, 3 * u, 3 * u, Path.Direction.CW);
        Path bodyPath = new Path();
        bodyPath.addRoundRect(body, 5 * u, 5 * u, Path.Direction.CW);

        if (theme == 1) {
            p.setStyle(Paint.Style.FILL);
            p.setColor(Color.WHITE);
            c.drawPath(tabPath, p);
            c.drawPath(bodyPath, p);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(1.6f * u);
            p.setColor(RED);
            c.drawPath(tabPath, p);
            p.setStyle(Paint.Style.FILL);
            p.setColor(Color.WHITE);
            c.drawRect(tab.left + u, body.top - 0.5f * u, tab.right - u, body.top + 2 * u, p);
            p.setStyle(Paint.Style.STROKE);
            p.setColor(RED);
            c.drawPath(bodyPath, p);
        } else {
            int color = colorFor(name);
            p.setStyle(Paint.Style.FILL);
            p.setColor(darker(color));
            c.drawPath(tabPath, p);
            p.setColor(color);
            c.drawPath(bodyPath, p);
        }

        // 2x2 preview of the first apps, each on a light tile.
        float cell = 15 * u, gap = 2 * u;
        float gridW = 2 * cell + gap;
        float x0 = body.centerX() - gridW / 2, y0 = body.centerY() - gridW / 2 + 0.5f * u;
        Paint tile = new Paint(Paint.ANTI_ALIAS_FLAG);
        tile.setColor(theme == 1 ? 0xFFF4F4F4 : 0xE6FFFFFF);
        int n = Math.min(4, apps.size());
        for (int i = 0; i < 4; i++) {
            float x = x0 + (i % 2) * (cell + gap), y = y0 + (i / 2) * (cell + gap);
            RectF r = new RectF(x, y, x + cell, y + cell);
            if (i >= n) {
                tile.setAlpha(theme == 1 ? 255 : 70);
                c.drawRoundRect(r, 3 * u, 3 * u, tile);
                tile.setAlpha(255);
                continue;
            }
            tile.setColor(theme == 1 ? 0xFFF4F4F4 : 0xE6FFFFFF);
            c.drawRoundRect(r, 3 * u, 3 * u, tile);
            Drawable d = apps.get(i);
            if (d == null) continue;
            // The app's own drawable is shown elsewhere too: draw it, then give its bounds back.
            Rect saved = d.copyBounds();
            float inset = 1 * u;
            d.setBounds(Math.round(r.left + inset), Math.round(r.top + inset),
                    Math.round(r.right - inset), Math.round(r.bottom - inset));
            d.draw(c);
            d.setBounds(saved);
        }
        return new BitmapDrawable(res, bmp);
    }
}
