#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload main &
    MONITOR=$m polybar --reload second &
done

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar main --config=~/.config/polybar/config.ini &
# polybar second --config=~/.config/polybar/config.ini &

echo "Polybar launched..."
