#!/bin/bash

echo ""
echo "KawPoW Server Starting..."
echo ""

source ~/.bashrc
source /etc/os-release

## who am i? ##
SCRIPTNAME="$(readlink -f ${BASH_SOURCE[0]})"
BASEDIR="$(dirname $SCRIPTNAME)"

## Okay, print it ##
echo "Script name : $SCRIPTNAME"
echo "Current working dir : $PWD"
echo "Script location path (dir) : $BASEDIR"
echo ""

~/.nvm/versions/node/v18.13.0/bin/pm2 delete pool

~/.nvm/versions/node/v18.13.0/bin/pm2 start --name pool node -- --optimize_for_size --max-old-space-size=4096 "${BASEDIR}/init.js"

sudo renice -n -18 -p $(pidof node)
sudo renice -n -18 -p $(pidof nodejs)

echo ""
echo "KawPoW Server Started!"
echo ""

exit 0
