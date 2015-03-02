#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="kxradio"
radio_stream="http://icecast.omroep.nl/3fm-serioustalent-mp3"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
