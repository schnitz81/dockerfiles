#!/bin/bash

# cleanup old X-session
rm -rf /tmp/.X*

export DISPLAY=:1
Xvfb :1 -screen 0 1600x900x16 &
echo "xterm*background: black" > /root/.Xresources && echo "xterm*foreground: lightgray" >> /root/.Xresources
echo "xrdb /root/.Xresources" >> /root/.bashrc
sleep 5
openbox-session&
(echo "xterm*background: black" > /root/.Xresources && \
 echo "xterm*foreground: lightgray" >> /root/.Xresources && \
 sleep 5
 xrdb /root/.Xresources \
)&
x11vnc -display :1 -passwd password -listen localhost -xkb -ncache 10 -ncache_cr -forever &
cd /root/noVNC &&
if [ ! -e index.html ]; then
	ln -s vnc_auto.html index.html
fi
./utils/launch.sh --vnc localhost:5900

