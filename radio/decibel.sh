#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="decibel"
radio_stream="http://stream.nlradio.nl/decibelzh"

output_bitrate="128k"

source /root/cronjobs/tools/record.sh
