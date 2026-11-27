package com.goodreads.xp3;

import android.content.Context;
import android.content.SharedPreferences;

import com.goodreads.xp3.books.Api;
import com.goodreads.xp3.books.Shelf;

import java.io.File;

/** The one Api and the one Want to Read shelf every screen shares. */
final class Books {

    private static Api api;
    private static Shelf shelf;

    private Books() {}

    /** The site's key is kept in the `api` preferences, so a launch need not fetch it again. */
    static synchronized Api api(Context context) {
        if (api == null) {
            final SharedPreferences prefs = context.getApplicationContext().getSharedPreferences("api", Context.MODE_PRIVATE);
            api = new Api(new Net(), prefs.getString("key", null), key -> prefs.edit().putString("key", key).apply());
        }
        return api;
    }

    static synchronized Shelf shelf(Context context) {
        if (shelf == null) shelf = new Shelf(new File(context.getApplicationContext().getFilesDir(), "shelf.json"));
        return shelf;
    }
}
