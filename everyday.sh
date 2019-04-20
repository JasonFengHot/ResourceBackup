#!/bin/bash

mocp -l /home/zq/sounds/ring3.ogg;
# update resource automatically
cd ~/github/MyResources;git add .;git commit -m "update automatically!";git push origin master;

# check in readfree.me everyday
export DISPLAY=:1 && google-chrome %U https://readfree.me/;

#
