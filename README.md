# grafana-prometheus
</h2>This is an automated way of creating a grafana container alongside prometheus</h2><br>
<b>Requirements:</b><br>
- Ansible<br>
- Docker<br>
- docker-compose<br>
- Linux<br>
<h3>How to run it in your local/server:</h3><br>
1. Clone the latest version <br>
2. Update Docker/grafana_prometheus.yml for default username and password of Grafana.<br>
3. Install the Grafana + Prometheus server  and node_exporter in local machine.<br>
   command: ansible-playbook -i hosts Grafana-prometheus.yml --tag local<br>
4. Check localhost:3000 to access the Grafana console via browser.<br>
5. Check localhost:9090 to access prometheus console via browser.<br>
6. Access localhost:9100/metrics to see if node_exporter is generating metrics via browser.<br>

