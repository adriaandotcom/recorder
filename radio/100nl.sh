#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="100nl"
radio_stream="http://stream.100p.nl:8000/100pctnl.mp3"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
