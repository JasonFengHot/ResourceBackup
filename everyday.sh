#!/bin/bash

notice(){
    export DISPLAY=:1 && notify-send $1;
    mocp -l /home/zq/sounds/ring3.ogg;
    date;
}
# update resource automatically
cd ~/github/MyResources;git add .;git commit -m "update automatically!";git push origin master;

# check in readfree.me everyday
#export DISPLAY=:1 && google-chrome %U https://readfree.me/;

# compile project everyday
notice "auto_new_begin!";
#cd /media/zq/5ceb2d91-2906-4972-bfeb-14945a1d6c56/home/zq/zq/alps-release-o1.mp1-doro/alps
#./clean_project_Sagereal.sh;
#git pull;
#./mk -ud DFC0270_VF292_7030_DORO_S01A new;
notice "auto_new_done!";
