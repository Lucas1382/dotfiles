#!/bin/sh
# Start ibus-daemon if it's not already running
if ! pgrep -x "ibus-daemon" > /dev/null; then
    ibus-daemon -d -x
fi

