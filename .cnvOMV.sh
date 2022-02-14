#!/bin/bash

if [ "$(echo ${1} | cut -d. -f2)" != "odt" ]; then echo "The input document is required to be in OpenDocument-format (.odt)."; exit; fi
F=$(echo ${1} | cut -d. -f1)
pandoc -s -f odt -t markdown+grid_tables --columns 160 ${F}.odt | sed 's/\\`/\`/g' | sed 's/\\"/\"/g' | sed 's/\\_/\_/g' | sed 's/\\|/\|/g' | sed 's/\\\*/\*/g' | sed 's/\\</\</g' | sed 's/\\>/\>/g' > ${F}.rst
