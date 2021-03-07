#!/bin/bash

rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

cp elk.repo /etc/yum.repos.d/

yum install --enablerepo=elasticsearch elasticsearch logstash kibana filebeat -y

cp elastic.yaml /etc/elasticsearch
cp logstash.yml /etc/logstash
cp kibana.yml /etc/kibana
cp filebeat.yml /etc/filebeat

systemctl enable elasticsearch.service
systemctl enable kibana.service
#systemctl enable logstash.service
#systemctl enable filebeat.service

systemctl start elasticsearch.service
systemctl start kibana.service
#systemctl start logstash.service
#systemctl start filebeat.service
