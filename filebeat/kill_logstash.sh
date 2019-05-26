#!/bin/bash
source /etc/profile
echo "***************************************"
echo "此脚本由路小虎编写，有任何疑问请联系!!!"
echo "***************************************"
echo "此脚本用于停止logstash采集器使用"
echo "                          "

###############获取网段下可用IP地址##########################

PID1=`cat /var/run/logstash.pid`
MINUTE=`date "+%Y-%m-%d-%H:%M"`

if [ "$PID1" -eq 0 ];then

    echo "$MINUTE"-logstash-未启动 >> /tmp/kill_logstash.log
else

    kill -9 $PID1
    echo "$MINUTE"-kill-pid-停成功 >> /tmp/kill_logstash.log

fi
