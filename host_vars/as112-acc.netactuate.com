---
# file: host_vars/as112-acc.netactuate.com
ansible_ssh_host: 102.213.153.90
nodesetup:
    bgp_peers:
        IPv4:
        - 102.213.153.167
        IPv6:
        - 2c0f:edb0:4000:1::2d8
        group_id: 3166
        localasn: '112'
        localpeerv4: 102.213.153.90
        localpeerv6: 2c0f:edb0:4000:1::2b5
        peerasn: '36236'
    hostname: as112-acc.netactuate.com
    id: 567042
    public_ipv4: 102.213.153.90
    public_ipv6: 2c0f:edb0:4000:1::2b5
    state: running
