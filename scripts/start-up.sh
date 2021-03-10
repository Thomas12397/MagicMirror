#!/bin/bash

sudo cp run-mirror.service /etc/systemd/system/
sudo systemctl enable --now run-mirror.service
systemctl status run-mirror.service

echo ""
echo "MagicMirror Service Created"
