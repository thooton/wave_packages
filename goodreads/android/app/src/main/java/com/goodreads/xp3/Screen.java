package com.goodreads.xp3;

import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.goodreads.xp3.books.Book;
import com.goodreads.xp3.books.Shelf;
import com.xp3.common.ui.BaseActivity;
import com.xp3.common.ui.Ui;

import java.io.IOException;
import java.util.concurrent.ExecutorService;

/**
 * What every screen shares: the site's header, a middle that holds the list
 * or a state (a spinner, or a failure with Try again), and the keys. Up and
 * Down move through the list a fixed distance at a time, choosing the next
 * row that can be chosen once it is on the screen; OK acts on the chosen
 * row only while it is in view; Menu (or the left soft key) opens the
 * screen's menu on release.
 */
abstract class Screen extends BaseActivity {

    protected final ExecutorService worker = Ui.workers("goodreads", 3);
    protected LinearLayout root;
    protected View header;
    protected FrameLayout content;
    protected ListView list;
    protected Rows rows;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        root = vertical();
        root.setBackgroundColor(color(R.color.page));
        header = Look.header(this);
        root.addView(header);
        content = new FrameLayout(this);
        root.addView(content, Ui.weighted());
        rows = new Rows(this);
        list = new ListView(this);
        list.setDivider(null);
        // The rows paint the d-pad's place themselves (Rows.getView).
        list.setSelector(new android.graphics.drawable.ColorDrawable(0));
        list.setItemsCanFocus(false);
        list.setVerticalScrollBarEnabled(false);
        list.setAdapter(rows);
        list.setOnItemClickListener((parent, view, position, id) -> act(position));
        Ui.onSelect(list, position -> {
            paintChosen();
            Rows.Item item = rows.item(position);
            if (item != null && item.key != null) chose(item.key);
        });
        // Nothing is washed while the keys are elsewhere (Search's box, Try again).
        list.setOnFocusChangeListener((view, focused) -> paintChosen());
        setContentView(root);
    }

    /** Told the key of each row the d-pad lands on, to come back to it. */
    protected void chose(String key) {}

    private void act(int position) {
        Rows.Item item = rows.item(position);
        if (item != null && item.action != null) item.action.run();
    }

    /** Shows the list, the row with `key` chosen; or, when it is gone or null, the list as it lies. */
    protected void showList(String key) {
        if (list.getParent() != content) Ui.fill(content, list);
        int at = key == null ? -1 : rows.positionOf(key);
        if (at >= 0 && key.equals(rows.item(at).key)) list.setSelection(at);
        list.requestFocus();
        ensureChosen();
    }

    /** Washes the chosen row, now and once the list has laid out (it settles its selection only then). */
    protected void paintChosen() {
        sync();
        list.post(this::sync);
    }

    private void sync() {
        rows.trackSelectedPosition(list.hasFocus() ? list.getSelectedItemPosition() : android.widget.AdapterView.INVALID_POSITION);
        rows.repaint(list);
    }

    /**
     * After the rows change, or the list has moved: the selection stays on a
     * row with an action if one is chosen and on screen; else it goes to the
     * first such row wholly on screen, where it lies, so nothing jumps; else
     * it rests on a row on screen, washed or not.
     */
    protected void ensureChosen() {
        if (list.getParent() == null) return;
        list.post(() -> {
            settle();
            sync();
        });
    }

    private void settle() {
        int height = list.getHeight();
        int selected = list.getSelectedItemPosition();
        View chosen = childAt(selected);
        if (rows.acts(selected) && chosen != null && chosen.getBottom() > 0 && chosen.getTop() < height) return;
        View rest = null;
        int restAt = -1;
        for (int i = 0; i < list.getChildCount(); i++) {
            View view = list.getChildAt(i);
            int position = list.getFirstVisiblePosition() + i;
            if (rows.acts(position) && view.getTop() >= 0 && view.getBottom() <= height) {
                list.setSelectionFromTop(position, view.getTop());
                return;
            }
            if (rest == null && view.getBottom() > 0) {
                rest = view;
                restAt = position;
            }
        }
        boolean shown = chosen != null && chosen.getBottom() > 0 && chosen.getTop() < height;
        if (!shown && rest != null) list.setSelectionFromTop(restAt, rest.getTop());
    }

    /**
     * Moves the list by `dy`. A chosen row with an action still on screen
     * stays chosen; otherwise the nearest row with an action wholly on
     * screen, in the direction of travel, is; failing that, the selection
     * rests on the first row on screen.
     */
    protected void scroll(int dy) {
        list.scrollListBy(dy);
        int height = list.getHeight();
        int selected = list.getSelectedItemPosition();
        View chosen = childAt(selected);
        boolean shown = chosen != null && chosen.getBottom() > 0 && chosen.getTop() < height;
        if (!(shown && rows.acts(selected))) {
            int count = list.getChildCount();
            int found = -1;
            for (int n = 0; n < count && found < 0; n++) {
                int i = dy >= 0 ? n : count - 1 - n;
                View view = list.getChildAt(i);
                int position = list.getFirstVisiblePosition() + i;
                if (rows.acts(position) && view.getTop() >= 0 && view.getBottom() <= height) {
                    list.setSelectionFromTop(position, view.getTop());
                    found = position;
                }
            }
            if (found < 0 && !shown) {
                for (int i = 0; i < count; i++) {
                    View view = list.getChildAt(i);
                    if (view.getBottom() > 0) {
                        list.setSelectionFromTop(list.getFirstVisiblePosition() + i, view.getTop());
                        break;
                    }
                }
            }
        }
        paintChosen();
    }

    /** Shows the list from its top, the first row that can be chosen chosen if it is on screen. */
    protected void showListFromTop() {
        Ui.fill(content, list);
        list.setAdapter(rows);
        list.requestFocus();
        ensureChosen();
    }

    protected void spinner() {
        FrameLayout box = new FrameLayout(this);
        ProgressBar spinner = new ProgressBar(this);
        spinner.setIndeterminateTintList(getColorStateList(R.color.brown));
        box.addView(spinner, new FrameLayout.LayoutParams(dp(28), dp(28), Gravity.CENTER));
        Ui.fill(content, box);
    }

    /** A state in the middle: a title, a detail in grey, and a Try again button when `retry` is given. */
    protected void state(String title, String detail, final Runnable retry) {
        LinearLayout box = vertical();
        box.setGravity(Gravity.CENTER);
        box.setPadding(dp(16), 0, dp(16), dp(10));
        TextView heading = Look.text(this, Look.serif(this, Look.REGULAR), 14, R.color.text);
        heading.setGravity(Gravity.CENTER);
        heading.setLineSpacing(0, 1.2f);
        heading.setText(title);
        box.addView(heading);
        if (detail != null && !detail.isEmpty()) {
            TextView line = Look.text(this, Look.lato(this, Look.REGULAR), 11, R.color.muted);
            line.setGravity(Gravity.CENTER);
            line.setLineSpacing(0, 1.2f);
            line.setText(detail);
            line.setPadding(0, dp(6), 0, 0);
            box.addView(line);
        }
        if (retry != null) {
            final TextView button = Look.text(this, Look.lato(this, Look.BOLD), 12, R.color.brown);
            button.setText("Try again");
            button.setGravity(Gravity.CENTER);
            button.setBackgroundResource(R.drawable.button);
            button.setPadding(dp(16), dp(7), dp(16), dp(7));
            button.setFocusable(true);
            button.setOnFocusChangeListener((view, focused) -> button.setTextColor(color(focused ? R.color.page : R.color.brown)));
            button.setOnClickListener(view -> retry.run());
            LinearLayout.LayoutParams placed = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            placed.topMargin = dp(14);
            box.addView(button, placed);
            Ui.fill(content, box);
            button.requestFocus();
            return;
        }
        Ui.fill(content, box);
    }

    static String message(Exception e) {
        return e.getMessage() == null || e.getMessage().isEmpty() ? "Something went wrong." : e.getMessage();
    }

    // ---- The shelf.

    protected void openBook(Book book) {
        startActivity(BookActivity.intent(this, book));
    }

    /** Puts the book on Want to Read, or takes it off; says which. */
    protected boolean toggle(Book book) {
        Shelf shelf = Books.shelf(this);
        try {
            if (shelf.contains(book.id)) {
                shelf.remove(book.id);
                toast("Removed from Want to Read");
                return false;
            }
            shelf.add(book);
            toast("Added to Want to Read");
            return true;
        } catch (IOException e) {
            toast("Couldn\u2019t change Want to Read: " + message(e));
            return shelf.contains(book.id);
        }
    }

    /** The book chosen in the list, if the list is showing and a book is chosen. */
    protected Book chosenBook() {
        if (list.getParent() == null) return null;
        Rows.Item item = rows.item(list.getSelectedItemPosition());
        return item != null && item.type == Rows.BOOK ? item.book : null;
    }

    // ---- Keys.

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        int keyCode = event.getKeyCode();
        boolean down = event.getAction() == KeyEvent.ACTION_DOWN;
        if (keys(event)) return true;
        if (keyCode == KeyEvent.KEYCODE_MENU || keyCode == KeyEvent.KEYCODE_SOFT_LEFT) {
            if (!down && !event.isCanceled()) menu();
            return true;
        }
        boolean listing = list.getParent() != null && list.hasFocus() && list.getSelectedItemPosition() >= 0;
        if (listing && (keyCode == KeyEvent.KEYCODE_DPAD_DOWN || keyCode == KeyEvent.KEYCODE_DPAD_UP)) {
            if (down && !upFromTop(keyCode)) move(keyCode == KeyEvent.KEYCODE_DPAD_DOWN ? 1 : -1);
            return true;
        }
        if (listing && Ui.isOk(keyCode)) {
            // A row scrolled out of sight is not acted on: the d-pad has left it behind.
            if (down && event.getRepeatCount() == 0 && inView(list.getSelectedView())) act(list.getSelectedItemPosition());
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    /** A screen's own keys, before the shared ones; true when taken. */
    protected boolean keys(KeyEvent event) {
        return false;
    }

    /** Up on the list's first row, which a screen may take (Search goes back to its box); true when taken. */
    protected boolean upFromTop(int keyCode) {
        return false;
    }

    /** How far the list moves for each press that doesn't simply choose the next row. */
    private static final int STEP_DP = 36;

    /**
     * The next row is chosen straight away when it is already wholly on
     * screen. Otherwise the list moves a fixed distance, the same every
     * time, and the next row is chosen once it has come far enough onto the
     * screen: its top past the lower part of the screen going down, its
     * bottom past the upper part going up. Rows that can't be chosen (a
     * description, reviews) are read this way.
     */
    protected void move(int direction) {
        int selected = list.getSelectedItemPosition();
        int target = rows.next(selected, direction);
        int height = list.getHeight();
        View view = childAt(target);
        if (view != null && view.getTop() >= 0 && view.getBottom() <= height) {
            list.setSelectionFromTop(target, view.getTop());
            return;
        }
        scroll(direction * dp(STEP_DP));
        view = childAt(target);
        if (view == null) return;
        boolean far = direction > 0 ? view.getTop() < height * 0.6f : view.getBottom() > height * 0.4f;
        if (far) list.setSelectionFromTop(target, view.getTop());
    }

    private View childAt(int position) {
        if (position < 0) return null;
        return list.getChildAt(position - list.getFirstVisiblePosition());
    }

    /** Whether some of `view` is on the list's screen. */
    private boolean inView(View view) {
        return view != null && view.getBottom() > 0 && view.getTop() < list.getHeight();
    }

    /** The screen's menu: `fill` adds its entries; nothing opens when it adds none. */
    protected void menu() {
        View selected = list.getParent() != null ? list.getSelectedView() : null;
        View anchor = inView(selected) && selected.getHeight() <= list.getHeight() / 2 ? selected : header;
        PopupMenu popup = new PopupMenu(this, anchor, Gravity.END);
        fill(popup.getMenu());
        if (popup.getMenu().size() == 0) return;
        popup.setOnMenuItemClickListener(item -> {
            chosen(item.getItemId());
            return true;
        });
        popup.show();
    }

    protected static final int OPEN = 1;
    protected static final int WANT = 2;
    protected static final int REFRESH = 3;
    protected static final int TOP = 4;

    /** The usual entries for a chosen book: Open, and Want to Read or its removal. */
    protected void fillBook(Menu menu) {
        Book book = chosenBook();
        if (book == null) return;
        menu.add(0, OPEN, 0, "Open");
        menu.add(0, WANT, 0, Books.shelf(this).contains(book.id) ? "Remove from Want to Read" : "Want to Read");
    }

    protected abstract void fill(Menu menu);

    protected void chosen(int id) {
        Book book = chosenBook();
        if (id == OPEN && book != null) openBook(book);
        else if (id == WANT && book != null) {
            toggle(book);
            shelfChanged();
        }
    }

    /** Told after the menu put a book on the shelf or took one off. */
    protected void shelfChanged() {}

    @Override
    protected void onDestroy() {
        worker.shutdownNow();
        super.onDestroy();
    }

    static Intent with(Intent intent, String name, String value) {
        return intent.putExtra(name, value);
    }
}
