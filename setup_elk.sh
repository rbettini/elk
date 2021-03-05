#!/bin/bash

rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

cp elk.repo /etc/yum.repos.d/

yum install --enablerepo=elk elasticsearch logstash kibana -y

cp elastic.yaml /etc/elasticsearch
cp logstash.yml /etc/logstash
cp kibana.yml /etc/logstash

systemctl enable elasticsearch.service
systemctl enable logstash.service
systemctl enable kibana.service

systemctl start elasticsearch.service
systemctl start logstash.service
systemctl start kibana.service
