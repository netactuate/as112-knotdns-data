---
# file: host_vars/as112-tyo.netactuate.com
ansible_ssh_host: 103.84.155.34
nodesetup:
    bgp_peers:
        IPv4:
        - 103.84.155.89
        IPv6:
        - 2403:2500:400:20::805
        group_id: 3166
        localasn: '112'
        localpeerv4: 103.84.155.34
        localpeerv6: 2403:2500:400:20::aea
        peerasn: '36236'
    hostname: as112-tyo.netactuate.com
    id: 567032
    public_ipv4: 103.84.155.34
    public_ipv6: 2403:2500:400:20::aea
    state: running
