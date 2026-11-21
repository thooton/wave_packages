package com.notes.xp3.data;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;

/**
 * Apple Notes' dates, in US English: a list's sections, the date on a row,
 * and the date over an open note.
 */
public final class Dates {

    private Dates() {}

    public static final String PINNED = "Pinned";

    private static final String[] MONTHS = {
        "January", "February", "March", "April", "May", "June", "July",
        "August", "September", "October", "November", "December",
    };
    private static final String[] DAYS = {
        "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday",
    };

    /** A run of a list under one heading. */
    public static final class Section {
        public final String title;
        public final List<Note> notes = new ArrayList<Note>();

        Section(String title) {
            this.title = title;
        }
    }

    /**
     * Notes (already latest first) under Apple's headings: Pinned (when
     * `pinnedFirst`), Today, Yesterday, Previous 7 Days, Previous 30 Days,
     * then this year's months by name and earlier years by number.
     */
    public static List<Section> sections(List<Note> notes, boolean pinnedFirst, long now, TimeZone zone) {
        List<Section> result = new ArrayList<Section>();
        if (pinnedFirst) {
            Section pinned = new Section(PINNED);
            for (Note note : notes) if (note.pinned) pinned.notes.add(note);
            if (!pinned.notes.isEmpty()) result.add(pinned);
        }
        Section current = null;
        for (Note note : notes) {
            if (pinnedFirst && note.pinned) continue;
            String title = heading(note.modified, now, zone);
            if (current == null || !current.title.equals(title)) {
                current = new Section(title);
                result.add(current);
            }
            current.notes.add(note);
        }
        return result;
    }

    /** The heading a note changed at `time` goes under. */
    public static String heading(long time, long now, TimeZone zone) {
        int days = daysBetween(time, now, zone);
        if (days <= 0) return "Today";
        if (days == 1) return "Yesterday";
        if (days <= 7) return "Previous 7 Days";
        if (days <= 30) return "Previous 30 Days";
        Calendar then = calendar(time, zone);
        if (then.get(Calendar.YEAR) == calendar(now, zone).get(Calendar.YEAR)) {
            return MONTHS[then.get(Calendar.MONTH)];
        }
        return Integer.toString(then.get(Calendar.YEAR));
    }

    /** A row's date: the time today, "Yesterday", the weekday this past week, else 11/2/26. */
    public static String row(long time, long now, TimeZone zone, boolean hours24) {
        int days = daysBetween(time, now, zone);
        Calendar then = calendar(time, zone);
        if (days <= 0) return clock(then, hours24);
        if (days == 1) return "Yesterday";
        if (days < 7) return DAYS[then.get(Calendar.DAY_OF_WEEK) - 1];
        return (then.get(Calendar.MONTH) + 1) + "/" + then.get(Calendar.DAY_OF_MONTH) + "/"
            + two(then.get(Calendar.YEAR) % 100);
    }

    /** Over an open note: "November 20, 2026 at 10:41 AM". */
    public static String full(long time, TimeZone zone, boolean hours24) {
        Calendar then = calendar(time, zone);
        return MONTHS[then.get(Calendar.MONTH)] + " " + then.get(Calendar.DAY_OF_MONTH) + ", "
            + then.get(Calendar.YEAR) + " at " + clock(then, hours24);
    }

    /** Whole calendar days from `time` to `now` where the phone is; negative if `time` is later. */
    static int daysBetween(long time, long now, TimeZone zone) {
        return (int) (dayNumber(now, zone) - dayNumber(time, zone));
    }

    private static long dayNumber(long time, TimeZone zone) {
        long local = time + zone.getOffset(time);
        return Math.floorDiv(local, 24L * 60 * 60 * 1000);
    }

    private static String clock(Calendar at, boolean hours24) {
        int hour = at.get(Calendar.HOUR_OF_DAY);
        String minutes = two(at.get(Calendar.MINUTE));
        if (hours24) return two(hour) + ":" + minutes;
        int twelve = hour % 12 == 0 ? 12 : hour % 12;
        return twelve + ":" + minutes + (hour < 12 ? " AM" : " PM");
    }

    private static String two(int value) {
        return value < 10 ? "0" + value : Integer.toString(value);
    }

    private static Calendar calendar(long time, TimeZone zone) {
        Calendar calendar = Calendar.getInstance(zone);
        calendar.setTimeInMillis(time);
        return calendar;
    }
}
