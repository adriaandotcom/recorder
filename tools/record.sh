mkdir -p /root/recordings/$radio_name
cd /root/recordings/$radio_name

# record for one hour
timestamp=`date +%s`
params=${params:-""}
map=${map:-"0:0"}
avconv -i "$radio_stream" -t 3600 -c:a libmp3lame -b:a $output_bitrate $params -map $map -f segment -segment_time 300 -segment_format mp3 "${timestamp}_%02d.mp3"
