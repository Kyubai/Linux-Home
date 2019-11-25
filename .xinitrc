[[ -f ~/.Xresources ]] && xrdb -merge -I$home ~/.Xresources
exec /usr/bin/i3
