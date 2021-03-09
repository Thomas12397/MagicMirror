#!/bin/bash

# Spotify Module
cd $HOME/MagicMirror/modules/MMM-NowPlayingOnSpotify
npm install

# Main Application
cd $HOME/MagicMirror/
npm install
npm run start
