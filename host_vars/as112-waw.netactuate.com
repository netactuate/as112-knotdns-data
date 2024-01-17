---
# file: host_vars/as112-waw.netactuate.com
ansible_ssh_host: 45.159.98.149
nodesetup:
    bgp_peers:
        IPv4:
        - 45.159.98.202
        IPv6:
        - 2a00:dd80:40:100::321
        group_id: 3166
        localasn: '112'
        localpeerv4: 45.159.98.149
        localpeerv6: 2a00:dd80:40:100::16a
        peerasn: '36236'
    hostname: as112-waw.netactuate.com
    id: 567037
    public_ipv4: 45.159.98.149
    public_ipv6: 2a00:dd80:40:100::16a
    state: running
