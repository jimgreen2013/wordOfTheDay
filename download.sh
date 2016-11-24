#!/bin/bash
echo "start download merriam webster podcast: word of day"
url="http://assets.merriam-webster.com/mw/podcasts/wod/"
fileName="wd"$(date +%Y%m%d)".mp3"
url=${url}${fileName}
filePath="./podcast/"${fileName}
curl ${url} > ${filePath}
echo "successfully download podcast"
