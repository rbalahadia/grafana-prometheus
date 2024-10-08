# Grafana-Prometheus
</h2>_This is an automated way of creating a grafana container alongside prometheus_</h2><br>
<b>Requirements:</b><br>
- Ansible<br>
- Docker<br>
- docker-compose:1.17.1<br>
- Linux<br>
<h3>How to run it in your local/server:</h3>
1. Clone the latest version <br>
2. Update Docker/grafana_prometheus.yml for default username and password of Grafana.<br>
3. Install the Grafana + Prometheus server  and node_exporter in local machine.<br>
  <i> command: ansible-playbook -i Inventory/hosts Grafana-prometheus.yml --tag local</i><br>
4. Install node-exporter to your target servers.<br>
  <i> command: ansible-playbook -i Inventory/targets --limit all-targets Grafana-prometheus.yml --tag target_instance</i><br>
5. Check localhost:3000 to access the Grafana console via browser.<br>
6. Check localhost:9090 to access prometheus console via browser.<br>
7. Access localhost:9100/metrics to see if node_exporter is generating metrics via browser.<br>
8. Prometheus datasource will be automatically added to the sources.<br>

![image](https://github.com/user-attachments/assets/6b426a4a-c008-43da-ae19-83b93cd9bc67)

9. A dashboard will be automatically created based on https://grafana.com/grafana/dashboards/1860-node-exporter-full/ dashboard.<br>

![image](https://github.com/user-attachments/assets/bc988770-b4fe-4962-bd47-580ece6b20a5)




If you're having issues running this script, please raise an Issue in this repository.

Created by **rbalahadia**
Thank you
