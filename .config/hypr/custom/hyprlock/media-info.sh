#!/bin/bash

status=$(playerctl status 2>/dev/null)

if [ "$status" = "Playing" ]; then
    playerctl metadata --format '{{ title }} - {{ artist }} | {{ playerName }}' 2>/dev/null || echo ''
elif [ "$status" = "Paused" ]; then
    playerctl metadata --format '{{ title }} - {{ artist }} | {{ playerName }}' 2>/dev/null || echo ''
else
    echo ''
fi