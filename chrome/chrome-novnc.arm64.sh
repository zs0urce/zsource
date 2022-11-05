#!/bin/bash
export USER=nobody
chrome_window_size=$[$WIDTH+1],$[$HEIGHT+1]
chrome_parm="--test-type --window-size=$chrome_window_size --no-sandbox --disable-dev-shm-usage  --window-position=0,0 --user-data-dir=/config/google-chrome"
vnc_geometry=$WIDTH'x'$HEIGHT
vnc_config=/root/.vnc

[ ! -e '/config/google-chrome/First Run' ] && mkdir -p /config/google-chrome && touch '/config/google-chrome/First Run'
[ ! -e "$vnc_config" ] && mkdir -p $vnc_config
vncpasswd -f <<< $VNC_PASSWD > "$vnc_config/passwd"
chmod 600 $vnc_config/passwd
echo "while [ 1 ]; do /usr/bin/chromium $chrome_parm; done" > "$vnc_config/xstartup"
chmod +x $vnc_config/xstartup
vncserver -kill :1 1>/dev/null 2>&1
[ -e /tmp/.X11-unix ] && rm -rf /tmp/.X11-unix
[ -e /tmp/.X1-lock ] && rm -rf /tmp/.X1-lock
vncserver -name chrome-novnc -depth 24 -geometry $vnc_geometry :1
/opt/novnc/utils/novnc_proxy --vnc localhost:5901