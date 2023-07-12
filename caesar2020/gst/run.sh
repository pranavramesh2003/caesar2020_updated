#!/bin/bash
gst-launch-1.0 videomixer name=mix ! nvvidconv ! omxh265enc control-rate=2 bitrate=2000 ! 'video/x-h265, stream-format=(string)byte-stream' ! h265parse ! rtph265pay mtu=1400 ! udpsink host=192.168.0.4 port=5001 sync=false async=false v4l2src device='/dev/video3' ! video/x-raw, width=640, height=480 ! videobox border-alpha=0 top=0 left=-640 ! mix. v4l2src device='/dev/video1' ! video/x-raw, width=640, height=480 ! videobox border-alpha=0 top=0 left=0 ! mix.