#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 /path/to/the/image.jpg"
    exit 1
fi


WALLPAPER_PATH=$(realpath "$1")

echo "changing background to: $WALLPAPER_PATH"


plasma-apply-wallpaperimage "$WALLPAPER_PATH"

echo "updated wallpaper..."


matugen image --mode dark -t scheme-tonal-spot --prefer saturation "$WALLPAPER_PATH"


plasma-apply-colorscheme BreezeDark > /dev/null
plasma-apply-colorscheme Matugen


konsoleprofile colors=Matugen &>/dev/null


kill -SIGUSR1 $(pgrep -x kitty) &>/dev/null

echo "¡Colors and Wallpaper Applied!"
