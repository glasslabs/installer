#!/bin/sh
xset -dpms
xset s off
xset s noblank

export $(xrandr -q | awk -F, '/current/ {print $2}'| awk '{print "SCREEN_WIDTH="$2" SCREEN_HEIGHT="$4}')

unclutter &
glass run -s /home/glass/looking-glass/secrets.yaml -c /home/glass/looking-glass/config.yaml -m /home/glass/looking-glass/modules > /home/glass/looking-glass/log 2>&1
