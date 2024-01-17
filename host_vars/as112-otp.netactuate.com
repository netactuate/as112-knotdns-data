---
# file: host_vars/as112-otp.netactuate.com
ansible_ssh_host: 185.40.235.210
nodesetup:
    bgp_peers:
        IPv4:
        - 185.40.235.156
        IPv6:
        - 2a00:dd80:10::44a
        group_id: 3166
        localasn: '112'
        localpeerv4: 185.40.235.210
        localpeerv6: 2a00:dd80:10::46
        peerasn: '36236'
    hostname: as112-otp.netactuate.com
    id: 567026
    public_ipv4: 185.40.235.210
    public_ipv6: 2a00:dd80:10::46
    state: running
