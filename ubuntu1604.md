# Ubuntu16.04安装文档

## 前期准备

个人资料的整理和备份(推荐最好全盘格式化)
Home目录下的.ssh文件夹，也就是git的id。
如果不想重装虚拟机的话请备份虚拟机，需要重装虚拟机的话请注意备份邮件的id。

## 安装配置编译环境

### 添加源

``` bash
sudo gedit /etc/apt/sources.list
deb http://us.archive.ubuntu.com/ubuntu trusty main universe          #用于mingw32的安装，因为源的原因,直接使用 sudo apt-get install mingw32 会出问题
sudo add-apt-repository ppa:openjdk-r/ppa
```

### 安装软件包

``` bash
sudo apt-get install bison flex gperf tofrodos g++-multilib zip wine curl libxml2-utils mingw32
//如果在终端碰到“你希望继续执行吗？【Y/n】”。选择Y。在中途碰到需要licence的选择时，用上下左右的四个方向键，选择“确定”或“是”，然后回车。
```

### 安装arm-eabi-4.4.3

``` bash
将arm-eabi-4.4.3.tar.gz复制到根目录 /opt下
sudo cp -r /文件路径/arm-eabi-4.4.3.tar.gz /opt
再进入opt文件夹下: cd /opt
解压arm-eabi-4.4.3.tar.gz命令是: sudo tar zvxf arm-eabi-4.4.3.tar.gz 
```

### 安装jdk1.8(N/M)

``` bash
sudo apt-get install openjdk-8-jdk
```

### 安装jdk1.7(KK/L/M)

``` bash
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-7-jdk
```

### 安装jdk1.6

``` bash
cd /
sudo mkdir -p /mtkoss/jdk/1.6.0_45-ubuntu-10.04/x86_64/   	（请查看KK工程根目录下的mbldenv.sh）
cd /mtkoss/jdk/1.6.0_45-ubuntu-10.04/x86_64/
sudo ln -s /opt/jdk1.6.0_27/*  ./

sudo mkdir -p /mtkoss/jdk/jdk1.6.0_23/	（请查看JB工程根目录下的mbldenv.sh）
cd /mtkoss/jdk/jdk1.6.0_23/
sudo ln -s /opt/jdk1.6.0_27/*  ./
```

### modem编译不过

``` bash
提示 perl/make/SHELL 版本过高
a:系统推荐使用 perl5.10.1
sudo apt-get install perlbrew
perlbrew install 5.10.1 //这里会提示失败，因为perlbrew下载包的时候没有走代理，需要先用wget把perl的安装包下载下载，再安装
wget http://www.cpan.org/src/5.0/perl-5.10.1.tar.bz2
perlbrew --notest install /home/zq/perl-5.10.1.tar.bz2 //这里必须使用绝对路径，否则安装不上

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
```

### GNU make编译器降版本

自ubutu15.04及之后，ubutu系统自带的make编译器版本已经是4.1，但是在编译android代码的时候总是报一些莫名其妙的错误，这时候我们需要将make编译器的版本降到3.81版本以支持android代码的编译，具体操作如下(亲测有效):
6.1 下载make3.81的make编译器:
终端输入以下命令，然后等待下载完成:
wget -o make.tar.gz http://ftp.gnu.org/gnu/make/make-3.81.tar.gz    //下载包
tar -xvzf make-3.81.tar.gz
cd make-3.81
./configure
sh build.sh

18.04会报错 undefined reference to `__alloca'
参考 https://stackoverflow.com/questions/51675200/install-older-version-of-gnu-make-in-ubuntu-18-04
把 /home/zq/Downloads/make-3.81/./glob/glob.c 文件中的
if _GNU_GLOB_INTERFACE_VERSION == GLOB_INTERFACE_VERSION
改为
if _GNU_GLOB_INTERFACE_VERSION >= GLOB_INTERFACE_VERSION

sudo make install

PS:make install安装的程序如果需要卸载，一般需要以上第四步执行build.sh后的包，再执行:
sudo make uninstall
即可完成卸载（需要程序支持，很幸运make程序是支持的），所以一般建议保留安装时的安装包。

!!!!!!!!!!!  18.04不可以安装make3.81，安装了之后必须卸载，否则会编译报错

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
虽然以上的解决方案能编译通过，但是这种方法在实际使用中不太好操作，需要寻求更加实用的解决方案。

# android 编译不过

问题1:flex-2.5.39: loadlocale.c:130: _nl_intern_locale_data: Assertion `cnt < (sizeof (_nl_value_type_LC_TIME) / sizeof (_nl_value_type_LC_TIME[0]))' failed.

解决方案：
export LC_ALL=C

问题2:Out of memory error (version 1.2-rc4 'Carnac' (298900 f95d7bdecfceb327f9d201a1348397ed8a843843 by android-jack-team@google.com)).
GC overhead limit exceeded.
Try increasing heap size with java option '-Xmx<size>'.

