package com.android.music;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;

/** SQL and relative path rules shared by the Android code and host tests. */
final class FolderRules {
    static final List<String> DEFAULTS = Collections.unmodifiableList(Arrays.asList("Music", "Podcasts"));

    private FolderRules() {}

    static boolean isFolder(String folder) {
        if (folder == null || folder.indexOf('\0') >= 0) return false;
        for (String part : folder.split("/", -1)) {
            if (part.isEmpty() || part.equals(".") || part.equals("..")) return false;
        }
        return true;
    }

    static String inFolders(String column, Iterable<String> roots, Iterable<String> folders) {
        StringBuilder sql = new StringBuilder();
        for (String root : roots) {
            for (String folder : folders) {
                if (!isFolder(folder)) continue;
                if (sql.length() > 0) sql.append(" OR ");
                String prefix = root + "/" + folder + "/";
                sql.append(column).append(" LIKE '")
                        .append(prefix.replace("\\", "\\\\").replace("%", "\\%")
                                .replace("_", "\\_").replace("'", "''"))
                        .append("%' ESCAPE '\\'");
            }
        }
        return sql.length() == 0 ? "0" : "(" + sql + ")";
    }

    static String and(String original, String extra) {
        if (extra == null) return original;
        if (original == null || original.isEmpty()) return extra;
        return "(" + original + ") AND (" + extra + ")";
    }

    static String artistAlbums(String paths, String artistId) {
        return paths + " AND audio.album_id IN (SELECT album_id FROM audio"
                + " WHERE is_music=1 AND artist_id=" + Long.parseLong(artistId) + " AND " + paths + ")";
    }

    static String artistCount(String paths, boolean albums) {
        return "(SELECT count(" + (albums ? "DISTINCT album_key" : "*")
                + ") FROM audio WHERE audio.artist_id=artist_info._id AND is_music=1 AND " + paths + ") AS "
                + (albums ? "number_of_albums" : "number_of_tracks");
    }

    static String selection(List<String> parts, String original, Supplier<String> allowedPaths) {
        if (parts.size() < 3 || !"external".equals(parts.get(0)) || !"audio".equals(parts.get(1))) return original;
        String kind = parts.get(2);
        boolean members = parts.size() >= 5 && "members".equals(parts.get(4));
        String paths;
        String extra;
        switch (kind) {
            case "media":
                // A single-item URI is an explicit open or a metadata lookup, not a library list.
                if (parts.size() != 3) return original;
                extra = allowedPaths.get();
                break;
            case "genres":
            case "playlists":
                if (!members) return original;
                paths = allowedPaths.get();
                // MediaProvider may skip the audio join when only audio_id/play_order are queried.
                extra = paths == null ? null : "audio_id IN (SELECT _id FROM audio WHERE " + paths + ")";
                break;
            case "artists":
                paths = allowedPaths.get();
                if (paths == null) return original;
                if (parts.size() == 5 && "albums".equals(parts.get(4))) {
                    extra = FolderRules.artistAlbums(paths, parts.get(3));
                } else {
                    extra = "_id IN (SELECT artist_id FROM audio WHERE is_music=1 AND " + paths + ")";
                }
                break;
            case "albums":
                paths = allowedPaths.get();
                extra = paths == null ? null : "_id IN (SELECT album_id FROM audio WHERE is_music=1 AND " + paths + ")";
                break;
            default:
                return original;
        }
        return FolderRules.and(original, extra);
    }
}
