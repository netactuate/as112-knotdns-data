# AS112 Deployment Playbook
#

## AS112 KnotDNS Node Creation
We are currently setting up an AS112 cluster, and working on standing up monitoring and visualization of the DNS Server statistics.
Currently this playbook will install the DNS node in entirety and should be idempotent.


## requirements:
 - pip install naapi>=0.1.7 ansible>=2.8.0
 - ansible-galaxy collection install netactuate.compute


## Important Files:
 - hosts - Contains node hostname settings, location, and if its a BGP Enabled Node.
 - keys.pub - Contains 1 SSH key per line.
 - group_vars/all - Contains all the generic settings applied to all hosts.
 - > API Key for accessing the API
 - > SSH Keys for accessing the machines
 - > Plan - Server Size Setting - has to match a package type in our API
 - > OS - Operating System - has to match the available OS description in our API
 - > BGP Settings for Bird - This gets loaded via an ansible template.

## Execution:
### Run Each of the following playbooks in succession
 - ansible-playbook -i hosts main.yaml
### Create/Reconfigure Anycast Nodes
 - ansible-playbook -i hosts createnode.yaml
### Create/Reconfigure BGP Sessions/Bird
 - ansible-playbook -i hosts bgp.yaml
### Install Preconfigured KNOTDNS on the node
 - ansible-playbook -i hosts knotinstall.yaml


# Notice: This is currently a very basic playbook, I need to separate knotinstall into a few different roles, and do some cleanup on the processes
