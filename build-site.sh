#!/bin/bash
# Builds the public website into _site/ with Quarto, then adds the public PDF.
# GitHub Actions runs this automatically. To preview locally instead, run:  quarto preview
set -e
cd "$(dirname "$0")"

quarto render

# Public PDF (phone number and {.private} items removed, same look as your private PDF)
OUT=_site
quarto pandoc CV.md -f markdown -s --embed-resources --lua-filter strip-private.lua \
  --css cv.css --metadata pagetitle="CV – Maximilian Wegener" -o "$OUT/cv-print.html"

for c in google-chrome google-chrome-stable chromium chromium-browser \
         "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"; do
  if command -v "$c" >/dev/null 2>&1 || [ -x "$c" ]; then CHROME="$c"; break; fi
done
if [ -n "$CHROME" ]; then
  "$CHROME" --headless --no-sandbox --disable-gpu --no-pdf-header-footer \
    --print-to-pdf-no-header --print-to-pdf="$PWD/$OUT/CV_Max_Wegener.pdf" \
    "file://$PWD/$OUT/cv-print.html" 2>/dev/null
else
  echo "Chrome not found: skipped the PDF"
fi
rm -f "$OUT/cv-print.html"
touch "$OUT/.nojekyll"
echo "Site built in $OUT/"
