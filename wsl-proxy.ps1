# $WSL2_IPV4=bash -c "ip address show eth0 | awk '/inet / {print $2}' | awk -F / '{print $1}'"
$WSL2_IPV4=bash -c "ip route |grep 'eth0 proto'|cut -d ' ' -f9"
$HOST_IPV4="0.0.0.0"
$PORT=$Args[0]
# netsh interface portproxy reset v4tov4
netsh interface portproxy delete v4tov4 listenaddress=$HOST_IPV4 listenport=$PORT
netsh interface portproxy add v4tov4 listenaddress=$HOST_IPV4 listenport=$PORT connectaddress=$WSL2_IPV4 connectport=$PORT
netsh interface portproxy show v4tov4
