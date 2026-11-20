#!/system/bin/sh
# SQLite Improved: late_start service (runs in the background while Android boots).
# Bootloop guard: if Android hasn't finished booting TIMEOUT seconds after this point (zygote or
# system_server crash-looping on the new libsqlite.so never reboots by itself), disable this
# module and reboot, so the next boot runs on the stock library. A normal boot takes ~1 min.
MODDIR=${0%/*}
TIMEOUT=300
(
    t=0
    until [ "$(getprop sys.boot_completed)" = 1 ]; do
        sleep 5; t=$((t + 5))
        if [ "$t" -ge "$TIMEOUT" ]; then
            touch "$MODDIR/disable" || exit 1
            sync; reboot
            exit 0
        fi
    done
) &
