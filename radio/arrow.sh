#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="arrow"
radio_stream="http://91.221.151.155:80/"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
