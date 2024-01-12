---
# file: host_vars/as112.dfw.netactuate.test
ansible_ssh_host: 209.177.156.207
nodesetup:
    bgp_peers:
        IPv4:
        - 209.177.156.33
        IPv6:
        - 2607:f740:100::f28
        group_id: 3166
        localasn: '112'
        localpeerv4: 209.177.156.207
        localpeerv6: 2607:f740:100::cc8
        peerasn: '36236'
    hostname: as112.dfw.netactuate.test
    id: 567007
    public_ipv4: 209.177.156.207
    public_ipv6: 2607:f740:100::cc8
    state: running
