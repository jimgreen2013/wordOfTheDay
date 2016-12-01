#!/bin/bash
echo "start download merriam webster podcast: word of day"
url="http://assets.merriam-webster.com/mw/podcasts/wod/"
if [ $# == 1 ]
then
	fileName="wd"$1".mp3"
else
	fileName="wd"$(date +%Y%m%d)".mp3"
fi
url=${url}${fileName}
filePath="./podcast/"${fileName}
curl ${url} > ${filePath}
echo "successfully download podcast to "${filePath}
