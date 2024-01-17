---
# file: host_vars/as112-maa.netactuate.com
ansible_ssh_host: 103.6.87.249
nodesetup:
    bgp_peers:
        IPv4:
        - 103.6.87.254
        IPv6:
        - 2403:2500:4000::fa1
        group_id: 3166
        localasn: '112'
        localpeerv4: 103.6.87.249
        localpeerv6: 2403:2500:4000::7d5
        peerasn: '36236'
    hostname: as112-maa.netactuate.com
    id: 567018
    public_ipv4: 103.6.87.249
    public_ipv6: 2403:2500:4000::7d5
    state: running
