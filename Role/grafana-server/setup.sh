#!/bin/bash
echo "creating Grafana and prometheus directories"
mkdir /opt/grafana /opt/prometheus /opt/prometheus/data
chmod 777 /opt/grafana /opt/prometheus
echo "directories created /opt/grafana & /opt/prometheus"
echo "moving prometheus.yml to /opt/prometheus"
cp Templates/prometheus.yml /opt/prometheus/
#echo "creating Docker swarm"
#docker swarm init
#echo "docker swarm created"
echo "starting Grafana + Prometheus host"
#docker stack deploy -c Docker/grafana_prometheus.yml Grafana_stack
docker-compose -f Docker/grafana_prometheus.yml up -d
echo "Grafana and Prometheus are now up!"
