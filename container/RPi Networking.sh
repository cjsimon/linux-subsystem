# View all interface configs
ifconfig
/sbin/ifconfig eth0

# Show ip address details
ip addr

# Enable/Disable eth0
ifdown eth0
ifup eth0

# The ls of netstat
# List ip tables
netstat -rn
 
# Flush the eth0 ip tables
ip route flush dev eth0

# Add an ip route
route add default gw 130.86.65.254
# 130.86.65.0
ip route add 130.86.65.0/24 dev eth0
ip route add 0.0.0.0/0 via 130.86.65.254
# 10.77.132.0
ip route add 10.77.132.0/24 dev eth0
ip route add 0.0.0.0/0 via 10.77.132.1
# Add an ip route with a netmask and a gateway
route add -net 130.86.65.130 netmask 255.255.255.254 gw 130.86.65.254

# Delete an ip route
ip route del 0.0.0.0/0 via 130.86.65.254
ip route del default via 0.0.0.0

# Restart the network
/etc/init.d/networking restart
# or
sudo dhclient -r eth0
sudo dhclient eth0

# Change ip address for eth0
ifconfig eth0 172.16.25.125
ifconfig eth0 netmask 255.255.255.224
ifconfig eth0 broadcast 172.16.25.63

# References
https://www.raspberrypi.org/forums/viewtopic.php?f=91&t=43665
http://unix.stackexchange.com/questions/140697/trying-to-connect-to-gateway-in-static-ip-network
http://unix.stackexchange.com/questions/180553/proper-syntax-to-delete-default-route-for-a-particular-interface
https://ubuntuforums.org/showthread.php?t=2162439
http://serverfault.com/questions/42799/how-do-i-force-linux-to-reacquire-a-new-ip-address-from-the-dhcp-server
http://linux-ip.net/html/tools-route.html
http://www.tecmint.com/ifconfig-command-examples
http://unix.stackexchange.com/questions/39501/difference-between-ifconfig-and-ipconfig