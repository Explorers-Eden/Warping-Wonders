#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$RUNNER_TEMP/crowdin-backup"
cp assets/wawo/lang/en_us.json "$RUNNER_TEMP/crowdin-backup/en_us.json"
