#!/usr/bin/env bash

source /root/cronjobs/tools/init.sh

radio_name="slamfm"
radio_stream="http://playerservices.streamtheworld.com/api/livestream-redirect/SLAM_MP3.mp3"
output_bitrate="128k"

source /root/cronjobs/tools/record.sh
