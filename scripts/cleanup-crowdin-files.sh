#!/usr/bin/env bash
set -euo pipefail

rm -f .crowdin-temp.yml
rm -f assets/wawo/lang/en_US.json
rm -f assets/wawo/lang/en_MY.json
cp "$RUNNER_TEMP/crowdin-backup/en_us.json" assets/wawo/lang/en_us.json
