#!/usr/bin/env python3

import os
import subprocess
import sys
import shutil

os.chdir('/home/pi/MagicMirror/')
shutil.copy2('/home/pi/config/config.js', '/home/pi/MagicMirror/config/')
process = subprocess.Popen("npm run start".split(), stdout=subprocess.PIPE)
output, error = process.communicate()
