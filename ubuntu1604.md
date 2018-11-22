# 前期准备:
个人资料的整理和备份(推荐最好全盘格式化)
Home目录下的.ssh文件夹，也就是git的id。
如果不想重装虚拟机的话请备份虚拟机，需要重装虚拟机的话请注意备份邮件的id。

# 安装配置编译环境
## 添加源
``` bash
sudo gedit /etc/apt/sources.list
deb http://us.archive.ubuntu.com/ubuntu trusty main universe          #用于mingw32的安装，因为源的原因,直接使用sudo apt-get install mingw32会出问题
deb http://download.virtualbox.org/virtualbox/debian precise contrib  #用于virtualbox虚拟机的安装
sudo add-apt-repository ppa:openjdk-r/ppa
```
        
## 安装软件包
``` bash
sudo apt-get install bison flex gperf tofrodos g++-multilib zip wine curl libxml2-utils mingw32
```
//如果在终端碰到“你希望继续执行吗？【Y/n】”。选择Y。在中途碰到需要licence的选择时，用上下左右的四个方向键，选择“确定”或“是”，然后回车。

## 安装arm-eabi-4.4.3
将arm-eabi-4.4.3.tar.gz复制到根目录 /opt下
sudo cp -r /文件路径/arm-eabi-4.4.3.tar.gz /opt
再进入opt文件夹下: cd /opt
解压arm-eabi-4.4.3.tar.gz命令是: sudo tar zvxf arm-eabi-4.4.3.tar.gz 

## 安装jdk1.8(N/M):
``` bash
sudo apt-get install openjdk-8-jdk
```

## 安装jdk1.7(KK/L/M):
``` bash
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-7-jdk
```

## 安装jdk1.6:
``` bash
sudo cd /
sudo mkdir -p /mtkoss/jdk/1.6.0_45-ubuntu-10.04/x86_64/   	（请查看KK工程根目录下的mbldenv.sh）
cd /mtkoss/jdk/1.6.0_45-ubuntu-10.04/x86_64/
sudo ln -s /opt/jdk1.6.0_27/*  ./

sudo mkdir -p /mtkoss/jdk/jdk1.6.0_23/	（请查看JB工程根目录下的mbldenv.sh）
cd /mtkoss/jdk/jdk1.6.0_23/
sudo ln -s /opt/jdk1.6.0_27/*  ./
```

# modem编译不过
提示 perl/make/SHELL 版本过高
a:系统推荐使用 perl5.10.1
sudo apt-get install perlbrew
perlbrew install 5.10.1 //这里会提示失败，因为perlbrew下载包的时候没有走代理，需要先用wget把perl的安装包下载下载，再安装
wget http://www.cpan.org/src/5.0/perl-5.10.1.tar.bz2
perlbrew --notest install /home/zq/http://www.cpan.org/src/5.0/perl-5.10.1.tar.bz2 //这里必须使用绝对路径，否则安装不上

需要更新gcc的版本为4.8.1

一键编译脚本在16.04上有问题，./mk 会出现问题
sub build_modem
{
  my $bld = shift;
  my $bldmak = $bld . ".mak";
    if (!-e {"make/" . $bldmak})    //去掉这里的大括号
    {
      print "build OK!\n";
      exit 1;
    }
}

## GNU make编译器降版本
自ubutu15.04及之后，ubutu系统自带的make编译器版本已经是4.1，但是在变异android代码的时候总是报一些莫名其妙的错误，这时候我们需要将make编译器的版本降到3.81版本以支持android代码的编译，具体操作如下(亲测有效):
6.1 下载make3.81的make编译器:
终端输入以下命令，然后等待下载完成:
wget -o make.tar.gz http://ftp.gnu.org/gnu/make/make-3.81.tar.gz    //下载包
tar -xvzf make-3.81.tar.gz
cd make-3.81
./configure
sh build.sh
sudo make install

PS:make install安装的程序如果需要卸载，一般需要以上第四步执行build.sh后的包，再执行:
sudo make uninstall
即可完成卸载（需要程序支持，很幸运make程序是支持的），所以一般建议保留安装时的安装包。


2.编译M代码(验证的是80M的代码，其他未验证):
2.1 prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.15-4.8//x86_64-linux/bin/ld: error: out/host/linux-x86/obj/SHARED_LIBRARIES/libart_intermediates/arch/x86_64/quick_entrypoints_x86_64.o: unsupported reloc 42 against global symbol art::Runtime::instance_
......
error: unsupported reloc 42

