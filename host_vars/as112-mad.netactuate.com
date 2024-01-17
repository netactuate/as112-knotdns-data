---
# file: host_vars/as112-mad.netactuate.com
ansible_ssh_host: 45.159.97.128
nodesetup:
    bgp_peers:
        IPv4:
        - 45.159.97.199
        IPv6:
        - 2a00:dd80:14:10::3cf
        group_id: 3166
        localasn: '112'
        localpeerv4: 45.159.97.128
        localpeerv6: 2a00:dd80:14:10::1a7
        peerasn: '36236'
    hostname: as112-mad.netactuate.com
    id: 567036
    public_ipv4: 45.159.97.128
    public_ipv6: 2a00:dd80:14:10::1a7
    state: running
