#!/usr/bin/env bash
# Render a lead magnet HTML file to PDF with headless Chrome.
# Usage: render-pdf.sh path/to/lead-magnet.html [path/to/output.pdf]
set -u
IN="${1:?usage: render-pdf.sh input.html [output.pdf]}"
OUT="${2:-${IN%.html}.pdf}"

for C in \
  "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  "/Applications/Chromium.app/Contents/MacOS/Chromium" \
  "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge" \
  "$(command -v google-chrome 2>/dev/null)" "$(command -v chromium 2>/dev/null)" \
  "$(command -v chromium-browser 2>/dev/null)" "$(command -v chrome 2>/dev/null)" \
  "/c/Program Files/Google/Chrome/Application/chrome.exe" \
  "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe"; do
  if [ -n "$C" ] && [ -x "$C" ]; then CHROME="$C"; break; fi
done

if [ -z "${CHROME:-}" ]; then
  echo "NO_CHROME: open $IN in any browser, press Cmd/Ctrl+P, choose Save as PDF, turn Headers and footers OFF, set Margins to Default." >&2
  exit 2
fi

ABS="$(cd "$(dirname "$IN")" && pwd)/$(basename "$IN")"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --virtual-time-budget=8000 --print-to-pdf="$OUT" "file://$ABS" >/dev/null 2>&1

if [ -s "$OUT" ]; then
  echo "OK: $OUT"
  command -v pdfinfo >/dev/null && pdfinfo "$OUT" | grep Pages
  exit 0
fi
echo "RENDER_FAILED: Chrome ran but wrote no PDF. Use the manual fallback: open $IN in a browser, Print, Save as PDF." >&2
exit 3
