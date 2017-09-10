# Digipulse Alpha version

To install on a new server, git clone this repo and run `install-script.sh`

To start the main services, run `start-services.sh`

To start the internal daemons, run `./start-farmers.sh`


** important **

iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 2985

