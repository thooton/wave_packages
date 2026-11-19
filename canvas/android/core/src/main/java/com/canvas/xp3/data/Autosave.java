package com.canvas.xp3.data;

/**
 * Saves a moment after typing pauses, and at once when the screen is left
 * or the app goes to the background with a save still waiting, so neither a
 * screen closing within the pause nor the process being killed afterwards
 * loses what was typed.
 *
 * Everything here runs on one thread (the main one, in the editor): the
 * save is never handed to a worker that may have been stopped.
 */
public final class Autosave {

    /** Delayed runs on the editor's thread (a Handler, on the phone). */
    public interface Timer {
        void later(Runnable run, long ms);

        void cancel(Runnable run);
    }

    private final Runnable save;
    private final Timer timer;
    private final long delayMs;
    private final Runnable due = this::flush;
    private boolean waiting;

    public Autosave(Runnable save, Timer timer, long delayMs) {
        this.save = save;
        this.timer = timer;
        this.delayMs = delayMs;
    }

    /** Something was typed: save once it has been quiet for the delay. */
    public void changed() {
        waiting = true;
        timer.cancel(due);
        timer.later(due, delayMs);
    }

    /** Saves now if a save is waiting (leaving, pausing, or the delay ran out). */
    public void flush() {
        timer.cancel(due);
        if (!waiting) return;
        waiting = false;
        save.run();
    }

    /** Saved by other means (Done, Back): nothing is waiting any more. */
    public void saved() {
        waiting = false;
        timer.cancel(due);
    }

    public boolean waiting() {
        return waiting;
    }
}
