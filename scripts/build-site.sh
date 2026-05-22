#!/usr/bin/env bash
set -euo pipefail

if ! command -v rendercv >/dev/null 2>&1; then
  python3 -m pip install --user "rendercv[full]==2.8"
  export PATH="$HOME/.local/bin:$PATH"
fi

rm -rf dist
mkdir -p dist

rendercv render Arthur_Rosa_CV.yaml \
  --html-path dist/index.html \
  --pdf-path dist/arthur-rosa-resume.pdf \
  --dont-generate-png

rm -f dist/*.md dist/*.typ
