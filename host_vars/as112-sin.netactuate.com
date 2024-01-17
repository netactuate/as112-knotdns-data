---
# file: host_vars/as112-sin.netactuate.com
ansible_ssh_host: 43.245.49.232
nodesetup:
    bgp_peers:
        IPv4:
        - 43.245.49.217
        IPv6:
        - 2403:2500:300::f20
        group_id: 3166
        localasn: '112'
        localpeerv4: 43.245.49.232
        localpeerv6: 2403:2500:300::19b
        peerasn: '36236'
    hostname: as112-sin.netactuate.com
    id: 567028
    public_ipv4: 43.245.49.232
    public_ipv6: 2403:2500:300::19b
    state: running
