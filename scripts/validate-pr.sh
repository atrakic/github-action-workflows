#!/usr/bin/env bash
set -euo pipefail

main() {
    local allowed=100
    local changed
    changed=$(git --no-pager diff --name-only FETCH_HEAD...main)

    if [[ -z "$changed" ]]; then
        exit 0
    fi

    local -i num_changed
    num_changed=$(echo "$changed" | wc -l |xargs)

    if ((num_changed > allowed)); then
        echo "Error: this PR has changes to multiple files then $allowed. Please create individual PRs less then $allowed." >&2
        exit 1
    fi

    echo "All good, you have $num_changed files changed in this PR"
}

main "$@"
