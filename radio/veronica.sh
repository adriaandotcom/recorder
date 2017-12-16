#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="veronica"
radio_stream="http://playerservices.streamtheworld.com/api/livestream-redirect/VERONICA.mp3"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
