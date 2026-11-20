-- Statements captured from the providers (log.tag.SQLiteStatements) while opening the inbox and a
-- conversation, 2026-11-18, plus writes that fire the sms triggers (rolled back by sqlbench).
-- name: unread_failed_threads
SELECT thread_id FROM (SELECT thread_id AS tid, date * 1 AS normalized_date, thread_id FROM sms WHERE (read=0 AND (type = 4 OR type = 5 OR type = 6)) UNION SELECT thread_id AS tid, date * 1000 AS normalized_date, thread_id FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id WHERE (read=0 AND msg_box = 4))
;;
-- name: unseen_sms_notif
SELECT thread_id, date, address, body, sub_id, _id FROM sms WHERE ((type = 1 AND seen = 0)) ORDER BY date desc
;;
-- name: delete_orphan_threads
DELETE FROM threads WHERE _id NOT IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)
;;
-- name: argon_version
SELECT version FROM argon_msg_version
;;
-- name: argon_schema_glob
SELECT type,name,tbl_name FROM sqlite_master WHERE name GLOB 'argon_msg*'
;;
-- name: argon_conversation
SELECT transport_type,_id,thread_id,address,body,sub_id,date,date_sent,read,type,status,locked,error_code,sub,sub_cs,date,date_sent,read,m_type,msg_box,d_rpt,rr,err_type,locked,st,text_only,sub_id,recipient_ids,argon_text,argon_from,argon_size,normalized_date AS argon_date,0 AS argon_older FROM argon_msg WHERE thread_id='432' ORDER BY normalized_date,transport_type,_id
;;
-- name: pdu_outbox_subjects
SELECT _id, sub, sub_cs FROM pdu WHERE (msg_box=3) AND (thread_id = 432) ORDER BY date DESC
;;
-- name: mark_seen_candidates
SELECT _id, read FROM (SELECT DISTINCT date * 1 AS normalized_date, _id, read FROM sms WHERE ((read=0 OR seen=0) AND thread_id = 432 AND (type != 3)) UNION SELECT DISTINCT date * 1000 AS normalized_date, pdu._id, read FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id WHERE ((read=0 OR seen=0) AND thread_id = 432 AND msg_box != 3 AND (msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))) ORDER BY normalized_date ASC)
;;
-- name: inbox_threads
SELECT _id, date, message_count, recipient_ids, snippet, snippet_cs, read, error, has_attachment, attachment_info FROM threads WHERE notification=0 and (EXISTS (SELECT 1 FROM sms WHERE sms.thread_id=threads._id) OR _id IN (SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL)) ORDER BY  date DESC
;;
-- name: inbox_threads_unread
SELECT _id, date, message_count, recipient_ids, snippet, snippet_cs, read, error, has_attachment, attachment_info FROM threads WHERE notification=1 and (EXISTS (SELECT 1 FROM sms WHERE sms.thread_id=threads._id) OR _id IN (SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL)) ORDER BY  date DESC
;;
-- name: inbox_threads_notif
SELECT _id, date, message_count, recipient_ids, snippet, snippet_cs, read, error, has_attachment, attachment_info FROM threads WHERE read=0 and (EXISTS (SELECT 1 FROM sms WHERE sms.thread_id=threads._id) OR _id IN (SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL)) ORDER BY  date DESC
;;
-- name: unseen_sms
SELECT seen FROM sms WHERE (type=1) AND (seen=0) ORDER BY date DESC
;;
-- name: unseen_pdu
SELECT seen FROM pdu WHERE (msg_box=1) AND (seen=0) ORDER BY date DESC
;;
-- name: pdu_pending_download
SELECT * FROM pdu WHERE (msg_box=1) AND (m_type=130 AND st=135) ORDER BY date DESC
;;
-- name: unseen_pdu_notif
SELECT thread_id, date, _id, sub, sub_cs, sub_id FROM pdu WHERE ((msg_box=1 AND seen=0 AND (m_type=130 OR m_type=132))) ORDER BY date desc
;;
-- name: w_mark_thread_read
UPDATE sms SET read=1, seen=1 WHERE thread_id=(SELECT _id FROM threads ORDER BY date DESC LIMIT 1)
;;
-- name: w_insert_sms
INSERT INTO sms(address,date,date_sent,body,type,read,seen,thread_id) VALUES('5550100',1700000000000,1700000000000,'bench message',1,0,0,(SELECT _id FROM threads ORDER BY date DESC LIMIT 1))
;;
-- name: w_delete_newest_sms
DELETE FROM sms WHERE _id=(SELECT MAX(_id) FROM sms)
;;
-- name: integrity_check
PRAGMA integrity_check
