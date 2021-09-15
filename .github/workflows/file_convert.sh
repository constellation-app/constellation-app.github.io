#!/bin/bash

echo "converting links from .md to .html"
find ./constellation/* -path '*docs/*' -name "*.md" | xargs -I{} sed -i -e 's/.md/.html/g' {}
echo "converting .md to .html using template"
find ./constellation/* -path '*/docs/*' -name "*.md" | xargs -I{} pandoc --template="./constellation/onlinePandocTemplate.txt" -f commonmark -t html {} > {}.html
echo "done converting...."
echo "renaming all .md.html to .html"
find ./constellation/* -name *.md.html | xargs -I{} mv {} {}.html
echo "done renaming...."
