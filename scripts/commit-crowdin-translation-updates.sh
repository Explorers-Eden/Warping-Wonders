#!/usr/bin/env bash
set -euo pipefail

git config user.name "github-actions"
git config user.email "github-actions@github.com"

git add assets/wawo/lang/

if ! git diff --cached --quiet; then
  git commit -m "Update Warping Wonders translations from Crowdin"
  git pull --rebase origin "${GITHUB_REF_NAME}"
  git push origin "HEAD:${GITHUB_REF_NAME}"
else
  echo "No translation changes to commit"
fi
