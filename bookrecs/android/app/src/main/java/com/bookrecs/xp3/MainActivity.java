package com.bookrecs.xp3;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputType;
import android.text.Spanned;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.xp3.common.Config;
import com.xp3.common.Disk;
import com.xp3.common.ui.BaseActivity;
import com.xp3.common.ui.Family;
import com.xp3.common.ui.Setup;
import com.xp3.common.ui.Ui;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/**
 * The one screen: a prompt at the top, the books the service recommends for
 * it under it. OK in the prompt asks; OK on a book shows it, with "More like
 * this". Menu has New search and Setup.
 *
 * `am start -n com.bookrecs.xp3/.MainActivity -e sample 1` answers from
 * {@link Sample}'s made-up books instead of a service, set up or not, and
 * keeps nothing.
 */
public final class MainActivity extends BaseActivity {

    static final String EXTRA_SAMPLE = "sample";
    static final String LAST = "last-search.json";

    private final ExecutorService worker = Ui.worker("recommend");
    private Future<?> running;
    /** Bumped by every request and cancel, so a late answer to an old one is dropped. */
    private int generation;

    private boolean sample;
    private String setupStamp;
    private Recommender recommender;
    private String setupProblem;

    private EditText field;
    private FrameLayout content;
    private ListView list;
    private final List<Book> books = new ArrayList<Book>();
    private final BookAdapter adapter = new BookAdapter();
    /** The prompt the shown books (or the shown failure) are for. */
    private String shownPrompt;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        sample = getIntent().hasExtra(EXTRA_SAMPLE);
        if (!sample && !Setup.require(this)) return;
        setupStamp = sample ? null : Setup.stamp(this);
        connect();
        build();
        Search last = sample ? null : Search.parse(Disk.read(lastFile(), 256 * 1024));
        if (last != null) {
            field.setText(last.prompt);
            field.setSelection(field.length());
            showBooks(last.prompt, last.books, false);
        } else {
            showBlank();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        // A setup imported again or signed out from the setup screen: start over with it.
        if (setupStamp != null && !setupStamp.equals(Setup.stamp(this))) recreate();
    }

    @Override
    protected void onDestroy() {
        cancel();
        worker.shutdownNow();
        super.onDestroy();
    }

    private void connect() {
        recommender = null;
        setupProblem = null;
        try {
            if (sample) {
                recommender = new Recommender("https://sample.invalid", null, new Sample(1200));
            } else {
                Config config = Setup.load(this);
                recommender = new Recommender(config.get("server"), config.get("token"), Recommender.NETWORK);
            }
        } catch (IllegalArgumentException e) {
            setupProblem = e.getMessage();
        }
    }

    // ---- The screen ---------------------------------------------------------

