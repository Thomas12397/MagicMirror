#!/bin/bash

CONFIG=$HOME/config/config.js

echo ""
echo "Starting Magic Mirror"
echo ""
cd $HOME/MagicMirror/
if [ -f "$CONFIG" ]; then
   echo "----------Using User Config--------------"
   cp $HOME/config/config.js $HOME/MagicMirror/config/
else
   echo "----------Using Sample Config------------"
   cp $HOME/MagicMirror/config/config.js.sample $HOME/MagicMirror/config/config.js
fi

npm run start
