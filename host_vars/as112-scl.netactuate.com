---
# file: host_vars/as112-scl.netactuate.com
ansible_ssh_host: 148.163.223.140
nodesetup:
    bgp_peers:
        IPv4:
        - 148.163.223.133
        IPv6:
        - 2607:f740:56:10::42
        group_id: 3166
        localasn: '112'
        localpeerv4: 148.163.223.140
        localpeerv6: 2607:f740:56:10::92
        peerasn: '36236'
    hostname: as112-scl.netactuate.com
    id: 567035
    public_ipv4: 148.163.223.140
    public_ipv6: 2607:f740:56:10::92
    state: running
