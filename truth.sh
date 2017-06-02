#!/bin/zsh

ffmpeg -framerate 24 -i ./images/%d.png ./images/output/output.mp4
