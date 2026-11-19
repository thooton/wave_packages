package com.canvas.xp3;

import com.canvas.xp3.data.Assignment;
import com.canvas.xp3.data.ClassData;
import com.canvas.xp3.data.Detail;
import com.canvas.xp3.data.Draft;
import com.canvas.xp3.data.Link;
import com.canvas.xp3.data.Notice;
import com.canvas.xp3.data.Prefs;
import com.canvas.xp3.data.Quiz;
import com.canvas.xp3.data.Rich;
import com.canvas.xp3.data.Store;
import com.canvas.xp3.data.Sync;
import com.canvas.xp3.net.Canvas;
import com.canvas.xp3.net.Config;
import com.canvas.xp3.net.Parallel;
import com.canvas.xp3.net.Web;
import com.xp3.common.Http;
import com.xp3.common.Json;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Everything with a network or a disk behind it, in one place.
 *
 * The screens above this are drawn on the main thread and nothing here that
 * throws IOException may be called from it; the cached reads, which do not,
 * are the ones a screen may call directly to draw what it knew last time.
 *
 * The settings are the app's setup (common/ui's Setup), read by MainActivity
 * and handed in; a changed setup starts the activity over, and with it a new
 * Backend. Through a command center the Canvas address is learned from its
 * relay on the first sync and kept in `canvas-address`.
 */
final class Backend {

    /** Teacher files larger than this are not downloaded to the phone. */
    static final long MAX_DOWNLOAD = 25L * 1024 * 1024;

    private final Store store;
    private final Http http = new Http();
    private final Web web = new Web(http);

    // Written on the main thread when the settings change, read on the workers.
    // Each background method takes its own copy first, so a save landing part
    // way through a fetch means that fetch finishes against the client it
    // started with rather than against half of each.
    private volatile Config config;
    private volatile Canvas canvas;
    private volatile Sync sync;

    Backend(File directory, com.xp3.common.Config setup) {
        this.directory = directory;
        store = new Store(directory);
        // Versions with the chat kept a conversation and a model login here;
        // neither is used any more, and the login should not linger.
        store.forgetChat();
        config = Config.of(setup, known());
        build();
    }

    /**
     * The backend over the app's setup. An older version's settings document
     * (the Canvas address, a cookie service and its token) becomes the
     * setup once, and is then removed. A setup that can't be read is treated
     * as none.
     */
    static Backend open(android.content.Context context) {
        File directory = context.getFilesDir();
        com.xp3.common.Config setup = com.xp3.common.ui.Setup.load(context);
        if (setup == null) {
            java.util.Map<String, String> old = oldSettings(directory);
            if (old != null) {
                try {
                    setup = com.xp3.common.ui.Setup.migrate(context, com.xp3.common.Config.direct(
                        com.xp3.common.ui.Setup.spec(context), null, old));
                    if (com.xp3.common.ui.Setup.ready(context)) forgetOldSettings(directory);
                } catch (IllegalArgumentException e) {
                    // Not a sign-in the setup takes: the setup screen asks for one.
                }
            }
        }
        try {
            return new Backend(directory, setup);
        } catch (IllegalArgumentException e) {
            return new Backend(directory, null);
        }
    }

    /**
     * The sign-in an older version kept in its own settings document, as the
     * setup's direct settings, or null. The document is removed once the
     * setup has been saved from it ({@link #forgetOldSettings}).
     */
    static java.util.Map<String, String> oldSettings(File directory) {
        Store store = new Store(directory);
        if (!store.hasSettings()) return null;
        return store.settings().setupValues();
    }

    static void forgetOldSettings(File directory) {
        new Store(directory).forgetSettings();
    }

    private final File directory;

