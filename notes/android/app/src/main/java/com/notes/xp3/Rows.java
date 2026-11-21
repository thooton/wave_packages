package com.notes.xp3;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.notes.xp3.data.Dates;
import com.notes.xp3.data.Folder;
import com.notes.xp3.data.Note;
import com.notes.xp3.data.Text;
import com.xp3.common.ui.Ui;

import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;

/**
 * Every list in the app, laid out as iOS lays out Notes: a back row, a large
 * title, bold section headings, and white grouped cards of rows on the grey
 * page. Each card row paints its own slice of its card (RowView), so a page
 * is still one ListView.
 *
 * The selection is this adapter's own: MainActivity moves it with the d-pad
 * and the rows paint it, as the yellow wash.
 */
final class Rows extends BaseAdapter {

    static final int NAV = 0;
    static final int TITLE = 1;
    static final int HEADING = 2;
    static final int CAPTION = 3;
    static final int NOTE = 4;
    static final int HIT = 5;
    static final int FOLDER = 6;
    static final int ACTION = 7;
    static final int EMPTY = 8;
    private static final int TYPES = 9;

    /** What a row shows; which fields matter depends on its type. */
    static final class Row {
        final int type;
        String text;
        Note note;
        /** A folder row's folder id, or MainActivity.DELETED for Recently Deleted. */
        String folder;
        int count = -1;
        boolean chevron;
        boolean tick;
        int icon;
        /** For a hit, its folder's name. */
        String place;
        boolean top;
        boolean bottom;

        Row(int type, String text) {
            this.type = type;
            this.text = text;
        }

        boolean isCard() {
            return type == NOTE || type == HIT || type == FOLDER || type == ACTION;
        }

        /** What stays the same about this row when the list is rebuilt, for keeping the selection. */
        String key() {
            if (note != null) return "n:" + note.id;
            if (folder != null) return "f:" + folder;
            if (type == ACTION) return "a:" + text;
            return null;
        }
    }

    private final Context context;
    private final List<Row> rows = new ArrayList<Row>();
    private int selected = -1;
    private String query = "";
    private long now;
    private boolean hours24;
    private TimeZone zone = TimeZone.getDefault();

    private final Typeface medium = Typeface.create("sans-serif-medium", Typeface.NORMAL);
    private final Typeface bold = Typeface.create("sans-serif", Typeface.BOLD);
    private final int margin;

    Rows(Context context) {
        this.context = context;
        margin = dp(8);
    }

    // ------------------------------------------------------------------
    // Contents and selection
    // ------------------------------------------------------------------

    /** Replaces the rows, working out where each card starts and ends. */
    void replace(List<Row> next, String searched) {
        rows.clear();
        rows.addAll(next);
        query = searched == null ? "" : searched.trim();
        now = System.currentTimeMillis();
        zone = TimeZone.getDefault();
        hours24 = android.text.format.DateFormat.is24HourFormat(context);
        for (int i = 0; i < rows.size(); i++) {
            Row row = rows.get(i);
            if (!row.isCard()) continue;
            row.top = i == 0 || !rows.get(i - 1).isCard();
            row.bottom = i == rows.size() - 1 || !rows.get(i + 1).isCard();
        }
        selected = -1;
        notifyDataSetChanged();
    }

    Row row(int position) {
        return rows.get(position);
    }

    int selected() {
        return selected;
    }

    Row selectedRow() {
        return selected >= 0 && selected < rows.size() ? rows.get(selected) : null;
    }

    void select(int position) {
        selected = position;
        notifyDataSetChanged();
    }

    int find(String key) {
        if (key == null) return -1;
        for (int i = 0; i < rows.size(); i++) if (key.equals(rows.get(i).key())) return i;
        return -1;
    }

    /** The selectable row nearest `position`: it, else the next after it, else the last before it. */
    int nearest(int position) {
        int start = Math.max(0, Math.min(position, rows.size() - 1));
        for (int i = start; i < rows.size(); i++) if (isEnabled(i)) return i;
        for (int i = start - 1; i >= 0; i--) if (isEnabled(i)) return i;
        return -1;
    }

    /** The next selectable row from `position` in direction `step`, or -1. */
    int next(int position, int step) {
        for (int i = position + step; i >= 0 && i < rows.size(); i += step) if (isEnabled(i)) return i;
        return -1;
    }

    // ------------------------------------------------------------------
    // Adapter
    // ------------------------------------------------------------------

