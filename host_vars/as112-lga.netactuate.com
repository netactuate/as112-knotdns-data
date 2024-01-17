---
# file: host_vars/as112-lga.netactuate.com
ansible_ssh_host: 209.177.145.223
nodesetup:
    bgp_peers:
        IPv4:
        - 209.177.145.5
        IPv6:
        - 2607:f740:f::100
        group_id: 3166
        localasn: '112'
        localpeerv4: 209.177.145.223
        localpeerv6: 2607:f740:f::53c
        peerasn: '36236'
    hostname: as112-lga.netactuate.com
    id: 567019
    public_ipv4: 209.177.145.223
    public_ipv6: 2607:f740:f::53c
    state: running