    /** The Canvas address a command center's relay reported last, or null. */
    private java.net.URI known() {
        String text = com.xp3.common.Disk.read(new File(directory, ADDRESS), 400);
        if (text == null || text.trim().length() == 0) return null;
        try {
            return java.net.URI.create(text.trim());
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    private static final String ADDRESS = "canvas-address";

    /** Through a command center, asks its relay which Canvas it signs in to, once. */
    private void learnAddress() throws IOException, InterruptedException {
        Canvas current = canvas;
        if (current == null || !config.relayed() || config.canvasBase() != null) return;
        java.net.URI found = current.relayCanvas();
        if (found == null) return;
        try {
            com.xp3.common.Disk.write(new File(directory, ADDRESS), found.toString(), false);
        } catch (IOException e) {
            // Asked again next launch.
        }
        config = config.learned(found);
    }

    private void build() {
        if (!config.canvasReady()) {
            canvas = null;
            sync = null;
            return;
        }
        canvas = new Canvas(config, http);
        sync = new Sync(canvas);
    }

    Config config() {
        return config;
    }

    boolean canvasReady() {
        return config.canvasReady();
    }

    /**
     * Forgets everything fetched with the account (the setup itself is the
     * setup screen's to forget).
     */
    void signOut() {
        // Nothing still running for this account writes after this.
        store.forgetAccount();
        new File(directory, ADDRESS).delete();
    }

    private Canvas client() throws IOException {
        Canvas current = canvas;
        if (current == null) throw new IOException("Canvas is not set up yet");
        return current;
    }

    // ------------------------------------------------------------------
    // Preferences
    // ------------------------------------------------------------------

    Prefs prefs() {
        return store.prefs();
    }

    void savePrefs(Prefs prefs) {
        try {
            store.savePrefs(prefs);
        } catch (IOException e) {
            // Kept for this session; written next time something is saved.
        }
    }

    // ------------------------------------------------------------------
    // The work list
    // ------------------------------------------------------------------

    Sync.Result cached() {
        return store.cache();
    }

    Sync.Result refresh(Sync.Progress progress, Sync.Result previous) throws IOException, InterruptedException {
        Sync current = sync;
        if (current == null) throw new IOException("Canvas is not set up yet");
        learnAddress();
        Sync.Result result = current.run(previous, progress);
        save(result);
        return result;
    }

    void save(Sync.Result result) {
        try {
            store.saveCache(result);
        } catch (IOException e) {
            // A cache that could not be written is a slower launch next time.
        }
    }

    // ------------------------------------------------------------------
    // Pages
    // ------------------------------------------------------------------

    Detail cachedDetail(Assignment item) {
        return store.detail(item);
    }

    Detail detail(Assignment item) throws IOException, InterruptedException {
        Sync current = sync;
        if (current == null) throw new IOException("Canvas is not set up yet");
        Detail detail = current.details(item);
        store.saveDetail(item, detail);
        return detail;
    }

    ClassData cachedClass(String courseId) {
        return store.classData(courseId);
    }

    /**
     * A class's stream, classwork and people. Each part fails on its own:
     * a course with its People page hidden still shows its classwork.
     */
    ClassData classData(final String courseId) throws IOException, InterruptedException {
        final Canvas client = client();
        // The three parts are fetched at once; each fails on its own.
        List<Parallel.Task<List<Object>>> parts = new ArrayList<>();
        parts.add(() -> client.announcements(courseId));
        parts.add(() -> client.modules(courseId));
        parts.add(() -> client.people(courseId));
        List<Parallel.Outcome<List<Object>>> got = Parallel.all(parts);
        ClassData old = store.classData(courseId);
        if (!got.get(0).ok() && !got.get(1).ok() && old == null) {
            Exception error = got.get(1).error;
            if (error instanceof IOException) throw (IOException) error;
            throw new IOException("Canvas could not be read.");
        }
        List<ClassData.Post> posts = got.get(0).ok() ? ClassData.posts(got.get(0).value)
            : old != null ? old.posts : new ArrayList<ClassData.Post>();
        List<ClassData.Topic> topics = got.get(1).ok() ? ClassData.topics(got.get(1).value)
            : old != null ? old.topics : new ArrayList<ClassData.Topic>();
        List<ClassData.Person> people = got.get(2).ok() ? ClassData.people(got.get(2).value)
            : old != null ? old.people : new ArrayList<ClassData.Person>();
        ClassData data = new ClassData(posts, topics, people, System.currentTimeMillis());
        store.saveClassData(courseId, data);
        return data;
    }

    List<Detail.Comment> replies(String courseId, String topicId) throws IOException, InterruptedException {
        Object entries = client().entries(courseId, topicId);
        return ClassData.replies(Json.array(entries));
    }

    Map<String, Object> page(String courseId, String pageId) throws IOException, InterruptedException {
        return client().pageById(courseId, pageId);
    }

    List<Notice> cachedNotices() {
        return store.notices();
    }

    List<Notice> notices(Sync.Result known) throws IOException, InterruptedException {
        List<Notice> notices = Notice.from(client().activity(),
            known == null ? new ArrayList<com.canvas.xp3.data.Course>() : known.courses);
        store.saveNotices(notices);
        return notices;
    }

    // ------------------------------------------------------------------
    // Files
    // ------------------------------------------------------------------

    Map<String, Object> fileInfo(String fileId) throws IOException, InterruptedException {
        return client().file(fileId);
    }

    /** Where a teacher's file is or will be kept on the phone. */
    File fileOnPhone(String fileId, String name) {
        return store.download(fileId, name);
    }

    /** Downloads a teacher's file to the phone, keeping it for reading offline. */
    File download(String fileId, Http.Sending progress) throws IOException, InterruptedException {
        Canvas client = client();
        Map<String, Object> info = client.file(fileId);
        String name = Json.text(info, "display_name");
        if (name == null) name = "file";
        File target = store.download(fileId, name);
        if (target.isFile() && target.length() > 0) return target;
        File partial = new File(target.getPath() + ".part");
        OutputStream out = new FileOutputStream(partial);
        try {
            client.download(info, out, MAX_DOWNLOAD, progress);
        } finally {
            out.close();
        }
        if (!partial.renameTo(target)) throw new IOException("Could not save the file on the phone.");
        return target;
    }

    /**
     * Fetches a link from outside Canvas and keeps it, so a handout read once
     * reads again with no signal. A page is fetched afresh while there is
     * signal, since pages change, and the last copy is the fallback; a file
     * is fetched once.
     */
    File fetchLink(Link link, String label) throws IOException, InterruptedException {
        String key = "w" + digest(link.fetch.toString());
        File kept = store.kept(key);
        if (kept != null && !kept.getName().endsWith(".html")) return kept;
        File partial = store.download(key, "link.part");
        Web.Got got;
        OutputStream out = new FileOutputStream(partial);
        try {
            got = web.fetch(link.fetch, out, MAX_DOWNLOAD, null);
        } catch (IOException e) {
            partial.delete();
            if (kept != null) return kept;
            throw e;
        } finally {
            out.close();
        }
        File target = store.download(key, Web.fileName(got, label));
        if (kept != null && !kept.equals(target)) kept.delete();
        if (!partial.renameTo(target)) throw new IOException("Could not save the file on the phone.");
        return target;
    }

    private static String digest(String text) {
        try {
            byte[] sum = java.security.MessageDigest.getInstance("SHA-256")
                .digest(text.getBytes(java.nio.charset.StandardCharsets.UTF_8));
            StringBuilder hex = new StringBuilder();
            for (int i = 0; i < 8; i++) hex.append(String.format(java.util.Locale.US, "%02x", sum[i] & 0xff));
            return hex.toString();
        } catch (java.security.NoSuchAlgorithmException e) {
            return Integer.toHexString(text.hashCode());
        }
    }

    /**
     * Copies a file kept by the app into the Download folder on the SD card,
     * where downloads go on this phone, under a name not already taken.
     */
    File saveToCard(File card, File kept) throws IOException {
        if (card == null) throw new IOException("No SD card");
        File folder = new File(card, "Download");
        if (!folder.isDirectory() && !folder.mkdirs()) throw new IOException("Couldn't open Download on the SD card.");
        // Kept files are named "<id>-<name>"; the id is the app's business.
        String name = kept.getName().substring(kept.getName().indexOf('-') + 1);
        int dot = name.lastIndexOf('.');
        String stem = dot > 0 ? name.substring(0, dot) : name;
        String ext = dot > 0 ? name.substring(dot) : "";
        File target = new File(folder, name);
        for (int i = 2; target.exists(); i++) target = new File(folder, stem + " (" + i + ")" + ext);
        InputStream in = new FileInputStream(kept);
        try {
            OutputStream out = new FileOutputStream(target);
            try {
                byte[] buffer = new byte[32768];
                for (int count; (count = in.read(buffer)) >= 0; ) out.write(buffer, 0, count);
            } finally {
                out.close();
            }
        } finally {
            in.close();
        }
        return target;
    }

    // ------------------------------------------------------------------
    // Your work
    // ------------------------------------------------------------------

    Draft draft(String key) {
        return store.draft(key);
    }

    void saveDraft(Draft draft) throws IOException {
        store.saveDraft(draft);
    }

    File draftFolder(Draft draft) {
        return store.draftFolder(draft);
    }

    void dropDraft(String key) {
        store.dropDraft(key);
    }

    List<Draft> queued() {
        return store.queued();
    }

    /** Told how far a turn-in has got, for the thin bar under an item. */
    interface Progress {
        void at(String pieceId, long done, long total);
    }

    /**
     * Turns a draft in as one Canvas submission.
     *
     * Files go up one at a time and each upload's Canvas id is written into
     * the draft as soon as it arrives, so a turn-in cut off half way picks up
     * after the last file that made it instead of sending them all again.
     * The draft is forgotten only once Canvas has the submission.
     */
    void turnIn(Draft draft, Assignment item, List<String> extensions, Progress progress)
        throws IOException, InterruptedException {
        Canvas client = client();
        Draft.Plan plan = draft.plan(item.kinds, extensions);
        if (!plan.ok()) throw new IOException(plan.problem);
        File folder = store.draftFolder(draft);
        Draft current = draft;
        if (Assignment.TEXT.equals(plan.kind)) {
            client.submitText(item.courseId, item.assignmentId, current.html(), null);
        } else if (Assignment.URL.equals(plan.kind)) {
            client.submitUrl(item.courseId, item.assignmentId, current.pieces.get(0).url, null);
        } else {
            List<String> ids = new ArrayList<>();
            for (Draft.Piece piece : draft.pieces) {
                if (piece.uploaded != null) {
                    ids.add(piece.uploaded);
                    continue;
                }
                final String pieceId = piece.id;
                String uploaded;
                if (Draft.TEXT.equals(piece.kind)) {
                    byte[] bytes = piece.plain().getBytes("UTF-8");
                    uploaded = client.upload(item.courseId, item.assignmentId, safeName(piece.name) + ".txt",
                        bytes.length, "text/plain", new java.io.ByteArrayInputStream(bytes),
                        (done, total) -> progress.at(pieceId, done, total));
                } else {
                    File file = new File(folder, piece.file);
                    InputStream in = new FileInputStream(file);
                    try {
                        uploaded = client.upload(item.courseId, item.assignmentId, uploadName(piece), file.length(),
                            piece.mime == null ? "application/octet-stream" : piece.mime, in,
                            (done, total) -> progress.at(pieceId, done, total));
                    } finally {
                        in.close();
                    }
                }
                ids.add(uploaded);
                current = current.with(piece.withUpload(uploaded), System.currentTimeMillis());
                store.saveDraft(current);
            }
            client.submitFiles(item.courseId, item.assignmentId, ids, null);
        }
        store.dropDraft(draft.key);
    }

    private static String uploadName(Draft.Piece piece) {
        String extension = piece.file == null ? "" : piece.file.substring(piece.file.lastIndexOf('.') + 1);
        String name = safeName(piece.name);
        return name.toLowerCase(java.util.Locale.US).endsWith("." + extension.toLowerCase(java.util.Locale.US))
            ? name : name + "." + extension;
    }

    private static String safeName(String name) {
        String cleaned = name.replaceAll("[\\\\/:*?\"<>|]", "_").trim();
        return cleaned.length() == 0 ? "Work" : cleaned;
    }

    void comment(Assignment item, String text) throws IOException, InterruptedException {
        client().comment(item.courseId, item.assignmentId, text);
    }

    /** Posts an answer kept in `Rich`'s form, its formatting as Canvas's editor writes it. */
    void reply(String courseId, String topicId, String stored) throws IOException, InterruptedException {
        client().reply(courseId, topicId, Rich.html(stored));
    }

    void markDone(Assignment item, String override, boolean done) throws IOException, InterruptedException {
        client().markDone(item.assignmentId, override, done);
    }

    // ------------------------------------------------------------------
    // Quizzes
    // ------------------------------------------------------------------

    Map<String, Object> quiz(Assignment item) throws IOException, InterruptedException {
        return client().quiz(item.courseId, item.quizId);
    }

    Quiz.Attempt openAttempt(Assignment item) throws IOException, InterruptedException {
        return Quiz.open(client().quizAttempts(item.courseId, item.quizId));
    }

    Quiz.Attempt startQuiz(Assignment item) throws IOException, InterruptedException {
        Quiz.Attempt attempt = Quiz.Attempt.from(client().startQuiz(item.courseId, item.quizId));
        if (attempt == null) throw new IOException("Canvas did not start the quiz");
        return attempt;
    }

    List<Quiz.Question> questions(Quiz.Attempt attempt) throws IOException, InterruptedException {
        return Quiz.questions(client().quizQuestions(attempt.id));
    }

    void answer(Quiz.Attempt attempt, Quiz.Question question) throws IOException, InterruptedException {
        client().answer(attempt.id, attempt.number, attempt.token, question.id, question.answer());
    }

    void finishQuiz(Assignment item, Quiz.Attempt attempt) throws IOException, InterruptedException {
        client().finishQuiz(item.courseId, item.quizId, attempt.id, attempt.number, attempt.token);
    }
}
