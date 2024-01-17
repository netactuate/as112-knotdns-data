---
# file: host_vars/as112-lax.netactuate.com
ansible_ssh_host: 192.73.244.47
nodesetup:
    bgp_peers:
        IPv4:
        - 192.73.244.5
        IPv6:
        - 2607:f740:c::f52
        group_id: 3166
        localasn: '112'
        localpeerv4: 192.73.244.47
        localpeerv6: 2607:f740:c::a4d
        peerasn: '36236'
    hostname: as112-lax.netactuate.com
    id: 567016
    public_ipv4: 192.73.244.47
    public_ipv6: 2607:f740:c::a4d
    state: running
