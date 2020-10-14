#!/bin/bash
HOME=/home/riegel
TARGET="$HOME/Backup/Linux_Home"
mkdir -p $TARGET/.config/
# environment
cp $HOME/.*profile $HOME/.aliases $TARGET

# scripts
cp -r $HOME/scripts/ $TARGET

# config

# config in folder
cp -r $HOME/.config/xfce4 $TARGET/.config/

# get crontab
crontab -l -u riegel > $TARGET/crontab

cp $HOME/scripts/pushgit.sh $TARGET
sed -i "s|FOLDER|$TARGET|g" $TARGET/pushgit.sh
chown -R 1000:1000 $TARGET
$TARGET/pushgit.sh
