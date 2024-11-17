#!/bin/bash

#    DATE: 2024-11-17
#  AUTHOR: RGBRGM <roman.bergman@tutanota.com>
# LICENSE: AGPL3.0

SWAY_DIR="./sway.d"

for file in "$SWAY_DIR"/*; do
  echo -e "# Base Config\ninclude $file" >>sway.conf
done

sway --validate -c sway.conf
rm sway.conf
