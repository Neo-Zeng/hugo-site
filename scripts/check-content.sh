#!/usr/bin/env bash

set -euo pipefail

status=0

report_matches() {
  local label="$1"
  local pattern="$2"
  shift 2

  if matches=$(grep -Enr --include='*.md' "$pattern" "$@" 2>/dev/null); then
    echo "ERROR: ${label}"
    echo "$matches"
    status=1
  fi
}

report_matches \
  "Store DOI values as identifiers, not complete URLs." \
  "^doi:[[:space:]]*[\"']?https?://" \
  content/publication

report_matches \
  "Replace publication placeholders before publishing." \
  'pp\.[[:space:]]*xx|\bTBD\b|\bTODO\b' \
  content/publication

for demo in \
  content/event/example/index.md \
  content/project/example/index.md \
  content/slides/example/index.md; do
  if [[ -f "$demo" ]] && ! grep -qE '^draft:[[:space:]]*true' "$demo"; then
    echo "ERROR: Starter content must remain draft: $demo"
    status=1
  fi
done

if ! grep -qE '^description:[[:space:]]*[^[:space:]]' config/_default/params.yaml; then
  echo "ERROR: SEO description is missing from config/_default/params.yaml"
  status=1
fi

if ! grep -qE "^baseurl:[[:space:]]*['\"]https://qingyuzeng\.com/" config/_default/config.yaml; then
  echo "ERROR: The production base URL is not the canonical HTTPS domain."
  status=1
fi

if [[ "$status" -ne 0 ]]; then
  exit "$status"
fi

echo "Content checks passed."