问题原因:
网上说法:aosp中的预编译好的ld程序存在bug。
解决方法:
cp /usr/bin/ld.gold prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.15-4.8//x86_64-linux/bin/ld
补充(以下三条跟环境搭建没有关系):
1.这个问题在有的电脑上不会出现，在有的电脑上会出现，现在还不能找出其规律；
2.这个方法只是临时方法，但是实际操作上还是需要找到更加合适的方案，看看怎么能在不动源文件的情况下解决这个问题；
3.可以尝试写入脚本当中，编译的时候通过脚本进行修改可能会是以后需要考虑的方向；

2.2 host Prebuilt: jack (out/host/common/obj/JAVA_LIBRARIES/jack_intermediates/jack.jar)
clang: error: linker command failed with exit code 1 (use -v to see invocation)
build/core/host_shared_library_internal.mk:51: recipe for target 'out/host/linux-x86/obj/lib/libart.so' failed
make: *** [out/host/linux-x86/obj/lib/libart.so] Error 1

问题原因:
网上说法:clang编译器导致的问题。
解决方法:
在art/build/Android.common_build.mk ,中将host 默认编辑器使用clang关掉，在art/build/Android.common_build.mk文件中搜索:WITHOUT_HOST_CLANG
//Host.
ART_HOST_CLANG := false
ifneq ($(WITHOUT_HOST_CLANG),true)
//By default, host builds use clang for better warnings.
ART_HOST_CLANG := true                                      ###此处将true改成false，编译通过
endif

3.编译L代码(验证的是72L的代码，其他未验证):
3.1 出现类似2.1的问题，解决方案同2.1，但是替换的目标路径需要随平台代码变化:
错误log:
prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.11-4.6//x86_64-linux/bin/ld: error: out/host/linux-x86/obj32/SHARED_LIBRARIES/libsigchain_intermediates/sigchain_dummy.o: unsupported reloc 43 against global symbol std::cout
......
prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.11-4.6//x86_64-linux/include/c++/4.6/iostream:75: error: unsupported reloc 43
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [out/host/linux-x86/obj32/lib/libsigchain.so] Error 1
解决办法:
cp /usr/bin/ld.gold prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.11-4.6//x86_64-linux/bin/ld

3.2 编译72L的代码目前出现以下报错信息，还没有找到比较好的解决方案:
out/target/common/obj/PACKAGING/public_api.txt:20: error 5: Added public field android.Manifest.permission.BACKUP
out/target/common/obj/PACKAGING/public_api.txt:82: error 5: Added public field android.Manifest.permission.INVOKE_CARRIER_SETUP
out/target/common/obj/PACKAGING/public_api.txt:106: error 5: Added public field android.Manifest.permission.READ_PRIVILEGED_PHONE_STATE
out/target/common/obj/PACKAGING/public_api.txt:116: error 5: Added public field android.Manifest.permission.RECEIVE_EMERGENCY_BROADCAST
target Symbolic: libatciserv_jni (out/target/product/sr6572_wet_l/symbols/system/lib/libatciserv_jni.so)
[Compiling] PRIVATE_MODULE = [BSPTelephonyDevTool], PRIVATE_PATH = [vendor/mediatek/proprietary/packages/apps/BSPTelephonyDevTool]
target Java: BSPTelephonyDevTool (out/target/common/obj/APPS/BSPTelephonyDevTool_intermediates/classes)
[Compiling] PRIVATE_MODULE = [Bluetooth], PRIVATE_PATH = [packages/apps/Bluetooth]
target Java: Bluetooth (out/target/common/obj/APPS/Bluetooth_intermediates/classes)

******************************
You have tried to change the API from what has been previously approved.

To make these errors go away, you have two choices:
1) You can add "@hide" javadoc comments to the methods, etc. listed in the
errors above.

2) You can update current.txt by executing the following command:
make update-api

To submit the revised current.txt to the main Android repository,
you will need approval.
******************************
解决办法:
先update-api之后再remake能编译通过，但要更优的方案。
补充:
虽然以上的解决方案能编译通过，但是这种方法在实际使用中不太好操作，需要寻求更加使用的解决方案。

    

# 安装git
sudo apt-get install git qgit git-core
安装完成时候将前期保存下来的.ssh文件夹放到Home下面，此时去拉个代码试试是否能能够拉代码。
以下这两项是配置name和邮箱的，跟拉代码没有关系，但是在上传代码的时候会要求设置这两项，所以推荐直接配置完:
git config --global user.name "Your Name"     #Your Name换成自己的名字，全小写
git config --global user.email "Your Name@example.com"        #Your Name@example.com换成自己公司使用的邮箱
//中文乱码的问题
git config --global core.quotepath false

//复制下面这段代码到~/.gitconfig文件中
``` bash
[color]
​	ui = true
[user]
​	name = xyz
​	email = xyz@zyx.com
[credential]
​	helper = cache --timeout 3600
```

生成秘钥给git服务器管理人员
``` bash
ssh-keygen -t rsa
```

