#!/bin/sh

mencoder $1 -oac lavc -of mpeg -mpegopts format=mpeg2:muxrate=250000:vbuf_size=1194:abuf_size=64 -ovc lavc -channels 2 -lavdopts debug=0:threads=2 -lavcopts autoaspect=1:vcodec=mpeg2video:acodec=ac3:abitrate=256:keyint=25:vqscale=1:vqmin=2 -ofps 25 -mc 0.1 -af lavcresample=48000 -srate 48000 -vf expand=:::::16/9 -o $1.mpg

