#!/bin/bash
# Dumps canonical_addresses, threads and sms via the provider (root). Pipe into orphans.py.
q() { adb shell "su -c 'content query --uri $1 ${2:+--projection $2} ${3:+--where \"$3\"}'" 2>&1; }
echo "== canonical_addresses"; q content://mms-sms/canonical-addresses
echo "== threads"; q "content://mms-sms/conversations?simple=true" "_id:recipient_ids:message_count:read"
echo "== sms"; q content://sms "_id:thread_id:address:read:seen:type:body"
