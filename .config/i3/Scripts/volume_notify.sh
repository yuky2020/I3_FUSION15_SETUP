#!/usr/bin/fish

set -l volume (grep -Pio '(\d)+%' (amixer -D default -M get Master | psub))
notify-send "Current volume: $volume%"
