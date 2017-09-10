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
pm2 start -n bridge $DIR/Digipulse-alpha/node_modules/.bin/storj-bridge -- -c $DIR/Digipulse-alpha/config/brige/config.json
pm2 start -n monitor $DIR/Digipulse-alpha/node_modules/.bin/storj-monitor -- -c $DIR/Digipulse-alpha/config/brige/monitor.json

#landlord
pm2 start -n landlord $DIR/Digipulse-alpha/node_modules/.bin/storj-complex -- -c $DIR/Digipulse-alpha/config/complex/landlord.json

#nodes
pm2 start -n renter-1 $DIR/Digipulse-alpha/node_modules/.bin/storj-complex -- -c $DIR/Digipulse-alpha/config/complex/renter-1.json
pm2 start -n renter-2 $DIR/Digipulse-alpha/node_modules/.bin/storj-complex -- -c $DIR/Digipulse-alpha/config/complex/renter-2.json
pm2 start -n renter-3 $DIR/Digipulse-alpha/node_modules/.bin/storj-complex -- -c $DIR/Digipulse-alpha/config/complex/renter-3.json
pm2 start -n renter-4 $DIR/Digipulse-alpha/node_modules/.bin/storj-complex -- -c $DIR/Digipulse-alpha/config/complex/renter-4.json
pm2 start -n renter-5 $DIR/Digipulse-alpha/node_modules/.bin/storj-complex -- -c $DIR/Digipulse-alpha/config/complex/renter-5.json
pm2 start -n renter-6 $DIR/Digipulse-alpha/node_modules/.bin/storj-complex -- -c $DIR/Digipulse-alpha/config/complex/renter-6.json


