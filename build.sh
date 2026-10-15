#!/bin/bash
# Build CV.html and CV.pdf from CV.md
# One-time setup:  brew install pandoc   (Google Chrome must be installed)
# Run:             cd to this folder, then:  bash build.sh
set -e
cd "$(dirname "$0")"

pandoc CV.md -s --embed-resources --css cv.css \
  --metadata pagetitle="CV – Maximilian Wegener" -o CV.html

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PWD/CV_Max Wegener.pdf" "file://$PWD/CV.html" 2>/dev/null

echo "Done → CV_Max Wegener.pdf"
