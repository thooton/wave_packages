# Bulk phone-to-name lookup

`content://com.android.contacts/data?wave_phone_map=1` with the single
projection token `wave_phone_map_v1` exposes the current user's local phone
lookup rows and contact display metadata in one fixed, read-only cursor. It runs
after the provider's normal read-access, profile and directory routing, checks
`READ_CONTACTS` explicitly, and only accepts same-user callers. No arbitrary
selection or sort is accepted. Other queries, the database schema, manifests and
resources are unchanged.

Messages loads the map once before binding inbox rows. The index uses the
provider's actual normalized and minimum-match keys and applies the stock E.164
and normalized suffix predicates. Inbox rows read names directly from the map;
photo loading is not required to show a name. The phone-contact binder skips the
stock thumbnail call when `photo_id` is absent; it still loads existing thumbnails
and leaves email and profile photos on the stock path. A duplicate key that resolves to
multiple phone data rows, a non-phone recipient, or an unavailable snapshot uses
the stock contact path. Contact changes invalidate the map. The stock inbox-wide
warmup is still enabled; scrolling does not wait at a frame gate.

`python3 tools/testing/phone_map_test.py` checks the projection and equivalence
with the stock matching predicate, including collisions. With `--db PATH`, it
also compares every indexed number in a private read-only copy. On the XP3800,
one cold inbox open loaded 254 map rows in 37 ms (provider query and cursor
consumption, not total launch time). The same snapshot query took about 0.63 ms
on the host, excluding Android and IPC.
