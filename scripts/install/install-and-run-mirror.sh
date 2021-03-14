#!/bin/bash

# Spotify Module
cd $HOME/MagicMirror/modules/MMM-NowPlayingOnSpotify
npm install

# Day Forecast Module
cd $HOME/MagicMirror/modules/MMM-3Day-Forecast
npm install

# Main Application
cd $HOME/MagicMirror/
cp $HOME/config/config.js $HOME/MagicMirror/config/
npm install
npm run start
