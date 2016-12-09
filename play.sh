#!/bin/bash
if [ $# == 1 ]
then
	fileName="wd"$1".mp3"
else
	fileName="wd"$(date +%Y%m%d)".mp3"
fi
filePath="./podcast/"${fileName}
echo "will play "${filePath}
mplayer ${filePath}
