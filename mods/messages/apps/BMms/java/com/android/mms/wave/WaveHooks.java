package com.android.mms.wave;

import android.app.Application;

/** Feature start-up, called from WaveInit (app start). Must never block. */
public final class WaveHooks {
    private WaveHooks() {}

    static void onAppCreate(Application app) {
        RcsHost.onAppCreate(app); // FEAT(rcs): import a configuration / start the engine if enabled
    }
}
