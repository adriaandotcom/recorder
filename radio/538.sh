#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="538"
radio_stream="https://20073.live.streamtheworld.com/RADIO538AAC.aac"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
