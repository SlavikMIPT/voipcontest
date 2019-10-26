#!/bin/bash
pulseaudio --start -D
pactl load-module module-null-sink channels=1 rate=48000 sink_name=callout sink_properties=device.description="callout"
pactl load-module module-pipe-source channels=1 rate=48000 source_name=callmic file=/home/callmic.pipe
pacmd list-sinks | grep -e 'name:' -e 'index' -e device.string
pacmd list-sources | grep -e 'name:' -e 'index' -e device.string
nohup parecord --channels 1 --rate 48000 -d callout.monitor /home/callout.wav &
sleep 1
tgvoipcall $1 $2 -k $3 -i callmic -o callout -c $6 -r $7