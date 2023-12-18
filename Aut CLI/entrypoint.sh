#!/bin/bash

# Setup Autonity CLI auto-completion and config
_AUT_COMPLETE=bash_source aut > ~/.aut-complete
echo 'source ~/.aut-complete' >> ~/.profile
source ~/.aut-complete
echo '[aut]' > .autrc
echo 'rpc_endpoint = https://rpc1.piccadilly.autonity.org/' >> .autrc

# Call expect script to create new account
/aut-account-create.expect

# Execute additional commands here, if necessary

# Keep the container running (if needed)
tail -f /dev/null
