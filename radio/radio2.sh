#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="radio2"
radio_stream="http://icecast.omroep.nl:80/radio2-sb-mp3"
output_bitrate="96k"

source /root/cronjobs/tools/record.sh
