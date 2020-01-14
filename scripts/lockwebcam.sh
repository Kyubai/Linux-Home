#!/bin/bash
exec >/dev/null
exec 2>/dev/null

(
COUNT=$(journalctl _EXE=/usr/bin/i3lock | wc -l)

while true; do
	COUNTCHECK=$(journalctl _EXE=/usr/bin/i3lock | wc -l)
	if [ $COUNT -ne $COUNTCHECK ]; then
		COUNT=$COUNTCHECK
		DATE=$(date -Iseconds | cut -d'+' -f1)
		fswebcam -r 1280x720 -S 30 --no-banner /root/Pictures/webcam/$(echo $DATE).jpg
		gm convert /root/Pictures/webcam/$(echo $DATE).jpg -resize 1920x1080 /root/Pictures/webcam/$(echo $DATE).png
		rm /root/Pictures/webcam/$(echo $DATE).jpg
		pkill i3lock
		i3lock --no-unlock-indicator -i /root/Pictures/webcam/$(echo $DATE).png -p win
	fi
	sleep 1
done
)&
