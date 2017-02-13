#!/bin/bash
echo "#EXTINF:0,Kids Movies,tvg-logo="http://mediasrv.lan/KidsCartoonMovies_logo.jpg"" > /var/www/html/kids-movies.m3u8
tree /media/tower-2000-2/Kids-Movies -H http://mediasrv.lan/webdav/tower-2000-2/Kids-Movies -t -r | grep 'mp4\|mkv\|avi\|flv' | cut -d'"' -f2 | shuf >> /var/www/html/kids-movies.m3u8

echo "#EXTINF:0,Kids Movies,tvg-logo="http://mediasrv.lan/KidsTV_logo.jpg"" > /var/www/html/kids-tv.m3u8
tree /media/tower-2000-2/Kids-TV -H http://mediasrv.lan/webdav/tower-2000-2/Kids-TV -t -r | grep 'mp4\|mkv\|avi\|flv' | cut -d'"' -f2 | shuf >> /var/www/html/kids-tv.m3u8

