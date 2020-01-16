#!/bin/sh

BRIGHTNESS=1
DIRECTION=1

if [ -f /root/.brightness ]; then
    BRIGHTNESS=$(cat /root/.brightness)
fi

if [ $1 -eq 0 ]; then
    echo $1
    DIRECTION=-1
fi

NEWBRIGHTNESS=$(python -c "print($BRIGHTNESS + $DIRECTION * 0.1)")
xrandr --output eDP-1 --brightness $NEWBRIGHTNESS
echo $NEWBRIGHTNESS > /root/.brightness
