#!/bin/sh

export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"

for file in $HOME/.config/environment.d/*.conf; do
    if [ -f "$file" ]; then
      set -a
      . "$file"
      set +a
    fi
done
