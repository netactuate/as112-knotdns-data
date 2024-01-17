---
# file: host_vars/as112-sjc.netactuate.com
ansible_ssh_host: 208.111.39.204
nodesetup:
    bgp_peers:
        IPv4:
        - 208.111.39.7
        IPv6:
        - 2607:f740:0:3f::5
        group_id: 3166
        localasn: '112'
        localpeerv4: 208.111.39.204
        localpeerv6: 2607:f740:0:3f::7aa
        peerasn: '36236'
    hostname: as112-sjc.netactuate.com
    id: 567015
    public_ipv4: 208.111.39.204
    public_ipv6: 2607:f740:0:3f::7aa
    state: running
