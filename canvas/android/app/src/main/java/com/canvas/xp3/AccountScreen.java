package com.canvas.xp3;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.canvas.xp3.net.Config;
import com.xp3.common.ui.Setup;

/**
 * The Canvas account: which Canvas, how the app signs in to it, and the
 * time zone, as set up on the shared setup screen (common/ui's Setup), which
 * Setup… opens to import a new setup file or change them. Sign out removes
 * the setup and everything fetched with it.
 *
 * The app never sees a password. With a cookie service the phone keeps the
 * session cookie in memory for a quarter of an hour and never writes it
 * down; through a command center it never sees Canvas's sign-in at all.
 */
final class AccountScreen extends Screen {

    AccountScreen(MainActivity app) {
        super(app);
    }

    @Override
    View build() {
        Parts parts = new Parts(app);
        Config config = app.backend.config();
        LinearLayout root = v.column();
        root.addView(parts.nav("Settings", (String) null), Views.wide());
        TextView heading = v.screenTitle("Account");
        v.pad(heading, 12, 0, 12, 2);
        root.addView(heading, Views.wide());
        TextView state = v.meta(app.backend.canvasReady() ? "Signed in to Canvas" : "Not set up");
        v.pad(state, 12, 0, 12, 6);
        root.addView(state, Views.wide());
        LinearLayout list = parts.page(this, root);
        list.addView(v.hairline());
        String canvas = config.canvasBase() != null ? config.canvasBase().getHost()
            : config.relayed() ? "Known after a sync" : "Not set";
        list.addView(field("canvas", "Canvas", canvas), Views.wide());
        list.addView(field("signin", "Signs in with", config.signIn()), Views.wide());
        list.addView(field("zone", "Time zone", config.zone().getId()), Views.wide());
        list.addView(action("setup", "Setup\u2026", () -> app.startActivity(Setup.intent(app))), Views.wide());
        list.addView(action("signout", "Sign out", this::signOut), Views.wide());
        return root;
    }

    private Item field(String key, String label, String shown) {
        Item row = new Item(app, key, "Setup", () -> app.startActivity(Setup.intent(app)));
        LinearLayout line = v.row();
        v.pad(line, 12, 7, 12, 7);
        MarkText name = v.mark(label, 11, look.semibold, look.ink);
        line.addView(name, v.margins(Views.wrap(), 0, 0, 8, 0));
        TextView current = v.text(shown, 9.5f, look.medium, look.muted);
        current.setSingleLine(true);
        current.setEllipsize(android.text.TextUtils.TruncateAt.START);
        current.setGravity(android.view.Gravity.RIGHT);
        line.addView(current, Views.fill());
        row.addView(line, Views.wide());
        row.addView(v.hairline());
        row.marks(name, look);
        return row;
    }

    private Item action(String key, String label, Runnable run) {
        Item row = new Item(app, key, "Select", run);
        LinearLayout line = v.row();
        v.pad(line, 12, 7, 12, 7);
        MarkText name = v.mark(label, 11, look.semibold, look.ink);
        line.addView(name, Views.fill());
        row.addView(line, Views.wide());
        row.addView(v.hairline());
        row.marks(name, look);
        return row;
    }

    private void signOut() {
        Sheet.ask(app, "Sign out?", "The setup, your saved work and everything fetched are removed from this phone.", "Sign out", "Cancel", () -> {
                Setup.forget(app);
                app.backend.signOut();
                app.recreate();
            });
    }

    @Override
    boolean globalOptions() {
        return false;
    }
}
