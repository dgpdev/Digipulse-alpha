 #!/bin/bash

# Detect the directory 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
 

pm2 start -n share1 $DIR/Digipulse-alpha/node_modules/.bin/storjshare-start -- -d -c $DIR/Digipulse-alpha/config/farmer/farmer-1/config.json
pm2 start -n share2 $DIR/Digipulse-alpha/node_modules/.bin/storjshare-start -- -d -c $DIR/Digipulse-alpha/config/farmer/farmer-2/config.json
pm2 start -n share3 $DIR/Digipulse-alpha/node_modules/.bin/storjshare-start -- -d -c $DIR/Digipulse-alpha/config/farmer/farmer-3/config.json
pm2 start -n share4 $DIR/Digipulse-alpha/node_modules/.bin/storjshare-start -- -d -c $DIR/Digipulse-alpha/config/farmer/farmer-4/config.json
pm2 start -n share5 $DIR/Digipulse-alpha/node_modules/.bin/storjshare-start -- -d -c $DIR/Digipulse-alpha/config/farmer/farmer-5/config.json
pm2 start -n share6 $DIR/Digipulse-alpha/node_modules/.bin/storjshare-start -- -d -c $DIR/Digipulse-alpha/config/farmer/farmer-6/config.json
pm2 start -n share7 $DIR/Digipulse-alpha/node_modules/.bin/storjshare-start -- -d -c $DIR/Digipulse-alpha/config/farmer/farmer-7/config.json
pm2 start -n share8 $DIR/Digipulse-alpha/node_modules/.bin/storjshare-start -- -d -c $DIR/Digipulse-alpha/config/farmer/farmer-8/config.json