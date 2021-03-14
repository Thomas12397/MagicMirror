#!/bin/python

import os
import subprocess
import shutil

# Spotify Module
os.chdir(os.path.expanduser("~")+'/MagicMirror/modules/MMM-NowPlayingOnSpotify')
process_spotify = subprocess.Popen("npm install".split(), stdout=subprocess.PIPE)
output, error = process_spotify.communicate()

# Main Application
os.chdir(os.path.expanduser("~")+'/MagicMirror/')
shutil.copy2('/home/pi/config/config.js', '/home/pi/MagicMirror/config/')
process_install = subprocess.Popen("npm install".split(), stdout=subprocess.PIPE)
output, error = process_install.communicate()
process_main = subprocess.Popen("npm run start".split(), stdout=subprocess.PIPE)
output, error = process_main.communicate()
