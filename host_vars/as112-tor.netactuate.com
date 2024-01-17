---
# file: host_vars/as112-tor.netactuate.com
ansible_ssh_host: 162.248.221.207
nodesetup:
    bgp_peers:
        IPv4:
        - 162.248.221.142
        IPv6:
        - 2607:f740:50::49c
        group_id: 3166
        localasn: '112'
        localpeerv4: 162.248.221.207
        localpeerv6: 2607:f740:50::336
        peerasn: '36236'
    hostname: as112-tor.netactuate.com
    id: 567044
    public_ipv4: 162.248.221.207
    public_ipv6: 2607:f740:50::336
    state: running
