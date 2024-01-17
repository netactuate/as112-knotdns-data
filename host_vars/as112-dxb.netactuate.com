---
# file: host_vars/as112-dxb.netactuate.com
ansible_ssh_host: 185.34.3.243
nodesetup:
    bgp_peers:
        IPv4:
        - 185.34.3.145
        IPv6:
        - 2a00:dd80:3f:100::2e7
        group_id: 3166
        localasn: '112'
        localpeerv4: 185.34.3.243
        localpeerv6: 2a00:dd80:3f:100::b8c
        peerasn: '36236'
    hostname: as112-dxb.netactuate.com
    id: 567033
    public_ipv4: 185.34.3.243
    public_ipv6: 2a00:dd80:3f:100::b8c
    state: running
