#!/bin/bash
# Builds the public website into _site/ (run automatically by GitHub Actions;
# you can also run it locally to preview: bash build-site.sh, then open _site/index.html)
# The public version hides your phone number.
set -e
cd "$(dirname "$0")"
OUT=_site
rm -rf "$OUT" && mkdir -p "$OUT"
cp cv.css site.css "$OUT"/

page () {  # page <source.md> <output.html> <title>
  pandoc "$1" -s --lua-filter strip-private.lua --css cv.css --css site.css --include-before-body nav.html \
    --metadata pagetitle="$3" -o "$OUT/$2"
}
page index.md    index.html    "Maximilian Wegener, MPH"
page CV.md       cv.html       "CV – Maximilian Wegener"
page projects.md projects.html "Methods & Projects – Maximilian Wegener"

# Public PDF (no phone number, no navigation bar)
pandoc CV.md -s --lua-filter strip-private.lua --css cv.css --css site.css \
  --metadata pagetitle="CV – Maximilian Wegener" -o "$OUT/cv-print.html"

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
