#!/bin/sh
# wait for the dock state to change
#sleep 0.5
DOCKED=$(cat /sys/devices/platform/dock.3/docked)

if [[ "$DOCKED" == "0" ]]; then
    xrandr --output LVDS1 --auto --output VGA1 --off
else
    xrandr --output LVDS1 --off --output VGA1 --auto
fi
