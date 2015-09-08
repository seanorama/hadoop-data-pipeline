#!/usr/bin/env bash


su - hdfs -c "hdfs dfs -chmod 777 /user/admin/data_pipeline_demo/data"

rm -rf /tmp/data_pipeline_demo/input/SV-sample*xml
sudo chmod 666 /app/hadoop-data-pipeline/input_data/*.xml
cp -a /app/hadoop-data-pipeline/input_data/SV-sample-1.xml /tmp/data_pipeline_demo/input/
#cp /app/hadoop-data-pipeline/input_data/SV-sample-2.xml /tmp/data_pipeline_demo/input/
#cp /app/hadoop-data-pipeline/input_data/SV-sample-3.xml /tmp/data_pipeline_demo/input/

