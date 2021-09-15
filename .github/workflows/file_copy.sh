#!/bin/bash

echo "Moving all html png jpg to pages/docs"; find */src/ -path '*/docs/*' -name "*html" | xargs -I{} cp {} --parents -t ./pages/docs/constydocs/; find */src/ -path '*/docs/*' -name "*.png" | xargs -I{} cp {} --parents -t ./pages/docs/constydocs/; find */src/ -path '*/docs/*' -name "*.jpg" | xargs -I{} cp {} --parents -t ./pages/docs/constydocs/;
