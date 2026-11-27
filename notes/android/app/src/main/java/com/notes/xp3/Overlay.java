package com.notes.xp3;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.xp3.common.ui.Ui;

import java.util.ArrayList;
import java.util.List;

/**
 * What opens over a page: Apple's context menu, risen from the left soft
 * key's corner, or an iOS alert. Both dim the page, take every key while
 * they are up, and act on a key's release only when they saw its press, so
 * the release of the key that opened them never acts on them.
 */
abstract class Overlay {

    interface Host {
        void closeOverlay(Overlay overlay);
    }

    /** A menu row or an alert button. */
    static final class Item {
        final String label;
        final int icon;
        final boolean red;
        /** Apple's thick rule above this row, between groups. */
        final boolean group;
        final Runnable action;

        Item(String label, int icon, boolean red, boolean group, Runnable action) {
            this.label = label;
            this.icon = icon;
            this.red = red;
            this.group = group;
            this.action = action;
        }
    }

    final Context context;
    final Host host;
    final FrameLayout view;
    final List<RowView> rows = new ArrayList<RowView>();
    final List<Item> items;
    int selected;
    private int pressed = -1;

    Overlay(Context context, Host host, List<Item> items, int selected) {
        this.context = context;
        this.host = host;
        this.items = items;
        this.selected = selected;
        view = new FrameLayout(context);
        View scrim = new View(context);
        scrim.setBackgroundColor(context.getColor(R.color.scrim));
        scrim.setOnClickListener(v -> host.closeOverlay(this));
        view.addView(scrim, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
    }

    /** The keys that move the choice: Up and Down for a menu, Left and Right for an alert. */
    abstract int step(int keyCode);

    final boolean key(KeyEvent event) {
        int key = event.getKeyCode();
        boolean down = event.getAction() == KeyEvent.ACTION_DOWN;
        if (down) {
            if (event.getRepeatCount() == 0) pressed = key;
            int step = step(key);
            if (step != 0) {
                int next = selected + step;
                if (next >= 0 && next < rows.size()) {
                    selected = next;
                    paint();
                }
            }
            return true;
        }
        boolean seen = pressed == key;
        pressed = -1;
        if (!seen || event.isCanceled()) return true;
        if (Ui.isOk(key)) choose(selected);
        else if (key == KeyEvent.KEYCODE_BACK || MainActivity.isMenu(key)) host.closeOverlay(this);
        return true;
    }

    final void choose(int index) {
        host.closeOverlay(this);
        Runnable action = items.get(index).action;
        if (action != null) action.run();
    }

    final void paint() {
        for (int i = 0; i < rows.size(); i++) {
            RowView row = rows.get(i);
            row.focused = i == selected;
            // The hairline under the yellow row gives way, as it does in the lists.
            row.ruleHidden = i - 1 == selected;
            row.invalidate();
        }
    }

    final RowView button(Item item, int index, int height) {
        RowView row = new RowView(context);
        row.washColor = context.getColor(R.color.wash);
        row.ruleColor = context.getColor(R.color.menu_rule);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setMinimumHeight(dp(height));
        row.setOnClickListener(v -> choose(index));
        rows.add(row);
        return row;
    }

    final TextView label(String text, float sp, int color, boolean medium) {
        TextView label = new TextView(context);
        label.setText(text);
        label.setTextSize(sp);
        label.setTextColor(context.getColor(color));
        label.setIncludeFontPadding(false);
        label.setSingleLine(true);
        label.setEllipsize(TextUtils.TruncateAt.END);
        if (medium) label.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        Rows.track(label, sp);
        return label;
    }

    final GradientDrawable panel() {
        GradientDrawable shape = new GradientDrawable();
        shape.setColor(context.getColor(R.color.menu));
        shape.setCornerRadius(dp(12));
        return shape;
    }

    final int dp(float value) {
        return Ui.dp(context, value);
    }

    /** Apple's context menu at the foot of the screen, over the soft key that opened it. */
    static final class Menu extends Overlay {

        Menu(Context context, Host host, List<Item> items) {
            super(context, host, items, 0);
            LinearLayout card = new LinearLayout(context);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setBackground(panel());
            card.setElevation(dp(8));
            card.setClipToOutline(true);
            for (int i = 0; i < items.size(); i++) {
                Item item = items.get(i);
                if (item.group && i > 0) {
                    View gap = new View(context);
                    gap.setBackgroundColor(context.getColor(R.color.menu_gap));
                    card.addView(gap, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(6)));
                }
                RowView row = button(item, i, 32);
                row.rule = i > 0 && !item.group;
                row.setPadding(dp(12), 0, dp(12), 0);
                int color = item.red ? R.color.red : R.color.ink;
                row.addView(label(item.label, 13.5f, color, false),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
                if (item.icon != 0) {
                    ImageView icon = new ImageView(context);
                    icon.setImageDrawable(tinted(item.icon, color));
                    row.addView(icon, new LinearLayout.LayoutParams(dp(16), dp(16)));
                }
                card.addView(row, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(32)));
            }
            FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM);
            params.setMargins(dp(8), dp(8), dp(8), dp(8));
            view.addView(card, params);
            paint();
        }

