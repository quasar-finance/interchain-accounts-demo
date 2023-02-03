#!/bin/bash
set -e

# Load shell variables
. ./network/hermes/variables.sh

### Configure the clients and connection
echo "Initiating connection handshake..."
$HERMES_BINARY -c $CONFIG_DIR create connection test-1 test-2

sleep 5 


$HERMES_BINARY -c $CONFIG_DIR create channel --port-a transfer --port-b transfer test-1 connection-0

#hermes -c ./network/hermes/config.toml create channel --port-a transfer --port-b transfer test-1 connection-0
#icad q ibc channel channels --chain-id test-2 --node tcp://localhost:26657
