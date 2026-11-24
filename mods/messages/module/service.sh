#!/system/bin/sh
# Messages Improved module: late_start service (runs on every boot, in the background).
#
# The firmware's apps run AOT-compiled code. The patched APKs don't match that code, so after an
# install or update ART only verifies them (interpreter + JIT) until an idle-maintenance dexopt
# happens to run, which needs the phone idle and charging and then only uses speed-profile.
# Compile them with "speed" once, well after boot so it never competes with boot or the first
# unlock. installd forks dex2oat itself, in the background cgroup at background nice (so nice on
# this script would not reach it); compiling neither starts nor kills the apps, and a running
# process keeps its old code until it next starts. Later boots only check: the work reruns when a
# module update replaced the APKs (their old code is then out of date) or Android downgraded the
# code (e.g. after 10 inactive days). dexopt.done records the versionCode last fully compiled
# (or failure backoff for a given versionCode+fingerprint).
DIR="${0%/*}"
(
  until [ "$(getprop sys.boot_completed)" = 1 ]; do sleep 5; done
  # FEAT(imessage): the iMessage connection runs without a foreground service unless its
  # notification is turned on, so keep Messages exempt from Doze's network and alarm limits and
  # allowed to run in the background.
  dumpsys deviceidle whitelist +com.android.mms >/dev/null 2>&1
  cmd appops set com.android.mms RUN_IN_BACKGROUND allow >/dev/null 2>&1
  sleep 90
  umask 022
  export ANDROID_ROOT="${ANDROID_ROOT:-/system}"
  export ANDROID_DATA="${ANDROID_DATA:-/data}"
  PKGS="com.android.mms com.android.providers.telephony"
  if [ -f "$DIR/system/priv-app/ContactsProvider/ContactsProvider.apk" ]; then
    PKGS="$PKGS com.android.providers.contacts"
  fi
  VER=$(sed -n 's/^versionCode=//p' "$DIR/module.prop")
  FP=$(getprop ro.build.fingerprint)
  FAIL_KEY="fail:${VER}:${FP}"
  MARK="$DIR/dexopt.done"
  # logd prunes root's lines while boot is busy, so keep a short log beside the marker too.
  LOG="$DIR/dexopt.log"
  if [ "$(wc -l <"$LOG" 2>/dev/null)" -gt 60 ] 2>/dev/null; then
    tail -n 30 "$LOG" >"$LOG.tmp" && mv -f "$LOG.tmp" "$LOG"
  fi
  say() {
    log -p i -t MessagesImproved "dexopt: $*"
    echo "$(date '+%F %T') $*" >>"$LOG"
  }
  # Backoff: if this exact (versionCode, fingerprint) failed 2 full boots in a row, stop retrying
  # until a module update or OS update changes the key.
  CUR_MARK=$(cat "$MARK" 2>/dev/null)
  case "$CUR_MARK" in
    "${FAIL_KEY}:"*)
      FAIL_N="${CUR_MARK##*:}"
      if [ "$FAIL_N" -ge 2 ] 2>/dev/null; then
        say "skipping after $FAIL_N failed boots for versionCode $VER"
        exit 0
      fi
      ;;
  esac
  # True when every dex of the package has up-to-date "speed" code. dumpsys wraps long lines
  # mid-word, so whitespace is stripped before matching.
  is_speed() {
    st=$(dumpsys package "$1" 2>/dev/null | sed -n '/^Dexopt state:/,/^$/p' | tr -d ' \r\n' |
      grep -o 'status=[^]]*]')
    [ -n "$st" ] && ! echo "$st" | grep -qv '^status=kOatUpToDate,compilation_filter=speed]$'
  }
  # Messages' manifest pulls in the RCS API jar as a shared library, but the firmware ships it
  # without an odex, so every cold start inflates and verifies its dex from the zip (~55 ms) and
  # runs it interpreted. Compile it into dalvik-cache, where ART already looks for it. The jar
  # itself is untouched, so the apps' own code (which pins its checksum) stays valid.
  RCS=/system/framework/rcs_service_api.jar
  RCS_OAT=/data/dalvik-cache/arm/system@framework@rcs_service_api.jar@classes.dex
  rcs_ok() {
    [ -f "$RCS" ] || return 0
    # dexoptanalyzer's exit code is ART's own verdict (0 current; 1-7 missing, stale against the
    # boot image, or below speed). If it can't run, fall back to timestamps.
    dexoptanalyzer --dex-file="$RCS" --isa=arm --compiler-filter=speed >/dev/null 2>&1
    case $? in 0) return 0 ;; [1-7]) return 1 ;; esac
    [ -s "$RCS_OAT" ] && ! [ "$RCS_OAT" -ot "$RCS" ] &&
      ! [ "$RCS_OAT" -ot /system/framework/arm/boot.oat ]
  }
  rcs_compile() {
    t=/data/dalvik-cache/arm/wave-rcs-tmp
    rm -f "$t.dex" "$t.vdex"
    var=$(getprop dalvik.vm.isa.arm.variant)
    feat=$(getprop dalvik.vm.isa.arm.features)
    xms=$(getprop dalvik.vm.dex2oat-Xms)
    xmx=$(getprop dalvik.vm.dex2oat-Xmx)
    set -- --dex-file="$RCS" --dex-location="$RCS" --oat-file="$t.dex" \
      --instruction-set=arm --instruction-set-variant="${var:-default}" \
      --instruction-set-features="${feat:-default}" \
      --compiler-filter=speed --class-loader-context='PCL[]' -j2
    [ -n "$xms" ] && set -- "$@" --runtime-arg "-Xms$xms"
    [ -n "$xmx" ] && set -- "$@" --runtime-arg "-Xmx$xmx"
    # class-loader-context PCL[]: the jar comes first in the app's PathClassLoader. Remove any
    # existing oat first so ART falls back to the zip during the swap, then move vdex then oat.
    if nice -n 19 ionice -c 3 dex2oat "$@" >/dev/null 2>&1; then
      chmod 644 "$t.dex" "$t.vdex"
      rm -f "$RCS_OAT"
      mv -f "$t.vdex" "${RCS_OAT%.dex}.vdex" && mv -f "$t.dex" "$RCS_OAT"
      restorecon "$RCS_OAT" "${RCS_OAT%.dex}.vdex" 2>/dev/null
    else
      rm -f "$t.dex" "$t.vdex"
      say "$RCS: dex2oat failed"
    fi
  }
  for attempt in 1 2 3; do
    todo=""
    rcs_ok || todo=" rcs_service_api.jar"
    for p in $PKGS; do is_speed "$p" || todo="$todo $p"; done
    if [ -z "$todo" ]; then
      if [ "$CUR_MARK" != "$VER" ]; then
        echo "$VER" >"$MARK"
        say "speed code ready for versionCode $VER"
      else
        say "speed code current for versionCode $VER"
      fi
      exit 0
    fi
    say "compiling$todo (attempt $attempt, versionCode $VER, mark ${CUR_MARK:-none})"
    for p in $todo; do
      case $p in
        *.jar) rcs_compile ;;
        *) r=$(cmd package compile -m speed "$p" 2>&1); [ "$r" = Success ] || say "$p: $r" ;;
      esac
    done
    sleep 60
  done
  NEXT_FAIL=1
  case "$CUR_MARK" in
    "${FAIL_KEY}:"*)
      FAIL_N="${CUR_MARK##*:}"
      NEXT_FAIL=$((FAIL_N + 1))
      ;;
  esac
  echo "${FAIL_KEY}:${NEXT_FAIL}" >"$MARK"
  say "not all speed-compiled (failure #$NEXT_FAIL for versionCode $VER)"
) &
