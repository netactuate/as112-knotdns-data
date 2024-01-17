---
# file: host_vars/as112-rdu.netactuate.com
ansible_ssh_host: 162.223.10.60
nodesetup:
    bgp_peers:
        IPv4:
        - 162.223.10.7
        IPv6:
        - 2607:fc50:0:15::19d
        group_id: 3166
        localasn: '112'
        localpeerv4: 162.223.10.60
        localpeerv6: 2607:fc50:0:15::126
        peerasn: '36236'
    hostname: as112-rdu.netactuate.com
    id: 567031
    public_ipv4: 162.223.10.60
    public_ipv6: 2607:fc50:0:15::126
    state: running
