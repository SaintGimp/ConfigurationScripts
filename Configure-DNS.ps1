# http://hackercodex.com/guide/how-to-stop-isp-dns-server-hijacking/

netsh interface ipv4 set dnsservers "Local Area Connection" static 8.8.8.8 primary
netsh interface ipv4 add dnsservers "Local Area Connection" 8.8.4.4
netsh interface ipv4 set dnsservers "Wireless Network Connection" static 8.8.8.8 primary
netsh interface ipv4 add dnsservers "Wireless Network Connection" 8.8.4.4

"DNS servers configured to 8.8.8.8 and 8.8.4.4."