    @Override
    public int getCount() {
        return rows.size();
    }

    @Override
    public Object getItem(int position) {
        return rows.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public int getViewTypeCount() {
        return TYPES;
    }

    @Override
    public int getItemViewType(int position) {
        return rows.get(position).type;
    }

    @Override
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override
    public boolean isEnabled(int position) {
        return rows.get(position).isCard();
    }

    @Override
    public View getView(int position, View convert, ViewGroup parent) {
        Row row = rows.get(position);
        switch (row.type) {
            case NAV: return nav(row, convert);
            case TITLE: return title(row, convert);
            case HEADING: return heading(row, convert);
            case CAPTION: return caption(row, convert);
            case EMPTY: return empty(row, convert);
            case FOLDER:
            case ACTION: return folder(position, row, convert);
            default: return note(position, row, convert);
        }
    }

    // ------------------------------------------------------------------
    // Rows
    // ------------------------------------------------------------------

    private View nav(Row row, View convert) {
        LinearLayout view = (LinearLayout) convert;
        if (view == null) {
            view = new LinearLayout(context);
            view.setGravity(Gravity.CENTER_VERTICAL);
            view.setPadding(dp(6), 0, dp(6), 0);
            view.setLayoutParams(new AbsListView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));
            ImageView back = new ImageView(context);
            back.setImageDrawable(icon(R.drawable.ic_back, R.color.tint));
            view.addView(back, new LinearLayout.LayoutParams(dp(8), dp(13)));
            TextView label = label(13, R.color.tint_text, null);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
            params.leftMargin = dp(3);
            view.addView(label, params);
        }
        view.getChildAt(0).setVisibility(row.text == null ? View.INVISIBLE : View.VISIBLE);
        ((TextView) view.getChildAt(1)).setText(row.text == null ? "" : row.text);
        return view;
    }

