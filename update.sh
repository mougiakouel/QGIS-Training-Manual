#!/bin/bash
cd /home/timlinux/Documents/qgis-training-manual
git pull
make html
google-chrome _build/html/index.html
