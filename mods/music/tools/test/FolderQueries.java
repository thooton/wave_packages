package com.android.music;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/** Emits exactly the selection strings used on the phone for the SQLite tests. */
public final class FolderQueries {
    private static final List<String> ROOTS = Collections.singletonList("/storage/0403-0201");

    private static String select(String uri, String original, String paths) {
        return FolderRules.selection(Arrays.asList(uri.split("/")), original, () -> paths);
    }

    public static void main(String[] args) {
        String paths = FolderRules.inFolders("audio._data", ROOTS, FolderRules.DEFAULTS);
        String noCard = FolderRules.inFolders("audio._data", Collections.emptyList(), FolderRules.DEFAULTS);
        String noFolders = FolderRules.inFolders("audio._data", ROOTS, Collections.emptyList());
        if (!"0".equals(noCard) || !"0".equals(noFolders)) throw new AssertionError("fail closed");
        for (String invalid : Arrays.asList("", "/Music", "Music/", "Music//Live", "../Music", "Music/./Live", "Music/..")) {
            if (FolderRules.isFolder(invalid)) throw new AssertionError(invalid);
        }
        if (!"_id=?".equals(select("external/audio/media/42", "_id=?", paths))
                || !"name=?".equals(select("external/audio/playlists", "name=?", paths))
                || !"is_music=1".equals(select("external/audio/media", "is_music=1", null))) {
            throw new AssertionError("stock or explicit queries changed");
        }
        System.out.println(select("external/audio/media", "is_music=1", paths));
        System.out.println(select("external/audio/media", "is_podcast=1", paths));
        System.out.println(select("external/audio/playlists/3/members", "title != ''", paths));
        System.out.println(select("external/audio/playlists/3/members", null, paths));
        System.out.println(select("external/audio/genres/3/members", "title != ''", paths));
        System.out.println(select("external/audio/artists", null, paths));
        System.out.println(select("external/audio/albums", null, paths));
        System.out.println(select("external/audio/artists/1/albums", null, paths));
        System.out.println(FolderRules.artistCount(paths, true));
        System.out.println(FolderRules.artistCount(paths, false));
        System.out.println(FolderRules.inFolders("audio._data", ROOTS, Arrays.asList("Music/100%_It's Live")));
        System.out.println(select("external/audio/media", "is_music=1 OR is_podcast=1", paths));
        System.out.println(select("external/audio/media", "is_music=1", noCard));
    }
}
