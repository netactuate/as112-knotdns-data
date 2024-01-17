---
# file: host_vars/as112-ams.netactuate.com
ansible_ssh_host: 176.58.93.216
nodesetup:
    bgp_peers:
        IPv4:
        - 176.58.93.190
        IPv6:
        - 2a00:dd80:3c::d21
        group_id: 3166
        localasn: '112'
        localpeerv4: 176.58.93.216
        localpeerv6: 2a00:dd80:3c::570
        peerasn: '36236'
    hostname: as112-ams.netactuate.com
    id: 567043
    public_ipv4: 176.58.93.216
    public_ipv6: 2a00:dd80:3c::570
    state: running
