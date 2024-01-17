---
# file: host_vars/as112-mia.netactuate.com
ansible_ssh_host: 192.73.243.222
nodesetup:
    bgp_peers:
        IPv4:
        - 192.73.243.253
        IPv6:
        - 2607:f740:17::fa0
        group_id: 3166
        localasn: '112'
        localpeerv4: 192.73.243.222
        localpeerv6: 2607:f740:17::60b
        peerasn: '36236'
    hostname: as112-mia.netactuate.com
    id: 567023
    public_ipv4: 192.73.243.222
    public_ipv6: 2607:f740:17::60b
    state: running
