#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="538"
radio_stream="http://playerservices.streamtheworld.com/api/livestream-redirect/RADIO538.mp3"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
