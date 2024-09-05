# grafana-prometheus
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
4. Check localhost:3000 to access the Grafana console via browser.<br>
5. Check localhost:9090 to access prometheus console via browser.<br>
6. Access localhost:9100/metrics to see if node_exporter is generating metrics via browser.<br>
7. Prometheus datasource will be automatically added to the sources.<br>
![image](https://github.com/user-attachments/assets/c52c8805-b5ba-4696-b180-cada61104134) 
<br>
8. A dashboard will be automatically created based on https://grafana.com/grafana/dashboards/1860-node-exporter-full/ dashboard.<br>
![image](https://github.com/user-attachments/assets/2826fc03-b074-4578-bb2e-c01796049822)



_Script for installing node_exporter to desired servers.. to follow._


If you're having issues running this script, please raise an Issue in this repository.

Created by **rbalahadia**
Thank you
