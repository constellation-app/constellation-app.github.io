#!/bin/sh

find . -maxdepth 5 -type d -wholename './docs/help/*' -exec mkdir -p output/{} \;
