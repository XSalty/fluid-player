#!/bin/sh

VERSION=`date +%s`
sed -i "s/__VERSION__/$VERSION/g" ./test/preview.html
cp ./test/preview.html /mnt/img1/home/api/media/xplayer/index.html
mkdir /mnt/img1/home/api/media/xplayer/static
cp -r ./test/static/vpaid_linear.xml /mnt/img1/home/api/media/xplayer/static/vpaid_linear.xml
mkdir /mnt/img1/home/api/media/xplayer/src
cp ./dist/fluidplayer.min.js /mnt/img1/home/api/media/xplayer/src
find ./dist -name '*hlsjs*.js' -exec cp "{}" /mnt/img1/home/api/media/xplayer/src/hlsjs.min.js \;
find ./dist -name 'webvtt*.js' -exec cp "{}" /mnt/img1/home/api/media/xplayer/src/webvtt.min.js \;

echo "Done"
