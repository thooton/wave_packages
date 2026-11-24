package com.recipes.xp3;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputType;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.TextView;

import com.xp3.common.ui.Family;
import com.xp3.common.ui.Ui;

import java.util.ArrayList;
import java.util.List;

/**
 * The cookbook: a search box on the header's colour, and under it every
 * recipe that matches, in title order. OK opens a recipe; Menu has New
 * recipe, and Edit and Delete for the highlighted one.
 */
public final class MainActivity extends Screen {

    private static final int EDIT = 1;

    private Backend backend;
    private EditText field;
    private FrameLayout content;
    private ListView list;
    private final List<Recipe> shown = new ArrayList<Recipe>();
    private final RecipeAdapter adapter = new RecipeAdapter();
    /** A recipe to highlight when the list is next shown: one just saved. */
    private String pendingId;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        backend = Backend.get(this);
        build();
        refresh(null);
        if (!shown.isEmpty()) list.requestFocus();
    }

    @Override
    protected void onResume() {
        super.onResume();
        String keep = pendingId != null ? pendingId : selectedId();
        pendingId = null;
        refresh(keep);
    }

    @Override
    protected void onActivityResult(int request, int result, Intent data) {
        super.onActivityResult(request, result, data);
        if (request != EDIT || result != RESULT_OK || data == null) return;
        pendingId = data.getStringExtra(EditActivity.EXTRA_ID);
        Recipe saved = backend.cookbook().get(pendingId);
        // A new recipe the search would hide: show everything, with it highlighted.
        if (saved != null && !saved.matches(query())) field.setText("");
        list.requestFocus();
    }

    // ---- The screen ---------------------------------------------------------

    private void build() {
        LinearLayout root = vertical();
        root.setBackgroundColor(color(R.color.row));

        LinearLayout bar = vertical();
        bar.setBackgroundColor(color(R.color.primary));
        bar.setPadding(dp(6), dp(6), dp(6), dp(6));
        field = new EditText(this);
        field.setId(View.generateViewId());
        field.setBackgroundResource(com.xp3.common.ui.R.drawable.family_field);
        field.setPadding(dp(10), dp(7), dp(10), dp(7));
        field.setMinHeight(dp(30));
        field.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
        field.setTextColor(color(R.color.text));
        field.setHintTextColor(color(R.color.text_muted));
        field.setHint("Search");
        field.setIncludeFontPadding(false);
        field.setSingleLine(true);
        field.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        field.setImeOptions(EditorInfo.IME_ACTION_SEARCH);
        field.setFilters(new InputFilter[] {new InputFilter.LengthFilter(80)});
        field.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {}

            @Override
            public void afterTextChanged(Editable s) {
                refresh(null);
            }
        });
        // OK (on its press: T9 eats the first release) or Search: on to the results.
        field.setOnKeyListener((view, key, event) -> {
            if (!Ui.isOk(key)) return false;
            if (event.getAction() == KeyEvent.ACTION_DOWN && event.getRepeatCount() == 0) toResults();
            return true;
        });
        field.setOnEditorActionListener((view, action, event) -> {
            if (action != EditorInfo.IME_ACTION_SEARCH) return false;
            toResults();
            return true;
        });
        bar.addView(field, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        content = new FrameLayout(this);
        root.addView(content, Ui.weighted());

        list = new ListView(this);
        list.setId(View.generateViewId());
        Family.list(list);
        list.setAdapter(adapter);
        list.setItemsCanFocus(false);
        list.setNextFocusUpId(field.getId());
        list.setOnItemClickListener((parent, view, position, id) -> {
            if (position < shown.size()) open(shown.get(position));
        });

        setContentView(root);
    }

    private String query() {
        return field.getText().toString();
    }

    /** Shows what matches the search, keeping the highlight on `keepId` if it is still there. */
    private void refresh(String keepId) {
        int previous = list.getSelectedItemPosition();
        boolean listHadFocus = list.hasFocus();
        shown.clear();
        shown.addAll(backend.cookbook().search(query()));
        adapter.notifyDataSetChanged();

        if (shown.isEmpty()) {
            if (query().trim().length() == 0) showEmpty();
            else showNoMatch();
            return;
        }
        if (list.getParent() != content) Ui.fill(content, list);
        int at = -1;
        if (keepId != null) {
            for (int i = 0; i < shown.size(); i++) if (shown.get(i).id.equals(keepId)) at = i;
        }
        if (at < 0) at = keepId == null && previous >= 0 && !field.hasFocus() ? Math.min(previous, shown.size() - 1) : 0;
        list.setSelection(at);
        if (listHadFocus || !field.hasFocus()) list.requestFocus();
    }

    /** No recipes at all: say so, with New recipe as the one thing to do. */
    private void showEmpty() {
        boolean typing = field.hasFocus();
        LinearLayout box = vertical();
        box.setGravity(Gravity.CENTER);
        box.setBackgroundColor(color(R.color.row));
        TextView message = Family.empty(this, "No recipes yet", null);
        message.setFocusable(false);
        box.addView(message, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        Button add = new Button(this, null, 0, com.xp3.common.ui.R.style.FamilyButton);
        add.setText("New recipe");
        add.setPadding(dp(18), 0, dp(18), 0);
        add.setNextFocusUpId(field.getId());
        add.setOnClickListener(view -> newRecipe());
        box.addView(add, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(36)));
        Ui.fill(content, box);
        if (!typing) add.requestFocus();
    }

    private void showNoMatch() {
        TextView message = Family.empty(this, "No matching recipes", null);
        message.setFocusable(false);
        Ui.fill(content, message);
        if (!field.hasFocus()) field.requestFocus();
    }

    private void toResults() {
        if (shown.isEmpty()) return;
        hideKeyboard(field);
        list.requestFocus();
    }

    private Recipe selected() {
        if (!list.hasFocus() || list.getParent() != content) return null;
        int at = list.getSelectedItemPosition();
        return at >= 0 && at < shown.size() ? shown.get(at) : null;
    }

    private String selectedId() {
        int at = list.getSelectedItemPosition();
        return at >= 0 && at < shown.size() ? shown.get(at).id : null;
    }

    // ---- Actions ------------------------------------------------------------

    private void open(Recipe recipe) {
        startActivity(new Intent(this, RecipeActivity.class).putExtra(RecipeActivity.EXTRA_ID, recipe.id));
    }

    private void newRecipe() {
        if (backend.cookbook().isFull()) {
            toast("The cookbook is full");
            return;
        }
        startActivityForResult(new Intent(this, EditActivity.class), EDIT);
    }

    private void edit(Recipe recipe) {
        startActivityForResult(new Intent(this, EditActivity.class).putExtra(EditActivity.EXTRA_ID, recipe.id), EDIT);
    }

    private void delete(final Recipe recipe) {
        confirm("Delete \u201c" + recipe.title + "\u201d?", "Delete", () -> {
            int at = shown.indexOf(recipe);
            backend.cookbook().remove(recipe.id);
            backend.save();
            String next = null;
            if (at >= 0 && at + 1 < shown.size()) next = shown.get(at + 1).id;
            else if (at > 0) next = shown.get(at - 1).id;
            refresh(next);
        });
    }

    @Override
    void menu() {
        final Recipe recipe = selected();
        View anchor = recipe != null && list.getSelectedView() != null ? list.getSelectedView() : field;
        PopupMenu popup = new PopupMenu(this, anchor);
        popup.getMenu().add(0, 1, 0, "New recipe");
        if (recipe != null) {
            popup.getMenu().add(0, 2, 1, "Edit");
            popup.getMenu().add(0, 3, 2, "Delete");
        }
        if (query().length() > 0) popup.getMenu().add(0, 4, 3, "Clear search");
        popup.setOnMenuItemClickListener(item -> {
            switch (item.getItemId()) {
                case 1: newRecipe(); break;
                case 2: edit(recipe); break;
                case 3: delete(recipe); break;
                default:
                    field.setText("");
                    if (!shown.isEmpty()) list.requestFocus();
                    break;
            }
            return true;
        });
        popup.show();
    }

    @Override
    public void onBackPressed() {
        // Back in a search clears it before it leaves.
        if (query().length() > 0) {
            field.setText("");
            hideKeyboard(field);
            if (!shown.isEmpty()) list.requestFocus();
            return;
        }
        super.onBackPressed();
    }

    // ---- The list -----------------------------------------------------------

    /** A recipe: its title, and under it in grey how many it serves and how long it takes. */
    private final class RecipeAdapter extends BaseAdapter {
        @Override
        public int getCount() {
            return shown.size();
        }

        @Override
        public Recipe getItem(int position) {
            return shown.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View reuse, ViewGroup parent) {
            LinearLayout row = reuse instanceof LinearLayout ? (LinearLayout) reuse : row();
            Recipe recipe = shown.get(position);
            TextView title = (TextView) row.getChildAt(0);
            TextView summary = (TextView) row.getChildAt(1);
            title.setText(recipe.title);
            String about = recipe.summary();
            summary.setText(about);
            summary.setVisibility(about.length() > 0 ? View.VISIBLE : View.GONE);
            return row;
        }

        private LinearLayout row() {
            LinearLayout row = vertical();
            row.setBackgroundResource(com.xp3.common.ui.R.drawable.family_focus);
            row.setPadding(dp(10), dp(8), dp(10), dp(8));
            row.setMinimumHeight(dp(38));
            row.setGravity(Gravity.CENTER_VERTICAL);
            TextView title = line("", 13.5f, color(R.color.text));
            title.setTypeface(Family.MEDIUM);
            title.setMaxLines(2);
            title.setEllipsize(TextUtils.TruncateAt.END);
            title.setLineSpacing(dp(2), 1f);
            row.addView(title);
            TextView summary = line("", 12f, color(R.color.text_muted));
            summary.setPadding(0, dp(3), 0, 0);
            summary.setSingleLine(true);
            summary.setEllipsize(TextUtils.TruncateAt.END);
            row.addView(summary);
            return row;
        }
    }
}
