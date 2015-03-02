#!/usr/bin/env bash

# amazon
usage_raw=`s3cmd du s3://recordings.watiseropderadio.nl`
usage_bytes="${usage_raw% *}"
usage_readable=`numfmt --to=iec-i --suffix=B --padding=7 $usage_bytes`
usage_price=`bc <<< $usage_bytes/1000000000*0.03`

# digital ocean
disk_usage=`df -hl | awk '/^\/dev\/vda1/ { sum+=$5 } END { print sum }'`
mp3_files_couter=`find /root/recordings/ -name "*.mp3" | wc -l`

# other
day=`date "+%d %b"`

message="Amazon AWS\nS3 storage: $usage_readable\nS3 price: $usage_price USD\n\nDitial Ocean droplet\nDisk usage: $disk_usage%\nMP3 files: $mp3_files_couter"

if [ -t 0 ]; then
  # do this when running from terminal
  echo -e "$message"
else
  # this is a cronjob
  echo -e "$message" | mail -s "Daily recorder report of $day" mail@byadriaan.nl
fi
