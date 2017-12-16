#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="skyradio"
radio_stream="http://20103.live.streamtheworld.com/SKYRADIOAAC.aac"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
