package com.goodreads.xp3;

import com.xp3.common.Check;

/**
 * Everything in :core, checked on a desktop JVM, with no network: the pages
 * and answers here are written for the tests in the shapes the site and its
 * service use, not copied from them.
 */
public final class SelfTest {

    public static void main(String[] args) throws Exception {
        Check check = new Check();
        BooksTests.run(check);
        if (!check.report()) System.exit(1);
    }
}
