package com.notes.xp3;

import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;

import com.notes.xp3.data.Dates;
import com.notes.xp3.data.Folder;
import com.notes.xp3.data.Note;
import com.notes.xp3.data.Notebook;
import com.notes.xp3.data.Store;
import com.xp3.common.ui.BaseActivity;
import com.xp3.common.ui.Ui;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;

/**
 * Apple Notes on the XP3: Folders, a folder's notes, a note, search, Recently
 * Deleted, and the folder picker, as pages on a stack. Back pops a page;
 * launch opens the folder last used, with Folders under it.
 *
 * Every key is handled here, before any view sees it, so the d-pad, the soft
 * keys and the keypad do the same thing on every page whatever has focus.
 * Text fields still receive typing, and Up, Down, Left and Right where they
 * move a cursor. The layout follows notes/mockups/index.html.
 */
public final class MainActivity extends BaseActivity implements Overlay.Host {

    /** The id Folders and the stack use for Recently Deleted, which is not a folder. */
    static final String DELETED = "deleted";

    private Store store;
    private Notebook book;
    private final ExecutorService saves = Ui.worker("notes-save");
    private final Handler handler = new Handler(Looper.getMainLooper());

    private FrameLayout root;
    private FrameLayout content;
    private final List<Page> pages = new ArrayList<Page>();
    private Overlay overlay;

    /** The key whose press was seen (so its release may act), and an OK press a text page has used. */
    private int pressed = -1;
    private long consumedOkDownTime = -1;

    private Typeface bold;
    private Typeface medium;

    static boolean isMenu(int key) {
        return key == KeyEvent.KEYCODE_MENU || key == KeyEvent.KEYCODE_SOFT_LEFT;
    }

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        bold = Typeface.create("sans-serif", Typeface.BOLD);
        medium = Typeface.create("sans-serif-medium", Typeface.NORMAL);
        store = new Store(getFilesDir());
        book = store.load();
        if (book.purge(System.currentTimeMillis())) save();

        root = new FrameLayout(this);
        content = new FrameLayout(this);
        root.addView(content, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        setContentView(root);

        pages.add(new FoldersPage());
        String last = prefs().getString("folder", Notebook.NOTES);
        if (!DELETED.equals(last) && book.folder(last) == null) last = Notebook.NOTES;
        if (DELETED.equals(last) && book.deleted().isEmpty()) last = Notebook.NOTES;
        pages.add(new NotesPage(last));
        show();
    }

    @Override
    protected void onResume() {
        super.onResume();
        // Today and Yesterday may have moved on while the app was away.
        Page top = top();
        if (top instanceof ListPage && overlay == null && top != null && top.built) show();
    }

    @Override
    protected void onPause() {
        super.onPause();
        Page top = top();
        if (top instanceof NotePage) ((NotePage) top).flush();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        handler.removeCallbacksAndMessages(null);
        saves.shutdown();
    }

    private SharedPreferences prefs() {
        return getSharedPreferences("notes", MODE_PRIVATE);
    }

    // ------------------------------------------------------------------
    // Saving
    // ------------------------------------------------------------------

    /** Writes the notebook as it stands now, off the main thread, in order. */
    void save() {
        final String snapshot = Store.snapshot(book);
        saves.execute(() -> {
            try {
                store.save(snapshot);
            } catch (IOException e) {
                handler.post(() -> toast("Couldn't save your notes"));
            }
        });
    }

    // ------------------------------------------------------------------
    // Pages
    // ------------------------------------------------------------------

    private Page top() {
        return pages.isEmpty() ? null : pages.get(pages.size() - 1);
    }

    void push(Page page) {
        Page top = top();
        if (top != null) top.covered();
        pages.add(page);
        show();
    }

    void pop() {
        if (pages.isEmpty()) return;
        Page page = pages.remove(pages.size() - 1);
        page.left();
        if (pages.isEmpty()) finish();
        else show();
    }

    /** Builds the top page afresh from the notebook. */
    private void show() {
        Page page = top();
        if (page == null) return;
        content.removeAllViews();
        View view = page.build();
        page.built = true;
        content.addView(view, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        int bar = page.white() ? R.color.card : R.color.page;
        getWindow().setStatusBarColor(color(bar));
        getWindow().setNavigationBarColor(color(bar));
        page.shown();
    }

    // ------------------------------------------------------------------
    // Keys
    // ------------------------------------------------------------------

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (overlay != null) return overlay.key(event);
        Page page = top();
        if (page == null) return super.dispatchKeyEvent(event);
        int key = event.getKeyCode();
        boolean down = event.getAction() == KeyEvent.ACTION_DOWN;
        if (down && event.getRepeatCount() == 0) pressed = key;
        boolean released = !down && pressed == key && !event.isCanceled();
        if (!down && pressed == key) pressed = -1;

        if (key == KeyEvent.KEYCODE_BACK) {
            if (released) page.back();
            return true;
        }
        if (isMenu(key)) {
            if (released) page.menu();
            return true;
        }
        if (Ui.isOk(key) && !down && event.getDownTime() == consumedOkDownTime) return true;
        if (page.key(event, down, released)) return true;
        return super.dispatchKeyEvent(event);
    }

    /** For a text page that acts on OK's press: its release must then do nothing. */
    void consumeOk(KeyEvent event) {
        consumedOkDownTime = event.getDownTime();
    }

