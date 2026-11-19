#!/system/bin/sh
# Orphaned-thread race reproducer. Push with tools/testing/push.sh, then:
#   adb shell appops set com.android.shell WRITE_SMS allow      # else shell writes are ignored
#   adb shell su -c 'sh /data/local/tmp/race.sh <count> <base number>'
#   adb shell appops set com.android.shell WRITE_SMS default    # afterwards
# Injects <count> SMS from new 5-digit numbers (as root) while ProviderHammer (as shell)
# continuously deletes empty threads, like Messaging's ConversationList/Compose/MMS paths do.
CP=/data/local/tmp/smsinject.dex
su 2000 -c "CLASSPATH=$CP app_process /system/bin ProviderHammer $(( $1 / 3 + 12 ))" &
sleep 1
i=0
while [ $i -lt $1 ]; do
  CLASSPATH=$CP app_process /system/bin SmsInject $(( $2 + i )) "Your code is $i" >/dev/null 2>&1
  i=$((i+1))
done
wait
