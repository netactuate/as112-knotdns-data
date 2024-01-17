---
# file: host_vars/as112-fra.netactuate.com
ansible_ssh_host: 185.40.234.214
nodesetup:
    bgp_peers:
        IPv4:
        - 185.40.234.38
        IPv6:
        - 2a00:dd80:20::7c7
        group_id: 3166
        localasn: '112'
        localpeerv4: 185.40.234.214
        localpeerv6: 2a00:dd80:20::8e6
        peerasn: '36236'
    hostname: as112-fra.netactuate.com
    id: 567027
    public_ipv4: 185.40.234.214
    public_ipv6: 2a00:dd80:20::8e6
    state: running
