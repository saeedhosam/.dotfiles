#!/bin/bash
WALL_DIR=~/wallpapers

while true; do
  pic=$(find "$WALL_DIR" -type f | shuf -n1)
  swww img "$pic" --transition-type any --transition-fps 60 --transition-duration 2
  sleep 600  # 10 mins
done

