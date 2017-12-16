#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="slamfm"
radio_stream="https://hls.slam.nl/streaming/hls/SLAM\!/playlist.m3u8"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
