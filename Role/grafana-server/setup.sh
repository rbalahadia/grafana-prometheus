#!/bin/bash
echo "creating Grafana and prometheus directories"
mkdir /opt/grafana /opt/prometheus /opt/prometheus/data /opt/grafana/provisioning /opt/grafana/data /opt/grafana/provisioning/dashboards /opt/grafana/provisioning/datasources
chmod 777 /opt/grafana /opt/prometheus --recursive
echo "directories created /opt/grafana & /opt/prometheus"
echo "moving all yaml files"
cp Templates/Prometheus/prometheus.yml /opt/prometheus/
cp Templates/Grafana/Dashboard.yml /opt/grafana/provisioning/dashboards/
cp Templates/Grafana/Datasources.yml /opt/grafana/provisioning/datasources/
#echo "creating Docker swarm"
#docker swarm init
#echo "docker swarm created"
echo "starting Grafana + Prometheus host"
#docker stack deploy -c Docker/grafana_prometheus.yml Grafana_stack
docker-compose -f Docker/grafana_prometheus.yml up -d
echo "Grafana and Prometheus are now up!"
