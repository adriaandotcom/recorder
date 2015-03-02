#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="beyoungfm"
radio_stream="http://streaming.radionomy.com/BeYoungFM"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
