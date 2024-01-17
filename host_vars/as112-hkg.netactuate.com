---
# file: host_vars/as112-hkg.netactuate.com
ansible_ssh_host: 205.147.105.66
nodesetup:
    bgp_peers:
        IPv4:
        - 205.147.105.5
        IPv6:
        - 2607:f740:90::fa0
        group_id: 3166
        localasn: '112'
        localpeerv4: 205.147.105.66
        localpeerv6: 2607:f740:90::e17
        peerasn: '36236'
    hostname: as112-hkg.netactuate.com
    id: 567022
    public_ipv4: 205.147.105.66
    public_ipv6: 2607:f740:90::e17
    state: running
