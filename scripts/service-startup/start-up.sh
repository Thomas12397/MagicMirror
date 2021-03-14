#!/bin/bash

SERVICE_FILE=magic-mirror.service

sudo systemctl stop $SERVICE_FILE
sudo cp $HOME/MagicMirror/scripts/service-startup/$SERVICE_FILE /etc/systemd/system/
sudo systemctl enable --now $SERVICE_FILE
systemctl status $SERVICE_FILE
echo ""
echo "MagicMirror Service Created for Startup"
