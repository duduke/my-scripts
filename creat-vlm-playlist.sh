#!/bin/bash

echo "# VLC media player VLM command batch" > ~/playlist.conf
echo "# http://www.videolan.org/vlc/" >> ~/playlist.conf
find /media/tower-2000-2/Kids-TV/ -type f | sed 's/^/setup channel3 input "/' | sed 's/.*/&"/' | shuf >> ~/playlist.conf

 nohup cvlc -I telnet --telnet-password password  --file-logging --log-verbose=1 --logfile="vlc.log" --vlm-conf vlm.conf & echo $! > vlc.pid
