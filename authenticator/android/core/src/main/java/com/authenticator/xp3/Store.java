package com.authenticator.xp3;

import java.io.IOException;
import java.util.List;

/**
 * Where the accounts are kept: the two backends. {@link Vault} is a Delta
 * command center's; {@link LocalVault} is the phone's own. Every call
 * answers with the whole list as it now stands.
 */
public interface Store {

    List<Account> list() throws IOException, InterruptedException;

    /** Adds the accounts; one whose secret is already there is left as it was. */
    List<Account> add(List<Account> accounts) throws IOException, InterruptedException;

    /** Changes the account with `changed`'s id to what `changed` says. */
    List<Account> update(Account changed) throws IOException, InterruptedException;

    /** Removes the account; one already gone is no error. */
    List<Account> remove(String id) throws IOException, InterruptedException;
}
