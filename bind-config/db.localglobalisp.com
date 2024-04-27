$TTL    604800
@       IN      SOA     ns.localglobalisp.com. admin.localglobalisp.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.localglobalisp.com.
ns      IN      A       192.168.1.1
        IN      AAAA    2001:db8::1        ; ejemplo de dirección IPv6
@       IN      A       192.168.1.1
        IN      AAAA    2001:db8::1
www     IN      A       192.168.1.1
        IN      AAAA    2001:db8::1
