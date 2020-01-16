#!/bin/sh

# depends on the hardware
MONITOR="eDP-1"

# used in script (don't change)
BRIGHTNESS=1
DIRECTION=1

if [ -f /root/.brightness ]; then
    BRIGHTNESS=$(/usr/bin/cat /root/.brightness)
fi

if [ $1 -eq 0 ]; then
    /usr/bin/echo $1
    DIRECTION=-1
fi

NEWBRIGHTNESS=$(/usr/bin/python -c "print(abs($BRIGHTNESS + $DIRECTION * 0.1))")
/usr/bin/xrandr --output $MONITOR --brightness $NEWBRIGHTNESS
/usr/bin/echo $NEWBRIGHTNESS > /root/.brightness
