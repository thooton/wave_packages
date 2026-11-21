package com.notes.xp3;

import com.notes.xp3.data.DataTests;
import com.xp3.common.Check;

/**
 * Everything in :core, checked on a desktop JVM: the notebook's rules, the
 * dates and headings Apple Notes uses, search, and the round trip to disk.
 */
public final class SelfTest {

    public static void main(String[] args) {
        Check check = new Check();
        DataTests.run(check);
        if (!check.report()) System.exit(1);
    }
}
