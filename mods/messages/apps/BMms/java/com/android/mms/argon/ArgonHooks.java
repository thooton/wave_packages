package com.android.mms.argon;

import android.app.Application;

/** Feature start-up, called from ArgonInit (app start). Must never block. */
public final class ArgonHooks {
    private ArgonHooks() {}

    static void onAppCreate(Application app) {
        RcsHost.onAppCreate(app); // FEAT(rcs): import a configuration / start the engine if enabled
    }
}
