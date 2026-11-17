package com.sonim.borqs.launcher;

import java.util.ArrayList;

/** Compile-only. */
public class AccessArrayList extends android.app.Application {
    public ArrayList getAppsInsideFolder() { return null; }
    public void setAppsInsideFolder(ArrayList l) { }
    public void setAppsAndFolderListForShorcut(ArrayList l) { }
    public void registerForAppListChange(AppListChangeListener l) { }
    public void unregisterForAppListChange(AppListChangeListener l) { }
    public void notifyAppListChanged() { }
}
