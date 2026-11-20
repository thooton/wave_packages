package com.sonim.borqs.launcher;

/**
 * Launcher Improved: the tray's arrangement until the user changes it (and after Reset layout).
 * Format: see WaveLayout. One full screen, 4 rows x 3 columns, no scrolling: the everyday apps
 * loose, everything else (Sonim's apps and the user's) in six folders. System apps must be named
 * here to show at all; STK is added to Tools by the stock code; new installs land in Applications.
 */
final class WaveDefaults {
    private WaveDefaults() {
    }

    /** New installs nobody placed go at the end of this folder (the stock launcher's rule). */
    static final String INBOX = "Applications";

    static final String LAYOUT = ""
            + "app com.android.dialer/com.android.dialer.DialerMainActivity\n"
            + "app com.android.mms/com.android.mms.ui.ConversationList\n"
            + "app com.android.contacts/com.android.contacts.activities.PeopleActivity\n"
            + "app com.todo.xp3\n"              // Canvas
            + "app com.books.xp3\n"
            + "app com.android.music/com.android.music.MusicBrowserActivity\n"
            + "folder Media\n"
            + "    com.borqs.camera/com.borqs.camera.CameraActivity\n"
            + "    com.android.gallery3d/com.android.gallery3d.app.Gallery\n"
            + "    com.video.xp3\n"
            + "    com.musica.xp3\n"
            + "    com.caf.fmradio/com.caf.fmradio.FMRadio\n"
            + "    com.android.soundrecorder/com.android.soundrecorder.SoundRecorder\n"
            + "    com.source.xp3\n"
            + "folder Reading\n"
            + "    com.newyorker.xp3\n"
            + "    com.margin.xp3\n"
            + "    com.flashcards.xp3\n"
            + "    com.dictionary.xp3\n"
            + "folder Tools\n"
            + "    com.mail.xp3\n"
            + "    com.list.xp3\n"
            + "    com.android.calendar/com.android.calendar.AllInOneActivity\n"
            + "    com.android.deskclock/com.android.deskclock.DeskClock\n"
            + "    com.android.calculator2/com.android.calculator2.Calculator\n"
            + "    com.weather.xp3\n"
            + "    com.places.xp3\n"
            + "    com.teslacharge.xp3\n"     // Charge
            + "    com.authenticator.xp3\n"
            + "    com.hbsa.xp3\n"
            + "folder Files\n"
            + "    com.android.documentsui/com.android.documentsui.LauncherActivity\n"
            + "    nextapp.fx\n"
            + "    com.tablet.xp3\n"
            + "    com.serve.xp3\n"
            + "    com.print.xp3\n"
            + "    com.android.providers.downloads.ui/com.android.providers.downloads.ui.DownloadList\n"
            + "folder System\n"
            + "    com.android.settings/com.android.settings.Settings\n"
            + "    com.updater.xp3\n"
            + "    com.installer.xp3\n"
            + "    com.topjohnwu.magisk\n"
            + "    com.borqs.backup/com.borqs.backup.activity.BackupRestoreActivity\n"
            + "folder Applications\n"
            + "    com.android.browser/com.android.browser.BrowserActivity\n"
            + "    com.bell.ptt/com.bell.ptt.StartupActivity\n"
            + "    com.sonim.scout/com.sonim.scout.activities.MainActivity\n"
            + "    com.nuance.voiceclient/com.nuance.voiceclient.InitialHalfScreenActivity\n";
}
