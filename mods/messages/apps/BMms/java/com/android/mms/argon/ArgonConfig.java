package com.android.mms.argon;

/** Runtime overrides of MmsConfig values (resources can't be rebuilt, see AGENTS.md). */
public final class ArgonConfig {
    private ArgonConfig() {}

    /**
     * MmsConfig.getRecipientLimit hook. The bundled mms_config.xml capped messages at 10
     * recipients. There is no app-side cap any more: Integer.MAX_VALUE is the value the stock
     * code treats as "unlimited" (it skips every limit check and warning). The carrier's MMSC
     * may still refuse very large MMS groups (Bell's AOSP carrier config lists 20); RCS groups
     * use the server's max_adhoc_group_size instead.
     */
    public static int recipientLimit(int stock) {
        return Integer.MAX_VALUE;
    }
}
