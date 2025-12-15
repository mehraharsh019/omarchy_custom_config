#!/bin/bash

status=$(playerctl status 2>/dev/null)

if [ "$status" ]; then
    playerctl metadata --format '{{ title }} - {{ artist }} | {{ playerName }}' 2>/dev/null || echo ''
else
    echo ''
fi