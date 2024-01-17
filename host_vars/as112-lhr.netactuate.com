---
# file: host_vars/as112-lhr.netactuate.com
ansible_ssh_host: 176.58.92.194
nodesetup:
    bgp_peers:
        IPv4:
        - 176.58.92.5
        IPv6:
        - 2a00:dd80:3a::43d
        group_id: 3166
        localasn: '112'
        localpeerv4: 176.58.92.194
        localpeerv6: 2a00:dd80:3a::f0c
        peerasn: '36236'
    hostname: as112-lhr.netactuate.com
    id: 567020
    public_ipv4: 176.58.92.194
    public_ipv6: 2a00:dd80:3a::f0c
    state: running
