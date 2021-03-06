# Named Parameter
#./ip.ps1 -containerName='mynginx'
#$param([string]$containerName)

# Passed Argument
# ./ip.ps1 mynginx
$containerName = $args[0]

# Get the ip of the $containerName
docker inspect --format '{{ .NetworkSettings.IPAddress }}' $containerName