#!/bin/bash

screenshot_path="/tmp/screenshot.png"
grim "$screenshot_path"

magick "$screenshot_path" -blur 0x8 "$screenshot_path"

swaylock --image "$screenshot_path"
rm "$screenshot_path"
