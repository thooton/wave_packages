package com.goodreads.xp3;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.goodreads.xp3.books.Api;
import com.goodreads.xp3.books.Book;
import com.goodreads.xp3.books.Genre;
import com.goodreads.xp3.books.Section;
import com.goodreads.xp3.books.Source;
import com.xp3.common.Disk;
import com.xp3.common.Json;
import com.xp3.common.ui.Ui;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/**
 * Home, Discover, Search and Want to Read, as tabs along the foot, with Left
 * and Right moving between them.
 *
 * Home is the month's most popular new books and the week's most read; it is
 * kept on disk and shown at once on launch while a fresh copy is fetched.
 * Discover is the top lists of recent months and the site's genres. Search
 * asks the site's search box as the user types. Want to Read is the shelf
 * kept on the phone.
 */
public final class MainActivity extends Screen {

    static final int HOME = 0;
    static final int DISCOVER = 1;
    static final int SEARCH = 2;
    static final int SHELF = 3;
    private static final String[] TABS = {"Home", "Discover", "Search", "Want to Read"};

    private static final int HOME_FEW = 10;
    private static final long STALE = 30 * 60 * 1000L;
    private static final long GENRES_STALE = 24 * 60 * 60 * 1000L;

    private int tab = HOME;
    private final String[] places = new String[4];
    private final TextView[] tabViews = new TextView[4];
    private final Handler main = new Handler(Looper.getMainLooper());

    private List<Section> home = new ArrayList<Section>();
    private boolean homeLoading;
    private String homeError;
    private long homeFetched;

    private List<Genre> genres = new ArrayList<Genre>();
    private boolean genresLoading;
    private String genresError;

    private LinearLayout searchBar;
    private EditText field;
    private String asked = "";
    private List<Book> results;
    private boolean searching;
    private String searchError;
    private int serial;
    private final Runnable searchSoon = () -> search(false);

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        searchBar = searchBar();
        root.addView(searchBar, 1);
        root.addView(tabBar());

