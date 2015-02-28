#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="qmusic"
radio_stream="http://icecast-qmusic.cdp.triple-it.nl/Qmusic_nl_live_96.mp3"
output_bitrate="96k"

source /root/cronjobs/tools/record.sh
