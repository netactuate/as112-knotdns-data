---
# file: host_vars/as112-jnb.netactuate.com
ansible_ssh_host: 102.67.165.148
nodesetup:
    bgp_peers:
        IPv4:
        - 102.67.165.7
        IPv6:
        - 2c0f:edb0:0:10::b
        group_id: 3166
        localasn: '112'
        localpeerv4: 102.67.165.148
        localpeerv6: 2c0f:edb0:0:10::d0
        peerasn: '36236'
    hostname: as112-jnb.netactuate.com
    id: 567034
    public_ipv4: 102.67.165.148
    public_ipv6: 2c0f:edb0:0:10::d0
    state: running
