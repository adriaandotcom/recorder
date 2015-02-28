#!/usr/bin/env bash

usage_raw=`s3cmd du s3://recordings.watiseropderadio.nl`
usage_bytes="${usage_raw% *}"
usage_readable=`numfmt --to=iec-i --suffix=B --padding=7 $usage_bytes`

day=`date "+%d %b"`
disk_usage=`df -hl | awk '/^\/dev\/vda1/ { sum+=$5 } END { print sum }'`
mp3_files_couter=`find /root/recordings/ -name "*.mp3" | wc -l`

message="Amazon AWS\nS3 storage: $usage_readable\n\nDitial Ocean droplet\nDisk usage: $disk_usage%\nMP3 files: $mp3_files_couter"

echo -e "$message"

# echo -e "$message" | mail -s "Daily recorder report of $day" mail@byadriaan.nl
