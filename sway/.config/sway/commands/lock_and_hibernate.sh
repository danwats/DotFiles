#!/bin/bash
# Take a screenshot using grim
screenshot_path="/tmp/screenshot.png"
grim "$screenshot_path"
# Apply blur effect using ImageMagick
convert "$screenshot_path" -blur 0x8 "$screenshot_path"
# Lock the screen with the blurred screenshot
swaylock -f --image "$screenshot_path"
systemctl hibernate
# Clean up the temporary screenshot
rm "$screenshot_path"