fix:修改源码目录下prebuilts/sdk/tools/jack-admin文件的JACK_SERVER_VM_ARGUMENTS变量, 
添加-Xmx4096M(这个根据你自己的情况),接着make clean,make -j4重新构建


问题3：错误：prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.15-4.8/x86_64-linux/bin/ld: error: out/host/linux-x86/obj32/EXECUTABLES/libaapt2_tests_intermediates/split/TableSplitter_test.o: file is empty

fix: ln -s /usr/bin/ld.gold prebuilts/gcc/linux-x86/host/x86_64-linux-glibc2.11-4.8/x86_64-linux/bin/ld


问题4：Communication error with Jack server (52). Try 'jack-diagnose'

fix:
#out/host/linux-x86/bin/jack-admin kill-server 
#out/host/linux-x86/bin/jack-admin start-server


## fatal error: openssl/bio.h: No such file or directory 解决方案

出现这个或者fatal error: openssl/名单.h: No such file or directory。都是没有安装libssl-dev～
libssl-dev包含libraries, header files and manpages，他是openssl的一部分，而openssl对ssl进行了实现～

``` bash
sudo apt-get install libssl-dev
```

## 安装git

``` bash
sudo apt-get install git qgit git-core
安装完成时候将前期保存下来的.ssh文件夹放到Home下面，此时去拉个代码试试是否能能够拉代码。
以下这两项是配置name和邮箱的，跟拉代码没有关系，但是在上传代码的时候会要求设置这两项，所以推荐直接配置完:
git config --global user.name "Your Name"     #Your Name换成自己的名字，全小写
git config --global user.email "Your Name@example.com"        #Your Name@example.com换成自己公司使用的邮箱
//中文乱码的问题
git config --global core.quotepath false
```

//复制下面这段代码到~/.gitconfig文件中

``` bash
[color]
    ui = true
[user]
    name = xyz
    email = xyz@zyx.com
[credential]
    helper = cache --timeout 3600
```

生成秘钥给git服务器管理人员
``` bash
ssh-keygen -t rsa
```

## git clone github 上面代码的时候很慢

``` bash
在 /etc/hosts 文件中添加如下host
151.101.72.249 http://global-ssl.fastly.net
192.30.253.112 http://github.com
```

## github push 不上去

``` bash
Could not resolve hostname ssh.github.com: Name or service not known
在 /etc/hosts 文件中添加如下host
192.30.253.122 ssh.github.com

添加了之后用如下命令测试
ssh -T git@github.com
成功了之后会显示success
```

## github clone ssh 下载不了???

## 配置USB

``` bash
sudo gedit /etc/udev/rules.d/51-android.rules
SUBSYSTEM=="usb", ATTRS{idVendor}=="0e8d", ATTRS{idProduct}=="201c",MODE="0666"
sudo chmod a+x /etc/udev/rules.d/51-android.rules
//驱动重新加载
sudo /etc/init.d/udev restart
```

## 安装sqlite3可视化工具

``` bash
sudo apt-get install sqlite3
sudo apt-get install sqlitebrowser
sudo apt-get install sqliteman

//常用指令
.database
.tables
.schema
.dump table_name
.separator :
.mode column
.width 2
.show
.help
.quit
.exit

create table student_info(stu_no interger primary key, name text);
Insert into student_info(stu_no, name) values(0001, alex);
update student_info set stu_no=0001, name=hence where stu_no=0001;
delete from student_info where stu_no=0001;
select * from student_info;
```

## 安装SourceInSight

``` bash
用wine安装 sourceinsight.exe
```

## 链接adb

``` bash
sudo ln -s /home/xyz/Android/Sdk/platform-tools/adb /usr/bin/adb
1.0.40的adb push目录的时候会卡???

sudo apt-get install adb aapt fastboot
```

## 把android开发工具添加到环境变量

``` bash
export PATH=/home/xyz/Android/Sdk/tools:$PATH
```

## 禁止USB自动弹出

``` bash
gsettings set org.gnome.desktop.media-handling automount-open false
```

## 去掉开机启动显示：System program problem detected

``` bash
sudo gedit /etc/default/apport
将enabled=1改为enabled=0保存退出即可
```

## 写脚本是通过管道自动输入密码或者指令

``` bash
echo '你的密码' | sudo -S 执行命令
```

## 安装Qt开发工具

``` bash
download the latest version from http://download.qt.io/archive/qt/
chmod +x qt-opensource-linux-x64-5.12.0.run
sudo apt-get install libgl1-mesa-dev    #否则在运行的时候会报错 can't find -lGL error
./qt-opensource-linux-x64-5.12.0.run
```

## 链接adbkill

``` bash
alias adbkill='_adbkill(){ adb shell kill `adb shell ps | grep $1 | awk {'\''print $2'\''} | head -n 1`; }; _adbkill'
```

## Privoxy

