#!/bin/bash

echo "converting .md to .html using template"; find */src/ -path '*/docs/*' -name "*.md" | while read x; do pandoc --template="const/onlinePandocTemplate.txt" -f commonmark -t html $x > "$x".html; done; echo "done converting...."; echo "renaming all .md.html to .html"; find */src/ -name *.md.html | while read x; do  mv "$x" "${x%.md.html}".html; done; echo "done renaming...."; echo "Moving all html png jpg to pages/docs"; find */src/ -path '*/docs/*' -name "*html" \
| xargs cp --parents -v -t pages/docs; find */src/ -path '*/docs/*' -name "*.png" | xargs cp --parents -v -t pages/docs; find */src/ -path '*/docs/*' -name "*.jpg" | xargs cp --parents -v -t pages/docs; ls
