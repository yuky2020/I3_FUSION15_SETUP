#!/bin/bash
#
#
if [[($(system76-power profile |grep -c  "Performance") == "1")]]; then
  system76-power profile balanced || notify-send -i emblem-nowrite "Power Mode" "Balanced"
elif [[($(system76-power profile |grep -c  "Balanced") == "1")]]; then
    system76-power profile battery ||  notify-send -i emblem-nowrite "Power Mode" "Battery"
        else  system76-power profile performance || notify-send -i emblem-nowrite "Power Mode" "Performance"
fi
