---
# file: host_vars/as112-chi.netactuate.com
ansible_ssh_host: 199.38.182.222
nodesetup:
    bgp_peers:
        IPv4:
        - 199.38.182.5
        IPv6:
        - 2607:f740:e::5
        group_id: 3166
        localasn: '112'
        localpeerv4: 199.38.182.222
        localpeerv6: 2607:f740:e::513
        peerasn: '36236'
    hostname: as112-chi.netactuate.com
    id: 567017
    public_ipv4: 199.38.182.222
    public_ipv6: 2607:f740:e::513
    state: running