## git clone github 上面代码的时候很慢
在 /etc/hosts 文件中添加如下host
151.101.72.249 http://global-ssl.fastly.net
192.30.253.112 http://github.com

# github push 不上去
在 /etc/hosts 文件中添加如下host
192.30.253.122 ssh.github.com


# 配置USB
``` bash
sudo gedit /etc/udev/rules.d/51-android.rules
SUBSYSTEM=="usb", ATTRS{idVendor}=="0e8d", ATTRS{idProduct}=="201c",MODE="0666"
sudo chmod a+x /etc/udev/rules.d/51-android.rules
```


# 安装SourceInSight
用wine安装 sourceinsight.exe

# 链接adb
``` bash
sudo ln -s /home/xyz/Android/Sdk/platform-tools/adb /usr/bin/adb
```
1.0.40的adb push目录的时候会卡???


# 把android开发工具添加到环境变量
export PATH=/home/xyz/Android/Sdk/tools:$PATH

# 禁止USB自动弹出
gsettings set org.gnome.desktop.media-handling automount-open false


# 链接adbkill
alias adbkill='_adbkill(){ adb shell kill `adb shell ps | grep $1 | awk {'\''print $2'\''} | head -n 1`; }; _adbkill'


# privoxy:
``` bash
sudo apt-get install privoxy
```

#### /etc/privoxy/config
forward-socks5 / 127.0.0.1:1080 .
listen-address  localhost:8118		//forward port 1080 to 8118

#### /etc/apt/apt.conf
Acquire::http::proxy "http://127.0.0.1:8118/";
Acquire::https::proxy "https://127.0.0.1:8118/";
Acquire::ftp::proxy "ftp://127.0.0.1:8118/";
Acquire::socks::proxy "socks://127.0.0.1:8118/";

#### ~/.bashrc
export http_proxy=http://127.0.0.1:8118/
export https_proxy=http://127.0.0.1:8118/


# 安装ccache
``` bash
sudo apt-get install ccache
```

# 安装 ShadowSocks-qt5
``` bash
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5
```

# 安装最新版 AndroidStudio
download the latest version from official website

# 安装最新版 Eclipse
download the latest version from official website
https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2018-09/R/eclipse-inst-linux64.tar.gz
配置eclipse adt
配置sdk
配置快捷键
配置eclipse用4个空格代替tab??
配置eclipse的格式化模板

# 安装VSCode
download the latest version from official website

安装ubuntu flashtool

# 安装nodejs
``` bash
sudo apt-get install npm
npm config set proxy=http://127.0.0.1:8118
npm config set registry=http://registry.npmjs.org
npm config set proxy http://username:password@server:port
npm config set https-proxy http://username:password@server:port
```

# 安装hexo
``` bash
sudo npm install hexo-cli -g
```

# 安装sogou输入法
http://pinyin.sogou.com/linux    download the latest sogou ime
``` bash
sudo dpkg -i xxx.deb
sudo apt-get install -f
sudo apt-get install fcitx-table-all
goto System settings/Language support/Keyboard inputmethod system/ change from "IBus" to "fcitx"
reboot
```
重启电脑后，会看到屏幕右上角有企鹅输入fcitx。
然后右键点开，选择ConfigureFcitx。
然后点击弹出的框的左下方的”+“号，添加搜狗输入法，去掉那个只“显示当前语言”的选项，然后搜索框输入sog，你会发现搜狗输入法已经有了，选中输入法即可，然后关闭。
然后打开一个能输入文字的软件，比如word，输入文字的时候，shift键进行中英文切换，你会发现屏幕右上方的搜狗输入法图标有了，搜狗输入法安装成功，输入文字正常，但是这个时候，输入法输入中文显示会乱码，没关系，重启电脑或者下次开机就好了。


# 安装wps
download the latest version from official website
sudo dpkg -i xxx.deb


# 安装VirtualBox
download the latest version from official website   //https://www.virtualbox.org/wiki/Linux_Downloads
sudo dpkg -i 下载文件
download   Oracle_VM_VirtualBox_Extension_Pack-5.2.20-125813.vbox-extpack
sudo usermod -a -G vboxusers xyz

a:下载安装notes,foxmail(记得备份替换foxmail7.2/storage/***@sagereal.com)
b:下载安装RTX
c:下载安装QQ
d:安装驱动	Driver_Auto_Installer_EXE_v1.1352.00
e:配置刷机工具
f:安装搜狗输入法
g:配置打印机


# 安装bcompare
download the latest version from official website
安装完了之后通过终端打开 bcompare 在options设置中添加右键比较功能，重启后生效


# 安装TeamViewer
download the latest version from official website


# 安装右键终端
``` bash
sudo apt-get install gnome-terminal
sudo apt-get install nautilus-open-terminal
```


# Gnome Classic
``` bash
sudo apt-get install gnome-panel
sudo apt-get install gnome-session-flashback
```

# 把launcher设置到底部
``` bash
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
```

# 安装chrome()
download the latest version from official website
``` bash
google-chrome-stable --proxy-server="127.0.0.1:8118" &
```

# 安装markdown阅读器 typora
``` bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora
```


# 安装mocp音乐播放器，并设置为开机自启动
``` bash
sudo apt-get install moc
```

# 安装网易云音乐
download the latest version from official website       //https://music.163.com/#/download


# 安装wechat
wget https://github.com/geeeeeeeeek/electronic-wechat/releases/download/V2.0/linux-x64.tar.gz


# 安装VLC播放器
``` bash
sudo apt install vlc browser-plugin-vlc
```

# 安装主题管理工具 gnome-tweak-tool
``` bash
sudo apt-get install gnome-tweak-tool
```

# 安装字体
``` bash
sudo apt-get install fonts-wqy-microhei
```

# 安装 matcha 主题
sudo add-apt-repository ppa:ryu0/aesthetics
sudo apt-get update
sudo apt install matcha-theme

# 安装 flatabulous 主题(主题可以到　https://www.gnome-look.org/　网站上搜索下载，目前使用Canta theme挺不错)
``` bash
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme
```

# 安装 flatabulous 主题的图标
``` bash
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons
git clone git@github.com:erikdubois/yltra-flat-icon-theme.git
```
把下载下来的图标放到 ~/.icons 目录下，然后用 unity-tweak-tool 工具替换图标

# 安装 Numix 图标
``` bash
sudo apt-add-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle
```

# 安装Early OOM
``` bash
git clone https://github.com/rfjakob/earlyoom.git
cd earlyoom
make
sudo make install
```

# 下载SVG图片查看工具
``` bash
git clone git@github.com:MegatronKing/SVG-Android.git
```

# 下载反编译工具jadx
``` bash
git@github.com:skylot/jadx.git
```

# 安装gnome桌面
``` bash
sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo add-apt-repository ppa:gnome3-team/gnome3
sudo apt update
sudo apt install gnome gnome-shell
```

# 卸载libreoffice
``` bash
sudo apt-get remove libreoffice-common
```

# 卸载firefox
``` bash
sudo apt-get purge firefox
```

# 卸载一些不常用的软件(不建议)
``` bash
sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot onboard deja-dup gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install
```

# 安装gnome桌面通知
``` bash
sudo apt-get install libnotify-bin
notify-send -i /usr/share/pixmaps/faces/fish.jpg "i'm a fish, haha"

