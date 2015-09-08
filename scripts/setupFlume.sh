#!/usr/bin/env bash

echo "Setting up flume - Start"
mkdir -p /tmp/data_pipeline_demo/input

cp /etc/flume/conf/flume.conf /etc/flume/conf/flume.conf.bak
cp /app/hadoop-data-pipeline/flume/flume.conf /etc/flume/conf/flume.conf
echo "Setting up flume - Done"

echo "Starting the Flume Agent - Start"
cd /var/log/flume
/usr/hdp/current/flume-server/etc/rc.d/init.d/flume-agent restart
# nohup flume-ng agent -c /etc/flume/conf -f /etc/flume/conf/flume.conf -n sandbox &
echo ""
echo ""
cd
echo "Starting the Flume Agent - Done"
