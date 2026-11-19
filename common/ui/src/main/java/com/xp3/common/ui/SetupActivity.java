package com.xp3.common.ui;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.provider.DocumentsContract;
import android.provider.OpenableColumns;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.xp3.common.Config;
import com.xp3.common.Login;
import com.xp3.common.SetupSpec;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * The setup screen every app that needs credentials shares: what the app is
 * set up with, importing a setup file (from the app's own folder or through
 * Android's file picker), the few settings short enough to type, and Sign
 * out. Built from the app's descriptor (Setup.spec), so it needs nothing of
 * the app's own beyond a line in its manifest:
 *
 *     <activity android:name="com.xp3.common.ui.SetupActivity"
 *         android:screenOrientation="portrait" />
 *
 * Nothing secret is ever shown: a secret setting is "set", and an error names
 * the setting, never its value.
 */
public class SetupActivity extends BaseActivity {

    static final String EXTRA_THEN_LAUNCH = "com.xp3.common.ui.THEN_LAUNCH";
    private static final int PICK = 0x5e7;
    private static final int LIMIT = Config.MAX_LENGTH * 2;

    private SetupSpec spec;
    private Config config;
    private ScrollView scroll;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        spec = Setup.spec(this);
        build();
    }

    /** Where a setup file is looked for first: Android/data/<package>/files. */
    File folder() {
        File dir = getExternalFilesDir(null);
        return dir != null ? dir : new File(getFilesDir(), "import");
    }

    private String folderName() {
        return "Android/data/" + getPackageName() + "/files";
    }

    private void build() {
        config = Setup.load(this);
        LinearLayout root = vertical();
        root.setBackgroundColor(color(R.color.setup_page));

        TextView title = text(config == null ? "Set up " + spec.name : spec.name + " setup", 15, color(R.color.on_primary));
        title.setTypeface(Family.MEDIUM);
        title.setGravity(Gravity.CENTER_VERTICAL);
        title.setSingleLine(true);
        title.setPadding(dp(10), 0, dp(10), 0);
        title.setBackgroundColor(color(R.color.primary));
        root.addView(title, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(36)));

        scroll = new ScrollView(this);
        LinearLayout body = vertical();
        body.setPadding(dp(10), dp(8), dp(10), dp(12));
        scroll.addView(body);
        root.addView(scroll, Ui.weighted());

        List<Button> buttons = new ArrayList<Button>();
        if (config == null) {
            if (spec.about != null) body.addView(line(spec.about, false));
            body.addView(line("Not set up yet.", true));
            if (spec.needsNothing()) {
                buttons.add(button("On this phone only", v -> useLocal()));
            }
            buttons.add(button(spec.needsNothing() ? "Import a command center" : "Import setup file", v -> importOwn()));
            buttons.add(button("Choose a file\u2026", v -> pick()));
            if (spec.manualEnough()) buttons.add(button("Type it in\u2026", v -> typeAll()));
            if (spec.deltaSupported) buttons.add(button("Command center\u2026", v -> typeDelta()));
        } else {
            body.addView(line(summary(config), false));
            buttons.add(button("Import again", v -> importOwn()));
            buttons.add(button("Choose a file\u2026", v -> pick()));
            if (!config.isDelta()) {
                for (final SetupSpec.Setting setting : spec.settings) {
                    if (setting.manual) buttons.add(button("Change " + lower(setting.label) + "\u2026", v -> typeOne(setting)));
                }
            }
            if (spec.needsNothing() && config.isDelta()) buttons.add(button("On this phone only", v -> useLocal()));
            buttons.add(button("Sign out", v -> signOut()));
        }
        for (Button one : buttons) {
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(34));
            params.topMargin = dp(6);
            body.addView(one, params);
        }

        body.addView(heading("Setup file"));
        body.addView(line("Make one on the Wave site's setup page, copy wave-setup-" + spec.app
            + ".json to " + folderName() + " on the phone (over USB), and choose Import. Choose a file opens one from "
            + "anywhere else. The file is deleted once it is read.", false));
        if (!spec.limits.isEmpty()) {
            body.addView(heading(spec.deltaSupported ? "Without a command center" : "Good to know"));
            for (String limit : spec.limits) body.addView(line("\u2022 " + limit, false));
        }
        if (spec.deltaSupported && spec.deltaAbout != null) {
            body.addView(heading("With a command center"));
            body.addView(line(spec.deltaAbout, false));
        }

        setContentView(root);
        if (!buttons.isEmpty()) buttons.get(0).requestFocus();
    }

    private TextView line(String value, boolean strong) {
        TextView view = text(value, strong ? 14 : 12, color(strong ? R.color.setup_text : R.color.setup_muted));
        if (strong) view.setTypeface(Family.MEDIUM);
        view.setLineSpacing(dp(2), 1f);
        view.setPadding(0, dp(strong ? 8 : 4), 0, dp(2));
        return view;
    }

    private TextView heading(String value) {
        TextView view = text(value, 12, color(R.color.setup_text));
        view.setTypeface(Family.MEDIUM);
        view.setPadding(0, dp(14), 0, dp(2));
        return view;
    }

    private Button button(String label, View.OnClickListener click) {
        Button button = new Button(this);
        button.setText(label);
        button.setAllCaps(false);
        button.setTextSize(14);
        button.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        button.setBackgroundResource(R.drawable.family_button);
        button.setTextColor(getColorStateList(R.color.family_button_text));
        button.setStateListAnimator(null);
        button.setPadding(dp(8), 0, dp(8), 0);
        button.setMinHeight(0);
        button.setMinimumHeight(0);
        button.setOnClickListener(click);
        return button;
    }

    /** What a setup is, for the screen and the import question; secrets only as "set". */
    String summary(Config shown) {
        StringBuilder out = new StringBuilder();
        if (shown.isDelta()) out.append("Through the command center at ").append(shown.delta().host());
        else if (spec.needsNothing()) out.append("On this phone only");
        else out.append("Directly");
        if (shown.label() != null) out.append("\n").append(shown.label());
        for (SetupSpec.Setting setting : spec.settings) {
            if (!shown.has(setting.name)) continue;
            out.append("\n").append(setting.label).append(": ").append(setting.secret ? "set" : shown.get(setting.name));
        }
        return out.toString();
    }

    private void useLocal() {
        finishWith(Config.direct(spec, null, new LinkedHashMap<String, String>()));
    }

    // ---- Importing ----

    private static boolean isSetupFile(String name) {
        String lower = name.toLowerCase(Locale.US);
        return lower.startsWith("wave-setup") && lower.endsWith(".json");
    }

    private void importOwn() {
        File dir = folder();
        dir.mkdirs();
        File[] files = dir.listFiles((parent, name) -> isSetupFile(name));
        if (files == null || files.length == 0) {
            alert("No setup file", "Copy wave-setup-" + spec.app + ".json to\n" + folderName()
                + "\non the phone, then choose Import again. Or use Choose a file.");
            return;
        }
        Arrays.sort(files);
        final List<File> usable = new ArrayList<File>();
        final List<Config> configs = new ArrayList<Config>();
        String problem = null;
        for (File file : files) {
            try (InputStream in = new FileInputStream(file)) {
                configs.add(Config.parse(Setup.read(in, LIMIT), spec));
                usable.add(file);
            } catch (IllegalArgumentException e) {
                if (problem == null) problem = file.getName() + ": " + e.getMessage();
            } catch (IOException e) {
                if (problem == null) problem = file.getName() + ": that file can't be read";
            }
        }
        if (usable.isEmpty()) {
            alert("Can't import", problem);
        } else if (usable.size() == 1) {
            confirm(configs.get(0), usable.get(0).getName(), () -> deleteFile(usable.get(0)));
        } else {
            List<String> names = new ArrayList<String>();
            for (File file : usable) names.add(file.getName());
            listDialog("Which setup?", names,
                at -> confirm(configs.get(at), usable.get(at).getName(), () -> deleteFile(usable.get(at))), null);
        }
    }

    private boolean deleteFile(File file) {
        return file.delete() || !file.exists();
    }

    private void pick() {
        Intent open = new Intent(Intent.ACTION_OPEN_DOCUMENT)
            .addCategory(Intent.CATEGORY_OPENABLE)
            .setType("*/*");
        try {
            startActivityForResult(open, PICK);
        } catch (ActivityNotFoundException e) {
            try {
                startActivityForResult(new Intent(Intent.ACTION_GET_CONTENT)
                    .addCategory(Intent.CATEGORY_OPENABLE).setType("*/*"), PICK);
            } catch (ActivityNotFoundException none) {
                toast("There's no app to choose a file with");
            }
        }
    }

    @Override
    protected void onActivityResult(int request, int result, Intent data) {
        super.onActivityResult(request, result, data);
        if (request != PICK || result != RESULT_OK || data == null || data.getData() == null) return;
        final Uri uri = data.getData();
        String name = displayName(uri);
        Config picked;
        try (InputStream in = getContentResolver().openInputStream(uri)) {
            if (in == null) throw new IOException();
            picked = Config.parse(Setup.read(in, LIMIT), spec);
        } catch (IllegalArgumentException e) {
            alert("Can't import", e.getMessage());
            return;
        } catch (IOException | SecurityException e) {
            alert("Can't import", "That file can't be read");
            return;
        }
        confirm(picked, name, () -> {
            try {
                return DocumentsContract.deleteDocument(getContentResolver(), uri);
            } catch (Exception e) {
                return false;
            }
        });
    }

    private String displayName(Uri uri) {
        try (Cursor cursor = getContentResolver().query(uri, new String[] {OpenableColumns.DISPLAY_NAME}, null, null, null)) {
            if (cursor != null && cursor.moveToFirst() && !cursor.isNull(0)) return cursor.getString(0);
        } catch (RuntimeException ignored) {
            // Fall through to the address's last segment.
        }
        String last = uri.getLastPathSegment();
        return last == null ? "the setup file" : last;
    }

    interface Remover {
        boolean remove();
    }

    private void confirm(final Config next, final String name, final Remover remove) {
        new AlertDialog.Builder(this)
            .setTitle("Import this setup?")
            .setMessage(summary(next))
            .setPositiveButton("Import", (dialog, which) -> {
                if (!save(next)) return;
                if (!remove.remove()) {
                    new AlertDialog.Builder(this)
                        .setTitle("Delete the file")
                        .setMessage("Imported, but " + name + " couldn't be deleted. It holds the setup's secrets: delete it yourself.")
                        .setPositiveButton("OK", (shown, w) -> done())
                        .setOnCancelListener(shown -> done())
                        .show();
                } else {
                    done();
                }
            })
            .setNegativeButton("Cancel", null)
            .show();
    }

    // ---- Typing ----

    private EditText field(String hint, String value, boolean secret) {
        EditText field = new EditText(this);
        field.setHint(hint);
        field.setSingleLine(true);
        field.setTextSize(14);
        field.setInputType(secret ? InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD
            : InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_URI);
        if (value != null) field.setText(value);
        field.setSelection(field.getText().length());
        return field;
    }

    private void form(String title, final List<EditText> fields, final Saver saver) {
        LinearLayout box = vertical();
        box.setPadding(dp(16), dp(4), dp(16), 0);
        for (EditText one : fields) box.addView(one);
        final AlertDialog dialog = new AlertDialog.Builder(this)
            .setTitle(title)
            .setView(box)
            .setPositiveButton("Save", null)
            .setNegativeButton("Cancel", null)
            .create();
        dialog.setOnShowListener(shown -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(v -> {
            Config next;
            try {
                next = saver.make();
            } catch (IllegalArgumentException e) {
                toast(e.getMessage());
                return;
            }
            dialog.dismiss();
            if (save(next)) done();
        }));
        dialog.show();
    }

    interface Saver {
        Config make();
    }

    private void typeDelta() {
        final EditText server = field("https://\u2026", null, false);
        final EditText token = field("Token", null, true);
        form("Command center", Arrays.asList(server, token), () -> {
            Login login = Login.of(server.getText().toString(), token.getText().toString());
            if (!login.ready()) throw new IllegalArgumentException("Both the address and the token are needed");
            return Config.delta(spec, login);
        });
    }

    private void typeAll() {
        final List<EditText> fields = new ArrayList<EditText>();
        final List<SetupSpec.Setting> shown = new ArrayList<SetupSpec.Setting>();
        for (SetupSpec.Setting setting : spec.settings) {
            if (!setting.manual) continue;
            shown.add(setting);
            fields.add(field(setting.label, null, setting.secret));
        }
        form("Set up " + spec.name, fields, () -> {
            Map<String, String> values = new LinkedHashMap<String, String>();
            for (int i = 0; i < shown.size(); i++) values.put(shown.get(i).name, fields.get(i).getText().toString());
            return Config.direct(spec, null, values);
        });
    }

    private void typeOne(final SetupSpec.Setting setting) {
        final EditText field = field(setting.fallback != null ? setting.fallback : setting.label,
            setting.secret ? null : config.settings().get(setting.name), setting.secret);
        final Config current = config;
        form(setting.label, Arrays.asList(field), () -> {
            Map<String, String> values = new LinkedHashMap<String, String>(current.settings());
            values.put(setting.name, field.getText().toString());
            return Config.direct(spec, current.label(), values);
        });
    }

    // ---- Ending ----

    private void signOut() {
        new AlertDialog.Builder(this)
            .setTitle("Sign out?")
            .setMessage(spec.name + " forgets its setup on this phone"
                + (spec.needsNothing() ? "." : ", and needs a setup file again."))
            .setPositiveButton("Sign out", (dialog, which) -> {
                Setup.forget(this);
                toast("Signed out");
                build();
            })
            .setNegativeButton("Cancel", null)
            .show();
    }

    private boolean save(Config next) {
        try {
            Setup.save(this, next);
            return true;
        } catch (IOException e) {
            alert("Can't save", "The setup couldn't be saved in the app's storage");
            return false;
        }
    }

    private void finishWith(Config next) {
        if (save(next)) done();
    }

    private void done() {
        toast(spec.name + " is set up");
        setResult(RESULT_OK);
        if (getIntent().getBooleanExtra(EXTRA_THEN_LAUNCH, false)) {
            Intent launch = getPackageManager().getLaunchIntentForPackage(getPackageName());
            if (launch != null) startActivity(launch);
        }
        finish();
    }

    private static String lower(String label) {
        return label.length() > 1 && Character.isUpperCase(label.charAt(0)) && !Character.isUpperCase(label.charAt(1))
            ? Character.toLowerCase(label.charAt(0)) + label.substring(1) : label;
    }
}
