#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/dk/polybar/hack"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
# polybar -q top -c "$DIR"/config.ini &
polybar -q bottom -c "$DIR"/config.ini &
polybar -q bar-music -c "$DIR"/config.ini &
polybar -q bar-workspaces -c "$DIR"/config.ini &
polybar -q bar-internet -c "$DIR"/config.ini &
# polybar -q bar-date -c "$DIR"/config.ini &
polybar -q bar-launcher -c "$DIR"/config.ini &
polybar -q bar-sysmenu -c "$DIR"/config.ini &
