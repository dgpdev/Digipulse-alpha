 #!/bin/bash

# Detect the directory 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
 
#redis
sudo service redis-server start

#rabbitmq
sudo service rabbitmq-server start

#mongodb
sudo service mongod start 

#bridge
pm2 start -n bridge $DIR/digipulse/node_modules/.bin/storj-bridge -- -c $DIR/digipulse/config/brige/config.json
pm2 start -n monitor $DIR/digipulse/node_modules/.bin/storj-monitor -- -c $DIR/digipulse/config/brige/monitor.json

#landlord
pm2 start -n landlord $DIR/digipulse/node_modules/.bin/storj-complex -- -c $DIR/digipulse/config/complex/landlord.json

#nodes
pm2 start -n renter-1 $DIR/digipulse/node_modules/.bin/storj-complex -- -c $DIR/digipulse/config/complex/renter-1.json
pm2 start -n renter-2 $DIR/digipulse/node_modules/.bin/storj-complex -- -c $DIR/digipulse/config/complex/renter-2.json


