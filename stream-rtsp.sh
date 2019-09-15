#!/bin/bash
raspivid -o - -t 0 -w 1920 -h 1080 -fps 30 -g 1 -b 250000 -hf -vf | cvlc -vv stream:///dev/stdin --sout '#rtp{access=udp,sdp="rtsp://:8554/stream.sdp"}' :demux=h264