    private void build() {
        LinearLayout root = vertical();
        root.setBackgroundColor(color(R.color.row));

        // The prompt, on the header's colour: the header is where you are.
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
        field.setHint(R.string.prompt_hint);
        field.setIncludeFontPadding(false);
        field.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        field.setImeOptions(EditorInfo.IME_ACTION_SEARCH);
        field.setHorizontallyScrolling(false);
        field.setMaxLines(4);
        field.setFilters(new InputFilter[] {new CodePoints(Recommender.MAX_PROMPT)});
        field.setOnKeyListener((view, key, event) -> {
            if (!Ui.isOk(key)) return false;
            if (event.getAction() == KeyEvent.ACTION_UP) ask(field.getText().toString());
            return true;
        });
        field.setOnEditorActionListener((view, action, event) -> {
            if (action != EditorInfo.IME_ACTION_SEARCH) return false;
            ask(field.getText().toString());
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
        list.setOnItemClickListener((parent, view, position, id) -> open(books.get(position)));

        setContentView(root);
    }

    /** Nothing asked yet: the prompt alone, ready for keys. */
    private void showBlank() {
        shownPrompt = null;
        books.clear();
        adapter.notifyDataSetChanged();
        View blank = new View(this);
        blank.setBackgroundColor(color(R.color.row));
        Ui.fill(content, blank);
        focusField();
    }

    private void showBooks(String prompt, List<Book> found, boolean focusList) {
        shownPrompt = prompt;
        books.clear();
        books.addAll(found);
        adapter.notifyDataSetChanged();
        if (books.isEmpty()) {
            Ui.fill(content, Family.empty(this, "No books to recommend", null));
            focusField();
            return;
        }
        Ui.fill(content, list);
        list.setSelection(0);
        if (focusList) {
            hideKeyboard();
            list.requestFocus();
        } else {
            focusField();
        }
    }

    private void showLoading() {
        LinearLayout box = vertical();
        box.setGravity(Gravity.CENTER);
        box.setBackgroundColor(color(R.color.row));
        ProgressBar spinner = new ProgressBar(this);
        spinner.setIndeterminate(true);
        spinner.setIndeterminateTintList(ColorStateList.valueOf(color(R.color.focus_rule)));
        box.addView(spinner, new LinearLayout.LayoutParams(dp(32), dp(32)));
        TextView label = line("Finding books", 13.5f, color(R.color.text_muted));
        label.setPadding(0, dp(12), 0, 0);
        box.addView(label);
        Ui.fill(content, box);
    }

    /** Why the books didn't come, and the button for what may help: try again, or the setup. */
    private void showFailure(String prompt, String title, String detail, final boolean retry, boolean setup) {
        shownPrompt = prompt;
        books.clear();
        adapter.notifyDataSetChanged();
        LinearLayout box = vertical();
        box.setGravity(Gravity.CENTER);
        box.setBackgroundColor(color(R.color.row));
        TextView message = Family.empty(this, title, detail);
        message.setFocusable(false);
        box.addView(message, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        Button action = null;
        if (retry || setup) {
            action = new Button(this, null, 0, com.xp3.common.ui.R.style.FamilyButton);
            action.setText(retry ? "Try again" : "Setup");
            action.setPadding(dp(18), 0, dp(18), 0);
            action.setOnClickListener(view -> {
                if (retry) ask(prompt);
                else openSetup();
            });
            action.setNextFocusUpId(field.getId());
            box.addView(action, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(36)));
        }
        Ui.fill(content, box);
        if (action != null) {
            hideKeyboard();
            action.requestFocus();
        } else {
            focusField();
        }
    }

    /** A TextView at a fractional size: the family's 13.5sp and 12sp. */
    private TextView line(CharSequence value, float sp, int textColor) {
        TextView view = text(value, 12, textColor);
        view.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        return view;
    }

    private void focusField() {
        field.requestFocus();
        field.setSelection(field.length());
    }

    private void hideKeyboard() {
        InputMethodManager input = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        if (input != null) input.hideSoftInputFromWindow(field.getWindowToken(), 0);
    }

    // ---- Asking -------------------------------------------------------------

    private void ask(final String typed) {
        final String prompt;
        try {
            prompt = Recommender.prompt(typed);
        } catch (IllegalArgumentException e) {
            if (typed.trim().length() > 0) toast(e.getMessage());
            return;
        }
        if (recommender == null) {
            showFailure(prompt, "Book Recs isn't set up right", setupProblem, false, true);
            return;
        }
        cancel();
        final int ticket = ++generation;
        if (!prompt.equals(field.getText().toString().trim())) {
            field.setText(prompt);
            field.setSelection(field.length());
        }
        hideKeyboard();
        showLoading();
        final Recommender asking = recommender;
        running = worker.submit(() -> {
            List<Book> found = null;
            Recommender.Failure failure = null;
            try {
                found = asking.recommend(prompt);
            } catch (Recommender.Failure e) {
                failure = e;
            } catch (InterruptedException e) {
                return;
            } catch (IOException e) {
                failure = new Recommender.Failure(Recommender.Failure.Kind.NETWORK, e.getMessage());
            } catch (RuntimeException e) {
                failure = new Recommender.Failure(Recommender.Failure.Kind.UNREADABLE, "Something went wrong.");
            }
            final List<Book> answer = found;
            final Recommender.Failure problem = failure;
            runOnUiThread(() -> {
                if (ticket != generation || isFinishing() || isDestroyed()) return;
                running = null;
                if (problem != null) failed(prompt, problem);
                else answered(prompt, answer);
            });
        });
    }

    private void answered(String prompt, List<Book> found) {
        showBooks(prompt, found, true);
        if (sample) return;
        try {
            Disk.write(lastFile(), new Search(prompt, found).toJson(), false);
        } catch (IOException ignored) {
            // Only the next launch misses it.
        }
    }

    private void failed(String prompt, Recommender.Failure failure) {
        Recommender.Failure.Kind kind = failure.kind;
        boolean setup = kind == Recommender.Failure.Kind.UNAUTHORIZED || kind == Recommender.Failure.Kind.ADDRESS;
        showFailure(prompt, "Couldn't get books", failure.getMessage(), failure.retryable(), setup && !sample);
    }

    /** Stops a request under way, if any; its answer, should it still come, is dropped. */
    private boolean cancel() {
        generation++;
        if (running == null) return false;
        running.cancel(true);
        running = null;
        return true;
    }

    private File lastFile() {
        return new File(getFilesDir(), LAST);
    }

    // ---- A book -------------------------------------------------------------

    /**
     * A book's dialog: its author and ISBN, then its two actions stacked
     * full width, since three buttons side by side don't fit 240 pixels.
     * Back closes it.
     */
    private void open(final Book book) {
        LinearLayout body = vertical();
        body.setPadding(dp(14), dp(4), dp(14), dp(8));
        if (book.author.length() > 0) {
            TextView author = line(book.author, 13.5f, color(R.color.text));
            author.setPadding(dp(10), 0, dp(10), 0);
            body.addView(author);
        }
        TextView isbn = line("ISBN " + book.isbn, 12f, color(R.color.text_muted));
        isbn.setPadding(dp(10), dp(3), dp(10), dp(6));
        body.addView(isbn);
        final AlertDialog dialog = new AlertDialog.Builder(this).setTitle(book.title).setView(body).create();
        Button more = action("More like this", view -> {
            dialog.dismiss();
            ask(similar(book));
        });
        LinearLayout.LayoutParams under = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(34));
        under.topMargin = dp(2);
        body.addView(more, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(34)));
        body.addView(action("Copy ISBN", view -> {
            dialog.dismiss();
            copy(book.isbn);
        }), under);
        dialog.show();
        more.requestFocus();
    }

