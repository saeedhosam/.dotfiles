#!/usr/bin/env bash

# Print the current active workspace ID once at startup
hyprctl activeworkspace -j | jq .id

# Then start listening for updates
socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | \
while read -r line; do
  if [[ $line == "workspace>>"* ]]; then
    hyprctl activeworkspace -j | jq .id
  fi
done

