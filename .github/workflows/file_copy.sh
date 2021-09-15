#!/bin/bash

echo "Moving all html png jpg to pages/docs/help..."
find ./constellation/* -path '*/docs/*' -name "*html" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation/* -path '*/docs/*' -name "*.png" | xargs -I{} cp {} --parents -t ./pages/docs/help/
find ./constellation/* -path '*/docs/*' -name "*.jpg" | xargs -I{} cp {} --parents -t ./pages/docs/help
echo "done moving."
