#!/usr/bin/env python

import os
import subprocess

os.chdir('/home/pi/MagicMirror/')
process = subprocess.Popen("npm run start".split(), stdout=subprocess.PIPE)
output, error = process.communicate()