sudo apt-get install gnome-osd

//语音播报
spd-say "mission complete"

//mocp　命令行音乐播放器
sudo apt-get install mocp
mocp xx.mp3

//zenity 弹出一个对话框
zenity --info --text="message text"

//调用系统自己的蜂鸣器beep(不建议使用，不好听，可能是频率的问题)
sudo apt-get install beep
因为系统默认屏蔽了蜂鸣器的驱动，所以需要修改 /etc/modprobe.d/blacklist.conf 文件，注释掉里面的blacklist pcspkr
sudo modprobe pcspkr
for i in $(seq 500) ; do  /usr/bin/beep -f 300.7 -r 2 -d 100 -l 400; /bin/sleep 1; done


??有没有办法发送通知到手机上??
```

# 安装pip
sudo apt-get install python-pip
sudo pip --proxy 127.0.0.1:8118 install --upgrade pip

# 安装wechat_sender
sudo pip --proxy 127.0.0.1:8118 install wechat_sender

# 终端发送邮件
[配置方法](https://blog.csdn.net/chijiaodaxie/article/details/77893464)
sudo apt-get install mailutils
mail -s "Test email from ubuntu server!" 356480127@qq.com <<< 'Here is the message body.'
strings `which mail` | grep '\.rc' 　　　　//查找 mail 的配置文件，添加如下信息
set from=356480127@qq.com
set smtp=smtp.qq.com
set smtp-auth-user=zq
set smtp-auth-password=a356480127
set smtp-auth=login


# 如何通过代理链接ssh服务器
``` bash
sudo apt-get install corkscrew
ssh root@45.32.165.125 -o "ProxyCommand corkscrew 127.0.0.1 8118 45.32.165.125 22"
```

# 去掉ubuntu文件中^M符号的方法
sudo apt-get install tofrodos(ubuntu16.04默认安装)
fromdos xxx.txt

# 配置快捷键返回桌面
Settings/Keyboard/Shortcuts/Navigation/Hide all normal windows //把这个改为 WIN+D 键，和windows保持一致
