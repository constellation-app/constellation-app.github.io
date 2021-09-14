#!/bin/bash

echo "Moving all html png jpg to pages/docs"; find */src/ -path '*/docs/*' -name "*html" | xargs cp --parents -t ./pages/docs/constydocs/; find */src/ -path '*/docs/*' -name "*.png" | xargs cp --parents -t ./pages/docs/constydocs/; find */src/ -path '*/docs/*' -name "*.jpg" | xargs cp --parents -t ./pages/docs/constydocs/;
