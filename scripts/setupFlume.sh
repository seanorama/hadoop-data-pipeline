#!/usr/bin/env bash

echo "Setting up flume - Start"
mkdir -p /tmp/data_pipeline_demo/input
chmod 777 /tmp/data_pipeline_demo/input
chmod 777 /app/hadoop-data-pipeline/input_data
chmod 666 /app/hadoop-data-pipeline/input_data/*.xml

cp /etc/flume/conf/flume.conf /etc/flume/conf/flume.conf.bak
cp /app/hadoop-data-pipeline/flume/flume.conf /etc/flume/conf/flume.conf
echo "Setting up flume - Done"

echo "Starting the Flume Agent - Start"
cd /var/log/flume
/usr/hdp/current/flume-server/etc/rc.d/init.d/flume-agent stop
ps aux|grep ^flume  | awk '{print $2}' | sudo xargs kill
/usr/hdp/current/flume-server/etc/rc.d/init.d/flume-agent start
# nohup flume-ng agent -c /etc/flume/conf -f /etc/flume/conf/flume.conf -n sandbox &
echo ""
echo ""
cd
echo "Starting the Flume Agent - Done"
