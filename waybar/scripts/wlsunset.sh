#!/bin/bash

# Name of the program to manage
SUN="wlsunset"
ARG="-l 51 -L 14 -t 4000"

# Check if the program is running
if pgrep -x "$SUN" > /dev/null; then
    notify-send "$SUN is running. Killing it..."
    pkill -x "$SUN"
else
    notify-send "$SUN is not running. Starting it..."
    $SUN $ARG &
fi
