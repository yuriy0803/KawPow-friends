#!/bin/bash

echo ""
echo "KawPoW Server Stoping..."
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

~/.nvm/versions/node/v18.13.0/bin/pm2 stop pool

echo ""
echo "KawPoW Server Stopped!"
echo ""

exit 0
