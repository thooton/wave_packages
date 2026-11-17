package com.sonim.borqs.launcher;

/**
 * Launcher Argon: the tray's arrangement until the user changes it (and after Reset layout).
 * Format: see ArgonLayout. Keys are packages, so each app's launcher activities are found on the
 * phone. "stock" is Sonim's own tray (res/xml/app_tray_list.xml, via the App_Tray database).
 *
 * First the apps the old standalone Launcher (com.custom.appdrawer) held, plus Mail and
 * Authenticator, then the user's other apps in folders, then Sonim's tray as it was.
 */
final class ArgonDefaults {
    private ArgonDefaults() {
    }

    /** New installs nobody placed go at the end of this folder (the stock launcher's rule). */
    static final String INBOX = "Applications";

    static final String LAYOUT = ""
            + "app com.todo.xp3\n"            // Canvas
            + "app com.flashcards.xp3\n"
            + "app com.dictionary.xp3\n"
            + "app com.list.xp3\n"
            + "app com.mail.xp3\n"
            + "app com.teslacharge.xp3\n"     // Charge
            + "app com.authenticator.xp3\n"
            + "folder Reading\n"
            + "    com.books.xp3\n"
            + "    com.newyorker.xp3\n"
            + "    com.margin.xp3\n"
            + "folder Media\n"
            + "    com.musica.xp3\n"
            + "    com.video.xp3\n"
            + "    com.source.xp3\n"
            + "folder Daily\n"
            + "    com.weather.xp3\n"
            + "    com.places.xp3\n"
            + "    com.hbsa.xp3\n"
            + "folder Files\n"
            + "    com.tablet.xp3\n"
            + "    com.serve.xp3\n"
            + "    com.print.xp3\n"
            + "    nextapp.fx\n"
            + "folder System\n"
            + "    com.updater.xp3\n"
            + "    com.installer.xp3\n"
            + "    com.topjohnwu.magisk\n"
            + "    com.custom.appdrawer\n"    // the old standalone Launcher
            + "stock\n";
}
