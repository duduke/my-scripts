#!/bin/bash

echo "# VLC media player VLM command batch" > /root/kids-movies.vlm
echo "# http://www.videolan.org/vlc/" >> /root/kids-movies.vlm
# echo "new Kids-Movies vod enabled" >> /root/kids-movies.vlm
find /media/tower-2000-2/Kids-TV/ -type f | sed 's/^/setup Kids-Movies input "/' | sed 's/.*/&"/' >> /root/kids-movies.vlm
# echo "setup Kids-Movies option file-caching=300" >> /root/kids-movies.vlm
