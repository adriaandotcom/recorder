#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="decibel"
radio_stream="http://stream-nederland.decibel.nl:8070"

output_bitrate="128k"

source /root/cronjobs/tools/record.sh
