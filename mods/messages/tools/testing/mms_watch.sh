#!/bin/bash
# tools/testing/mms_watch.sh <seconds>
# Samples on the device (fast), about twice per second: pdu rows (thread, m_type, seen) and
# whether Messages has a notification up. Use right after mms_inject.sh.
n=${1:-10}
adb shell su -c "'
end=\$((\$(date +%s) + $n))
while [ \$(date +%s) -lt \$end ]; do
  echo \"== \$(date +%T)\"
  content query --uri content://mms --projection _id:thread_id:m_type:seen | sed \"s/^/  pdu: /\"
  dumpsys notification --noredact | grep -o \"tickerText=.*\" | sed \"s/^/  notif: /\"
done'"
