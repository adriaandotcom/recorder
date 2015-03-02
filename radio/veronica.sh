#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="veronica"
radio_stream="http://8593.live.streamtheworld.com:80/VERONICA_SC"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
