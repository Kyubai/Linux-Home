#!/bin/bash

if [[ -f /tmp/inverted ]]; then
	touch /tmp/normal
	rm /tmp/inverted
	xrandr --output eDP-1 --rotate normal
else
	touch /tmp/inverted
	rm /tmp/normal
	xrandr --output eDP-1 --rotate inverted
fi
