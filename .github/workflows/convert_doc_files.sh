#!/bin/bash

# convert toc from markdown to html
echo "converting toc.md with pandoc..."
pandoc -f commonmark -t html ./constellation/toc.md > ./constellation/toc.html
echo "done converting."

# replace the markdown links with html ones within toc.md
echo "replace .md links with .html..."
sed -i -e 's/.md/.html/g' ./constellation/toc.html
mv ./constellation/toc.html ./pages/docs/help/toc.html
echo "done replacing."

# convert the markdown links to html within the help pages
echo "converting links from .md to .html"
find ./constellation/* -path '*docs/*' -name "*.md" | xargs -I{} sed -i -e 's/.md/.html/g' {}
find ./constellation-adaptors/* -path '*docs/*' -name "*.md" | xargs -I{} sed -i -e 's/.md/.html/g' {}
find ./constellation_cyber_plugins/* -path '*docs/*' -name "*.md" | xargs -I{} sed -i -e 's/.md/.html/g' {}

# convert the markdown documents to html via pandoc
echo "converting .md to .html using template"
find ./constellation/* -path '*/docs/*' -name "*.md" | while read x; do pandoc --template="./constellation/onlinePandocTemplate.txt" -f commonmark -t html $x > "$x".html; done
find ./constellation-adaptors/* -path '*/docs/*' -name "*.md" | while read x; do pandoc --template="./constellation/onlinePandocTemplate.txt" -f commonmark -t html $x > "$x".html; done
find ./constellation_cyber_plugins/* -path '*/docs/*' -name "*.md" | while read x; do pandoc --template="./constellation/onlinePandocTemplate.txt" -f commonmark -t html $x > "$x".html; done
echo "done converting...."

# rename the converted files from .md.html to .html
echo "renaming all .md.html to .html"
find ./constellation/* -name *.md.html | while read x; do  mv "$x" "${x%.md.html}".html; done
find ./constellation-adaptors/* -name *.md.html | while read x; do  mv "$x" "${x%.md.html}".html; done
find ./constellation_cyber_plugins/* -name *.md.html | while read x; do  mv "$x" "${x%.md.html}".html; done
echo "done renaming....";

# move the converted files and resources into the GitHub Pages repo
echo "Moving all html png jpg to pages/docs/help..."
find ./constellation/* -path '*/docs/*' -name "*html" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation/* -path '*/docs/*' -name "*.png" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation/* -path '*/docs/*' -name "*.jpg" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation-adaptors/* -path '*/docs/*' -name "*html" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation-adaptors/* -path '*/docs/*' -name "*.png" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation-adaptors/* -path '*/docs/*' -name "*.jpg" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation_cyber_plugins/* -path '*/docs/*' -name "*html" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation_cyber_plugins/* -path '*/docs/*' -name "*.png" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation_cyber_plugins/* -path '*/docs/*' -name "*.jpg" | xargs -I{} cp {} --parents -t ./pages/docs/help/
echo "done moving."
