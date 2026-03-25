#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Lấy thư mục chứa file script này
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Launch bar(s)
polybar main -c "$DIR/config.ini" 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
