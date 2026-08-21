#!/usr/bin/env bash
set -euo pipefail

UPSTREAM_URL="https://github.com/kiwibrowser/src.next.git"
UPSTREAM_REMOTE="kiwi-upstream"
UPSTREAM_BRANCH="kiwi"

if ! git remote get-url "$UPSTREAM_REMOTE" >/dev/null 2>&1; then
  git remote add "$UPSTREAM_REMOTE" "$UPSTREAM_URL"
fi

git fetch --prune "$UPSTREAM_REMOTE" "$UPSTREAM_BRANCH"
git checkout -B "$UPSTREAM_BRANCH" "$UPSTREAM_REMOTE/$UPSTREAM_BRANCH"

git status --short
printf 'Synced to Kiwi upstream branch: %s\n' "$UPSTREAM_BRANCH"
