#!/bin/bash
if [$# -eq 0]
then
  echo "$0; missing Grafana password argument"
  exit 1
else
echo "creating Grafana and prometheus directories"
mkdir /opt/grafana /opt/prometheus /opt/prometheus/data
echo "directories created /opt/grafana & /opt/prometheus"
echo "moving prometheus.yml to /opt/prometheus"
cp ../templates/prometheus.yml /opt/prometheus/
echo "creating Docker swarm"
docker swarm init
echo "docker swarm created"
echo "creating password secret based on argument"
echo $1 | docker secret create grafana_password -
echo "starting Grafana + Prometheus host"
docker stack deploy -c ../Docker/grafana_prometheus.yml Grafana_stack
#docker-compose -f ../Docker/grafana_prometheus.yml up -d
echo "Grafana and Prometheus are now up!"
fi
