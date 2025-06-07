#!/bin/bash

pkill ags
ags run --gtk4

# use: watchexec -r "bash ~/.dotfiles/.config/ags/scripts/live-reloading.sh"
