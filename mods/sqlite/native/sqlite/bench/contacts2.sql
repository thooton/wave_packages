-- contacts2.db workload: what Messages and the dialer ask ContactsProvider for (bulk phone/name
-- snapshot, per-number lookup through PHONE_NUMBERS_EQUAL, sorted lists with Android's ICU
-- collators, FTS search) plus a write that fires triggers. Numbers here are fake.
-- name: phone_snapshot
SELECT contact_id, display_name, data1, data2, data3, data4, photo_id, lookup FROM view_data
WHERE mimetype='vnd.android.cursor.item/phone_v2'
;;
-- name: phone_lookup_equal
SELECT contact_id, display_name, data1 FROM view_data JOIN phone_lookup ON (view_data._id=phone_lookup.data_id)
WHERE phone_lookup.min_match='1000555' AND PHONE_NUMBERS_EQUAL(data1, '+15555550001', 0)
;;
-- name: phone_lookup_scan_equal
SELECT data_id FROM phone_lookup JOIN data ON (data._id=phone_lookup.data_id)
WHERE PHONE_NUMBERS_EQUAL(data.data1, '5555550001', 1)
;;
-- name: contacts_localized
SELECT _id, display_name, photo_id, lookup FROM view_contacts ORDER BY display_name COLLATE LOCALIZED ASC
;;
-- name: contacts_phonebook
SELECT _id, display_name, sort_key FROM view_contacts ORDER BY sort_key COLLATE PHONEBOOK
;;
-- name: contacts_unicode
SELECT display_name FROM raw_contacts ORDER BY display_name COLLATE UNICODE
;;
-- name: name_lookup_prefix
SELECT DISTINCT raw_contact_id FROM name_lookup WHERE normalized_name GLOB 'A*'
;;
-- name: fts_search
SELECT contact_id, snippet(search_index) FROM search_index WHERE search_index MATCH 'a*'
;;
-- name: upper_lower_like
SELECT count(*) FROM raw_contacts WHERE display_name LIKE '%an%' OR upper(display_name)=lower(display_name)
;;
-- name: w_touch_raw_contact
UPDATE raw_contacts SET dirty=1, version=version+1 WHERE _id=(SELECT MIN(_id) FROM raw_contacts)
;;
-- name: integrity_check
PRAGMA integrity_check
