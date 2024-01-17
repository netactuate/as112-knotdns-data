---
# file: host_vars/as112-bom.netactuate.com
ansible_ssh_host: 59.153.13.210
nodesetup:
    bgp_peers:
        IPv4:
        - 59.153.13.104
        IPv6:
        - 2403:2500:500:a::18a
        group_id: 3166
        localasn: '112'
        localpeerv4: 59.153.13.210
        localpeerv6: 2403:2500:500:a::1c3
        peerasn: '36236'
    hostname: as112-bom.netactuate.com
    id: 567041
    public_ipv4: 59.153.13.210
    public_ipv6: 2403:2500:500:a::1c3
    state: running
