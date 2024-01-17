---
# file: host_vars/as112-den.netactuate.com
ansible_ssh_host: 192.73.242.188
nodesetup:
    bgp_peers:
        IPv4:
        - 192.73.242.253
        IPv6:
        - 2607:f740:16::5
        group_id: 3166
        localasn: '112'
        localpeerv4: 192.73.242.188
        localpeerv6: 2607:f740:16::b2a
        peerasn: '36236'
    hostname: as112-den.netactuate.com
    id: 567011
    public_ipv4: 192.73.242.188
    public_ipv6: 2607:f740:16::b2a
    state: running
