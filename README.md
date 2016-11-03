Summary
-------
Openconnect client using SOCKS5 proxy in user mode rather than exposing VPN
endpoint via tun driver.

Build Image
-----------
docker build -t openconnect-socks .

Use Image
---------
docker run -d --name vpn -p 8080:8080 -e HOST=\<VPN gateway host\> -e USER=\<username\> -e PASS=\<password\> [-e PASS2=\<secondary password\>] openconnect
