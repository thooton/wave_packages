package com.goodreads.xp3;

import android.content.Context;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.goodreads.xp3.books.Book;
import com.goodreads.xp3.books.Detail;
import com.goodreads.xp3.books.Review;
import com.goodreads.xp3.books.Text;
import com.xp3.common.ui.SelectableAdapter;

import java.util.ArrayList;
import java.util.List;

/**
 * Every list in the app, and the book's own page, as rows the d-pad moves
 * through: page titles and section headings, books with their covers, links
 * ("See all"), and on a book's page its head, the Want to Read button, the
 * description, its facts, the spread of its ratings and its reviews. Only
 * rows with an action can be chosen; the rest are read by scrolling past.
 */
final class Rows extends SelectableAdapter {

    static final int TITLE = 0;
    static final int HEADING = 1;
    static final int BOOK = 2;
    static final int LINK = 3;
    static final int ENTRY = 4;
    static final int NOTE = 5;
    static final int SPINNER = 6;
    static final int HEAD = 7;
    static final int BUTTON = 8;
    static final int PARAGRAPH = 9;
    static final int FACTS = 10;
    static final int SPREAD = 11;
    static final int REVIEW = 12;
    private static final int TYPES = 13;

    static final class Item {
        final int type;
        final String key;
        final CharSequence text;
        final Book book;
        final Detail detail;
        final Review review;
        final Runnable action;
        final boolean on;

        Item(int type, String key, CharSequence text, Book book, Detail detail, Review review, Runnable action, boolean on) {
            this.type = type;
            this.key = key;
            this.text = text;
            this.book = book;
            this.detail = detail;
            this.review = review;
            this.action = action;
            this.on = on;
        }
    }

    static Item title(String text) {
        return new Item(TITLE, null, text, null, null, null, null, false);
    }

    static Item heading(String text) {
        return new Item(HEADING, null, text, null, null, null, null, false);
    }

    static Item book(Book book, Runnable open) {
        return new Item(BOOK, "book:" + book.id, null, book, null, null, open, false);
    }

    static Item link(String key, String text, Runnable action) {
        return new Item(LINK, key, text, null, null, null, action, false);
    }

    static Item entry(String key, String text, Runnable action) {
        return new Item(ENTRY, key, text, null, null, null, action, false);
    }

    static Item note(String text) {
        return new Item(NOTE, null, text, null, null, null, null, false);
    }

    static Item spinner() {
        return new Item(SPINNER, null, null, null, null, null, null, false);
    }

    static Item head(Detail detail) {
        return new Item(HEAD, null, null, detail.book, detail, null, null, false);
    }

    static Item button(boolean wanted, Runnable action) {
        return new Item(BUTTON, "want", null, null, null, null, action, wanted);
    }

    static Item paragraph(String text) {
        return new Item(PARAGRAPH, null, text, null, null, null, null, false);
    }

    static Item facts(Detail detail) {
        return new Item(FACTS, null, null, null, detail, null, null, false);
    }

    static Item spread(Detail detail) {
        return new Item(SPREAD, null, null, null, detail, null, null, false);
    }

    static Item review(Review review) {
        return new Item(REVIEW, null, null, null, null, review, null, false);
    }

    private final Context context;
    private final List<Item> items = new ArrayList<Item>();

    Rows(Context context) {
        this.context = context;
    }

    void set(List<Item> list) {
        items.clear();
        items.addAll(list);
        notifyDataSetChanged();
    }

    Item item(int position) {
        return position >= 0 && position < items.size() ? items.get(position) : null;
    }

    /** The next row that can be chosen after `position` (or before it, for a negative `direction`), or -1. */
    int next(int position, int direction) {
        for (int i = position + direction; i >= 0 && i < items.size(); i += direction) {
            if (items.get(i).action != null) return i;
        }
        return -1;
    }

    /** Where the row with `key` is now; or, when it is gone or `key` is null, the first that can be chosen. */
    int positionOf(String key) {
        int first = -1;
        for (int i = 0; i < items.size(); i++) {
            Item item = items.get(i);
            if (item.action == null) continue;
            if (first < 0) first = i;
            if (key != null && key.equals(item.key)) return i;
        }
        return first;
    }

    @Override
    public int getCount() {
        return items.size();
    }

    @Override
    public Object getItem(int position) {
        return items.get(position);
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
        return items.get(position).type;
    }

