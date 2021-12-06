#!/bin/sh
set -e
xset s off dpms 10 10 10
betterlockscreen -l blur -- --ignore-empty-password --show-failed-attempts --nofork
xset s off -dpms
