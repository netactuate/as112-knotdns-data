---
# file: host_vars/as112-nbo.netactuate.com
ansible_ssh_host: 102.67.167.181
nodesetup:
    bgp_peers:
        IPv4:
        - 102.67.167.159
        IPv6:
        - 2c0f:edb0:2000:1::169
        group_id: 3166
        localasn: '112'
        localpeerv4: 102.67.167.181
        localpeerv6: 2c0f:edb0:2000:1::112
        peerasn: '36236'
    hostname: as112-nbo.netactuate.com
    id: 567040
    public_ipv4: 102.67.167.181
    public_ipv6: 2c0f:edb0:2000:1::112
    state: running
