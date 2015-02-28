#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="3fm"
radio_stream="http://icecast.omroep.nl/3fm-sb-mp3"
output_bitrate="96k"

source /root/cronjobs/tools/record.sh
