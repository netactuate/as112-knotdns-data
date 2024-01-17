---
# file: host_vars/as112-phx.netactuate.com
ansible_ssh_host: 104.225.103.76
nodesetup:
    bgp_peers:
        IPv4:
        - 104.225.103.186
        IPv6:
        - 2607:f740:15:20::295
        group_id: 3166
        localasn: '112'
        localpeerv4: 104.225.103.76
        localpeerv6: 2607:f740:15:20::27
        peerasn: '36236'
    hostname: as112-phx.netactuate.com
    id: 567012
    public_ipv4: 104.225.103.76
    public_ipv6: 2607:f740:15:20::27
    state: running