    // ------------------------------------------------------------------
    // Overlays
    // ------------------------------------------------------------------

    void open(Overlay next) {
        if (overlay != null) closeOverlay(overlay);
        overlay = next;
        root.addView(next.view, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        // A field under it should not keep its caret blinking or take the keys.
        next.view.setFocusable(true);
        next.view.setFocusableInTouchMode(true);
        next.view.setDefaultFocusHighlightEnabled(false);
        next.view.requestFocus();
    }

    @Override
    public void closeOverlay(Overlay closing) {
        if (overlay != closing) return;
        root.removeView(closing.view);
        overlay = null;
        Page page = top();
        if (page != null) page.refocus();
    }

    void showMenu(List<Overlay.Item> items) {
        if (items.isEmpty()) return;
        open(new Overlay.Menu(this, this, items));
    }

    /** An alert with Cancel and one more button, which is chosen to begin with. */
    void confirm(String title, String message, String action, boolean red, Runnable run) {
        List<Overlay.Item> buttons = new ArrayList<Overlay.Item>();
        buttons.add(new Overlay.Item("Cancel", 0, false, false, null));
        buttons.add(new Overlay.Item(action, 0, red, true, run));
        open(new Overlay.Alert(this, this, title, message, buttons, 1));
    }

    /** An alert with only OK. */
    void tell(String title, String message) {
        List<Overlay.Item> buttons = new ArrayList<Overlay.Item>();
        buttons.add(new Overlay.Item("OK", 0, false, true, null));
        open(new Overlay.Alert(this, this, title, message, buttons, 0));
    }

    static Overlay.Item item(String label, int icon, Runnable action) {
        return new Overlay.Item(label, icon, false, false, action);
    }

    static Overlay.Item red(String label, int icon, boolean group, Runnable action) {
        return new Overlay.Item(label, icon, true, group, action);
    }

    static Overlay.Item first(String label, int icon, Runnable action) {
        return new Overlay.Item(label, icon, false, true, action);
    }

    // ------------------------------------------------------------------
    // Actions shared by pages
    // ------------------------------------------------------------------

    private long now() {
        return System.currentTimeMillis();
    }

    /** A new note in `folder`, opened; it is dropped again if left empty. */
    void newNote(String folder, String backLabel) {
        try {
            Note note = book.create(folder, now());
            push(new NotePage(note.id, backLabel));
        } catch (IllegalStateException full) {
            show();
            tell(full.getMessage(), null);
        }
    }

    void togglePin(Note note) {
        book.pin(note.id, !note.pinned());
        save();
    }

    void deleteNote(Note note) {
        book.delete(note.id, now());
        save();
    }

    String folderName(String id) {
        if (DELETED.equals(id)) return Notebook.DELETED_NAME;
        Folder folder = book.folder(id);
        return folder == null ? Notebook.NOTES_NAME : folder.name();
    }

    /** The items every note gets in its menu, after New Note. */
    List<Overlay.Item> noteItems(final Note note, boolean groupFirst, final Runnable after) {
        List<Overlay.Item> items = new ArrayList<Overlay.Item>();
        items.add(new Overlay.Item(note.pinned() ? "Unpin Note" : "Pin Note",
            note.pinned() ? R.drawable.ic_unpin : R.drawable.ic_pin, false, groupFirst, () -> {
                togglePin(note);
                after.run();
            }));
        items.add(item("Move Note", R.drawable.ic_move, () -> push(new MovePage(note.id))));
        items.add(red("Delete", R.drawable.ic_bin, false, () -> {
            deleteNote(note);
            after.run();
        }));
        return items;
    }

    /** The items a note in Recently Deleted gets. */
    List<Overlay.Item> deletedItems(final Note note, final Runnable after, boolean withAll) {
        List<Overlay.Item> items = new ArrayList<Overlay.Item>();
        items.add(item("Recover", R.drawable.ic_restore, () -> {
            book.recover(note.id);
            save();
            toast("Recovered to " + folderName(note.folder()));
            after.run();
        }));
        items.add(red("Delete Now", R.drawable.ic_bin, false, () -> {
            book.delete(note.id, now());
            save();
            after.run();
        }));
        if (withAll) {
            items.add(red("Delete All", R.drawable.ic_bin, true, () -> confirm("Delete All?",
                "These notes will be deleted. This can't be undone.", "Delete", true, () -> {
                    book.emptyDeleted();
                    save();
                    after.run();
                })));
        }
        return items;
    }

    // ------------------------------------------------------------------
    // Pieces of pages
    // ------------------------------------------------------------------

    TextView label(CharSequence text, float sp, int color, Typeface face) {
        TextView view = text(text, (int) sp, color(color));
        view.setTextSize(sp);
        view.setSingleLine(true);
        view.setEllipsize(TextUtils.TruncateAt.END);
        if (face != null) view.setTypeface(face);
        return view;
    }

    android.graphics.drawable.Drawable icon(int res, int color) {
        android.graphics.drawable.Drawable drawable = getDrawable(res).mutate();
        drawable.setTint(color(color));
        return drawable;
    }

    /** Apple's bottom toolbar: a count in the middle, and icons at the ends. */
    View toolbar(String middle, int left, int right) {
        LinearLayout bar = vertical();
        View rule = new View(this);
        rule.setBackgroundColor(color(R.color.rule));
        bar.addView(rule, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Math.max(1, dp(0.75f))));
        FrameLayout row = new FrameLayout(this);
        row.setBackgroundColor(color(R.color.bar));
        if (middle != null) {
            TextView count = label(middle, 11, R.color.ink2, null);
            row.addView(count, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER));
        }
        if (left != 0) row.addView(toolIcon(left), toolParams(Gravity.LEFT));
        if (right != 0) row.addView(toolIcon(right), toolParams(Gravity.RIGHT));
        bar.addView(row, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(26)));
        return bar;
    }

    private ImageView toolIcon(int res) {
        ImageView view = new ImageView(this);
        view.setImageDrawable(icon(res, R.color.tint));
        return view;
    }

    private FrameLayout.LayoutParams toolParams(int side) {
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(dp(19), dp(19), side | Gravity.CENTER_VERTICAL);
        params.leftMargin = dp(8);
        params.rightMargin = dp(8);
        return params;
    }

    /** iOS's centred bar over a sheet-like page: Cancel at the left, a title, Save at the right. */
    View centerBar(String title, boolean withSave) {
        FrameLayout bar = new FrameLayout(this);
        TextView cancel = label("Cancel", 13.5f, R.color.tint_text, null);
        FrameLayout.LayoutParams left = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.LEFT | Gravity.CENTER_VERTICAL);
        left.leftMargin = dp(10);
        bar.addView(cancel, left);
        TextView middle = label(title, 13.5f, R.color.ink, medium);
        bar.addView(middle, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER));
        if (withSave) {
            TextView save = label("Save", 13.5f, R.color.tint_text, medium);
            save.setTag("save");
            FrameLayout.LayoutParams right = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.RIGHT | Gravity.CENTER_VERTICAL);
            right.rightMargin = dp(10);
            bar.addView(save, right);
        }
        bar.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(30)));
        return bar;
    }

    EditText field(float sp) {
        EditText field = (EditText) getLayoutInflater().inflate(R.layout.field, null, false);
        field.setTextSize(sp);
        field.setHintTextColor(color(R.color.muted));
        return field;
    }

    // ==================================================================
    // Page
    // ==================================================================

    abstract class Page {
        boolean built;

        abstract View build();

        /** Whether the page is white (a note) rather than Notes' grey, for the status bar. */
        boolean white() {
            return false;
        }

        void shown() {}

        /** Called when another page is pushed over this one. */
        void covered() {}

        /** Called when this page is popped. */
        void left() {}

        /** Gives focus back after an overlay closes. */
        void refocus() {}

        void back() {
            pop();
        }

        void menu() {}

        /** The page's own keys; true when used. `released` is a release whose press was seen here. */
        boolean key(KeyEvent event, boolean down, boolean released) {
            return false;
        }
    }

    // ==================================================================
    // Lists: Folders, a folder, Recently Deleted, search, the folder picker
    // ==================================================================

    abstract class ListPage extends Page {
        Rows rows;
        ListView list;
        /** The selected row's key, kept across rebuilds and other pages. */
        String selectedKey;
        int selectedIndex = -1;

        abstract List<Rows.Row> rows();

        String query() {
            return null;
        }

        /** OK on a selectable row. */
        abstract void open(Rows.Row row);

        /** Up from the first row. */
        void upFromTop() {}

        /** Whether typing on this list starts a search. */
        boolean searches() {
            return false;
        }

        /** Where the list goes in the page; by default the page is the list. */
        View frame(ListView list) {
            return list;
        }

        /** Whether the list starts with no row chosen (search, while typing). */
        boolean startsEmpty() {
            return false;
        }

        @Override
        View build() {
            rows = new Rows(MainActivity.this);
            list = new ListView(MainActivity.this);
            list.setDivider(null);
            list.setDividerHeight(0);
            list.setSelector(android.R.color.transparent);
            list.setCacheColorHint(0);
            list.setClipToPadding(false);
            list.setPadding(0, 0, 0, dp(8));
            list.setVerticalScrollBarEnabled(true);
            list.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_OVERLAY);
            list.setItemsCanFocus(false);
            list.setAdapter(rows);
            list.setOnItemClickListener((parent, view, position, id) -> {
                select(position);
                open(rows.row(position));
            });
            reload();
            return frame(list);
        }

        /** Rebuilds the rows from the notebook, keeping the chosen row where it can. */
        void reload() {
            rows.replace(rows(), query());
            int index = rows.find(selectedKey);
            if (index < 0 && !startsEmpty()) index = rows.nearest(selectedIndex < 0 ? 0 : selectedIndex);
            if (index < 0 && startsEmpty() && selectedKey != null) index = rows.nearest(selectedIndex);
            if (index >= 0) select(index);
            else {
                selectedKey = null;
                selectedIndex = -1;
                list.setSelectionFromTop(0, 0);
            }
        }

        void select(int position) {
            rows.select(position);
            selectedIndex = position;
            selectedKey = position >= 0 ? rows.row(position).key() : null;
            if (position >= 0) reveal(position);
        }

        Rows.Row selected() {
            return rows == null ? null : rows.selectedRow();
        }

        /** Scrolls just enough to show the chosen row, and its heading too when it heads a section. */
        void reveal(final int position) {
            if (list.getHeight() == 0) {
                list.post(() -> {
                    if (list.getHeight() > 0) reveal(position);
                });
                return;
            }
            int first = list.getFirstVisiblePosition();
            int limit = list.getHeight() - list.getPaddingBottom();
            View child = list.getChildAt(position - first);
            if (rows.next(position, -1) < 0) {
                list.setSelectionFromTop(0, 0);
                return;
            }
            if (child == null) {
                if (position < first) list.setSelectionFromTop(heading(position), 0);
                else list.setSelectionFromTop(position, limit - dp(rows.row(position).type == Rows.HIT ? 54 : 40));
                return;
            }
            if (child.getTop() < 0) list.setSelectionFromTop(heading(position), 0);
            else if (child.getBottom() > limit) list.setSelectionFromTop(position, limit - child.getHeight());
        }

        private int heading(int position) {
            return position > 0 && rows.row(position - 1).type == Rows.HEADING ? position - 1 : position;
        }

        void move(int step) {
            int from = rows.selected();
            if (from < 0) {
                int start = rows.nearest(0);
                if (start >= 0 && step > 0) select(start);
                return;
            }
            int next = rows.next(from, step);
            if (next >= 0) select(next);
            else if (step < 0) upFromTop();
            else reveal(from);
        }

        @Override
        void back() {
            pop();
        }

        @Override
        void refocus() {
            list.requestFocus();
        }

        @Override
        void shown() {
            list.requestFocus();
        }

        @Override
        boolean key(KeyEvent event, boolean down, boolean released) {
            int key = event.getKeyCode();
            switch (key) {
                case KeyEvent.KEYCODE_DPAD_UP:
                    if (down) move(-1);
                    return true;
                case KeyEvent.KEYCODE_DPAD_DOWN:
                    if (down) move(1);
                    return true;
                case KeyEvent.KEYCODE_DPAD_LEFT:
                    if (released) back();
                    return true;
                case KeyEvent.KEYCODE_DPAD_RIGHT:
                    if (released && selected() != null) open(selected());
                    return true;
                default:
                    if (Ui.isOk(key)) {
                        if (released) {
                            Rows.Row row = selected();
                            if (row != null) open(row);
                            else okOnEmpty();
                        }
                        return true;
                    }
                    if (down && event.getRepeatCount() == 0 && event.isPrintingKey() && searches()) {
                        push(new SearchPage());
                        // The search field has focus now: the key goes on to it.
                        return false;
                    }
                    return false;
            }
        }

        void okOnEmpty() {}
    }

    // ------------------------------------------------------------------
    // Folders
    // ------------------------------------------------------------------

    final class FoldersPage extends ListPage {

        FoldersPage() {
            selectedKey = "f:" + Notebook.NOTES;
        }

        @Override
        List<Rows.Row> rows() {
            List<Rows.Row> list = new ArrayList<Rows.Row>();
            list.add(new Rows.Row(Rows.NAV, null));
            list.add(new Rows.Row(Rows.TITLE, "Folders"));
            list.add(new Rows.Row(Rows.HEADING, "On My Phone"));
            for (Folder folder : book.folders()) {
                Rows.Row row = new Rows.Row(Rows.FOLDER, folder.name());
                row.folder = folder.id;
                row.count = book.count(folder.id);
                row.chevron = true;
                row.icon = R.drawable.ic_folder;
                list.add(row);
            }
            int deleted = book.deleted().size();
            if (deleted > 0) {
                Rows.Row row = new Rows.Row(Rows.FOLDER, Notebook.DELETED_NAME);
                row.folder = DELETED;
                row.count = deleted;
                row.chevron = true;
                row.icon = R.drawable.ic_trash;
                list.add(row);
            }
            return list;
        }

        @Override
        View frame(ListView list) {
            LinearLayout page = vertical();
            page.addView(list, Ui.weighted());
            page.addView(toolbar(null, R.drawable.ic_new_folder, R.drawable.ic_compose));
            return page;
        }

        @Override
        void open(Rows.Row row) {
            prefs().edit().putString("folder", row.folder).apply();
            push(new NotesPage(row.folder));
        }

        @Override
        boolean searches() {
            return true;
        }

        @Override
        void upFromTop() {
            push(new SearchPage());
        }

        @Override
        void menu() {
            final Rows.Row row = selected();
            final String target = row == null || DELETED.equals(row.folder) ? Notebook.NOTES : row.folder;
            List<Overlay.Item> items = new ArrayList<Overlay.Item>();
            items.add(item("New Note", R.drawable.ic_new, () -> {
                prefs().edit().putString("folder", target).apply();
                selectedKey = "f:" + target;
                pages.add(new NotesPage(target));
                newNote(target, folderName(target));
            }));
            items.add(first("New Folder", R.drawable.ic_new_folder, () -> push(new NamePage(null, created -> {
                selectedKey = "f:" + created.id;
            }))));
            if (row != null && DELETED.equals(row.folder)) {
                items.add(red("Delete All", R.drawable.ic_bin, false, () -> confirm("Delete All?",
                    "These notes will be deleted. This can't be undone.", "Delete", true, () -> {
                        book.emptyDeleted();
                        save();
                        reload();
                    })));
            } else if (row != null && !Notebook.NOTES.equals(row.folder)) {
                final Folder folder = book.folder(row.folder);
                items.add(item("Rename Folder", R.drawable.ic_pencil, () -> push(new NamePage(folder, null))));
                items.add(red("Delete Folder", R.drawable.ic_bin, false, () -> deleteFolder(folder)));
            }
            showMenu(items);
        }

        private void deleteFolder(final Folder folder) {
            int count = book.count(folder.id);
            String message = count == 0 ? "It has no notes in it."
                : count == 1 ? "Its note will be moved to Recently Deleted."
                : "Its " + count + " notes will be moved to Recently Deleted.";
            confirm("Delete Folder?", message, "Delete", true, () -> {
                book.deleteFolder(folder.id, now());
                save();
                if (folder.id.equals(prefs().getString("folder", ""))) {
                    prefs().edit().putString("folder", Notebook.NOTES).apply();
                }
                reload();
            });
        }

        @Override
        void back() {
            pop();
        }
    }

    // ------------------------------------------------------------------
    // A folder's notes, or Recently Deleted
    // ------------------------------------------------------------------

    final class NotesPage extends ListPage {
        final String folder;
        private int count;

        NotesPage(String folder) {
            this.folder = folder;
        }

        boolean isDeleted() {
            return DELETED.equals(folder);
        }

        @Override
        List<Rows.Row> rows() {
            List<Rows.Row> list = new ArrayList<Rows.Row>();
            list.add(new Rows.Row(Rows.NAV, "Folders"));
            list.add(new Rows.Row(Rows.TITLE, folderName(folder)));
            List<Note> notes = isDeleted() ? book.deleted() : book.notesIn(folder);
            count = notes.size();
            if (notes.isEmpty()) {
                list.add(new Rows.Row(Rows.EMPTY, "No Notes"));
                return list;
            }
            for (Dates.Section section : Dates.sections(notes, !isDeleted(), now(), TimeZone.getDefault())) {
                list.add(new Rows.Row(Rows.HEADING, section.title));
                for (Note note : section.notes) {
                    Rows.Row row = new Rows.Row(Rows.NOTE, null);
                    row.note = note;
                    list.add(row);
                }
            }
            return list;
        }

        @Override
        View frame(ListView list) {
            LinearLayout page = vertical();
            page.addView(list, Ui.weighted());
            String middle = count == 0 ? null : count == 1 ? "1 Note" : count + " Notes";
            page.addView(toolbar(middle, 0, isDeleted() ? 0 : R.drawable.ic_compose));
            return page;
        }

        @Override
        void open(Rows.Row row) {
            push(new NotePage(row.note.id, folderName(folder)));
        }

        @Override
        void okOnEmpty() {
            if (!isDeleted()) newNote(folder, folderName(folder));
        }

        @Override
        boolean searches() {
            return true;
        }

        @Override
        void upFromTop() {
            push(new SearchPage());
        }

        @Override
        void back() {
            // Folders is always under a folder; this keeps its choice on the folder just left.
            if (pages.size() >= 2 && pages.get(pages.size() - 2) instanceof FoldersPage) {
                ((FoldersPage) pages.get(pages.size() - 2)).selectedKey = "f:" + folder;
            }
            pop();
        }

        @Override
        void menu() {
            Rows.Row row = selected();
            if (isDeleted()) {
                if (row != null) showMenu(deletedItems(row.note, () -> rebuild(), true));
                return;
            }
            List<Overlay.Item> items = new ArrayList<Overlay.Item>();
            items.add(item("New Note", R.drawable.ic_new, () -> newNote(folder, folderName(folder))));
            if (row != null) items.addAll(noteItems(row.note, true, () -> rebuild()));
            showMenu(items);
        }

        /** Rebuilt whole, since the toolbar's count changes too. */
        void rebuild() {
            show();
        }
    }

    // ------------------------------------------------------------------
    // Search
    // ------------------------------------------------------------------

    final class SearchPage extends ListPage {
        private EditText field;
        private String query = "";
        /** Whether the d-pad is in the hits rather than the field. */
        private boolean inHits;

        @Override
        String query() {
            return query;
        }

        @Override
        boolean startsEmpty() {
            return !inHits;
        }

        @Override
        List<Rows.Row> rows() {
            List<Rows.Row> list = new ArrayList<Rows.Row>();
            if (query.trim().length() == 0) return list;
            List<Note> hits = book.search(query);
            if (hits.isEmpty()) {
                list.add(new Rows.Row(Rows.EMPTY, "No Results"));
                return list;
            }
            list.add(new Rows.Row(Rows.HEADING, "Top Hits"));
            for (Note note : hits) {
                Rows.Row row = new Rows.Row(Rows.HIT, null);
                row.note = note;
                row.place = folderName(note.folder());
                list.add(row);
            }
            return list;
        }

        @Override
        View frame(ListView list) {
            LinearLayout page = vertical();
            LinearLayout bar = new LinearLayout(MainActivity.this);
            bar.setGravity(Gravity.CENTER_VERTICAL);
            bar.setPadding(dp(8), 0, dp(8), 0);

            LinearLayout box = new LinearLayout(MainActivity.this);
            box.setGravity(Gravity.CENTER_VERTICAL);
            box.setPadding(dp(6), 0, dp(6), 0);
            GradientDrawable fill = new GradientDrawable();
            fill.setColor(color(R.color.field));
            fill.setCornerRadius(dp(8));
            box.setBackground(fill);
            ImageView glass = new ImageView(MainActivity.this);
            glass.setImageDrawable(icon(R.drawable.ic_search, R.color.muted));
            box.addView(glass, new LinearLayout.LayoutParams(dp(13), dp(13)));
            if (field == null) {
                field = field(13);
                field.setSingleLine(true);
                field.setHint("Search");
                field.setImeOptions(EditorInfo.IME_ACTION_SEARCH);
                field.addTextChangedListener(new Watcher() {
                    @Override
                    public void afterTextChanged(Editable text) {
                        query = text.toString();
                        inHits = false;
                        selectedKey = null;
                        selectedIndex = -1;
                        reload();
                    }
                });
            } else if (field.getParent() != null) {
                ((ViewGroup) field.getParent()).removeView(field);
            }
            LinearLayout.LayoutParams fieldParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
            fieldParams.leftMargin = dp(4);
            box.addView(field, fieldParams);
            bar.addView(box, new LinearLayout.LayoutParams(0, dp(26), 1));

            TextView cancel = label("Cancel", 13, R.color.tint_text, null);
            LinearLayout.LayoutParams cancelParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            cancelParams.leftMargin = dp(8);
            bar.addView(cancel, cancelParams);
            cancel.setOnClickListener(v -> pop());

            page.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(34)));
            page.addView(list, Ui.weighted());
            return page;
        }

        @Override
        void shown() {
            if (inHits && selected() != null) list.requestFocus();
            else toField();
        }

        @Override
        void refocus() {
            shown();
        }

        private void toField() {
            inHits = false;
            if (rows.selected() >= 0) {
                rows.select(-1);
                selectedKey = null;
                selectedIndex = -1;
            }
            field.requestFocus();
            field.setSelection(field.getText().length());
        }

        private void toHits() {
            int firstHit = rows.nearest(0);
            if (firstHit < 0) return;
            inHits = true;
            list.requestFocus();
            select(firstHit);
        }

        @Override
        void upFromTop() {
            toField();
        }

        @Override
        void open(Rows.Row row) {
            inHits = true;
            push(new NotePage(row.note.id, "Search"));
        }

        @Override
        void menu() {
            Rows.Row row = inHits ? selected() : null;
            if (row != null) showMenu(noteItems(row.note, false, () -> {
                reload();
                if (selected() == null) toField();
            }));
        }

        @Override
        boolean key(KeyEvent event, boolean down, boolean released) {
            int key = event.getKeyCode();
            if (!inHits) {
                if (key == KeyEvent.KEYCODE_DPAD_DOWN || Ui.isOk(key)) {
                    if (down && event.getRepeatCount() == 0) {
                        if (Ui.isOk(key)) consumeOk(event);
                        toHits();
                    }
                    return true;
                }
                if (key == KeyEvent.KEYCODE_DPAD_UP) return true;
                return false;
            }
            if (key == KeyEvent.KEYCODE_DEL || event.isPrintingKey()) {
                // Typing again: back to the field, which gets the key.
                if (down) toField();
                return false;
            }
            return super.key(event, down, released);
        }
    }

    // ------------------------------------------------------------------
    // Move a note to a folder
    // ------------------------------------------------------------------

    final class MovePage extends ListPage {
        final String noteId;

        MovePage(String noteId) {
            this.noteId = noteId;
        }

        @Override
        List<Rows.Row> rows() {
            List<Rows.Row> list = new ArrayList<Rows.Row>();
            Note note = book.note(noteId);
            list.add(new Rows.Row(Rows.CAPTION, note == null ? "" : "Moving \u201C" + note.title() + "\u201D"));
            for (Folder folder : book.folders()) {
                Rows.Row row = new Rows.Row(Rows.FOLDER, folder.name());
                row.folder = folder.id;
                row.count = book.count(folder.id);
                row.tick = note != null && !note.isDeleted() && folder.id.equals(note.folder());
                row.icon = R.drawable.ic_folder;
                list.add(row);
            }
            Rows.Row action = new Rows.Row(Rows.ACTION, "New Folder");
            action.icon = R.drawable.ic_new_folder;
            list.add(action);
            if (selectedKey == null && note != null) {
                for (Folder folder : book.folders()) {
                    if (!folder.id.equals(note.folder())) {
                        selectedKey = "f:" + folder.id;
                        break;
                    }
                }
            }
            return list;
        }

        @Override
        View frame(ListView list) {
            LinearLayout page = vertical();
            page.addView(centerBar("Select a folder", false));
            page.addView(list, Ui.weighted());
            return page;
        }

        @Override
        void open(Rows.Row row) {
            if (book.note(noteId) == null) {
                pop();
                return;
            }
            if (row.type == Rows.ACTION) {
                push(new NamePage(null, created -> {
                    book.move(noteId, created.id);
                    save();
                    toast("Moved to " + created.name());
                    // Off the name page's back, then this one's.
                    pages.remove(this);
                }));
                return;
            }
            book.move(noteId, row.folder);
            save();
            pop();
        }
    }

    // ------------------------------------------------------------------
    // New Folder and Rename Folder
    // ------------------------------------------------------------------

    interface Created {
        void folder(Folder folder);
    }

    final class NamePage extends Page {
        private final Folder renaming;
        private final Created done;
        private EditText field;

        NamePage(Folder renaming, Created done) {
            this.renaming = renaming;
            this.done = done;
        }

        @Override
        View build() {
            LinearLayout page = vertical();
            final View bar = centerBar(renaming == null ? "New Folder" : "Rename Folder", true);
            page.addView(bar);
            FrameLayout box = new FrameLayout(MainActivity.this);
            GradientDrawable fill = new GradientDrawable();
            fill.setColor(color(R.color.card));
            fill.setCornerRadius(dp(10));
            box.setBackground(fill);
            box.setPadding(dp(10), 0, dp(10), 0);
            if (field == null) {
                field = field(13.5f);
                field.setSingleLine(true);
                field.setHint("Name");
                field.setFilters(new InputFilter[] {new InputFilter.LengthFilter(Notebook.MAX_NAME)});
                field.setImeOptions(EditorInfo.IME_ACTION_DONE);
                if (renaming != null) field.setText(renaming.name());
                field.setSelection(field.getText().length());
                field.setOnEditorActionListener((view, action, event) -> {
                    commit();
                    return true;
                });
            } else if (field.getParent() != null) {
                ((ViewGroup) field.getParent()).removeView(field);
            }
            final TextView save = bar.findViewWithTag("save");
            final Runnable paintSave = () -> save.setTextColor(color(
                field.getText().toString().trim().length() > 0 ? R.color.tint_text : R.color.chevron));
            paintSave.run();
            field.addTextChangedListener(new Watcher() {
                @Override
                public void afterTextChanged(Editable text) {
                    paintSave.run();
                }
            });
            box.addView(field, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER_VERTICAL));
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(34));
            params.setMargins(dp(8), dp(10), dp(8), 0);
            page.addView(box, params);
            return page;
        }

        @Override
        void shown() {
            field.requestFocus();
        }

        @Override
        void refocus() {
            field.requestFocus();
        }

        private void commit() {
            String name = field.getText().toString();
            if (name.trim().length() == 0) return;
            try {
                Folder folder;
                if (renaming == null) folder = book.addFolder(name);
                else {
                    book.renameFolder(renaming.id, name);
                    folder = renaming;
                }
                save();
                pages.remove(this);
                if (done != null) done.folder(folder);
                show();
            } catch (IllegalArgumentException e) {
                boolean taken = "Name Taken".equals(e.getMessage());
                tell(e.getMessage(), taken ? "Please choose a different name." : null);
            }
        }

        @Override
        boolean key(KeyEvent event, boolean down, boolean released) {
            if (!Ui.isOk(event.getKeyCode())) return false;
            // On the press: T9 keeps the release for itself.
            if (down && event.getRepeatCount() == 0) {
                consumeOk(event);
                commit();
            }
            return true;
        }
    }

    // ------------------------------------------------------------------
    // A note
    // ------------------------------------------------------------------

    final class NotePage extends Page {
        final String noteId;
        final String backLabel;
        private EditText editor;
        private ScrollView reader;
        private TextView date;
        private boolean dirty;
        private final Runnable saveSoon = () -> flush();

        NotePage(String noteId, String backLabel) {
            this.noteId = noteId;
            this.backLabel = backLabel;
        }

        @Override
        boolean white() {
            return true;
        }

        @Override
        View build() {
            final Note note = book.note(noteId);
            LinearLayout page = vertical();
            page.setBackgroundColor(color(R.color.card));
            if (note == null) return page;

            LinearLayout nav = new LinearLayout(MainActivity.this);
            nav.setGravity(Gravity.CENTER_VERTICAL);
            nav.setPadding(dp(6), 0, dp(6), 0);
            ImageView back = new ImageView(MainActivity.this);
            back.setImageDrawable(icon(R.drawable.ic_back, R.color.tint));
            nav.addView(back, new LinearLayout.LayoutParams(dp(8), dp(13)));
            TextView label = label(backLabel, 13, R.color.tint_text, null);
            LinearLayout.LayoutParams labelParams = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
            labelParams.leftMargin = dp(3);
            nav.addView(label, labelParams);
            nav.setOnClickListener(v -> back());
            page.addView(nav, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));

            date = label(dateLine(note), 11, R.color.muted, null);
            date.setGravity(Gravity.CENTER_HORIZONTAL);
            LinearLayout.LayoutParams dateParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            dateParams.bottomMargin = dp(6);
            page.addView(date, dateParams);

            if (note.isDeleted()) {
                reader = new ScrollView(MainActivity.this);
                // It takes the focus only so the keys land; API 26's focus wash would grey the page.
                reader.setDefaultFocusHighlightEnabled(false);
                TextView body = text("", 14, color(R.color.read_only));
                body.setText(styled(note.text()));
                body.setLineSpacing(0, 1.12f);
                body.setPadding(dp(12), 0, dp(12), dp(12));
                reader.addView(body);
                page.addView(reader, Ui.weighted());
                editor = null;
                return page;
            }

            if (editor == null) {
                editor = field(14);
                editor.setSingleLine(false);
                editor.setGravity(Gravity.TOP | Gravity.START);
                editor.setInputType(EditorInfo.TYPE_CLASS_TEXT | EditorInfo.TYPE_TEXT_FLAG_MULTI_LINE
                    | EditorInfo.TYPE_TEXT_FLAG_CAP_SENTENCES);
                editor.setImeOptions(EditorInfo.IME_FLAG_NO_ENTER_ACTION);
                editor.setHorizontallyScrolling(false);
                editor.setLineSpacing(0, 1.12f);
                editor.setPadding(dp(12), 0, dp(12), dp(12));
                editor.setFilters(new InputFilter[] {new InputFilter.LengthFilter(Note.MAX_TEXT)});
                editor.setVerticalScrollBarEnabled(true);
                editor.setText(note.text());
                styleTitle(editor.getText());
                editor.setSelection(editor.getText().length());
                editor.addTextChangedListener(new Watcher() {
                    @Override
                    public void afterTextChanged(Editable text) {
                        styleTitle(text);
                        changed(text.toString());
                    }
                });
            } else if (editor.getParent() != null) {
                ((ViewGroup) editor.getParent()).removeView(editor);
            }
            page.addView(editor, Ui.weighted());
            return page;
        }

        private String dateLine(Note note) {
            boolean hours24 = android.text.format.DateFormat.is24HourFormat(MainActivity.this);
            return Dates.full(note.modified(), TimeZone.getDefault(), hours24);
        }

        @Override
        void shown() {
            if (editor != null) editor.requestFocus();
            else if (reader != null) reader.requestFocus();
        }

        @Override
        void refocus() {
            shown();
        }

        private void changed(String text) {
            try {
                if (book.setText(noteId, text, now())) {
                    dirty = true;
                    Note note = book.note(noteId);
                    if (note != null && date != null) date.setText(dateLine(note));
                    handler.removeCallbacks(saveSoon);
                    handler.postDelayed(saveSoon, 1500);
                }
            } catch (IllegalArgumentException gone) {
                // Deleted from under the editor (it can't be), or too long (the filter stops that).
            }
        }

        /** Writes the note now if it has changed. */
        void flush() {
            handler.removeCallbacks(saveSoon);
            if (!dirty) return;
            dirty = false;
            save();
        }

        @Override
        void covered() {
            flush();
        }

        @Override
        void left() {
            handler.removeCallbacks(saveSoon);
            if (book.dropIfBlank(noteId)) {
                dirty = false;
                save();
            } else {
                flush();
            }
        }

        @Override
        void menu() {
            final Note note = book.note(noteId);
            if (note == null) return;
            if (note.isDeleted()) {
                showMenu(deletedItems(note, () -> {
                    if (book.note(noteId) == null) pop();
                    else show();
                }, false));
                return;
            }
            flush();
            List<Overlay.Item> items = new ArrayList<Overlay.Item>();
            items.add(item("New Note", R.drawable.ic_new, () -> {
                String folder = note.folder();
                pop();
                newNote(folder, folderName(folder));
            }));
            items.addAll(noteItems(note, true, () -> {
                if (book.note(noteId) == null || book.note(noteId).isDeleted()) pop();
            }));
            showMenu(items);
        }

        @Override
        boolean key(KeyEvent event, boolean down, boolean released) {
            int key = event.getKeyCode();
            final Note note = book.note(noteId);
            if (editor == null) {
                // Read-only: Up and Down scroll; anything that would edit offers Recover.
                if (key == KeyEvent.KEYCODE_DPAD_UP || key == KeyEvent.KEYCODE_DPAD_DOWN) {
                    if (down && reader != null) {
                        reader.smoothScrollBy(0, (key == KeyEvent.KEYCODE_DPAD_UP ? -1 : 1) * dp(57));
                    }
                    return true;
                }
                if (key == KeyEvent.KEYCODE_DPAD_LEFT) {
                    if (released) back();
                    return true;
                }
                if (Ui.isOk(key) || event.isPrintingKey()) {
                    if (released && note != null) offerRecover(note);
                    return true;
                }
                return true;
            }
            if (Ui.isOk(key)) {
                // OK is a new line, as Return is on the phone's keyboard.
                if (down) {
                    consumeOk(event);
                    int start = Math.max(0, Math.min(editor.getSelectionStart(), editor.getSelectionEnd()));
                    int end = Math.max(editor.getSelectionStart(), editor.getSelectionEnd());
                    if (editor.length() < Note.MAX_TEXT) editor.getText().replace(start, Math.max(start, end), "\n");
                }
                return true;
            }
            return false;
        }

        private void offerRecover(final Note note) {
            confirm("Recover Note?", "A recently deleted note can't be edited until it is recovered.",
                "Recover", false, () -> {
                    book.recover(note.id);
                    save();
                    show();
                });
        }
    }

    /** The first line of a note in Apple's title style: 18sp bold. */
    private CharSequence styled(String text) {
        android.text.SpannableStringBuilder out = new android.text.SpannableStringBuilder(text);
        styleTitle(out);
        return out;
    }

    private void styleTitle(Editable text) {
        for (Object span : text.getSpans(0, text.length(), TitleSize.class)) text.removeSpan(span);
        for (Object span : text.getSpans(0, text.length(), TitleWeight.class)) text.removeSpan(span);
        int end = TextUtils.indexOf(text, '\n');
        if (end < 0) end = text.length();
        if (end == 0) return;
        text.setSpan(new TitleSize(18), 0, end, Spanned.SPAN_EXCLUSIVE_INCLUSIVE);
        text.setSpan(new TitleWeight(), 0, end, Spanned.SPAN_EXCLUSIVE_INCLUSIVE);
    }

    /** Marker spans, so the title's style can be found and moved as the first line changes. */
    private static final class TitleSize extends AbsoluteSizeSpan {
        TitleSize(int dp) {
            super(dp, true);
        }
    }

    private static final class TitleWeight extends StyleSpan {
        TitleWeight() {
            super(Typeface.BOLD);
        }
    }

    private abstract static class Watcher implements TextWatcher {
        @Override
        public void beforeTextChanged(CharSequence text, int start, int count, int after) {}

        @Override
        public void onTextChanged(CharSequence text, int start, int before, int count) {}
    }
}
