#!/bin/bash

echo "# VLC media player VLM command batch" > ~/kids-tv.conf
echo "# http://www.videolan.org/vlc/" >> ~/kids-tv.conf
#echo "new Kids-Movies vod enabled" >> ~/kids-tv.conf
find /media/tower-2000-2/Kids-TV/ -type f -name \*.*4* | sed 's/^/setup kids-tv input "/' | sed 's/.*/&"/' >> ~/kids-tv.conf

echo "# VLC media player VLM command batch" > ~/kids-movies.conf
echo "# http://www.videolan.org/vlc/" >> ~/kids-movies.conf
#echo "new Kids-Movies vod enabled" >> ~/kids-movies.conf
find /media/tower-2000-2/Kids-Movies/ -type f -name \*.*m* | sed 's/^/setup kids-movies input "/' | sed 's/.*/&"/' >> ~/kids-movies.conf

nohup cvlc -I telnet --telnet-password nukeit  --file-logging --log-verbose=1 --logfile="vlc.log" --vlm-conf vlm.conf & echo $! > vlc.pid
