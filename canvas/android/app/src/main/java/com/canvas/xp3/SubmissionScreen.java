package com.canvas.xp3;

import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;

/**
 * What the student turned in, read back in full: a typed answer or a link.
 * Files open in the viewer; typed text had no way to be read once sent.
 */
final class SubmissionScreen extends Screen {

    private final String back;
    private final String title;
    private final String heading;
    private final String body;
    private View rest;

    SubmissionScreen(MainActivity app, String back, String title, String heading, String body) {
        super(app);
        this.back = back;
        this.title = title;
        this.heading = heading;
        this.body = body;
    }

    @Override
    boolean onKey(KeyEvent event) {
        return rest != null && read(event, rest);
    }

    @Override
    View build() {
        Parts parts = new Parts(app);
        LinearLayout root = v.column();
        root.addView(parts.nav(back, heading), Views.wide());
        LinearLayout page = parts.page(this, root);
        MarkText name = v.pageTitle(title);
        v.pad(name, 12, 0, 12, 6);
        page.addView(name, Views.wide());
        parts.markdown(page, body.trim().length() == 0 ? "Nothing was written." : body);
        root.setFocusable(true);
        rest = root;
        return root;
    }

    @Override
    boolean globalOptions() {
        return false;
    }
}