    /**
     * Every row can hold ListView's selection, so it can always sit on a row
     * that is on the screen while the d-pad reads past rows without an
     * action (ListView snaps back to a selection scrolled out of sight
     * whenever it lays out). Only rows with an action are washed or act.
     */
    @Override
    public boolean areAllItemsEnabled() {
        return true;
    }

    @Override
    public boolean isEnabled(int position) {
        return true;
    }

    boolean acts(int position) {
        Item item = item(position);
        return item != null && item.action != null;
    }

    /** Washes the rows on screen to match the selection, without laying the list out again. */
    void repaint(android.widget.ListView list) {
        for (int i = 0; i < list.getChildCount(); i++) wash(list.getChildAt(i), list.getFirstVisiblePosition() + i);
    }

    /**
     * The row, washed beige when it is the one chosen. Rows paint their own
     * highlight: ListView's selector is left behind when the chosen row
     * scrolls off, which the d-pad's fixed steps do all the time.
     */
    @Override
    public View getView(int position, View convert, ViewGroup parent) {
        View view = build(position, convert);
        wash(view, position);
        return view;
    }

    private void wash(View view, int position) {
        if (position < 0 || position >= items.size()) return;
        boolean on = isSelected(position) && items.get(position).action != null;
        if (items.get(position).type == BUTTON) {
            ((FrameLayout) view).getChildAt(0).setSelected(on);
        } else {
            view.setBackgroundColor(on ? context.getColor(R.color.focus) : 0);
        }
    }

    private View build(int position, View convert) {
        Item item = items.get(position);
        Item above = position > 0 ? items.get(position - 1) : null;
        switch (item.type) {
            case TITLE: return title(item, convert, position == 0);
            case HEADING: return heading(item, convert, position == 0);
            case BOOK: return book(item, convert, above);
            case LINK: return link(item, convert);
            case ENTRY: return entry(item, convert, above);
            case NOTE: return note(item, convert);
            case SPINNER: return spinner(convert);
            case HEAD: return head(item);
            case BUTTON: return button(item, convert);
            case PARAGRAPH: return paragraph(item, convert);
            case FACTS: return facts(item);
            case SPREAD: return spread(item);
            default: return review(item, convert, above);
        }
    }

    private int dp(float value) {
        return Look.dp(context, value);
    }

    private TextView text(int style, boolean serif, float sp, int color) {
        return Look.text(context, serif ? Look.serif(context, style) : Look.lato(context, style), sp, color);
    }

    private View rule(int color) {
        View rule = new View(context);
        rule.setBackgroundColor(context.getColor(color));
        return rule;
    }

    private LinearLayout column() {
        LinearLayout box = new LinearLayout(context);
        box.setOrientation(LinearLayout.VERTICAL);
        return box;
    }

    /** A page's own title, as the site's h1 sets it: the serif, large, in ink. */
    private View title(Item item, View convert, boolean first) {
        TextView view = convert instanceof TextView ? (TextView) convert : text(Look.REGULAR, true, 15, R.color.text);
        view.setText(item.text);
        view.setLineSpacing(0, 1.2f);
        view.setPadding(dp(10), dp(first ? 10 : 16), dp(10), dp(4));
        return view;
    }

