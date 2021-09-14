#!/bin/bash

echo "Moving all html png jpg to pages/docs"; find */src/ -path '*/docs/*' -name "*html" | xargs cp --parents -v -t ~/pages/docs/constydocs; find */src/ -path '*/docs/*' -name "*.png" | xargs cp --parents -v -t ~/pages/docs/constydocs; find */src/ -path '*/docs/*' -name "*.jpg" | xargs cp --parents -v -t ~/pages/docs/constydocs;
