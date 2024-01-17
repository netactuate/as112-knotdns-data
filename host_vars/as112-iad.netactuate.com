---
# file: host_vars/as112-iad.netactuate.com
ansible_ssh_host: 104.225.11.28
nodesetup:
    bgp_peers:
        IPv4:
        - 104.225.11.251
        IPv6:
        - 2607:fc50:3000:2::2ea
        group_id: 3166
        localasn: '112'
        localpeerv4: 104.225.11.28
        localpeerv6: 2607:fc50:3000:2::334
        peerasn: '36236'
    hostname: as112-iad.netactuate.com
    id: 567045
    public_ipv4: 104.225.11.28
    public_ipv6: 2607:fc50:3000:2::334
    state: running
