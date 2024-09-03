#!/bin/bash
mkdir /opt/node-exporter
cd /opt/node-exporter
echo "Downloading node-exporter..."
wget https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz
echo "unzipping node-exporter..."
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
echo "creating node-exporter service...."
echo "[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

[Service]
ExecStart=/etc/node_exporter/node_exporter
Restart=always

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/node_exporter.service
echo "reloading services..."
systemctl daemon-reload
echo "adding node-exporter to startup service"
systemctl enable node_exporter
echo "starting node-exporter"
systemctl restart node_exporter
