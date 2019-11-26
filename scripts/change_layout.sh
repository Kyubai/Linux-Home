#!/bin/bash

if [[ -f /tmp/us ]]; then
    touch /tmp/de
    rm /tmp/us
    setxkbmap de
else
    touch /tmp/us
    rm /tmp/de
    setxkbmap us
fi
