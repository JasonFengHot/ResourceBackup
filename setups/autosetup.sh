#!/bin/bash

# sudo gedit /etc/apt/sources.list
#deb http://us.archive.ubuntu.com/ubuntu trusty main universe
#deb http://download.virtualbox.org/virtualbox/debian precise contrib
echo '4815912' | sudo -S add-apt-repository ppa:atareao/telegram
echo '4815912' | sudo -S add-apt-repository ppa:openjdk-r/ppa
echo '4815912' | sudo -S add-apt-repository ppa:hzwhuang/ss-qt5
echo '4815912' | sudo -S add-apt-repository ppa:ryu0/aesthetics
echo '4815912' | sudo -S add-apt-repository ppa:noobslab/themes
echo '4815912' | sudo -S apt-add-repository ppa:numix/ppa
echo '4815912' | sudo -S add-apt-repository ppa:gnome3-team/gnome3-staging
echo '4815912' | sudo -S add-apt-repository ppa:gnome3-team/gnome3
echo '4815912' | sudo -S add-apt-repository ppa:peek-developers/stable

echo '4815912' | sudo -S apt-get update

echo '4815912' | sudo -S apt-get install bison flex gperf tofrodos g++-multilib zip wine libxml2-utils mingw32 openjdk-8-jdk openjdk-7-jdk privoxy perlbrew git qgit git-core sqlite3 sqlitebrowser sqliteman proxychains python-pip ccache shadowsocks-qt5 npm gnome-terminal wget curl gnome-panel gnome-session-flashback moc vlc browser-plugin-vlc gnome-tweak-tool fonts-wqy-microhei fonts-droid ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming matcha-theme flatabulous-theme  fbreader gnome gnome-shell okular telegram unrar zip unzip filezilla peek libnotify-bin gnome-osd corkscrew tofrodos policycoreutils dconf-editor

echo '4815912' | sudo -S apt-get remove modemmanager firefox libreoffice-common

echo '4815912' | sudo -S cp -r ./arm-eabi-4.4.3.tar.gz /opt
cd /opt
echo '4815912' | sudo -S tar zvxf arm-eabi-4.4.3.tar.gz


echo '4815912' | sudo -S chmod a+x jdk-6u27-linux-x64.bin
sudo ./jdk-6u27-linux-x64.bin

echo '4815912' | sudo -S cd /
echo '4815912' | sudo -S mkdir -p /mtkoss/jdk/1.6.0_45-ubuntu-10.04/x86_64/
cd /mtkoss/jdk/1.6.0_45-ubuntu-10.04/x86_64/
echo '4815912' | sudo -S ln -s /opt/jdk1.6.0_27/*  ./

echo '4815912' | sudo -S mkdir -p /mtkoss/jdk/jdk1.6.0_23/
cd /mtkoss/jdk/jdk1.6.0_23/
echo '4815912' | sudo -S ln -s /opt/jdk1.6.0_27/*  ./


echo '4815912' | sudo -S pip install genpac
echo '4815912' | sudo -S pip install --upgrade genpac
genpac --pac-proxy "SOCKS5 127.0.0.1:1080" --gfwlist-proxy="SOCKS5 127.0.0.1:1080" --gfwlist-url=https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt --output="autoproxy.pac"


gsettings set org.gnome.desktop.media-handling automount-open false
gsettings set com.canonical.Unity.Launcher launcher-position Bottom

npm config set proxy=http://127.0.0.1:8118
npm config set registry=http://registry.npmjs.org
npm config set proxy http://username:password@server:port
npm config set https-proxy http://username:password@server:port
echo '4815912' | sudo -S npm install hexo-cli -g


#sudo ln -s /home/xyz/Android/Sdk/platform-tools/adb /usr/bin/adb


# ~/.bashrc
#export USE_CCACHE=1
#export http_proxy=http://127.0.0.1:8118/
#export https_proxy=http://127.0.0.1:8118/
#export PATH=/home/xyz/Android/Sdk/tools:$PATH
#alias adbkill='_adbkill(){ adb shell kill `adb shell ps | grep $1 | awk {'\''print $2'\''} | head -n 1`; }; _adbkill'

#用wine安装 sourceinsight.exe
#sudo gedit /etc/default/apport # modified to 0
