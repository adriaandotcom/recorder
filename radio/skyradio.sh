#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="skyradio"
radio_stream="http://playerservices.streamtheworld.com/api/livestream-redirect/SKYRADIO.mp3"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