    /**
     * A section's heading, as the site heads its boxes: brown capitals in
     * Lato's bold, a little tracked, over a beige rule.
     */
    private View heading(Item item, View convert, boolean first) {
        LinearLayout box;
        if (convert instanceof LinearLayout) {
            box = (LinearLayout) convert;
        } else {
            box = column();
            TextView label = text(Look.BOLD, false, 10.5f, R.color.brown);
            label.setAllCaps(true);
            label.setLetterSpacing(0.06f);
            label.setPadding(dp(10), 0, dp(10), dp(5));
            box.addView(label);
            LinearLayout.LayoutParams ruled = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1);
            ruled.setMargins(dp(10), 0, dp(10), 0);
            box.addView(rule(R.color.beige_rule), ruled);
        }
        box.setPadding(0, dp(first ? 10 : 18), 0, 0);
        ((TextView) box.getChildAt(0)).setText(item.text);
        return box;
    }

    private static final class BookHolder {
        View rule;
        ImageView cover;
        TextView title;
        TextView author;
        LinearLayout rating;
        Stars stars;
        TextView average;
        TextView note;
    }

    /** A book as the site's lists set one: the cover, then the title, "by" the author, the stars and a note. */
    private View book(Item item, View convert, Item above) {
        BookHolder holder;
        LinearLayout outer;
        if (convert != null && convert.getTag() instanceof BookHolder) {
            outer = (LinearLayout) convert;
            holder = (BookHolder) convert.getTag();
        } else {
            holder = new BookHolder();
            outer = column();
            holder.rule = rule(R.color.rule);
            LinearLayout.LayoutParams ruled = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1);
            ruled.setMargins(dp(10), 0, dp(10), 0);
            outer.addView(holder.rule, ruled);
            LinearLayout line = new LinearLayout(context);
            line.setOrientation(LinearLayout.HORIZONTAL);
            line.setPadding(dp(10), dp(8), dp(10), dp(8));
            holder.cover = new ImageView(context);
            holder.cover.setScaleType(ImageView.ScaleType.FIT_CENTER);
            holder.cover.setBackgroundColor(context.getColor(R.color.cover));
            line.addView(holder.cover, new LinearLayout.LayoutParams(dp(40), dp(60)));
            LinearLayout words = column();
            words.setPadding(dp(8), 0, 0, 0);
            holder.title = text(Look.BOLD, true, 11.5f, R.color.text);
            holder.title.setMaxLines(2);
            holder.title.setEllipsize(TextUtils.TruncateAt.END);
            holder.title.setLineSpacing(0, 1.18f);
            words.addView(holder.title);
            holder.author = text(Look.REGULAR, false, 11, R.color.text);
            holder.author.setSingleLine(true);
            holder.author.setEllipsize(TextUtils.TruncateAt.END);
            holder.author.setPadding(0, dp(3), 0, 0);
            words.addView(holder.author);
            holder.rating = new LinearLayout(context);
            holder.rating.setOrientation(LinearLayout.HORIZONTAL);
            holder.rating.setGravity(Gravity.CENTER_VERTICAL);
            holder.rating.setPadding(0, dp(4), 0, 0);
            holder.stars = new Stars(context, 9);
            holder.rating.addView(holder.stars);
            holder.average = text(Look.REGULAR, false, 9.5f, R.color.muted);
            holder.average.setSingleLine(true);
            holder.average.setEllipsize(TextUtils.TruncateAt.END);
            holder.average.setPadding(dp(4), 0, 0, 0);
            holder.rating.addView(holder.average);
            words.addView(holder.rating);
            holder.note = text(Look.REGULAR, false, 9.5f, R.color.muted);
            holder.note.setSingleLine(true);
            holder.note.setEllipsize(TextUtils.TruncateAt.END);
            holder.note.setPadding(0, dp(3), 0, 0);
            words.addView(holder.note);
            line.addView(words, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
            outer.addView(line);
            outer.setTag(holder);
        }
        Book book = item.book;
        holder.rule.setVisibility(above != null && (above.type == BOOK) ? View.VISIBLE : View.INVISIBLE);
        Pictures.cover(holder.cover, book.cover, dp(60) * 3 / 2);
        holder.title.setText(book.title);
        holder.author.setText(book.author.isEmpty() ? "" : by(book.author));
        holder.author.setVisibility(book.author.isEmpty() ? View.GONE : View.VISIBLE);
        if (book.rating > 0) {
            holder.rating.setVisibility(View.VISIBLE);
            holder.stars.setRating(book.rating);
            holder.average.setText(Text.rating(book.rating)
                + (book.ratings > 0 ? " \u00B7 " + Text.counted(book.ratings, "rating", "ratings") : ""));
        } else {
            holder.rating.setVisibility(View.GONE);
        }
        holder.note.setText(book.note);
        holder.note.setVisibility(book.note.isEmpty() ? View.GONE : View.VISIBLE);
        return outer;
    }

    /** "by Susanna Clarke", the "by" in grey as the site sets it. */
    private CharSequence by(String author) {
        android.text.SpannableStringBuilder line = new android.text.SpannableStringBuilder("by " + author);
        line.setSpan(new android.text.style.ForegroundColorSpan(context.getColor(R.color.muted)), 0, 2,
            android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        return line;
    }

    /** "See all", in the site's link teal and Lato's bold. */
    private View link(Item item, View convert) {
        TextView view = convert instanceof TextView ? (TextView) convert : text(Look.BOLD, false, 11.5f, R.color.link);
        view.setText(item.text + "  \u203A");
        view.setPadding(dp(10), dp(9), dp(10), dp(10));
        return view;
    }

    /** A genre or a month to browse: the name in ink with a hairline over it, a chevron at the right. */
    private View entry(Item item, View convert, Item above) {
        LinearLayout outer;
        if (convert instanceof LinearLayout) {
            outer = (LinearLayout) convert;
        } else {
            outer = column();
            LinearLayout.LayoutParams ruled = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1);
            ruled.setMargins(dp(10), 0, dp(10), 0);
            outer.addView(rule(R.color.rule), ruled);
            LinearLayout line = new LinearLayout(context);
            line.setOrientation(LinearLayout.HORIZONTAL);
            line.setGravity(Gravity.CENTER_VERTICAL);
            line.setPadding(dp(10), dp(9), dp(10), dp(9));
            TextView name = text(Look.REGULAR, false, 13, R.color.text);
            name.setSingleLine(true);
            name.setEllipsize(TextUtils.TruncateAt.END);
            line.addView(name, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
            TextView chevron = text(Look.REGULAR, false, 14, R.color.muted);
            chevron.setText("\u203A");
            line.addView(chevron);
            outer.addView(line);
        }
        outer.getChildAt(0).setVisibility(above != null && above.type == ENTRY ? View.VISIBLE : View.INVISIBLE);
        ((TextView) ((LinearLayout) outer.getChildAt(1)).getChildAt(0)).setText(item.text);
        return outer;
    }

    private View note(Item item, View convert) {
        TextView view = convert instanceof TextView ? (TextView) convert : text(Look.REGULAR, false, 11.5f, R.color.muted);
        view.setText(item.text);
        view.setLineSpacing(0, 1.25f);
        view.setPadding(dp(10), dp(10), dp(10), dp(10));
        return view;
    }

    private View spinner(View convert) {
        if (convert != null) return convert;
        FrameLayout box = new FrameLayout(context);
        ProgressBar spinner = new ProgressBar(context);
        spinner.setIndeterminateTintList(context.getColorStateList(R.color.brown));
        box.addView(spinner, new FrameLayout.LayoutParams(dp(22), dp(22), Gravity.CENTER));
        box.setMinimumHeight(dp(48));
        return box;
    }

    /**
     * The head of a book's page, as the site's phone layout has it: the cover
     * at the left; the title, its series, the author, the stars with the
     * average, and the counts at the right.
     */
    private View head(Item item) {
        Detail detail = item.detail;
        Book book = detail.book;
        LinearLayout line = new LinearLayout(context);
        line.setOrientation(LinearLayout.HORIZONTAL);
        line.setPadding(dp(10), dp(10), dp(10), dp(8));
        ImageView cover = new ImageView(context);
        cover.setScaleType(ImageView.ScaleType.FIT_CENTER);
        cover.setBackgroundColor(context.getColor(R.color.cover));
        line.addView(cover, new LinearLayout.LayoutParams(dp(70), dp(105)));
        Pictures.cover(cover, book.cover, dp(105) * 3 / 2);
        LinearLayout words = column();
        words.setPadding(dp(9), 0, 0, 0);
        TextView title = text(Look.BOLD, true, 13.5f, R.color.text);
        title.setLineSpacing(0, 1.18f);
        title.setText(book.title);
        words.addView(title);
        if (!detail.series.isEmpty() && !book.title.contains("#")) {
            TextView series = text(Look.REGULAR, false, 10.5f, R.color.link);
            series.setText(detail.series);
            series.setPadding(0, dp(3), 0, 0);
            words.addView(series);
        }
        if (!book.author.isEmpty()) {
            TextView author = text(Look.REGULAR, false, 11.5f, R.color.text);
            author.setText(by(book.author));
            author.setPadding(0, dp(5), 0, 0);
            words.addView(author);
        }
        if (book.rating > 0) {
            LinearLayout rating = new LinearLayout(context);
            rating.setOrientation(LinearLayout.HORIZONTAL);
            rating.setGravity(Gravity.CENTER_VERTICAL);
            rating.setPadding(0, dp(6), 0, 0);
            Stars stars = new Stars(context, 11);
            stars.setRating(book.rating);
            rating.addView(stars);
            TextView average = text(Look.BOLD, false, 12, R.color.text);
            average.setText(Text.rating(book.rating));
            average.setPadding(dp(5), 0, 0, 0);
            rating.addView(average);
            words.addView(rating);
        }
        TextView counts = text(Look.REGULAR, false, 9.5f, R.color.muted);
        counts.setLineSpacing(0, 1.2f);
        String ratings = book.ratings > 0 ? Text.counted(book.ratings, "rating", "ratings") : "No ratings yet";
        counts.setText(detail.reviews > 0 ? ratings + "\n" + Text.counted(detail.reviews, "review", "reviews") : ratings);
        counts.setPadding(0, dp(4), 0, 0);
        words.addView(counts);
        line.addView(words, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        return line;
    }

    /** Want to Read: the site's green button; outlined, with a check, once the book is on the shelf. */
    private View button(Item item, View convert) {
        FrameLayout box;
        TextView button;
        if (convert instanceof FrameLayout) {
            box = (FrameLayout) convert;
            button = (TextView) box.getChildAt(0);
        } else {
            box = new FrameLayout(context);
            box.setPadding(dp(10), dp(2), dp(10), dp(8));
            button = text(Look.BOLD, false, 12, R.color.page);
            button.setGravity(Gravity.CENTER);
            box.addView(button, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(32)));
        }
        button.setText(item.on ? "\u2713 Want to Read" : "Want to Read");
        button.setTextColor(context.getColor(item.on ? R.color.green_dark : R.color.page));
        button.setBackgroundResource(item.on ? R.drawable.wanted : R.drawable.want);
        return box;
    }

    /** What the publisher says of the book, in the serif, as the site sets a description. */
    private View paragraph(Item item, View convert) {
        TextView view = convert instanceof TextView ? (TextView) convert : text(Look.REGULAR, true, 11.5f, R.color.ink);
        view.setText(item.text);
        view.setLineSpacing(0, 1.42f);
        view.setPadding(dp(10), dp(6), dp(10), dp(6));
        return view;
    }

    /** Genres, the edition and when it was first published, in small Lato. */
    private View facts(Item item) {
        Detail detail = item.detail;
        LinearLayout box = column();
        box.setPadding(dp(10), dp(6), dp(10), dp(4));
        if (!detail.genres.isEmpty()) {
            TextView label = text(Look.BOLD, false, 10, R.color.muted);
            label.setText("GENRES");
            label.setLetterSpacing(0.06f);
            box.addView(label);
            TextView genres = text(Look.REGULAR, false, 11.5f, R.color.link);
            genres.setLineSpacing(0, 1.3f);
            genres.setText(TextUtils.join(", ", detail.genres.subList(0, Math.min(8, detail.genres.size()))));
            genres.setPadding(0, dp(3), 0, dp(8));
            box.addView(genres);
        }
        List<String> lines = new ArrayList<String>();
        if (!detail.edition().isEmpty()) lines.add(detail.edition());
        if (detail.published > 0) lines.add("First published " + Text.date(detail.published));
        if (!detail.publisher.isEmpty()) lines.add(detail.publisher);
        if (!lines.isEmpty()) {
            TextView facts = text(Look.REGULAR, false, 10.5f, R.color.muted);
            facts.setLineSpacing(0, 1.3f);
            facts.setText(TextUtils.join("\n", lines));
            box.addView(facts);
        }
        return box;
    }

    /** How the ratings fall, five stars to one, each a bar of the orange with its share. */
    private View spread(Item item) {
        long[] stars = item.detail.stars;
        long total = 0;
        for (long count : stars) total += count;
        LinearLayout box = column();
        box.setPadding(dp(10), dp(8), dp(10), dp(6));
        for (int star = 5; star >= 1; star--) {
            long count = stars.length == 5 ? stars[star - 1] : 0;
            LinearLayout line = new LinearLayout(context);
            line.setOrientation(LinearLayout.HORIZONTAL);
            line.setGravity(Gravity.CENTER_VERTICAL);
            line.setPadding(0, dp(2), 0, dp(2));
            TextView label = text(Look.REGULAR, false, 10, R.color.link);
            label.setText(star + (star == 1 ? " star" : " stars"));
            line.addView(label, new LinearLayout.LayoutParams(dp(40), ViewGroup.LayoutParams.WRAP_CONTENT));
            float share = total > 0 ? (float) count / total : 0;
            LinearLayout bar = new LinearLayout(context);
            bar.setOrientation(LinearLayout.HORIZONTAL);
            bar.setBackgroundColor(context.getColor(R.color.track));
            View fill = new View(context);
            fill.setBackgroundColor(context.getColor(R.color.star));
            bar.addView(fill, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, share));
            bar.addView(new View(context), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1 - share));
            line.addView(bar, new LinearLayout.LayoutParams(0, dp(8), 1));
            TextView percent = text(Look.REGULAR, false, 10, R.color.muted);
            percent.setGravity(Gravity.END);
            percent.setText(Math.round(share * 100) + "%");
            line.addView(percent, new LinearLayout.LayoutParams(dp(32), ViewGroup.LayoutParams.WRAP_CONTENT));
            box.addView(line);
        }
        return box;
    }

    private static final class ReviewHolder {
        View rule;
        TextView reader;
        Stars stars;
        TextView date;
        TextView text;
        TextView likes;
    }

    /** The longest stretch of a review shown; the site's own page folds them sooner. */
    private static final int REVIEW_CHARS = 1100;

    /** A reader's review: their name, their stars and the date, then what they wrote, in the serif. */
    private View review(Item item, View convert, Item above) {
        ReviewHolder holder;
        LinearLayout box;
        if (convert != null && convert.getTag() instanceof ReviewHolder) {
            box = (LinearLayout) convert;
            holder = (ReviewHolder) convert.getTag();
        } else {
            holder = new ReviewHolder();
            box = column();
            holder.rule = rule(R.color.rule);
            LinearLayout.LayoutParams ruled = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1);
            ruled.setMargins(dp(10), 0, dp(10), 0);
            box.addView(holder.rule, ruled);
            LinearLayout inner = column();
            inner.setPadding(dp(10), dp(9), dp(10), dp(10));
            holder.reader = text(Look.BOLD, false, 11.5f, R.color.text);
            holder.reader.setSingleLine(true);
            holder.reader.setEllipsize(TextUtils.TruncateAt.END);
            inner.addView(holder.reader);
            LinearLayout line = new LinearLayout(context);
            line.setOrientation(LinearLayout.HORIZONTAL);
            line.setGravity(Gravity.CENTER_VERTICAL);
            line.setPadding(0, dp(4), 0, dp(6));
            holder.stars = new Stars(context, 9);
            line.addView(holder.stars);
            holder.date = text(Look.REGULAR, false, 9.5f, R.color.muted);
            holder.date.setPadding(dp(6), 0, 0, 0);
            line.addView(holder.date);
            inner.addView(line);
            holder.text = text(Look.REGULAR, true, 11, R.color.ink);
            holder.text.setLineSpacing(0, 1.4f);
            inner.addView(holder.text);
            holder.likes = text(Look.REGULAR, false, 9.5f, R.color.muted);
            holder.likes.setPadding(0, dp(6), 0, 0);
            inner.addView(holder.likes);
            box.addView(inner);
            box.setTag(holder);
        }
        Review review = item.review;
        holder.rule.setVisibility(above != null && above.type == REVIEW ? View.VISIBLE : View.INVISIBLE);
        holder.reader.setText(review.reader);
        holder.stars.setVisibility(review.stars > 0 ? View.VISIBLE : View.GONE);
        holder.stars.setRating(review.stars);
        holder.date.setText(review.written > 0 ? Text.shortDate(review.written) : "");
        holder.date.setPadding(review.stars > 0 ? dp(6) : 0, 0, 0, 0);
        if (review.spoilers) {
            holder.text.setTypeface(Look.lato(context, Look.ITALIC));
            holder.text.setTextColor(context.getColor(R.color.muted));
            holder.text.setText("This review has spoilers, so it isn\u2019t shown.");
        } else {
            holder.text.setTypeface(Look.serif(context, Look.REGULAR));
            holder.text.setTextColor(context.getColor(R.color.ink));
            holder.text.setText(Text.cut(review.text, REVIEW_CHARS));
        }
        holder.text.setVisibility(review.text.isEmpty() && !review.spoilers ? View.GONE : View.VISIBLE);
        holder.likes.setText(review.likes > 0 ? Text.counted(review.likes, "like", "likes") : "");
        holder.likes.setVisibility(review.likes > 0 ? View.VISIBLE : View.GONE);
        return box;
    }
}
