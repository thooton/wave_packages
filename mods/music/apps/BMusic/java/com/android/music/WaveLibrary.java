package com.android.music;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.MediaStore;
import android.util.Log;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public final class WaveLibrary {
    static final String ENABLED = "enabled";
    static final String FOLDERS = "folders";

    private WaveLibrary() {}

    static SharedPreferences prefs(Context context) {
        // Migrate the whitelist from the previous release on first use.
        return org.wave.mod.PreferenceMigration.open(context, "wave_library", "argon_library");
    }

    static Set<String> folders(SharedPreferences prefs) {
        Set<String> result = new TreeSet<>();
        for (String folder : prefs.getStringSet(FOLDERS, new LinkedHashSet<>(FolderRules.DEFAULTS))) {
            if (FolderRules.isFolder(folder)) result.add(folder);
        }
        return result;
    }

    static List<String> cardRoots(Context context) {
        List<String> roots = new ArrayList<>();
        StorageManager manager = context.getSystemService(StorageManager.class);
        if (manager == null) return roots;
        for (StorageVolume volume : manager.getStorageVolumes()) {
            if (!volume.isRemovable() || volume.isEmulated()) continue;
            String state = volume.getState();
            if (!Environment.MEDIA_MOUNTED.equals(state) && !Environment.MEDIA_MOUNTED_READ_ONLY.equals(state)) continue;
            // On the XP3800, Oreo's public volumes are mounted and scanned under /storage/<UUID>.
            String uuid = volume.getUuid();
            if (uuid != null && uuid.matches("[0-9a-fA-F-]+")) roots.add("/storage/" + uuid);
        }
        return roots;
    }

    private static String paths(Context context) {
        SharedPreferences prefs = prefs(context);
        return prefs.getBoolean(ENABLED, false)
                ? FolderRules.inFolders("audio._data", cardRoots(context), folders(prefs)) : null;
    }

    public static String selection(Context context, Uri uri, String original) {
        if (uri == null || !"media".equals(uri.getAuthority())) return original;
        return FolderRules.selection(uri.getPathSegments(), original, () -> paths(context));
    }

    public static String[] artistCounts(Context context, String[] projection) {
        String paths = paths(context);
        if (paths == null) return projection;
        String[] updated = projection.clone();
        updated[2] = FolderRules.artistCount(paths, true);
        updated[3] = FolderRules.artistCount(paths, false);
        return updated;
    }

    /** Preserve already queued and explicitly opened tracks; they were not auto-discovered by this query. */
    public static Cursor queryUnfiltered(Context context, Uri uri, String[] projection, String selection,
                                          String[] args, String sort) {
        try {
            return context.getContentResolver().query(uri, projection, selection, args, sort);
        } catch (UnsupportedOperationException | SQLiteException e) {
            Log.w("MusicWave", "Could not read the playback queue", e);
            return null;
        }
    }

    /** Oreo's fancy-search endpoint ignores a caller WHERE clause. Keep only matching library IDs. */
    public static Cursor filterSearch(Context context, Cursor results) {
        if (results == null || !prefs(context).getBoolean(ENABLED, false)) return results;
        try (Cursor source = results) {
            MatrixCursor filtered = new MatrixCursor(source.getColumnNames());
            if (source.getCount() == 0) return filtered;
            Map<Long, Set<Long>> artistAlbums = new HashMap<>();
            Map<Long, Integer> artistTracks = new HashMap<>();
            Set<Long> albumIds = new HashSet<>();
            Set<Long> trackIds = new HashSet<>();
            try (Cursor tracks = context.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
                    new String[]{"_id", "artist_id", "album_id", "is_music"}, paths(context), null, null)) {
                if (tracks == null) return filtered;
                while (tracks.moveToNext()) {
                    trackIds.add(tracks.getLong(0));
                    if (tracks.getInt(3) != 1) continue;
                    long artist = tracks.getLong(1);
                    long album = tracks.getLong(2);
                    albumIds.add(album);
                    artistAlbums.computeIfAbsent(artist, unused -> new HashSet<>()).add(album);
                    artistTracks.merge(artist, 1, Integer::sum);
                }
            }
            int idColumn = source.getColumnIndexOrThrow("_id");
            int mimeColumn = source.getColumnIndexOrThrow("mime_type");
            int albumsColumn = source.getColumnIndexOrThrow("data1");
            int tracksColumn = source.getColumnIndexOrThrow("data2");
            source.moveToPosition(-1);
            while (source.moveToNext()) {
                long id = source.getLong(idColumn);
                String kind = source.getString(mimeColumn);
                boolean artist = "artist".equals(kind);
                if (artist ? !artistTracks.containsKey(id)
                        : "album".equals(kind) ? !albumIds.contains(id) : !trackIds.contains(id)) continue;
                String[] row = new String[source.getColumnCount()];
                for (int c = 0; c < row.length; c++) row[c] = source.getString(c);
                if (artist) {
                    row[albumsColumn] = String.valueOf(artistAlbums.get(id).size());
                    row[tracksColumn] = String.valueOf(artistTracks.get(id));
                }
                filtered.addRow(row);
            }
            return filtered;
        } catch (RuntimeException e) {
            Log.w("MusicWave", "Could not filter library search", e);
            return null;
        }
    }
}
