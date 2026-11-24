package com.recipes.xp3;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputType;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.ScrollView;
import android.widget.TextView;

import com.xp3.common.ui.Family;
import com.xp3.common.ui.Ui;

/**
 * Writing a recipe: title, serves and time, then ingredients and steps one
 * per line, and notes, with Save at the foot (and on Menu). Back with
 * changes asks before dropping them.
 */
public final class EditActivity extends Screen {

    static final String EXTRA_ID = "id";

    private Backend backend;
    /** The recipe being edited, or null for a new one. */
    private Recipe original;

    private EditText title, serves, time, ingredients, steps, notes;
    private Button save;
    private String initial;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        backend = Backend.get(this);
        String id = getIntent().getStringExtra(EXTRA_ID);
        if (id != null) {
            original = backend.cookbook().get(id);
            if (original == null) {
                finish();
                return;
            }
        }
        build();
        if (original != null) {
            title.setText(original.title);
            serves.setText(original.serves > 0 ? Integer.toString(original.serves) : "");
            time.setText(original.time);
            ingredients.setText(Recipe.joined(original.ingredients));
            steps.setText(Recipe.joined(original.steps));
            notes.setText(original.notes);
        }
        initial = fields();
        updateSave();
        title.requestFocus();
        title.setSelection(title.length());
    }

    private void build() {
        LinearLayout root = vertical();
        root.setBackgroundColor(color(R.color.row));

        LinearLayout bar = new LinearLayout(this);
        bar.setBackgroundColor(color(R.color.primary));
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(dp(10), 0, dp(10), 0);
        TextView heading = line(original == null ? "New recipe" : "Edit recipe", 15f, color(R.color.on_primary));
        heading.setTypeface(Family.MEDIUM);
        heading.setSingleLine(true);
        bar.addView(heading);
        root.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(36)));

        ScrollView scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setDefaultFocusHighlightEnabled(false);
        LinearLayout form = vertical();
        form.setPadding(dp(6), dp(2), dp(6), dp(10));

        title = field(false, Recipe.MAX_TITLE, InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        form.addView(label("Title"));
        form.addView(title, wide());

        LinearLayout pair = new LinearLayout(this);
        LinearLayout left = vertical();
        serves = field(false, 2, 0);
        serves.setInputType(InputType.TYPE_CLASS_NUMBER);
        left.addView(label("Serves"));
        left.addView(serves, wide());
        LinearLayout right = vertical();
        time = field(false, Recipe.MAX_TIME, 0);
        right.addView(label("Time"));
        right.addView(time, wide());
        LinearLayout.LayoutParams leftSize = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 2);
        leftSize.rightMargin = dp(6);
        pair.addView(left, leftSize);
        pair.addView(right, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 3));
        form.addView(pair, wide());

        ingredients = field(true, Recipe.MAX_LINES * (Recipe.MAX_LINE + 1), InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        ingredients.setHint("One per line");
        form.addView(label("Ingredients"));
        form.addView(ingredients, wide());

        steps = field(true, Recipe.MAX_LINES * (Recipe.MAX_LINE + 1), InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        steps.setHint("One per line");
        form.addView(label("Steps"));
        form.addView(steps, wide());

        notes = field(true, Recipe.MAX_NOTES, InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        form.addView(label("Notes"));
        form.addView(notes, wide());

        save = new Button(this, null, 0, com.xp3.common.ui.R.style.FamilyButton);
        save.setText("Save");
        save.setOnClickListener(view -> save());
        LinearLayout.LayoutParams saveSize = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(36));
        saveSize.topMargin = dp(12);
        form.addView(save, saveSize);

        // OK in a one-line field moves on, as Next does.
        chain(title, serves);
        chain(serves, time);
        chain(time, ingredients);

        scroll.addView(form, new ScrollView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(scroll, Ui.weighted());
        setContentView(root);
    }

    private LinearLayout.LayoutParams wide() {
        return new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private TextView label(String text) {
        TextView view = section(text);
        view.setPadding(dp(4), dp(10), dp(4), dp(4));
        return view;
    }

    private EditText field(boolean multiLine, int max, int flags) {
        final EditText field = new EditText(this);
        field.setId(View.generateViewId());
        field.setBackgroundResource(com.xp3.common.ui.R.drawable.family_field);
        field.setPadding(dp(10), dp(7), dp(10), dp(7));
        field.setMinHeight(dp(30));
        field.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13.5f);
        field.setTextColor(color(R.color.text));
        field.setHintTextColor(color(R.color.text_muted));
        field.setIncludeFontPadding(false);
        field.setLineSpacing(dp(2), 1f);
        field.setGravity(Gravity.TOP | Gravity.START);
        field.setFilters(new InputFilter[] {new InputFilter.LengthFilter(max)});
        if (multiLine) {
            field.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE | flags);
            field.setSingleLine(false);
            field.setHorizontallyScrolling(false);
            field.setMinLines(3);
            // OK starts a new line (Enter already does); on its press, as T9 eats the first release.
            field.setOnKeyListener((view, key, event) -> {
                if (key != KeyEvent.KEYCODE_DPAD_CENTER) return false;
                if (event.getAction() == KeyEvent.ACTION_DOWN) {
                    int start = Math.max(0, field.getSelectionStart());
                    int end = Math.max(0, field.getSelectionEnd());
                    field.getText().replace(Math.min(start, end), Math.max(start, end), "\n");
                }
                return true;
            });
        } else {
            field.setInputType(InputType.TYPE_CLASS_TEXT | flags);
            field.setSingleLine(true);
            field.setImeOptions(EditorInfo.IME_ACTION_NEXT);
        }
        field.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {}

            @Override
            public void afterTextChanged(Editable s) {
                updateSave();
            }
        });
        return field;
    }

    private void chain(EditText from, final EditText to) {
        from.setNextFocusDownId(to.getId());
        from.setNextFocusForwardId(to.getId());
        from.setOnKeyListener((view, key, event) -> {
            if (!Ui.isOk(key)) return false;
            if (event.getAction() == KeyEvent.ACTION_DOWN && event.getRepeatCount() == 0) {
                to.requestFocus();
                to.setSelection(to.length());
            }
            return true;
        });
        from.setOnEditorActionListener((view, action, event) -> {
            if (action != EditorInfo.IME_ACTION_NEXT) return false;
            to.requestFocus();
            to.setSelection(to.length());
            return true;
        });
    }

    private void updateSave() {
        if (save == null || title == null) return;
        // Greyed out until there is a title, rather than explained.
        save.setEnabled(Recipe.oneLine(title.getText().toString()).length() > 0);
    }

    private String fields() {
        return title.getText() + "\u0000" + serves.getText() + "\u0000" + time.getText() + "\u0000"
            + ingredients.getText() + "\u0000" + steps.getText() + "\u0000" + notes.getText();
    }

    private boolean changed() {
        return initial != null && !initial.equals(fields());
    }

    private void save() {
        Recipe recipe;
        try {
            recipe = Recipe.fromFields(original != null ? original.id : Cookbook.newId(),
                title.getText().toString(), serves.getText().toString(), time.getText().toString(),
                ingredients.getText().toString(), steps.getText().toString(), notes.getText().toString());
            backend.cookbook().put(recipe);
        } catch (IllegalArgumentException | IllegalStateException e) {
            toast(e.getMessage());
            return;
        }
        backend.save();
        hideKeyboard(title);
        setResult(RESULT_OK, new Intent().putExtra(EXTRA_ID, recipe.id));
        finish();
    }

    @Override
    void menu() {
        View anchor = getCurrentFocus() != null ? getCurrentFocus() : title;
        PopupMenu popup = new PopupMenu(this, anchor);
        if (save.isEnabled()) popup.getMenu().add(0, 1, 0, "Save");
        popup.getMenu().add(0, 2, 1, changed() ? "Discard changes" : "Close");
        popup.setOnMenuItemClickListener(item -> {
            if (item.getItemId() == 1) save();
            else leave();
            return true;
        });
        popup.show();
    }

    private void leave() {
        hideKeyboard(title);
        setResult(RESULT_CANCELED);
        finish();
    }

    @Override
    public void onBackPressed() {
        if (!changed()) {
            leave();
            return;
        }
        AlertDialog dialog = new AlertDialog.Builder(this)
            .setTitle("Discard changes?")
            .setNegativeButton("Keep editing", null)
            .setPositiveButton("Discard", (shown, which) -> leave())
            .create();
        dialog.show();
        Button keep = dialog.getButton(DialogInterface.BUTTON_NEGATIVE);
        if (keep != null) keep.requestFocus();
    }
}
