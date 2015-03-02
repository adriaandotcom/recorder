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
        amazon_filename=$timestamp
    else
        amazon_filename=$(($timestamp + $sequence_number * 5 * 60))
    fi

    # echo "file: $f; timestamp: $timestamp; seq: $sequence_number; amazon_filename: $amazon_filename"

    amazon_url="recordings.watiseropderadio.nl/radio/$radioname/$amazon_filename.mp3"

    s3cmd put $f "s3://$amazon_url"
    rm $f

    # data="timestamp=$timestamp&url=https://$amazon_url"
    # curl -X POST -d "$data" http://requestb.in/ynnqhuyn

done

