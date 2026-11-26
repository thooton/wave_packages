#!/usr/bin/env bash
# Mirror every release in a release_all.py publish list into the catalog with
# one commit. What thooton/wave/publish does for one package, for all of them.
# Usage: publish_all.sh SOURCE_CHECKOUT WAVESRC LIST AAPT2
set -euo pipefail
export GIT_TERMINAL_PROMPT=0
source=$1 wavesrc=$2 list=$3 aapt2=$4
[[ -s $list ]] || { echo 'Nothing new to publish.'; exit 0; }

branch=$(git -C "$source" ls-remote --symref origin HEAD | awk '$1 == "ref:" && $3 == "HEAD" { print $2 }')
[[ $branch == refs/heads/* ]] || { echo 'source: no default branch' >&2; exit 1; }

for attempt in 1 2 3 4 5; do
    git -C "$source" fetch --quiet --no-tags --depth=1 origin "$branch"
    base=$(git -C "$source" rev-parse FETCH_HEAD)
    git -C "$source" checkout --quiet --force --detach "$base"
    git -C "$source" clean -fdq
    names=()
    while IFS= read -r line; do
        field() { python3 -c 'import json,sys; print(json.loads(sys.argv[1])[sys.argv[2]])' "$line" "$1"; }
        path=$(field path) name=$(field name) section=$(field section)
        python3 "$wavesrc" publish --source "$source" --section="$section" --folder="$name" \
            --meta "$path/wave/package.json" --icon "$path/wave/icon.png" \
            --binary "$(field binary)" --url="$(field url)" \
            --changes-from . --changes-path "$path" --aapt2 "$aapt2"
        git -C "$source" add -- "$section"
        names+=("$name")
    done <"$list"
    if git -C "$source" diff --cached --quiet; then
        echo 'source: catalog already up to date'
        exit 0
    fi
    git -C "$source" -c user.name='github-actions[bot]' \
        -c user.email='41898282+github-actions[bot]@users.noreply.github.com' \
        commit --quiet -m "Publish ${names[*]}"
    if git -C "$source" push --quiet origin "HEAD:$branch"; then
        echo "Published: ${names[*]}"
        exit 0
    fi
    remote=$(git -C "$source" ls-remote --exit-code origin "$branch" | cut -f1)
    if [[ $remote == "$base" || $attempt == 5 ]]; then
        echo 'source: push failed' >&2
        exit 1
    fi
    echo 'source: default branch advanced; rebuilding on the new tip' >&2
    sleep "$attempt"
done
