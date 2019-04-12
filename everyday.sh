#!/bin/bash

# mocp -l /home/zq/sounds/ring3.ogg;
# update resource automatically
cd ~/github/MyResources;git add .;git commit -m "update automatically!";git push origin master;

# check in everyday
export DISPLAY=:0 && google-chrome %U https://readfree.me/;

#
