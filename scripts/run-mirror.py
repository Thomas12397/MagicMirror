#!/bin/python

import os
import subprocess

os.chdir(os.path.expanduser("~")+'/MagicMirror/')
process = subprocess.Popen("npm run start".split(), stdout=subprocess.PIPE)
output, error = process.communicate()
