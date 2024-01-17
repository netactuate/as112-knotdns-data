---
# file: host_vars/as112-sea.netactuate.com
ansible_ssh_host: 192.73.240.173
nodesetup:
    bgp_peers:
        IPv4:
        - 192.73.240.254
        IPv6:
        - 2607:f740:14::fa1
        group_id: 3166
        localasn: '112'
        localpeerv4: 192.73.240.173
        localpeerv6: 2607:f740:14::671
        peerasn: '36236'
    hostname: as112-sea.netactuate.com
    id: 567024
    public_ipv4: 192.73.240.173
    public_ipv6: 2607:f740:14::671
    state: running
