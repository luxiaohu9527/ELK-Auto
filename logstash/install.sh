#!/bin/sh
if [ ! -e /tmp/logstash-2.3.3-1.noarch.rpm ];then
    echo "the logstash rpm not exist"
    exit 1
fi
rpm -ivh /tmp/logstash-2.3.3-1.noarch.rpm
if [ $? -lt 2 ];then
    echo "MW_SUCCESS"
fi
sed -i 's/LS_USER=logstash/LS_USER=root/' /etc/init.d/logstash
sed -i 's/LS_GROUP=logstash/LS_USER=root/' /etc/init.d/logstash