    private Button action(String label, View.OnClickListener click) {
        Button button = new Button(this, null, 0, com.xp3.common.ui.R.style.FamilyDialogButton);
        button.setText(label);
        button.setGravity(Gravity.CENTER_VERTICAL | Gravity.START);
        button.setPadding(dp(10), 0, dp(10), 0);
        button.setTextColor(color(R.color.focus_rule));
        button.setBackgroundResource(com.xp3.common.ui.R.drawable.family_focus);
        button.setOnClickListener(click);
        return button;
    }

    static String similar(Book book) {
        return "Books similar to " + book.title + (book.author.length() > 0 ? " by " + book.author : "");
    }

    private void copy(String isbn) {
        ClipboardManager clipboard = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
        if (clipboard == null) return;
        clipboard.setPrimaryClip(ClipData.newPlainText("ISBN", isbn));
        toast("ISBN copied");
    }

    // ---- Keys and the menu --------------------------------------------------

    @Override
    public boolean onKeyUp(int key, KeyEvent event) {
        if (key == KeyEvent.KEYCODE_MENU) {
            menu();
            return true;
        }
        return super.onKeyUp(key, event);
    }

    @Override
    public boolean onKeyDown(int key, KeyEvent event) {
        if (key == KeyEvent.KEYCODE_MENU) return true;
        return super.onKeyDown(key, event);
    }

    @Override
    public void onBackPressed() {
        // Back stops a search under way, then leaves the list for the prompt, then leaves.
        if (running != null) {
            cancel();
            if (shownPrompt != null && !books.isEmpty()) showBooks(shownPrompt, new ArrayList<Book>(books), false);
            else showBlank();
            return;
        }
        if (list != null && list.hasFocus()) {
            focusField();
            return;
        }
        super.onBackPressed();
    }

    private void menu() {
        View anchor = field != null ? field : getWindow().getDecorView();
        PopupMenu popup = new PopupMenu(this, anchor);
        popup.getMenu().add(0, 1, 0, "New search");
        if (!sample) popup.getMenu().add(0, 2, 1, "Setup");
        popup.setOnMenuItemClickListener(item -> {
            if (item.getItemId() == 1) newSearch();
            else openSetup();
            return true;
        });
        popup.show();
    }

    private void newSearch() {
        cancel();
        field.setText("");
        showBlank();
        lastFile().delete();
        InputMethodManager input = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        if (input != null) input.showSoftInput(field, 0);
    }

    private void openSetup() {
        startActivity(Setup.intent(this));
    }

    // ---- The list -----------------------------------------------------------

    /** A book: its title, and its author under it in grey. */
    private final class BookAdapter extends BaseAdapter {
        @Override
        public int getCount() {
            return books.size();
        }

        @Override
        public Book getItem(int position) {
            return books.get(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View reuse, ViewGroup parent) {
            LinearLayout row = reuse instanceof LinearLayout ? (LinearLayout) reuse : row();
            Book book = books.get(position);
            TextView title = (TextView) row.getChildAt(0);
            TextView author = (TextView) row.getChildAt(1);
            title.setText(book.title);
            author.setText(book.author);
            author.setVisibility(book.author.length() > 0 ? View.VISIBLE : View.GONE);
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
            title.setMaxLines(3);
            title.setEllipsize(android.text.TextUtils.TruncateAt.END);
            title.setLineSpacing(dp(2), 1f);
            row.addView(title);
            TextView author = line("", 12f, color(R.color.text_muted));
            author.setPadding(0, dp(3), 0, 0);
            author.setMaxLines(2);
            author.setEllipsize(android.text.TextUtils.TruncateAt.END);
            row.addView(author);
            return row;
        }
    }

    /** Keeps the prompt within the service's limit, counted in code points as the service counts them. */
    static final class CodePoints implements InputFilter {
        private final int max;

        CodePoints(int max) {
            this.max = max;
        }

        @Override
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            int kept = Character.codePointCount(dest, 0, dest.length()) - Character.codePointCount(dest, dstart, dend);
            int room = max - kept;
            int adding = Character.codePointCount(source, start, end);
            if (adding <= room) return null;
            if (room <= 0) return "";
            int cut = Character.offsetByCodePoints(source, start, room);
            return source.subSequence(start, cut);
        }
    }
}
