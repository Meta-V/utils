#!/bin/bash
/usr/local/qcloud/monitor/barad/admin/uninstall.sh
/usr/local/qcloud/stargate/admin/uninstall.sh
/usr/local/qcloud/YunJing/uninst.sh
systemctl stop tat_agent.service
systemctl disable tat_agent.service
# Removed "/etc/systemd/system/multi-user.target.wants/tat_agent.service".
rm -rf /usr/local/qcloud