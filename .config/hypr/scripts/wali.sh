#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/.dotfiles/wallpapers"

# Ensure swww is running
swww init &>/dev/null

while true; do
    # Pick a random wallpaper
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

    # Set the wallpaper using swww
    swww img "$WALLPAPER" --transition-type any

    # Generate colors with pywal
    wal -i "$WALLPAPER"

    # Wait for 1 hour before changing again
    sleep 3600
done
