#!/bin/bash

echo "Moving all html png jpg to pages/docs"; find ./const/* -path '*/docs/*' -name "*html" | xargs -I{} cp {} --parents -t ./pages/docs/constydocs/; find ./const/* -path '*/docs/*' -name "*.png" | xargs -I{} cp {} --parents -t ./pages/docs/constydocs/; find ./const/* -path '*/docs/*' -name "*.jpg" | xargs -I{} cp {} --parents -t ./pages/docs/constydocs;
