---
# file: host_vars/as112-syd.netactuate.com
ansible_ssh_host: 43.245.48.46
nodesetup:
    bgp_peers:
        IPv4:
        - 43.245.48.70
        IPv6:
        - 2403:2500:9000:1::e8e
        group_id: 3166
        localasn: '112'
        localpeerv4: 43.245.48.46
        localpeerv6: 2403:2500:9000:1::553
        peerasn: '36236'
    hostname: as112-syd.netactuate.com
    id: 567025
    public_ipv4: 43.245.48.46
    public_ipv6: 2403:2500:9000:1::553
    state: running
