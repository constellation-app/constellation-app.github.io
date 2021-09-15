#!/bin/bash

echo "Moving all html png jpg to pages/docs"; find ./constellation/* -path '*/docs/*' ! -path ./constellation/docs/* -name "*html" | xargs -I{} cp {} --parents -t ./pages/docs/help/; find ./constellation/* -path '*/docs/*' ! -path ./constellation/docs/* -name "*.png" | xargs -I{} cp {} --parents -t ./pages/docs/help/; find ./constellation/* -path '*/docs/*' ! -path ./constellation/docs/* -name "*.jpg" | xargs -I{} cp {} --parents -t ./pages/docs/help;