``` bash
sudo apt-get install privoxy

# /etc/privoxy/config
forward-socks5 / 127.0.0.1:1080 .
listen-address  localhost:8118   //forward port 1080 to 8118

# 修改了之后重启试一下看是否能成功，不成功的话可能是 /etc/privoxy/config 文件修改有问题
sudo /etc/init.d/privoxy restart

# /etc/apt/apt.conf
Acquire::http::proxy "http://127.0.0.1:8118/";
Acquire::https::proxy "https://127.0.0.1:8118/";
Acquire::ftp::proxy "ftp://127.0.0.1:8118/";
Acquire::socks::proxy "socks://127.0.0.1:8118/";


# ~/.bashrc
export http_proxy=http://127.0.0.1:8118/
export https_proxy=http://127.0.0.1:8118/
```

## 查看端口占用情况
sudo netstat -lnp | grep "1080"

## 配置electron-ssr

a.下载electron-ssr
https://github.com/erguotou520/electron-ssr/releases

b.下载shadowsocksr
``` bash
git clone https://github.com/ssrbackup/shadowsocksr
```

c.删除~/.config/electron-ssr/中的缓存文件
``` bash
rm -r ~/.config/electron-ssr/
```

d.并配置ssr的local.py为shadowsocksr中的local.py

e.可能会有1080端口被占用的情况，可通过如下命令查看
``` bash
sudo netstat -lnp | grep "1080"

f.修改ssr配置文件
gedit ~/.config/electron-ssr/gui-config.json

    "configs": [
		{
			"enable": true,
			"group": "ssrcloud",
			"id": "340329CF8B708D960F5578EAD973EEC0",
			"method": "aes-256-cfb",
			"obfs": "plain",
			"obfsparam": "",
			"password": "f3YcTD",
			"protocol": "origin",
			"protocolparam": "",
			"remarks": "",
			"remarks_base64": "",
			"server": "htk03.bilibilivpn.com",
			"server_port": 8139
		}
	],
	
	"configs": [
		{
			"enable": true,
			"group": "ssrcloud",
			"id": "340329CF8B708D960F5578EAD973EEC0",
			"method": "aes-256-cfb",
			"obfs": "plain",
			"obfsparam": "",
			"password": "4815912",
			"protocol": "origin",
			"protocolparam": "",
			"remarks": "",
			"remarks_base64": "",
			"server": "155.138.203.190",
			"server_port": 995
		}
	],
```

## 安装proxychains

``` bash
sudo apt-get install proxychains
```

## 配置Shadowsocks PAC全局代理

