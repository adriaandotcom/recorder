#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="100nl"
radio_stream="https://19013.live.streamtheworld.com/100PNL_AAC.aac"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
