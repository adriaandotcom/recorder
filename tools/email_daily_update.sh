#!/usr/bin/env bash
set -e            # fail fast
set -o pipefail   # don't ignore exit codes when piping output
set -x          # enable debugging

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

if [ "$disk_usage" -gt "50" ] || [ "$mp3_files_couter" -gt "100" ] || [ "$usage_price" -gt "10" ] ; then
  alert=true
else
  alert=false
fi

echo -e "alert: $alert"

if [ -t 0 ]; then
  # do this when running from terminal
  echo -e "$message"
else
  # this is a cronjob
  if [ "$alert" = true ] ; then
    echo -e "$message" | mail -s "Daily recorder report of $day" mail@byadriaan.nl
  fi
fi
