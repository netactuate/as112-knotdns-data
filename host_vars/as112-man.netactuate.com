---
# file: host_vars/as112-man.netactuate.com
ansible_ssh_host: 45.159.99.162
nodesetup:
    bgp_peers:
        IPv4:
        - 45.159.99.239
        IPv6:
        - 2a00:dd80:42:10::33c
        group_id: 3166
        localasn: '112'
        localpeerv4: 45.159.99.162
        localpeerv6: 2a00:dd80:42:10::350
        peerasn: '36236'
    hostname: as112-man.netactuate.com
    id: 567038
    public_ipv4: 45.159.99.162
    public_ipv6: 2a00:dd80:42:10::350
    state: running
