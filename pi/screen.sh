#!/bin/bash
#systemd service, change id
ffmpeg -y -f x11grab -framerate 1 -video_size 1920x1080 -i :0.0 -vframes 1 1.png
curl -k -i -f -F "data=@1.png" -F "id=1" https://www.example.com/