        home = Section.read(Disk.read(file("home.json"), 4000000));
        String cachedGenres = Disk.read(file("genres.json"), 1000000);
        if (cachedGenres != null) {
            try {
                for (Object each : Json.array(Json.parse(cachedGenres))) genres.add(Genre.fromJson(Json.object(each)));
            } catch (RuntimeException e) {
                genres.clear();
            }
        }
        show(HOME);
        loadHome();
    }

    private File file(String name) {
        return new File(getFilesDir(), name);
    }

    @Override
    protected void onResume() {
        super.onResume();
        // A book put on the shelf, or taken off, from its page shows here at once.
        if (tab == SHELF) show(SHELF);
    }

    private LinearLayout tabBar() {
        LinearLayout bar = vertical();
        bar.setBackgroundColor(color(R.color.beige));
        View rule = new View(this);
        rule.setBackgroundColor(color(R.color.beige_rule));
        bar.addView(rule, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1));
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        float[] weights = {0.8f, 1.05f, 0.95f, 1.45f};
        for (int i = 0; i < TABS.length; i++) {
            TextView label = Look.text(this, Look.lato(this, Look.REGULAR), 10.5f, R.color.muted);
            label.setText(TABS[i]);
            label.setGravity(Gravity.CENTER);
            label.setSingleLine(true);
            row.addView(label, new LinearLayout.LayoutParams(0, dp(26), weights[i]));
            tabViews[i] = label;
        }
        bar.addView(row);
        return bar;
    }

    private LinearLayout searchBar() {
        LinearLayout bar = vertical();
        bar.setBackgroundColor(color(R.color.beige));
        FrameLayout box = new FrameLayout(this);
        box.setPadding(dp(8), dp(6), dp(8), dp(7));
        field = new EditText(this);
        field.setTypeface(Look.lato(this, Look.REGULAR));
        field.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        field.setTextColor(color(R.color.ink));
        field.setHint("Title or author");
        field.setSingleLine(true);
        field.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        field.setImeOptions(EditorInfo.IME_ACTION_SEARCH | EditorInfo.IME_FLAG_NO_EXTRACT_UI);
        field.setBackgroundResource(R.drawable.field);
        field.setPadding(dp(8), dp(5), dp(8), dp(5));
        field.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {}

            @Override
            public void afterTextChanged(Editable s) {
                main.removeCallbacks(searchSoon);
                main.postDelayed(searchSoon, 800);
            }
        });
        field.setOnEditorActionListener((view, action, event) -> {
            search(true);
            return true;
        });
        box.addView(field, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        bar.addView(box);
        View rule = new View(this);
        rule.setBackgroundColor(color(R.color.beige_rule));
        bar.addView(rule, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1));
        bar.setVisibility(View.GONE);
        return bar;
    }

    @Override
    protected void chose(String key) {
        places[tab] = key;
    }

    private void show(int which) {
        boolean changed = which != tab;
        tab = which;
        for (int i = 0; i < tabViews.length; i++) {
            boolean on = i == which;
            tabViews[i].setTextColor(color(on ? R.color.brown : R.color.muted));
            tabViews[i].setTypeface(Look.lato(this, on ? Look.BOLD : Look.REGULAR));
            tabViews[i].setBackground(on ? getDrawable(R.drawable.tab_on) : null);
        }
        searchBar.setVisibility(which == SEARCH ? View.VISIBLE : View.GONE);
        switch (which) {
            case HOME: showHome(); break;
            case DISCOVER: showDiscover(); break;
            case SEARCH: showSearch(changed); break;
            default: showShelf(); break;
        }
    }

    // ---- Home.

    private void showHome() {
        if (home.isEmpty()) {
            if (homeLoading) spinner();
            else if (homeError != null) state("Couldn\u2019t load books", homeError, this::loadHome);
            else loadHome();
            return;
        }
        List<Rows.Item> items = new ArrayList<Rows.Item>();
        for (Section section : home) sectionRows(items, section, "home");
        rows.set(items);
        showList(places[HOME]);
    }

    private void sectionRows(List<Rows.Item> items, Section section, String key) {
        items.add(Rows.heading(section.title));
        for (int i = 0; i < Math.min(HOME_FEW, section.books.size()); i++) {
            final Book book = section.books.get(i);
            items.add(Rows.book(book, () -> openBook(book)));
        }
        if (section.more != null) {
            final Source more = section.more;
            items.add(Rows.link(key + ":" + section.title, "See all", () -> startActivity(ListActivity.intent(this, more))));
        }
    }

    private void loadHome() {
        if (homeLoading) return;
        homeLoading = true;
        homeError = null;
        if (tab == HOME && home.isEmpty()) spinner();
        final Api api = Books.api(this);
        worker.execute(() -> {
            List<Section> sections = new ArrayList<Section>();
            String error = null;
            try {
                Calendar now = Calendar.getInstance(TimeZone.getTimeZone("UTC"), Locale.US);
                // Early in a month its list is thin; then last month's leads instead.
                for (int back = 0; back < 2; back++) {
                    Calendar month = (Calendar) now.clone();
                    month.add(Calendar.MONTH, -back);
                    String name = Api.monthList(month.get(Calendar.YEAR), month.get(Calendar.MONTH) + 1);
                    Api.Page<Book> page = api.top(name, null, HOME_FEW + 5);
                    if (page.items.size() >= 5 || back == 1) {
                        String called = monthName(month);
                        sections.add(new Section("Popular in " + called.substring(0, called.indexOf(' ')),
                            page.items, Source.top("Popular books published in " + called, name)));
                        break;
                    }
                }
            } catch (InterruptedException e) {
                return;
            } catch (Exception e) {
                error = message(e);
            }
            try {
                String url = Api.SITE + "/book/most_read";
                sections.add(new Section("Most read this week", api.list(url), Source.page("Most read this week", url)));
            } catch (InterruptedException e) {
                return;
            } catch (Exception e) {
                if (error == null) error = message(e);
            }
            if (!sections.isEmpty()) {
                // Kept whole, but only the few each section shows need keeping.
                List<Section> kept = new ArrayList<Section>();
                for (Section s : sections) kept.add(new Section(s.title, s.books.subList(0, Math.min(HOME_FEW, s.books.size())), s.more));
                sections = kept;
                try {
                    Disk.write(file("home.json"), Section.write(sections), false);
                } catch (Exception e) {
                    // The copy on screen is still good; the next launch fetches again.
                }
            }
            final List<Section> result = sections;
            final String failure = sections.isEmpty() ? error : null;
            runOnUiThread(() -> homeLoaded(result, failure));
        });
    }

    private void homeLoaded(List<Section> sections, String error) {
        homeLoading = false;
        if (isDestroyed()) return;
        if (error == null) {
            home = sections;
            homeFetched = System.currentTimeMillis();
        } else {
            homeError = error;
            if (!home.isEmpty() && tab == HOME) toast("Couldn\u2019t refresh: " + error);
        }
        if (tab == HOME) show(HOME);
    }

    static String monthName(Calendar month) {
        return String.format(Locale.US, "%tB %<tY", month);
    }

    // ---- Discover.

    private void showDiscover() {
        if (genres.isEmpty() && !genresLoading && genresError == null) loadGenres();
        else if (!genresLoading && System.currentTimeMillis() - file("genres.json").lastModified() > GENRES_STALE) loadGenres();
        List<Rows.Item> items = new ArrayList<Rows.Item>();
        items.add(Rows.heading("Popular by month"));
        Calendar now = Calendar.getInstance(TimeZone.getTimeZone("UTC"), Locale.US);
        for (int back = 0; back < 4; back++) {
            Calendar month = (Calendar) now.clone();
            month.add(Calendar.MONTH, -back);
            final String called = monthName(month);
            final Source source = Source.top("Popular books published in " + called,
                Api.monthList(month.get(Calendar.YEAR), month.get(Calendar.MONTH) + 1));
            items.add(Rows.entry("month:" + back, called, () -> startActivity(ListActivity.intent(this, source))));
        }
        items.add(Rows.heading("Genres"));
        if (genres.isEmpty()) {
            if (genresLoading) items.add(Rows.spinner());
            else if (genresError != null) {
                items.add(Rows.note("Couldn\u2019t load the genres: " + genresError));
                items.add(Rows.link("genres-again", "Try again", this::loadGenres));
            }
        }
        for (final Genre genre : genres) {
            items.add(Rows.entry("genre:" + genre.slug, genre.name,
                () -> startActivity(ListActivity.intent(this, Source.genre(genre)))));
        }
        rows.set(items);
        showList(places[DISCOVER]);
    }

    private void loadGenres() {
        if (genresLoading) return;
        genresLoading = true;
        genresError = null;
        if (tab == DISCOVER && genres.isEmpty()) showDiscover();
        final Api api = Books.api(this);
        worker.execute(() -> {
            List<Genre> found = null;
            String error = null;
            try {
                found = api.genres();
                if (found.isEmpty()) error = "Goodreads listed no genres.";
                else {
                    List<Object> list = new ArrayList<Object>();
                    for (Genre genre : found) list.add(genre.toJson());
                    Disk.write(file("genres.json"), Json.write(list), false);
                }
            } catch (InterruptedException e) {
                return;
            } catch (Exception e) {
                error = message(e);
            }
            final List<Genre> result = found;
            final String failure = error;
            runOnUiThread(() -> {
                genresLoading = false;
                if (isDestroyed()) return;
                if (failure == null) genres = result;
                else genresError = failure;
                if (tab == DISCOVER) showDiscover();
            });
        });
    }

    // ---- Search.

    private void showSearch(boolean arriving) {
        List<Rows.Item> items = new ArrayList<Rows.Item>();
        String query = field.getText().toString().trim();
        if (!query.isEmpty()) {
            if (searching) {
                items.add(Rows.spinner());
            } else if (searchError != null) {
                items.add(Rows.note("Couldn\u2019t search: " + searchError));
            } else if (results != null) {
                List<Genre> matching = matching(asked);
                if (results.isEmpty() && matching.isEmpty()) items.add(Rows.note("No books found"));
                if (!results.isEmpty()) {
                    items.add(Rows.heading("Books"));
                    for (final Book book : results) items.add(Rows.book(book, () -> openBook(book)));
                }
                if (!matching.isEmpty()) {
                    items.add(Rows.heading("Genres"));
                    for (final Genre genre : matching) {
                        items.add(Rows.entry("genre:" + genre.slug, genre.name,
                            () -> startActivity(ListActivity.intent(this, Source.genre(genre)))));
                    }
                }
            }
        }
        rows.set(items);
        if (list.getParent() != content) Ui.fill(content, list);
        if (arriving || !list.hasFocus()) {
            field.requestFocus();
            field.setSelection(field.getText().length());
        } else {
            ensureChosen();
        }
    }

    private List<Genre> matching(String query) {
        List<Genre> found = new ArrayList<Genre>();
        String wanted = query.toLowerCase(Locale.US);
        if (wanted.length() < 3) return found;
        for (Genre genre : genres) if (genre.name.toLowerCase(Locale.US).contains(wanted)) found.add(genre);
        return found;
    }

    /** Asks for the box's words, unless they were just asked for; `now` asks again regardless. */
    private void search(boolean now) {
        main.removeCallbacks(searchSoon);
        final String query = field.getText().toString().trim();
        if (query.isEmpty()) {
            serial++;
            asked = "";
            results = null;
            searching = false;
            searchError = null;
            if (tab == SEARCH) showSearch(false);
            return;
        }
        if (!now && query.equals(asked) && (searching || results != null)) return;
        asked = query;
        searching = true;
        searchError = null;
        final int mine = ++serial;
        if (tab == SEARCH) showSearch(false);
        final Api api = Books.api(this);
        worker.execute(() -> {
            List<Book> found = null;
            String error = null;
            try {
                found = api.search(query);
            } catch (InterruptedException e) {
                return;
            } catch (Exception e) {
                error = message(e);
            }
            final List<Book> result = found;
            final String failure = error;
            runOnUiThread(() -> {
                if (isDestroyed() || mine != serial) return;
                searching = false;
                results = result;
                searchError = failure;
                if (tab == SEARCH) showSearch(false);
            });
        });
    }

    // ---- Want to Read.

    private void showShelf() {
        List<Book> books = Books.shelf(this).books();
        if (books.isEmpty()) {
            state("No books yet", null, null);
            return;
        }
        List<Rows.Item> items = new ArrayList<Rows.Item>();
        items.add(Rows.title("Want to Read"));
        for (final Book book : books) items.add(Rows.book(book, () -> openBook(book)));
        rows.set(items);
        showList(places[SHELF]);
    }

    @Override
    protected void shelfChanged() {
        if (tab == SHELF) show(SHELF);
    }

    // ---- Keys and the menu.

    @Override
    protected boolean keys(KeyEvent event) {
        int keyCode = event.getKeyCode();
        boolean down = event.getAction() == KeyEvent.ACTION_DOWN;
        if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT || keyCode == KeyEvent.KEYCODE_DPAD_RIGHT) {
            if (down) {
                int step = keyCode == KeyEvent.KEYCODE_DPAD_LEFT ? TABS.length - 1 : 1;
                show((tab + step) % TABS.length);
                if (tab == HOME && !homeLoading && (home.isEmpty() || System.currentTimeMillis() - homeFetched > STALE)) loadHome();
            }
            return true;
        }
        if (tab == SEARCH && field.hasFocus()) {
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                if (down && rows.positionOf(null) >= 0) {
                    list.requestFocus();
                    int at = rows.positionOf(places[SEARCH]);
                    View view = list.getChildAt(at - list.getFirstVisiblePosition());
                    list.setSelectionFromTop(at, view != null ? view.getTop() : 0);
                }
                return true;
            }
            if (Ui.isOk(keyCode)) {
                if (down && event.getRepeatCount() == 0) search(true);
                return true;
            }
            if (keyCode == KeyEvent.KEYCODE_DPAD_UP) return true;
        }
        if (tab == SEARCH && keyCode == KeyEvent.KEYCODE_BACK && list.hasFocus()) {
            if (!down && !event.isCanceled()) field.requestFocus();
            return true;
        }
        return false;
    }

    @Override
    protected boolean upFromTop(int keyCode) {
        if (tab != SEARCH || keyCode != KeyEvent.KEYCODE_DPAD_UP) return false;
        if (rows.next(list.getSelectedItemPosition(), -1) >= 0) return false;
        field.requestFocus();
        return true;
    }

    @Override
    protected void fill(Menu menu) {
        if (tab == SEARCH && field.hasFocus()) {
            if (!field.getText().toString().isEmpty()) menu.add(0, CLEAR, 0, "Clear search");
            return;
        }
        fillBook(menu);
        if (tab == SEARCH && !field.getText().toString().isEmpty()) menu.add(0, CLEAR, 0, "Clear search");
        if (tab == HOME || tab == DISCOVER) menu.add(0, REFRESH, 0, "Refresh");
    }

    private static final int CLEAR = 10;

    @Override
    protected void chosen(int id) {
        if (id == REFRESH) {
            if (tab == HOME) loadHome();
            else loadGenres();
        } else if (id == CLEAR) {
            field.setText("");
            search(true);
            field.requestFocus();
        } else {
            super.chosen(id);
        }
    }

    @Override
    protected void onDestroy() {
        main.removeCallbacks(searchSoon);
        super.onDestroy();
    }
}
