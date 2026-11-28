package com.android.mms.transaction;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.util.Log;

/** Keep the stock process-wide MMS binding only for the request that owns it. */
public final class WaveMmsNetworkBinding {
    private static final String TAG = "WaveMms";
    private static Network bound;
    private static String ownerSubId;

    private WaveMmsNetworkBinding() {}

    public static synchronized void bind(ConnectivityManager cm, Network network, String subId) {
        if (cm.bindProcessToNetwork(network)) {
            bound = network;
            ownerSubId = subId;
        }
    }

    public static synchronized void release(Context context, int subId) {
        if (bound != null && Integer.toString(subId).equals(ownerSubId)) {
            clear(context);
        }
    }

    public static synchronized void lost(Context context, Network network, String subId) {
        if (network.equals(bound) && subId.equals(ownerSubId)) {
            clear(context);
        }
    }

    private static void clear(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService(
                Context.CONNECTIVITY_SERVICE);
        if (cm == null) return;
        // Another component may have rebound the process. Don't remove its binding.
        if (bound.equals(cm.getBoundNetworkForProcess())) {
            if (!cm.bindProcessToNetwork(null)) {
                Log.w(TAG, "Could not clear the MMS network binding");
                return;
            }
            Log.d(TAG, "Cleared MMS process binding; new sockets use the default network");
        }
        bound = null;
        ownerSubId = null;
    }
}
