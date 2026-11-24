package com.dictation.xp3;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;

/**
 * Lightweight read-only state probe ({@code content://com.dictation.xp3.state}).
 * Allows the keyboard mod to check whether dictation is enabled in under 1 ms without binding
 * {@link DictationService} when dictation is off.
 */
public final class DictationStateProvider extends ContentProvider {

    @Override
    public boolean onCreate() {
        return true;
    }

    @Override
    public Bundle call(String method, String arg, Bundle extras) {
        if (!DictationContract.PROVIDER_METHOD_IS_ENABLED.equals(method)) {
            return null;
        }
        Context ctx = getContext();
        if (ctx == null) return null;
        Bundle out = new Bundle();
        out.putBoolean(DictationContract.EXTRA_ENABLED, DictationPrefs.isEnabled(ctx));
        out.putString(DictationContract.EXTRA_TIER, DictationPrefs.getTier(ctx));
        return out;
    }

    @Override
    public Cursor query(Uri uri, String[] proj, String sel, String[] args, String sort) {
        return null;
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        throw new UnsupportedOperationException("Read-only provider");
    }

    @Override
    public int delete(Uri uri, String sel, String[] args) {
        throw new UnsupportedOperationException("Read-only provider");
    }

    @Override
    public int update(Uri uri, ContentValues values, String sel, String[] args) {
        throw new UnsupportedOperationException("Read-only provider");
    }
}
