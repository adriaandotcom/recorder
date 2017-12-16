#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="slamfm"
radio_stream="https://hls.slam.nl/streaming/hls/SLAM%21/playlist.m3u8"
params="-vn" # Skip video completely
map="0:1" # Get second stream (which is audio)
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
