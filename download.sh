#!/bin/bash
echo "start download merriam webster podcast: word of day"
base_url="http://assets.merriam-webster.com/mw/podcasts/wod/"
#if [ $# == 1 ]
#then
#	fileName="wd"$1".mp3"
#else
#	fileName="wd"$(date +%Y%m%d)".mp3"
#	for ((i=1; i<=6; i++))
#fi
for ((i=0; i<7; i++));
do
	fileName="wd"$(date +%Y%m%d --date="${i} days ago")".mp3"
	url=${base_url}${fileName}
	filePath="./podcast/"${fileName}
	if [ ! -f "${filePath}" ];
	then
		curl ${url} > ${filePath}
		echo "successfully download podcast to "${filePath}
	fi
done
