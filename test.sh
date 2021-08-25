#!/bin/bash

shopt -s globstar
for dir in ./**/docs/help/**;
do
  if [ -d "$dir" ]; then
    mkdir -p output/$dir
    echo "making dir:"$dir
  fi
done
