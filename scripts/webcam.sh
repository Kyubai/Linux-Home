#!/bin/sh
# fswebcam -r 1280x720 --jpeg 85 -S 30 /root/Pictures/webcam/pic-$(date -Iseconds | cut -d'+' -f1).jpg
fswebcam -r 1280x720 -S 30 --no-banner /root/Pictures/webcam/pic.jpg
