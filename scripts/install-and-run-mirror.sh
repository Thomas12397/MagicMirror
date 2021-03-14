#!/bin/bash

# Installs a module
function install_module
{
   echo ""
   echo "Installing $1"
   cd $HOME/MagicMirror/modules/$1
   npm install
}

install_module "MMM-NowPlayingOnSpotify"
install_module "MMM-3Day-Forecast"

# Main Application
echo ""
echo "Installing MagicMirror"
cd $HOME/MagicMirror/
cp $HOME/config/config.js $HOME/MagicMirror/config/
npm install

# Run Application
$HOME/MagicMirror/scripts/launch/run-mirror.sh

