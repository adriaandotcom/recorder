#!/usr/bin/env bash

if ! [ -t 0 ]; then
  # this is a cronjob
  sleep 2
fi

for f in $(find /root/recordings -type f -name *.mp3); do

    # skip files in use
    if [[ `lsof $f` ]]; then
        continue
    fi

    # define and get the variables
    radioname=$(basename $(dirname "$f"))
    file=$(basename "$f")
    filename=$(echo $file | cut -f1 -d".")
    timestamp="${filename%_*}"
    sequence="${filename#*_}"
    sequence_number=$(echo $sequence | sed 's/^0*//')

    # calculate the start time
    if [ -z "$sequence_number" ]; then
        timestamp_start=$timestamp
    else
        timestamp_start=$(($timestamp + $sequence_number * 5 * 60))
    fi

    # echo "file: $f; timestamp: $timestamp; seq: $sequence_number; timestamp_start: $timestamp_start"

    amazon_url="recordings.watiseropderadio.nl/radio/$radioname/$timestamp_start.mp3"

    s3cmd put $f "s3://$amazon_url"
    rm $f

    data="radio_slug=$radioname&timestamp=$timestamp_start&url=https://$amazon_url"
    curl -X POST -d "$data" http://watiseropderadio.nl/add/recorder

done