        private android.graphics.drawable.Drawable tinted(int res, int color) {
            android.graphics.drawable.Drawable drawable = context.getDrawable(res).mutate();
            drawable.setTint(context.getColor(color));
            return drawable;
        }

        @Override
        int step(int keyCode) {
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP) return -1;
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) return 1;
            return 0;
        }
    }

    /** An iOS alert: a title, a line, and two buttons side by side. */
    static final class Alert extends Overlay {

        Alert(Context context, Host host, String title, String message, List<Item> buttons, int selected) {
            super(context, host, buttons, selected);
            LinearLayout card = new LinearLayout(context);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setBackground(panel());
            card.setElevation(dp(8));
            card.setClipToOutline(true);

            TextView heading = label(title, 14, R.color.ink, false);
            heading.setTypeface(Typeface.create("sans-serif", Typeface.BOLD));
            heading.setGravity(Gravity.CENTER_HORIZONTAL);
            heading.setSingleLine(false);
            LinearLayout.LayoutParams headingParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            headingParams.setMargins(dp(12), dp(12), dp(12), dp(message == null ? 12 : 4));
            card.addView(heading, headingParams);
            if (message != null) {
                TextView line = label(message, 11.5f, R.color.ink, false);
                line.setGravity(Gravity.CENTER_HORIZONTAL);
                line.setSingleLine(false);
                line.setLineSpacing(0, 1.15f);
                LinearLayout.LayoutParams lineParams = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                lineParams.setMargins(dp(12), 0, dp(12), dp(11));
                card.addView(line, lineParams);
            }
            View rule = new View(context);
            rule.setBackgroundColor(context.getColor(R.color.rule));
            card.addView(rule, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Math.max(1, dp(0.75f))));
            LinearLayout bar = new LinearLayout(context);
            for (int i = 0; i < buttons.size(); i++) {
                Item item = buttons.get(i);
                if (i > 0) {
                    View split = new View(context);
                    split.setBackgroundColor(context.getColor(R.color.rule));
                    bar.addView(split, new LinearLayout.LayoutParams(Math.max(1, dp(0.75f)), ViewGroup.LayoutParams.MATCH_PARENT));
                }
                RowView button = button(item, i, 32);
                button.setGravity(Gravity.CENTER);
                button.addView(label(item.label, 13.5f, item.red ? R.color.red : R.color.tint_text, item.red || item.group));
                bar.addView(button, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1));
            }
            card.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(32)));

            FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP);
            params.setMargins(dp(20), dp(68), dp(20), 0);
            view.addView(card, params);
            paint();
        }

        @Override
        int step(int keyCode) {
            if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT) return -1;
            if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) return 1;
            return 0;
        }
    }
}
