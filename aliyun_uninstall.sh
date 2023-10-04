#!/bin/bash
wget "http://update2.aegis.aliyun.com/download/uninstall.sh" && chmod +x uninstall.sh && ./uninstall.sh
/usr/local/share/assist-daemon/assist_daemon --stop
/usr/local/share/assist-daemon/assist_daemon --delete
rm -rf /usr/local/share/assist-daemon
dpkg -l | grep aliyun-assist | awk '{print $2}' | xargs dpkg -P
