package com.recipes.xp3;

import android.content.Intent;
import android.graphics.Paint;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.text.style.TypefaceSpan;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.TextView;

import com.xp3.common.ui.Family;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * A recipe, to cook from: its title and servings, then the ingredients, the
 * numbered steps and the notes, on one page that Up and Down move through.
 * Left and Right change the servings, and the amounts with them; OK ticks
 * off an ingredient or a step. The screen stays on while it is open.
 */
public final class RecipeActivity extends Screen {

    static final String EXTRA_ID = "id";

    private static final int HEAD = 0, SECTION = 1, INGREDIENT = 2, STEP = 3, NOTES = 4;

    private Backend backend;
    private String id;
    private Recipe recipe;
    private int servings;
    private final Set<Integer> ticked = new HashSet<Integer>();
    private final Set<Integer> done = new HashSet<Integer>();

    private ListView list;
    private final List<int[]> rows = new ArrayList<int[]>();
    private final PageAdapter adapter = new PageAdapter();

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        backend = Backend.get(this);
        id = getIntent().getStringExtra(EXTRA_ID);
        recipe = id == null ? null : backend.cookbook().get(id);
        if (recipe == null) {
            finish();
            return;
        }
        servings = base(recipe);

        list = new ListView(this);
        Family.list(list);
        list.setDivider(null);
        list.setDividerHeight(0);
        list.setItemsCanFocus(false);
        list.setAdapter(adapter);
        list.setOnItemClickListener((parent, view, position, rowId) -> toggle(position));
        list.setOnKeyListener((view, key, event) -> {
            if (key != KeyEvent.KEYCODE_DPAD_LEFT && key != KeyEvent.KEYCODE_DPAD_RIGHT) return false;
            if (event.getAction() == KeyEvent.ACTION_DOWN) serve(key == KeyEvent.KEYCODE_DPAD_RIGHT ? 1 : -1);
            return true;
        });
        setContentView(list);
        rebuild();
        list.setSelection(0);
        list.requestFocus();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (recipe == null) return;
        Recipe now = backend.cookbook().get(id);
        if (now == null) {
            finish();
            return;
        }
        if (now == recipe) return;
        // Edited: ticks no longer line up with the lines, and new servings start over.
        if (!now.sameContent(recipe)) {
            ticked.clear();
            done.clear();
        }
        if (now.serves != recipe.serves) servings = base(now);
        recipe = now;
        int at = list.getSelectedItemPosition();
        rebuild();
        list.setSelection(Math.max(0, Math.min(at, rows.size() - 1)));
    }

    private static int base(Recipe recipe) {
        return recipe.serves > 0 ? recipe.serves : 1;
    }

    private void rebuild() {
        rows.clear();
        rows.add(new int[] {HEAD, 0});
        if (!recipe.ingredients.isEmpty()) {
            rows.add(new int[] {SECTION, INGREDIENT});
            for (int i = 0; i < recipe.ingredients.size(); i++) rows.add(new int[] {INGREDIENT, i});
        }
        if (!recipe.steps.isEmpty()) {
            rows.add(new int[] {SECTION, STEP});
            for (int i = 0; i < recipe.steps.size(); i++) rows.add(new int[] {STEP, i});
        }
        if (recipe.notes.length() > 0) {
            rows.add(new int[] {SECTION, NOTES});
            rows.add(new int[] {NOTES, 0});
        }
        adapter.notifyDataSetChanged();
    }

    private void toggle(int position) {
        if (position < 0 || position >= rows.size()) return;
        int[] row = rows.get(position);
        Set<Integer> set = row[0] == INGREDIENT ? ticked : row[0] == STEP ? done : null;
        if (set == null) return;
        Integer index = Integer.valueOf(row[1]);
        if (!set.remove(index)) set.add(index);
        adapter.notifyDataSetChanged();
    }

    private void serve(int change) {
        int next = Math.max(1, Math.min(Recipe.MAX_SERVES, servings + change));
        if (next == servings) return;
        servings = next;
        adapter.notifyDataSetChanged();
    }

    @Override
    void menu() {
        View anchor = list.getSelectedView() != null ? list.getSelectedView() : list;
        PopupMenu popup = new PopupMenu(this, anchor);
        popup.getMenu().add(0, 1, 0, "Edit");
        if (servings != base(recipe)) {
            popup.getMenu().add(0, 2, 1, recipe.serves > 0 ? "Back to serves " + recipe.serves : "Amounts as written");
        }
        if (!ticked.isEmpty() || !done.isEmpty()) popup.getMenu().add(0, 3, 2, "Clear ticks");
        popup.getMenu().add(0, 4, 3, "Delete");
        popup.setOnMenuItemClickListener(item -> {
            switch (item.getItemId()) {
                case 1:
                    startActivity(new Intent(this, EditActivity.class).putExtra(EditActivity.EXTRA_ID, recipe.id));
                    break;
                case 2:
                    servings = base(recipe);
                    adapter.notifyDataSetChanged();
                    break;
                case 3:
                    ticked.clear();
                    done.clear();
                    adapter.notifyDataSetChanged();
                    break;
                default:
                    confirm("Delete \u201c" + recipe.title + "\u201d?", "Delete", () -> {
                        backend.cookbook().remove(recipe.id);
                        backend.save();
                        finish();
                    });
                    break;
            }
            return true;
        });
        popup.show();
    }

    // ---- The page -----------------------------------------------------------

    private final class PageAdapter extends BaseAdapter {
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
            return 5;
        }

        @Override
        public int getItemViewType(int position) {
            return rows.get(position)[0];
        }

        @Override
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override
        public boolean isEnabled(int position) {
            return rows.get(position)[0] != SECTION;
        }

        @Override
        public View getView(int position, View reuse, ViewGroup parent) {
            int[] row = rows.get(position);
            switch (row[0]) {
                case HEAD: return head();
                case SECTION: return heading(row[1]);
                case INGREDIENT: return ingredient(row[1]);
                case STEP: return step(row[1]);
                default: return notes();
            }
        }
    }

    private LinearLayout card() {
        LinearLayout row = new LinearLayout(this);
        row.setBackgroundResource(com.xp3.common.ui.R.drawable.family_focus);
        row.setPadding(dp(10), dp(6), dp(10), dp(6));
        row.setMinimumHeight(dp(30));
        return row;
    }

    /** The title, the time, and the servings with the arrows that change them. */
    private View head() {
        LinearLayout row = card();
        row.setOrientation(LinearLayout.VERTICAL);
        row.setPadding(dp(10), dp(10), dp(10), dp(8));
        TextView title = line(recipe.title, 16f, color(R.color.text));
        title.setTypeface(Family.MEDIUM);
        title.setLineSpacing(dp(2), 1f);
        row.addView(title);
        if (recipe.time.length() > 0) {
            TextView time = line(recipe.time, 12f, color(R.color.text_muted));
            time.setPadding(0, dp(4), 0, 0);
            row.addView(time);
        }
        String label = Quantity.servingsLabel(recipe.serves, servings);
        SpannableString serves = new SpannableString("\u2039  " + label + "  \u203a");
        int accent = color(R.color.focus_rule);
        serves.setSpan(new ForegroundColorSpan(accent), 0, 1, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        serves.setSpan(new ForegroundColorSpan(accent), serves.length() - 1, serves.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        if (servings != base(recipe)) {
            serves.setSpan(new ForegroundColorSpan(accent), 3, 3 + label.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        }
        TextView servesView = line(serves, 13.5f, color(R.color.text));
        servesView.setTypeface(Family.MEDIUM);
        servesView.setPadding(0, dp(8), 0, 0);
        row.addView(servesView);
        return row;
    }

    private View heading(int kind) {
        TextView view = section(kind == INGREDIENT ? "Ingredients" : kind == STEP ? "Steps" : "Notes");
        view.setPadding(dp(10), dp(12), dp(10), dp(4));
        view.setBackgroundColor(color(R.color.row));
        return view;
    }

    /** A mark in a narrow column (a bullet, a step's number, a tick), then the line. */
    private LinearLayout marked(CharSequence mark, int markColor, CharSequence body, boolean muted, boolean struck) {
        LinearLayout row = card();
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.TOP);
        TextView markView = line(mark, 13.5f, markColor);
        markView.setTypeface(Family.MEDIUM);
        markView.setLineSpacing(dp(2), 1f);
        row.addView(markView, new LinearLayout.LayoutParams(dp(18), ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView text = line(body, 13.5f, color(muted ? R.color.text_muted : R.color.text));
        text.setLineSpacing(dp(2), 1f);
        if (struck) text.setPaintFlags(text.getPaintFlags() | Paint.STRIKE_THRU_TEXT_FLAG);
        row.addView(text, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        return row;
    }

    private View ingredient(int index) {
        boolean isTicked = ticked.contains(Integer.valueOf(index));
        Quantity.Scaled scaled = Quantity.scale(recipe.ingredients.get(index), Quantity.factor(recipe.serves, servings));
        SpannableString body = new SpannableString(scaled.text);
        if (scaled.changed() && !isTicked) {
            body.setSpan(new ForegroundColorSpan(color(R.color.focus_rule)), scaled.start, scaled.end, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            body.setSpan(new TypefaceSpan("sans-serif-medium"), scaled.start, scaled.end, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        }
        return marked(isTicked ? "\u2713" : "\u2022", color(isTicked ? R.color.done : R.color.text_muted), body, isTicked, isTicked);
    }

    private View step(int index) {
        boolean isDone = done.contains(Integer.valueOf(index));
        return marked(isDone ? "\u2713" : Integer.toString(index + 1), color(isDone ? R.color.done : R.color.focus_rule),
            recipe.steps.get(index), isDone, false);
    }

    private View notes() {
        LinearLayout row = card();
        TextView text = line(recipe.notes, 13.5f, color(R.color.text));
        text.setLineSpacing(dp(2), 1f);
        row.addView(text, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        return row;
    }
}
