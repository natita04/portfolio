#!/bin/bash
# Regenerates cv/Nati-Asher-CV.pdf from cv/index.html using headless Chrome.
# Needs the site served on http://localhost:8080 (python3 -m http.server 8080 from the project root).
cd "$(dirname "$0")"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu \
  --no-pdf-header-footer --virtual-time-budget=8000 \
  --print-to-pdf="$PWD/Nati-Asher-CV.pdf" "http://localhost:8080/cv/?pdf=1"
