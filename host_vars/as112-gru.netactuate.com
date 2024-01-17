---
# file: host_vars/as112-gru.netactuate.com
ansible_ssh_host: 148.163.220.37
nodesetup:
    bgp_peers:
        IPv4:
        - 148.163.220.33
        IPv6:
        - 2607:f740:1::52e
        group_id: 3166
        localasn: '112'
        localpeerv4: 148.163.220.37
        localpeerv6: 2607:f740:1::f35
        peerasn: '36236'
    hostname: as112-gru.netactuate.com
    id: 567029
    public_ipv4: 148.163.220.37
    public_ipv6: 2607:f740:1::f35
    state: running
