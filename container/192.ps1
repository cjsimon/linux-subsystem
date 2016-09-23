docker rm -f mynginx_192
docker network rm linux_network

# Create linux network
docker network create -d bridge --subnet 192.168.0.0/16 --gateway 192.168.0.1 linux_network
docker run -d -P --net linux_network --ip 192.168.100.122 --name mynginx_192 cjsimon/mynginx

# Linux container setup
# Note: Ping the ip to see if it is available
docker run --privileged -v C:/:/windows/C/ -d --restart=always --net linux_network --ip 192.168.100.122 --name linux_subset testssh