[PAC](https://www.litcc.com/2016/12/29/Ubuntu16-shadowsocks-pac/index.html)

``` bash
sudo apt-get install python-pip
sudo pip install genpac
pip install --upgrade genpac
genpac --pac-proxy "SOCKS5 127.0.0.1:1080" --gfwlist-proxy="SOCKS5 127.0.0.1:1080" --gfwlist-url=https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt --output="autoproxy.pac"
```

## 安装配置ccache

``` bash
sudo apt-get install ccache

ccache -M 50G

alps/prebuilts/misc/linux-x86/ccache -M 50G

export USE_CCACHE=1
export CCACHE_SLOPPINESS=file_macro,include_file_mtime,time_macros
export CCACHE_UMASK=002
export CCACHE_DIR=/home/zq/.ccache

监测ccache的变化
watch -n1 -d ccache -s
```

## VPS ShadowSocks服务器一键安装脚本

``` bash
wget --no-check-certificate https://raw.githubusercontent.com/iMeiji/shadowsocks_install/master/shadowsocks-go.sh && chmod +x shadowsocks-go.sh && ./shadowsocks-go.sh

端口设置为995
```

## 安装 ShadowSocks-qt5

``` bash
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5
```

## 安装最新版 AndroidStudio

``` bash
download the latest version from official website
```

## 安装最新版 Eclipse

``` bash
https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2018-09/R/eclipse-inst-linux64.tar.gz

or:
sudo apt-get install eclipse

配置eclipse adt
配置sdk
配置快捷键
配置eclipse用4个空格代替tab??
配置eclipse的格式化模板？？把之前的配置文件保存到github上，最好能配置成自动同步？？

安装fx插件
http://download.eclipse.org/efxclipse/updates-released/2.3.0/site

fxjava的jar包
https://github.com/qweasdzxcpoi/JavaFX/blob/master/jfxrt.jar

问题：Graphics Device initialization failed for :  es2, sw
解决：sudo apt-get install openjfx

问题：Gtk-WARNING **: Unable to locate theme engine in module_path: "adwaita",
解决：sudo apt-get install gnome-themes-standard

安装配置JavaFX Scene Builder
/opt/JavaFXSceneBuilder2.0/

问题：OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=256m; support was removed in 8.0
解决：去掉 /etc/eclipse.ini 中的 MaxPermSize=256m

问题：monitor打不开，java.lang.IllegalStateException: Unable to acquire application service. Ensure that the org.eclipse.core.runtime bundle is resolved and started (see config.ini).
解决：只要通过 sudo update-alternative --config java 把java版本改为1.8即可
```

## 安装VSCode

``` bash
download the latest version from official website　　https://code.visualstudio.com/

https://zhuanlan.zhihu.com/p/34989844
设置vscode为默认编辑器
xdg-mime default code.desktop text/plain
sudo update-alternatives --set editor /usr/bin/code
必备插件
Beautify：代码高亮
Terminal：直接唤起终端
Project Manager：多个项目切换
Auto Close Tag：标签自动闭合（其实我觉得可以内置的）
ext install emmanuelbeziat.vscode-great-icons
ext install Equinusocio.vsc-material-theme
ext install dracula-theme.theme-dracula
ext install Shan.code-settings-sync     vscode-settings-sync token:40de813e6082287da381530a5fc19f7dddb3133d
ext install IBM.output-colorizer
ext install donjayamanne.githistory
ext install oderwat.indent-rainbow
ext install felipecaputo.git-project-manager
ext install formulahendry.code-runner
ext install CoenraadS.bracket-pair-colorizer

快捷键？
搜索上一个/下一个的快捷键？？

代码片段
$HOME/.config/Code/User/snippets/(language).json

安装Java Imports Snippets
F1 -> ext install tushortz.java-imports-snippets

//常用代码片段？？如何自动同步保存到github上？？
class --> To trigger a class definition statement
main --> To auto-complete main method
method to trigger a normal method with return capability
pe or serr --> To trigger error printing to the console
pl or sout --> To trigger printing to the console
try --> To trigger a try/catch clause
void --> To trigger a void method declaration

//手动添加代码片段
https://code.visualstudio.com/docs/editor/userdefinedsnippets
```

## "Visual Studio Code is unable to watch for file changes in this large workspace" (error ENOSPC)

``` bash
/etc/sysctl.conf
fs.inotify.max_user_watches=524288
sudo sysctl -p
```

## 安装ubuntu flashtool

``` bash
sudo apt-get remove modemmanager

# 官方下载地址
https://spflashtools.com/category/linux
https://androidmtk.com/smart-phone-flash-tool

#报错1：Connect BROM failed: STATUS_ERR
USB port is obtained. path name(/dev/ttyACM0), port name(/dev/ttyACM0)
USB port detected: /dev/ttyACM0
Connect BROM failed: STATUS_ERR
Disconnect!

sudo gedit  /etc/udev/rules.d/53-android.rules

这个文件是用于adb调试的，在打开的文件中增加以下文本：
SUBSYSTEM=="usb", SYSFS{idVendor}=="0bb4", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}="0bb4", ATTR{idProduct}="0c03", SYMLINK+="android_adb"
sudo gedit  /etc/udev/rules.d/53-MTKinc.rules
这个文件是用于下载的，在打开的文件中增加以下文本：
SUBSYSTEM=="usb", SYSFS{idVendor}=="0e8d", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}="0e8d", ATTR{idProduct}="2000", SYMLINK+="android_adb"
KERNEL=="ttyACM*", MODE="0666"
驱动重新加载：
sudo chmod a+rx /etc/udev/rules.d/53-android.rules
sudo chmod a+rx /etc/udev/rules.d/53-MTKinc.rules
sudo /etc/init.d/udev restart       
备注：idVendor 与 idProduct的通过lsusb命令查看
KERNEL=="ttyACM*", MODE="0666"是给flash_tool运行过程中生成的设备文件增加权限，这样不需要管理员权限即可运行。

使用MTK下载工具（驱动程序已安装）无法下载的，可使用如下方法（Ubuntu14.04以上）：
sudo apt-get remove modemmanager
sudo /etc/init.d/udev restart
```

## 安装nodejs

``` bash
sudo apt-get install npm
npm config set proxy=http://127.0.0.1:8118
npm config set registry=http://registry.npmjs.org
npm config set proxy http://127.0.0.1:8118
npm config set https-proxy http://127.0.0.1:8118
```

## 安装hexo

``` bash
sudo npm install hexo-cli -g
```

## 安装xmind

``` bash
https://www.xmind.net/download/xmind8/
直接解压打开arm64下的可执行程序即可
```

## 安装freemind(思维工具用于打开mm格式的文件)

``` bash
sudo snap install freemind
```

## 安装sogou输入法

``` bash
http://pinyin.sogou.com/linux    download the latest sogou ime
sudo dpkg -i xxx.deb
sudo apt-get install -f
sudo apt-get install fcitx-table-all
goto System settings/Language support/Keyboard inputmethod system/ change from "IBus" to "fcitx"
reboot

重启电脑后，会看到屏幕右上角有企鹅输入fcitx。
然后右键点开，选择ConfigureFcitx。
然后点击弹出的框的左下方的"+"号，添加搜狗输入法，去掉那个只“显示当前语言”的选项，然后搜索框输入sog，你会发现搜狗输入法已经有了，选中输入法即可，然后关闭。
然后打开一个能输入文字的软件，比如word，输入文字的时候，shift键进行中英文切换，你会发现屏幕右上方的搜狗输入法图标有了，搜狗输入法安装成功，输入文字正常，但是这个时候，输入法输入中文显示会乱码，没关系，重启电脑或者下次开机就好了。
```

## 安装google拼音

``` bash
sudo apt-get install fcitx fcitx-googlepinyin im-config
```

## 安装WPS

``` bash
http://www.wps.cn/product/wpslinux#
sudo dpkg -i xxx.deb

or

sudo apt-get install wps-office
```

## 安装VirtualBox + 安装虚拟机

``` bash
https://www.virtualbox.org/wiki/Linux_Downloads
sudo dpkg -i 下载文件
download   Oracle_VM_VirtualBox_Extension_Pack-5.2.20-125813.vbox-extpack
sudo usermod -a -G vboxusers xyz

a:下载安装notes,　foxmail(记得备份替换foxmail7.2/storage/***@sagereal.com)
b:下载安装RTX
c:下载安装QQ
d:安装驱动 Driver_Auto_Installer_EXE_v1.1352.00
e:配置刷机工具
f:安装搜狗输入法
g:配置打印机
开始->设备和打印机->添加打印机->添加网络、无线或Bluetooth打印机->我需要的打印机不在列表中->使用TCP/IP地址或主机名添加打印机
设备类型：TCP/IP设备
主机名或IP地址：192.168.3.101
端口名称：192.168.3.101
```

## 安装bcompare

``` bash
https://www.scootersoftware.com/download.php
安装完了之后通过终端打开 bcompare 在options设置中添加右键比较功能，重启后生效

破解
https://www.cnblogs.com/bluestorm/p/10259441.html
```

## 安装TeamViewer

``` bash
https://www.teamviewer.com/en/download/linux/
```

## 安装右键终端

``` bash
sudo apt-get install gnome-terminal nautilus-open-terminal
```

## 修改开机启动项的显示时间

``` bash
sudo gedit /etc/default/grub
GRUB_TIMEOUT=4
sudo update-grub
```

## 使用apt-fast取代apt-get

``` bash
sudo add-apt-repository ppa:apt-fast/stable
sudo apt-get update
sudo apt-get install apt-fast
```

## 用TLP降低发热

``` bash
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
sudo tlp start
```

## 安装preload

``` bash
sudo apt-get install preload
```

## 安装cpufreq指示器，并设置到powersave模式

``` bash
sudo apt-get install indicator-cpufreq
```

## 从 apt-get 更新移除语言相关的 ign

``` bash
sudo gedit /etc/apt/apt.conf.d/00aptitude
Acquire::Languages "none";
```

## 清理apt安装的程序

``` bash
sudo apt-get clean
sudo apt-get autoremove
sudo apt-get remove xxx
```

## vpnc

``` bash
sudo apt-get install vpnc
```

## openssh-server

``` bash
sudo apt-get install openssh-server
```

## unrar

``` bash
sudo apt-get install unrar
```

## Gnome Classic

``` bash
sudo apt-get install gnome-panel
sudo apt-get install gnome-session-flashback
```

## 把launcher设置到底部

``` bash
gsettings set com.canonical.Unity.Launcher launcher-position Bottom  // Left为左边
```

## 将某个文档中的jack字符串替换为tom

``` bash
sed -i "s/jack/tom/g" test.txt
```

## 安装Chrome

``` bash
https://www.google.cn/intl/zh-CN/chrome/
google-chrome-stable --proxy-server="127.0.0.1:8118" &

安装chrome插件
chrome-gnome-shell

#解决Ubuntu无法从外部应用启动Chrome打开链接的问题
https://blog.csdn.net/Artprog/article/details/71076111
打开文件:gedit ~/.local/share/applications/google-chrome.desktop 
找到下面这行:
Exec=/opt/google/chrome/chrome
在末尾添加一个空格和%U:
Exec=/opt/google/chrome/chrome %U
然后保存文件即可
```

## 安装markdown阅读器 typora，其实不需要安装，使用vscode也能打开

``` bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora
```

## 安装mocp音乐播放器，并设置为开机自启动??如何设置为开机自启动？

``` bash
sudo apt-get install moc
如何开机自启动mocp？
在 gnome-tweak 中添加
```

## 安装网易云音乐

``` bash
download the latest version from https://music.163.com/#/download
```

## 安装wechat

``` bash
wget https://github.com/geeeeeeeeek/electronic-wechat/releases/download/V2.0/linux-x64.tar.gz
```

## 安装VLC播放器

``` bash
sudo apt-get install vlc browser-plugin-vlc
```

## 安装解码器

``` bash
sudo apt install ubuntu-restricted-extras
```

## 安装主题管理工具 gnome-tweak-tool

``` bash
sudo apt-get install gnome-tweak-tool
```

## 安装字体

``` bash
sudo apt-get install fonts-wqy-microhei fonts-droid ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming
```

## 安装 matcha 主题

`` bash
sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf

sudo add-apt-repository ppa:ryu0/aesthetics
sudo apt-get update
sudo apt-get install matcha-theme

or

git clone https://github.com/vinceliuice/matcha.git
cd matcha
./Install
```

## 终端美化，优化

``` bash
https://blog.jae.sh/article/zqle60.html
sudo apt-get install zsh -y
sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh
```

# 查看zsh主题列表(agnoster比较好看)
``` bash
ll ~/.oh-my-zsh/themes
```

# 修改主题
``` bash
sudo gedit ~/.zshrc
source ~/.bashrc
```

# 解决zsh卡顿的问题，可以使用以下命令禁止zsh自动获取git信息，解决卡顿问题
``` bash
git config --global oh-my-zsh.hide-status 1
```

# zsh插件列表
``` bash
ll ~/.oh-my-zsh/plugins
```

# 安装zsh-autosuggestions插件
``` bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

# 安装zsh-syntax-highlighting插件
``` bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

# zsh git插件命令
``` bash
https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
```

# oh-my-zsh.sh line 34 syntax error near unexpected token ('
可能是没有把zsh设置为默认sh, chsh -s $(which zsh) , 修改完之后需要重启，否则不生效

# 更新你OMZ
``` bash
upgrade_oh_my_zsh
更新失败？？
```

# zsh终端会显示中文？
``` bash
sudo gedit ~/.zshrc
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#export LC_ALL=zh_CN.UTF-8
#export LANG=zh_CN.UTF-8
```

## 安装guake(F12打开终端)

``` bash
sudo apt-get install guake
在 Startup Application 中设置为开机自启动
```

## 安装 flatabulous 主题(主题可以到　https://www.gnome-look.org/　网站上搜索下载，目前使用 Canta theme挺不错)

``` bash
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme
```

## 安装 flatabulous 主题的图标

``` bash
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons
git clone git@github.com:erikdubois/yltra-flat-icon-theme.git
把下载下来的图标放到 ~/.icons 目录下，然后用 unity-tweak-tool 工具替换图标
```

## 安装 Numix 图标

``` bash
sudo apt-add-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme-circle
```

## 安装macos主题和鼠标

``` bash
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update
sudo apt-get install macbuntu-os-icons-lts-v7
sudo apt-get install macbuntu-os-ithemes-lts-v7
```

## 安装Early OOM

``` bash
git clone https://github.com/rfjakob/earlyoom.git
cd earlyoom
make
sudo make install
```

## 安装系统负载指示器

``` bash
sudo apt-get install -y indicator-multiload
```

## 经典菜单指示器

``` bash
sudo apt-add-repository ppa:diesch/testing
sudo apt-get update
sudo apt-get install classicmenu-indicator
```

## 安装dock

``` bash
sudo apt-get install cairo-dock

or:

sudo apt-get install docky
```

## 下载SVG图片查看工具

``` bash
git clone git@github.com:MegatronKing/SVG-Android.git
```

## SVG转换成android的xml文件

``` bash
https://pan.baidu.com/s/1bp9HANH?errno=0&errmsg=Auth%20Login%20Sucess&&bduss=&ssnerror=0&traceid=
```

## 安装FBReader电子书阅读器

``` bash
sudo apt-get install fbreader
```

## 下载反编译工具jadx

``` bash
git clone git@github.com:skylot/jadx.git
```

## 安装gnome桌面

``` bash
sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo add-apt-repository ppa:gnome3-team/gnome3
sudo apt-get update
sudo apt-get install gnome gnome-shell gnome-shell-extensions
```

## 下载安装配置MailSpring

``` xml
https://getmailspring.com/download

IMAP
mail.sagereal.com　 143
SMTP
smtp.sagereal.com  25

QQ
IMAP
imap.qq.com  993  SSL
SMTP
smtp.qq.com  465  SSL
```

## 安装gitbook

``` bash
sudo npm i -g gitbook gitbook-cli
//本地进入到本项目根目录
gitbook install
//gitbool install的时候报如下错误
/usr/bin/env: node: No such file or directory
sudo ln -s /usr/bin/nodejs /usr/bin/node
gitbook serve 　　　　//运行网站
```

## SimpleNote(笔记)

``` bash
download the latest version from https://simplenote.com/
sudo dpkg -i xxx.deb
```

## TestDisk(恢复数据用)

``` bash
download the latest version from https://www.cgsecurity.org/wiki/TestDisk_Download
```

## Stacer(卸载软件和数据用)

``` bash
download the latest version from https://github.com/oguzhaninan/Stacer
sudo dpkg -i xxx.deb
```

## 安装pdf阅读器

``` bash
sudo apt-get install okular
```

## DropBox(网盘)

``` bash
download the latest version from https://www.dropbox.com/install
sudo dpkg -i xxx.deb
```

## Telegram

``` bash
sudo add-apt-repository ppa:atareao/telegram
sudo apt-get update
sudo apt-get install telegram
sudo apt-get remove telegram
```

## 压缩工具

``` bash
sudo apt-get install unrar zip unzip
```

## FileZilla(FTP客户端)

``` bash
sudo apt-get install filezilla
```

## Peek(屏幕录制)

``` bash
sudo add-apt-repository ppa:peek-developers/stable
sudo apt-get update
sudo apt-get install peek
```

## Calibre(kindle电子书管理工具)

``` bash
download the latest version from
sudo mkdir -p /opt/calibre && sudo rm -rf /opt/calibre/* && sudo tar xvf calibre-3.37.0-x86_64.txz -C /opt/calibre && sudo /opt/calibre/calibre_postinstall

sudo apt-get install calibre
```

## 卸载 LibreOffice

``` bash
sudo apt-get remove libreoffice-common
```

## 卸载 FireFox

``` bash
sudo apt-get purge firefox
```

## 卸载一些不常用的软件(不建议)

``` bash
sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot onboard deja-dup gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku landscape-client-ui-install
```

## 安装gnome桌面通知

``` bash
sudo apt-get install libnotify-bin
notify-send -i /usr/share/pixmaps/faces/fish.jpg "i'm a fish, haha"

sudo apt-get install gnome-osd

//语音播报
spd-say "mission complete"

//mocp　命令行音乐播放器
sudo apt-get install moc
mocp -l xx.mp3

//zenity 弹出一个对话框
zenity --info --text="message text"

//调用系统自己的蜂鸣器beep(不建议使用，不好听，可能是频率的问题)
sudo apt-get install beep
因为系统默认屏蔽了蜂鸣器的驱动，所以需要修改 /etc/modprobe.d/blacklist.conf 文件，注释掉里面的blacklist pcspkr
sudo modprobe pcspkr
for i in $(seq 500) ; do  /usr/bin/beep -f 300.7 -r 2 -d 100 -l 400; /bin/sleep 1; done

??有没有办法发送通知到手机上??
```

## 安装pip

``` bash
sudo apt-get install python-pip
sudo pip --proxy 127.0.0.1:8118 install --upgrade pip
```

## 安装wechat_sender

``` bash
sudo pip --proxy 127.0.0.1:8118 install wechat_sender
how to use it??
```

## 终端发送邮件

[配置方法](https://blog.csdn.net/chijiaodaxie/article/details/77893464)

``` bash
sudo apt-get install mailutils
mail -s "Test email from ubuntu server!" 356480127@qq.com <<< 'Here is the message body.'
strings `which mail` | grep '\.rc' 　　　　//查找 mail 的配置文件，添加如下信息
set from=356480127@qq.com
set smtp=smtp.qq.com
set smtp-auth-user=zq
set smtp-auth-password=a356480127
set smtp-auth=login
```

## 如何通过代理链接ssh服务器

``` bash
sudo apt-get install corkscrew
ssh root@149.28.98.137 -o "ProxyCommand corkscrew 127.0.0.1 8118 149.28.98.137 22"
```

## 去掉ubuntu文件中^M符号的方法

``` bash
sudo apt-get install tofrodos(ubuntu16.04默认安装)
fromdos xxx.txt
```

## audit2allow
sudo apt-get install policycoreutils

## 配置快捷键返回桌面

``` bash
Settings/Keyboard/Shortcuts/Navigation/Hide all normal windows //把这个改为 WIN+D 键，和windows保持一致
```

## 安装gpick取色器（不好用，不建议安装）

``` bash
sudo apt-get install gpick
```

## nautilus文件夹进不去

``` bash
** Message: Init Stock Icons

(nautilus:12030): Gtk-WARNING **: Theme parsing error: <broken file>:1:0: Failed to import: The resource at '/org/gnome/libgd/tagged-entry/default.css' does not exist
Nautilus-Share-Message: Called "net usershare info" but it failed: Failed to execute child process "net" (No such file or directory)
**
ERROR:nautilus-canvas-container.c:6021:finish_adding_new_icons: assertion failed: (!container->details->auto_layout)
Aborted (core dumped)

解决方法：
```

## nautilus搜索功能type ahead search

``` bash
sudo add-apt-repository ppa:lubomir-brindza/nautilus-typeahead
sudo apt-get dist-upgrade

```

## MTK文档密码

``` bash
PDF File open password:
1498169196(第一个密码)
3692842215(若第一个密码失效,可以试一试这个)
2894058698
3627735875

部分旧的文档，需要使用密码：
1977051217
```

## MTK eservice密码

``` bash
zhangzhefeng@sagereal.com 
sagereal%2019
```

## 修改hosts文件立马生效

``` bash
sudo /etc/init.d/networking restart
```

## 配置gedit

``` bash
https://lujun9972.github.io/blog/2018/04/23/%E7%A8%8B%E5%BA%8F%E5%91%98%E4%BD%BF%E7%94%A8%E7%9A%84gedit%E9%85%8D%E7%BD%AE/
https://help.gnome.org/users/gedit/stable/index.html.zh_CN
//安装第三方插件
https://wiki.gnome.org/Apps/Gedit/ThirdPartyPlugins_v3.14

//插件安装路径
~/.local/share/gedit/plugins/

调出嵌入终端 Ctrl+F9(View -> Bottom panel)
Preferences->Editor->Enable automatic indentation 自动缩进

CTRL+F9 调出内置终端
CTRL+M  注释
CTRL+SHIFT+M 反注释

配置代码片段
manage snippets
```

## 安装参数配置工具

``` bash
sudo apt-get install dconf-editor
org.gnome.gedit
```

## 在线TTF字体编辑器

[在线TTF字体编辑器](http://fontstore.baidu.com/static/editor/index.html)

[Github源码](https://github.com/ecomfe/fonteditor)

## 修改~/.bashrc文件

``` bash
export http_proxy=http://127.0.0.1:8118/
export https_proxy=http://127.0.0.1:8118/
export no_proxy="localhost,127.0.0.1"

alias chrome='google-chrome-stable --proxy-server="127.0.0.1:8118" &'

alias adbkill='_adbkill(){ adb root;adb remount;adb shell kill `adb shell ps | grep $1 | awk {'\''print $2'\''} | head -n 1`; }; _adbkill'

alias adbrestart='echo 4815912 | sudo -S adb kill-server && echo 4815912 | sudo -S adb start-server'

alias nosleep='adb shell settings put system screen_off_timeout 1800000'

alias logcat='adb logcat -c && adb logcat -G 200M && adb logcat | grep $1'

alias notice='_notice(){ alert $1; mocp -l /home/zq/sounds/ring3.ogg; date; }; _notice'
# mail -s $1 356480127@qq.com <<< $1; }; _notice

alias studio='/home/zq/Downloads/android-studio/bin/studio.sh'

alias mm='ln -s /home/zq/github/MyResources/mm $pwd'

alias svg='java -jar /home/zq/github/SVG-Android/svg-vector-applet/bat/svg2vector-applet-1.0.1.jar &'

export PATH=/home/zq/Android/Sdk/tools:$PATH

# Flutter
export PATH=/home/zq/Flutter/flutter/bin:$PATH
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PUB_HOSTED_URL=https://pub.flutter-io.cn

## crontab定时任务

``` bash
sudo service cron start     #启动服务
sudo service cron stop      #关闭服务
sudo service cron restart   #重启服务
sudo service cron reload    #重新载入配置
sudo service cron status    #查看服务状态

//编辑定时任务列表
crontab -e

//修改完了之后重新载入配置即可
echo 4815912 | sudo -S service cron reload

//每分钟执行一次播放音乐的任务
* * * * * mocp -l /home/zq/sounds/ring3.ogg

* * * * * google-chrome %U https://readfree.me/ ？？？？

在crontab中执行需要指定设备，如下：
16.04
export DISPLAY=:0 && google-chrome %U https://readfree.me/;
18.04
export DISPLAY=:1 && google-chrome %U https://readfree.me/;

//每天23:59定时更新MyResources中的修改到github服务器
43 10 * * * cd ~/github/MyResources;bash everyday.sh

//查看定时任务列表
crontab -l

//选择默认编辑器
select-editor
```

## ubuntu右键new document没有创建文本文档的选项？

在 home/Templates 中添加一个空的文本文档即可

## ubuntu18.04 gedit Ubuntu gedit报错Gtk-WARNING **: cannot open display: :0.0 解决办法

https://blog.csdn.net/Lucifer_zzq/article/details/85258429
``` bash
xhost +
```

## gsettings编辑器

dconf-editor

## TodoList

``` bash
notice 修改成功和失败时候的铃声和图标
如何判断某个模块没有发生变化？
如何在程序中执行脚本？QT？
把lint功能整合进来？lint怎么用？？？？？？？？？
如何检测手机是否开机？
在注释中添加生效的路径（如：Settings/Display/Auto-rotate screen）,方便别人查看验证
研究开发按键输入法
把培训做成视频
整理bug并归类？？？？？？？最好能整理成一个树（思维导图）
如何通过命令或工具把PC上的通知发送到自己手机（小米）上？？？
如何检测是否插入了usb？？
研究HierarchyView的工作原理
adb remount 之后如何判断是否成功？
开发vscode上的插件，android snippets
开发chrome插件
git push 之后延时10秒左右发送一个通知提示可以查看gerrit？？？
为什么crontab中执行打开浏览器的脚本不成功？ google-chrome %U http://readfree.me
在终端gedit打开文件不会弹出来显示？
在chrome中会双击删除？
如何创建微信的快捷方式到docker?

mysql

docker            https://thelinuxcode.com/how-to-install-docker-container-in-ubuntu/

vscode configuration save to server auto ????

couch cms         https://thelinuxcode.com/how-to-install-couch-cms-on-ubuntu-16-04-17-10/
```
