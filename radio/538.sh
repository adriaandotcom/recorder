#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="538"
radio_stream="http://82.201.100.9:8000/radio538"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
