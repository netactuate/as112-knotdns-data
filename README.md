# AS112 NetActuate Anycast Deployment Playbook
#

## AS112 KnotDNS Node Creation
The following playbooks and configurations are a standard automated install of the following services:
 - NetActuate Node Creation with BGP Session automation
 - KnotDNS configured for AS112 zones and Anycasted IPs
 - Telegraf agent for statistics collection


## requirements:
For Netactuate node creation playbooks:
 - pip install naapi>=0.1.7 ansible>=2.8.0
 - ansible-galaxy collection install netactuate.compute
InfluxDB2/Grafana environment established

## Important Files:
NetActuate Nodes:
 - hosts - Contains node hostname settings, location, and if its a BGP Enabled Node.
 - keys.pub - Contains 1 SSH key per line.
 - group_vars/all - Contains all the generic settings applied to all hosts for Netactuate Node Creation
 - > API Key for accessing the API
 - > SSH Keys for accessing the machines
 - > Plan - Server Size Setting - has to match a package type in our API
 - > OS - Operating System - has to match the available OS description in our API
 - > BGP Settings for Bird - This gets loaded via an ansible template.
KnotDNS/Telegraf Install:
 - All Relevant config files and AS112 Zones Files are in templates/
 - Variables for the telegraf/influx connection are set as 'vars' in knotinstall.yaml

## Execution:
### Run Each of the following playbooks in succession
 - ansible-playbook -i hosts main.yaml
### Create/Reconfigure Anycast Nodes
 - ansible-playbook -i hosts createnode.yaml
### Create/Reconfigure BGP Sessions/Bird
 - ansible-playbook -i hosts bgp.yaml
### Install KNOTDNS on the node
 - ansible-playbook -i hosts knotinstall.yaml


## Grafana Dashboards:
- KnotDNS Global Stats: grafana_dashboards/knotdns_overview.json
- KnotDNS Regional QPS: grafana_dashboards/knotdns_region.json
- Knot/Server Resource Top5: grafana_dashboards/knotdns_top5.json
- Server hardware monitor:  grafana_dashboards/server_hardware.json