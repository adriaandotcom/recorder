#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="538"
radio_stream="http://vip-icecast.538.lw.triple-it.nl:80/RADIO538_MP3"

output_bitrate="128k"

source /root/cronjobs/tools/record.sh
