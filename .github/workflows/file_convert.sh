#!/bin/bash

echo "converting links from .md to .html"
find ./constellation/* -path '*docs/*' -name "*.md" | xargs -I{} sed -i -e 's/.md/.html/g' {}
echo "converting .md to .html using template"
find ./constellation/* -path '*/docs/*' -name "*.md" | while read x; do pandoc --template="./constellation/onlinePandocTemplate.txt" -f commonmark -t html $x > "$x".html; done
echo "done converting...."
echo "renaming all .md.html to .html"
find ./constellation/* -name *.md.html | while read x; do  mv "$x" "${x%.md.html}".html; done
echo "done renaming...."
