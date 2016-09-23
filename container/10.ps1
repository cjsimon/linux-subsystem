docker rm -f mynginx_10
docker network rm linux_network2

# Create linux network
docker network create -d bridge --subnet 255.255.255.0/24 --gateway 10.0.0.1 linux_network2
docker run -d -P --net linux_network2 --ip 10.0.0.135 --name mynginx_10 cjsimon/mynginx

# Linux container setup
# Note: Ping the ip to see if it is available
docker run --privileged -v C:/:/windows/C/ -d --restart=always --net linux_network2 --ip 10.0.0.135 --name linux_subset2 testssh