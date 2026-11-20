package com.android.mms.wave;

/** Runtime overrides of MmsConfig values (resources can't be rebuilt, see AGENTS.md). */
public final class WaveConfig {
    private WaveConfig() {}

    /**
     * MmsConfig.getRecipientLimit hook. The bundled mms_config.xml capped messages at 10
     * recipients. There is no app-side cap any more: Integer.MAX_VALUE is the value the stock
     * code treats as "unlimited" (it skips every limit check and warning). The carrier's MMSC
     * may still refuse very large MMS groups (Bell's AOSP carrier config lists 20).
     */
    public static int recipientLimit(int stock) {
        return Integer.MAX_VALUE;
    }
}
