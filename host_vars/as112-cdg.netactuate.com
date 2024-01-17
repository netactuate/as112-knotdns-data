---
# file: host_vars/as112-cdg.netactuate.com
ansible_ssh_host: 176.58.90.211
nodesetup:
    bgp_peers:
        IPv4:
        - 176.58.90.192
        IPv6:
        - 2a00:dd80:3e::a77
        group_id: 3166
        localasn: '112'
        localpeerv4: 176.58.90.211
        localpeerv6: 2a00:dd80:3e::edd
        peerasn: '36236'
    hostname: as112-cdg.netactuate.com
    id: 567021
    public_ipv4: 176.58.90.211
    public_ipv6: 2a00:dd80:3e::edd
    state: running
