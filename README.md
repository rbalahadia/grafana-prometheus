# grafana-prometheus
</h2>This is an automated way of creating a grafana container alongside prometheus</h2><br>
Requirements:
- Ansible
- Docker
- docker-compose
- Linux
<h3>How to run it in your local/server:</h3>
1. Clone the latest version 
2. Update Docker/grafana_prometheus.yml for default username and password of Grafana.
3. Install the Grafana + Prometheus server  and node_exporter in local machine.<br>
   command: ansible-playbook -i hosts Grafana-prometheus.yml --tag local
4. Check localhost:3000 to access the Grafana console via browser.
5. Check localhost:9090 to access prometheus console via browser.
6. Access localhost:9100/metrics to see if node_exporter is generating metrics via browser.

