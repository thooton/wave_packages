package org.argon.rcs;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/** A group chat. Instances handed to the listener are copies. */
public final class RcsGroup {
    /** Conversation-ID. */
    public String id;
    /** Conference focus URI (from the Contact with isfocus); null until known. */
    public String focusUri;
    public String subject;
    /** E.164 numbers, excluding self. */
    public Set<String> participants = new LinkedHashSet<>();

    public RcsGroup() {}

    public RcsGroup(String id, String focusUri, String subject, Set<String> participants) {
        this.id = id; this.focusUri = focusUri; this.subject = subject;
        if (participants != null) this.participants = new LinkedHashSet<>(participants);
    }

    public RcsGroup copy() {
        RcsGroup g = new RcsGroup(id, focusUri, subject, participants);
        return g;
    }

    public Set<String> participantsView() { return Collections.unmodifiableSet(participants); }

    @Override public String toString() {
        return "RcsGroup{id=" + id + " focus=" + focusUri + " subject=" + subject + " participants=" + participants + "}";
    }
}
