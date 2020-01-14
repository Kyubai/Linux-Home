#!/bin/sh
TARGET="/root/backup/LinuxHome/"
mkdir -p $TARGET
mkdir -p $TARGET/.config/
# environment
cp /root/.*profile /root/.xinitrc /root/.X* /root/.*rc $TARGET
# scripts
cp -r /root/install.sh /root/scripts/ $TARGET
# config
cp /root/.gdbinit /root/.aliases $TARGET
# config in folder
cp -r /root/.config/i3/ $TARGET/.config/
# get crontab
crontab -l -u root > $TARGET/crontab

cp /root/scripts/pushgit.sh $TARGET
sed -i "s|FOLDER|$TARGET|g" $TARGET/pushgit.sh
$TARGET/pushgit.sh
