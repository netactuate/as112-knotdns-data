---
# file: host_vars/as112-yul.netactuate.com
ansible_ssh_host: 104.225.25.34
nodesetup:
    bgp_peers:
        IPv4:
        - 104.225.25.68
        IPv6:
        - 2607:f740:74:1::256
        group_id: 3166
        localasn: '112'
        localpeerv4: 104.225.25.34
        localpeerv6: 2607:f740:74:1::e6
        peerasn: '36236'
    hostname: as112-yul.netactuate.com
    id: 567039
    public_ipv4: 104.225.25.34
    public_ipv6: 2607:f740:74:1::e6
    state: running
