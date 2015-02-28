#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="skyradio"
radio_stream="http://8623.live.streamtheworld.com:80/SKYRADIOAAC_SC"
output_bitrate="64k"

source /root/cronjobs/tools/record.sh
