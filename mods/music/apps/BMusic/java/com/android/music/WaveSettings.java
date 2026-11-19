package com.android.music;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.RemoteException;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class WaveSettings {
    private static final int MENU_SETTINGS = 0x415247;
    private static final WeakHashMap<Activity, Integer> OPEN_SCREENS = new WeakHashMap<>();
    private static int revision;

    private WaveSettings() {}

    public static void addMenu(Menu menu) {
        menu.add(Menu.NONE, MENU_SETTINGS, 100, "Settings");
    }

    public static boolean handleMenu(Activity activity, MenuItem item) {
        if (item.getItemId() != MENU_SETTINGS) return false;
        new Session(activity).show();
        return true;
    }

    /** A browser that's already on the back stack may still own an old cursor. */
    public static void onResume(Activity activity) {
        Integer previous = OPEN_SCREENS.put(activity, revision);
        if (previous != null && previous != revision) reload(activity);
    }

    private static void reload(Activity activity) {
        if (activity.isFinishing()) return;
        Intent fresh = new Intent(activity.getIntent()).setClass(activity, activity.getClass());
        fresh.setFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
        activity.startActivity(fresh);
        activity.finish();
        activity.overridePendingTransition(0, 0);
    }

    private static final class Session {
        private final Activity activity;
        private final SharedPreferences prefs;
        private final Set<String> folders;
        private final Set<String> originalFolders;
        private final boolean originalEnabled;
        private boolean enabled;

        Session(Activity activity) {
            this.activity = activity;
            prefs = WaveLibrary.prefs(activity);
            folders = WaveLibrary.folders(prefs);
            originalFolders = new java.util.TreeSet<>(folders);
            originalEnabled = enabled = prefs.getBoolean(WaveLibrary.ENABLED, false);
        }

        void show() {
            String[] items = {"Folder whitelist: " + (enabled ? "On" : "Off"),
                    "Allowed folders (" + folders.size() + ")", "Reset folders to default"};
            new AlertDialog.Builder(activity).setTitle("Music settings")
                    .setItems(items, (dialog, item) -> {
                        if (item == 0) enabled = !enabled;
                        if (item == 1) {
                            showFolders();
                            return;
                        }
                        if (item == 2) {
                            folders.clear();
                            folders.addAll(FolderRules.DEFAULTS);
                        }
                        show();
                    })
                    .setPositiveButton("Apply", (dialog, item) -> apply())
                    .setNegativeButton("Cancel", null)
                    .show();
        }

        private void showFolders() {
            List<String> paths = new ArrayList<>(folders);
            List<String> labels = new ArrayList<>();
            labels.add("+ Add folder");
            labels.addAll(paths);
            new AlertDialog.Builder(activity).setTitle("microSD folders")
                    .setItems(labels.toArray(new String[0]), (dialog, item) -> {
                        if (item == 0) {
                            List<String> roots = WaveLibrary.cardRoots(activity);
                            if (roots.isEmpty()) {
                                Toast.makeText(activity, "No removable microSD card is mounted", Toast.LENGTH_SHORT).show();
                                showFolders();
                            } else if (roots.size() == 1) {
                                File root = new File(roots.get(0));
                                browse(root, root, "");
                            } else {
                                new AlertDialog.Builder(activity).setTitle("Select a card")
                                        .setItems(roots.toArray(new String[0]), (cards, card) -> {
                                            File root = new File(roots.get(card));
                                            browse(root, root, "");
                                        }).setOnCancelListener(cards -> showFolders()).show();
                            }
                        } else {
                            String folder = paths.get(item - 1);
                            new AlertDialog.Builder(activity).setTitle("Remove folder?")
                                    .setMessage(folder)
                                    .setPositiveButton("Remove", (confirmation, button) -> {
                                        folders.remove(folder);
                                        showFolders();
                                    })
                                    .setNegativeButton("Cancel", (confirmation, button) -> showFolders())
                                    .setOnCancelListener(confirmation -> showFolders()).show();
                        }
                    }).setNegativeButton("Back", (dialog, button) -> show())
                    .setOnCancelListener(dialog -> show()).show();
        }

        private void browse(File root, File directory, String relative) {
            boolean atRoot = relative.isEmpty();
            File[] listed = directory.listFiles(file -> !file.isHidden() && file.isDirectory()
                    && FolderRules.isFolder(file.getName()) && isInside(root, file));
            List<File> children = listed == null ? Collections.emptyList() : Arrays.asList(listed);
            children.sort((first, second) -> String.CASE_INSENSITIVE_ORDER.compare(first.getName(), second.getName()));
            List<String> labels = new ArrayList<>();
            if (!atRoot) labels.add("Use this folder");
            for (File child : children) labels.add(child.getName());
            Runnable back = () -> {
                if (atRoot) showFolders();
                else browse(root, directory.getParentFile(), relative.contains("/")
                        ? relative.substring(0, relative.lastIndexOf('/')) : "");
            };
            AlertDialog.Builder builder = new AlertDialog.Builder(activity)
                    .setTitle(atRoot ? "Select microSD folder" : relative)
                    .setNegativeButton("Back", (dialog, item) -> back.run())
                    .setOnCancelListener(dialog -> back.run());
            if (labels.isEmpty()) builder.setMessage("No folders found");
            else builder.setItems(labels.toArray(new String[0]), (dialog, item) -> {
                if (!atRoot && item == 0) {
                    folders.add(relative);
                    showFolders();
                } else {
                    File child = children.get(atRoot ? item : item - 1);
                    browse(root, child, atRoot ? child.getName() : relative + "/" + child.getName());
                }
            });
            builder.show();
        }

        private static boolean isInside(File root, File child) {
            try {
                return child.getCanonicalPath().startsWith(root.getCanonicalPath() + "/");
            } catch (IOException | SecurityException e) {
                return false;
            }
        }

        private void apply() {
            if (originalEnabled == enabled && originalFolders.equals(folders)) return;
            prefs.edit().putBoolean(WaveLibrary.ENABLED, enabled).putStringSet(WaveLibrary.FOLDERS, folders).apply();
            if (!enabled && !originalEnabled) return;
            // The service caches the party-shuffle pool. Stop adding from that old pool.
            // Keep the current track and any songs already in the queue.
            try {
                IMediaPlaybackService service = MusicUtils.sService;
                if (service != null && service.getShuffleMode() == 2) service.setShuffleMode(1);
            } catch (RemoteException ignored) {
                // The service may have stopped before the dialog was confirmed.
            }
            revision++;
            reload(activity);
        }
    }
}
