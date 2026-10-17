#!/bin/bash
# Installs markitdown at session start so Claude can turn PDFs/Office files
# into compact Markdown instead of reading them raw.
set -euo pipefail

if command -v markitdown >/dev/null 2>&1; then
  exit 0
fi

pip install --quiet --disable-pip-version-check 'markitdown[all]' >&2 \
  || pip install --quiet --disable-pip-version-check --user 'markitdown[all]' >&2
