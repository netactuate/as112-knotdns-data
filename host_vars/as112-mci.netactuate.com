---
# file: host_vars/as112-mci.netactuate.com
ansible_ssh_host: 104.225.19.244
nodesetup:
    bgp_peers:
        IPv4:
        - 104.225.19.245
        IPv6:
        - 2607:f740:75:1::1a5
        group_id: 3166
        localasn: '112'
        localpeerv4: 104.225.19.244
        localpeerv6: 2607:f740:75:1::314
        peerasn: '36236'
    hostname: as112-mci.netactuate.com
    id: 567013
    public_ipv4: 104.225.19.244
    public_ipv6: 2607:f740:75:1::314
    state: running
