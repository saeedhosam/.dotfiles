#1/bin/bash

copyq
sleep 1 && swaymsg 'workspace "1: video"; exec google-chrome --profile-directory="Default"'
sleep 1 && swaymsg 'workspace "2: research"; exec google-chrome --profile-directory="Default"'
sleep 1 && swaymsg 'workspace "3: whiteboard"; exec google-chrome --profile-directory="Default" --new-window "excalidraw.com"'
sleep 1 && swaymsg 'workspace "4: ?"; exec google-chrome --profile-directory="Default" --new-window "open.spotify.com"'
sleep 1 && swaymsg 'workspace "7: notion"; exec google-chrome --profile-directory="Default" --new-window "notion.so"'
sleep 2 && swaymsg 'workspace "10: code"; exec $term'