    private View title(Row row, View convert) {
        TextView view = (TextView) convert;
        if (view == null) {
            view = label(22, R.color.ink, bold);
            view.setGravity(Gravity.CENTER_VERTICAL);
            view.setPadding(dp(12), 0, dp(12), 0);
            view.setLayoutParams(new AbsListView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(30)));
        }
        view.setText(row.text);
        return view;
    }

    private View heading(Row row, View convert) {
        TextView view = (TextView) convert;
        if (view == null) {
            view = label(13.5f, R.color.ink, bold);
            view.setPadding(dp(12), dp(8), dp(12), dp(5));
        }
        view.setText(row.text);
        return view;
    }

    private View caption(Row row, View convert) {
        TextView view = (TextView) convert;
        if (view == null) {
            view = label(11.5f, R.color.muted, null);
            view.setPadding(dp(12), dp(7), dp(12), dp(6));
        }
        view.setText(row.text);
        return view;
    }

    private View empty(Row row, View convert) {
        TextView view = (TextView) convert;
        if (view == null) {
            view = label(15, R.color.muted, medium);
            view.setGravity(Gravity.CENTER_HORIZONTAL);
            view.setPadding(dp(12), dp(76), dp(12), 0);
        }
        view.setText(row.text);
        return view;
    }

    private View note(int position, Row row, View convert) {
        boolean hit = row.type == HIT;
        RowView view = (RowView) convert;
        if (view == null) {
            view = card();
            view.setOrientation(LinearLayout.VERTICAL);
            view.setGravity(Gravity.CENTER_VERTICAL);
            view.setPadding(margin + dp(10), 0, margin + dp(10), 0);
            view.setLayoutParams(new AbsListView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(hit ? 54 : 40)));
            view.ruleInset = dp(10);
            view.addView(label(13.5f, R.color.ink, medium));
            TextView line = label(11.5f, R.color.muted, null);
            view.addView(line, below(2));
            if (hit) {
                LinearLayout place = new LinearLayout(context);
                place.setGravity(Gravity.CENTER_VERTICAL);
                ImageView folder = new ImageView(context);
                folder.setImageDrawable(icon(R.drawable.ic_folder, R.color.muted));
                place.addView(folder, new LinearLayout.LayoutParams(dp(11), dp(11)));
                TextView name = label(11, R.color.muted, null);
                LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
                params.leftMargin = dp(3);
                place.addView(name, params);
                view.addView(place, below(2));
            }
        }
        paint(view, position, row);
        Note note = row.note;
        String title = note.title();
        String rest = hit ? Text.snippet(note, query) : note.preview();
        ((TextView) view.getChildAt(0)).setText(marked(title));
        SpannableStringBuilder line = new SpannableStringBuilder();
        line.append(Dates.row(note.modified(), now, zone, hours24));
        line.setSpan(new ForegroundColorSpan(context.getColor(R.color.ink2)), 0, line.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        line.append("\u2002");
        line.append(marked(rest));
        ((TextView) view.getChildAt(1)).setText(line);
        if (hit) {
            ((TextView) ((LinearLayout) view.getChildAt(2)).getChildAt(1)).setText(row.place);
        }
        return view;
    }

    private View folder(int position, Row row, View convert) {
        RowView view = (RowView) convert;
        if (view == null) {
            view = card();
            view.setGravity(Gravity.CENTER_VERTICAL);
            view.setPadding(margin + dp(10), 0, margin + dp(10), 0);
            view.setLayoutParams(new AbsListView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(34)));
            view.ruleInset = dp(37);
            view.addView(new ImageView(context), new LinearLayout.LayoutParams(dp(19), dp(19)));
            TextView name = label(13.5f, R.color.ink, null);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
            params.leftMargin = dp(8);
            view.addView(name, params);
            TextView count = label(13.5f, R.color.muted, null);
            LinearLayout.LayoutParams after = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            after.leftMargin = dp(6);
            view.addView(count, after);
            ImageView end = new ImageView(context);
            end.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            LinearLayout.LayoutParams endParams = new LinearLayout.LayoutParams(dp(14), dp(14));
            endParams.leftMargin = dp(5);
            view.addView(end, endParams);
        }
        paint(view, position, row);
        boolean action = row.type == ACTION;
        ((ImageView) view.getChildAt(0)).setImageDrawable(icon(row.icon, R.color.tint));
        TextView name = (TextView) view.getChildAt(1);
        name.setText(row.text);
        name.setTextColor(context.getColor(action ? R.color.tint_text : R.color.ink));
        TextView count = (TextView) view.getChildAt(2);
        count.setText(row.count >= 0 && !row.tick ? Integer.toString(row.count) : "");
        ImageView end = (ImageView) view.getChildAt(3);
        if (row.tick) end.setImageDrawable(icon(R.drawable.ic_tick, R.color.tint));
        else if (row.chevron) end.setImageDrawable(icon(R.drawable.ic_chev, R.color.chevron));
        else end.setImageDrawable(null);
        end.setVisibility(row.tick || row.chevron ? View.VISIBLE : View.GONE);
        return view;
    }

    // ------------------------------------------------------------------
    // Pieces
    // ------------------------------------------------------------------

    private RowView card() {
        RowView view = new RowView(context);
        view.margin = margin;
        view.cardColor = context.getColor(R.color.card);
        view.radius = dp(10);
        view.ruleColor = context.getColor(R.color.rule);
        view.washColor = context.getColor(R.color.wash);
        return view;
    }

    private void paint(RowView view, int position, Row row) {
        view.top = row.top;
        view.bottom = row.bottom;
        view.focused = position == selected;
        view.rule = !row.top && position - 1 != selected;
        view.invalidate();
    }

    /** The text with every match of the search marked in yellow, as Notes marks them. */
    CharSequence marked(String text) {
        if (query.length() == 0) return text;
        SpannableString out = null;
        int at = Text.find(text, query, 0);
        while (at >= 0) {
            if (out == null) out = new SpannableString(text);
            out.setSpan(new BackgroundColorSpan(context.getColor(R.color.mark)), at, at + query.length(),
                Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            at = Text.find(text, query, at + query.length());
        }
        return out == null ? text : out;
    }

    private TextView label(float sp, int color, Typeface face) {
        TextView view = new TextView(context);
        view.setTextSize(sp);
        view.setTextColor(context.getColor(color));
        view.setIncludeFontPadding(false);
        view.setSingleLine(true);
        view.setEllipsize(TextUtils.TruncateAt.END);
        if (face != null) view.setTypeface(face);
        return view;
    }

    private LinearLayout.LayoutParams below(int gap) {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        params.topMargin = dp(gap);
        return params;
    }

    Drawable icon(int res, int color) {
        Drawable drawable = context.getDrawable(res).mutate();
        drawable.setTint(context.getColor(color));
        return drawable;
    }

    private int dp(float value) {
        return Ui.dp(context, value);
    }
}
