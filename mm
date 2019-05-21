#!/bin/bash

#PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
#export PATH

    # TODO : remove tests files
    ## find . -name "Android.mk" | grep "/tests/Android.mk" > tests.txt

    # TODO : 怎么判断是哪个平台的代码？KK, L, M, N, O, P？
    ## 根据 build/core/version_defaults.mk 中的 PLATFORM_SDK_VERSION 版本号判断
    ##KK : 19,20
    ## L : 21,22
    ## M : 23
    ## N : 24,25
    ## O : 26,27

    # TODO : 怎么判断这个脚本已经放在 alps 目录下了？
    ## 判断 mk 文件是否存在

    # TODO : 记录下开始的时间和结束的时间，还有点问题，有时候会出现错误
    ## startTime=`date +"%s.%N"`
    ## endTime=`date +"%s.%N"`

    # TODO : 如果 $1 是空的怎么办？如何判断输入的参数是否为空？
    ## if [ ! -z $1 ] ; then

    # TODO : 如何终止脚本执行？
    ## exit 0; #失败退出

    # TODO : 获取当前分支名称
    ## git symbolic-ref --short -q HEAD

    # TODO : 获取当前日期
    ## dateStr=`date +%Y/%m/%d`;

# TODO : 如何从编译的log中提取出 install， push 的时候直接从编译出来的文件中获取出目标路径

    # TODO : 如何判断下面的这些基础命令是否存在？adb, mocp

# TODO : 如何判断要编译的项目是否包含widevine？

# TODO : 如何判断某个模块是否经过修改？

# TODO : 如何在程序中执行脚本？QT？

# TODO : 修改编译成功和失败时候的通知铃声？通知图标？

# TODO : ICU资源的一键 编译、push、重启、拷贝 脚本？

# TODO : new 完之后发送一封邮件到指定邮箱？没有外网怎么办，如何配置？

# TODO : new 完之后直接模块编译一下几个比较常用的并比较耗时的模块？framework,fres,MtkSystemUI,MtkSettings

# TODO : new完之后打开 sudo ./flash_tool

# TODO : 在mm某个模块之前先检查out/target/common中是否已经编译过该模块？

# TODO : 如何添加 -t -m -p 等开关？

# TODO : 一键加宏功能？添加提示需要注意修改哪些文件？

    # TODO : new 完之后直接把软件打包？
    ##zip -r FileName.zip DirName

# TODO : new 完之后直接把软件做成MSU？

# TODO : new 完之后把软件直接拷贝到31上？

# TODO : 如何监听手机的重启

# TODO : 如何监听USB的插拔状态

# TODO : 一键签名脚本java -jar

# TODO : 如何通过脚本修改文件中的内容？比如删除 frameworks/base/Android.mk 文件中的 platformprotos

# TODO : 刷机完成之后自动开机？在DA中修改？是否需要修改工具？

# TODO : 把 Logcat 整合成一条命令 logcat

# TODO : 把 adb shell settings get/set 整合成一条命令 settings get/set
#adb shell cat /data/system/users/0/settings_system.xml
#adb shell cat /data/system/users/0/settings_secure.xml
#adb shell cat /data/system/users/0/settings_global.xml

# TODO : 把 adb shell pm clear 整合成一条命令 adbclear

# TODO : 用JavaFx开发一些工具，比如：查看颜色，常用配色等

# TODO : 如何通过redmine的id获取标题？

# TODO : 在 commit 之后，显示redmine模板？？？

# TODO : 把配置ccache方法整合进来

# TODO : 把拉代码的脚本整合进来？？

# TODO : 把模块名称做成忽略大小写的？？

# TODO : 每天定时编译，crontab实现？

    # TODO : 每天11:20分提醒吃饭

# TODO : 每天提醒要做的事情？

#####################################################

# TODO : ERP管理系统？

    # TODO : 自动登录签到系统？自动签到已通过crontab实现

# TODO : 微信读书刷钱系统

# TODO : 微信群发系统


# 按power键无法返回到home，是因为开机向导没有过完
# adb shell settings put secure user_setup_complete 1

# 用aapt解析apk文件
# aapt dump badging Terminal.apk



remount(){
    adb root;
    adb remount;
}

notice(){
    notify-send $1;
    mocp -l /home/zq/sounds/ring3.ogg;
    date;
}

removetest(){
    if [ -f $1 ] ; then
        rm $1;
    fi
}

removetests(){
    removetest vendor/mediatek/proprietary/packages/services/Telecomm/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/providers/ApplicationsProvider/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/providers/DownloadProvider/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/providers/ContactsProvider/tests/Android.mk
    #removetest vendor/mediatek/proprietary/packages/apps/Camera2/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/CalendarImporter/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/MtkSettings/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/SystemUI/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/VoiceCommand/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/Bluetooth/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/FileManager/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/EngineerMode/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/DocumentsUI/app-perf-tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/DocumentsUI/perf-tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/CarrierConfig/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/EmergencyInfo/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/Bypass/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/YGPS/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/MTKLogger/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/PrivacyProtectionLock/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/CellBroadcastReceiver/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/Launcher3/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/Omacp/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/MTKAndroidSuiteDaemon/tests/Android.mk
    removetest vendor/mediatek/proprietary/trustzone/microtrust/source/common/270/ut_gatekeeper/tests/Android.mk
    removetest vendor/mediatek/proprietary/frameworks/opt/mage/legacy/ngin3d/tests/Android.mk
    removetest vendor/mediatek/proprietary/frameworks/opt/tatfcommon/tests/Android.mk
    removetest vendor/mediatek/proprietary/frameworks/ex/chips/tests/Android.mk
    removetest vendor/mediatek/proprietary/operator/packages/apps/RCSe/Common/RcsApp/tests/Android.mk
    removetest vendor/mediatek/proprietary/operator/packages/apps/NoteBook/tests/Android.mk
    removetest vendor/mediatek/proprietary/operator/packages/apps/Launcher3/tests/Android.mk
    removetest packages/services/Telecomm/tests/Android.mk
    removetest packages/services/Car/tests/Android.mk
    removetest packages/services/Telephony/tests/Android.mk
    removetest packages/providers/CalendarProvider/tests/Android.mk
    removetest packages/providers/TelephonyProvider/tests/Android.mk
    removetest packages/providers/BlockedNumberProvider/tests/Android.mk
    removetest packages/providers/CallLogProvider/tests/Android.mk
    removetest packages/providers/TvProvider/tests/Android.mk
    removetest packages/providers/DownloadProvider/tests/Android.mk
    removetest packages/providers/ContactsProvider/tests/Android.mk
    removetest packages/providers/PartnerBookmarksProvider/tests/Android.mk
    removetest packages/inputmethods/LatinIME/tests/Android.mk
    removetest packages/apps/Camera2/tests/Android.mk
    removetest packages/apps/Car/Messenger/tests/Android.mk
    removetest packages/apps/Car/Settings/tests/Android.mk
    removetest packages/apps/BasicSmsReceiver/tests/Android.mk
    removetest packages/apps/Music/tests/Android.mk
    removetest packages/apps/ManagedProvisioning/tests/Android.mk
    removetest packages/apps/Email/tests/Android.mk
    removetest packages/apps/Gallery/tests/Android.mk
    removetest packages/apps/UnifiedEmail/tests/Android.mk
    removetest packages/apps/QuickSearchBox/tests/Android.mk
    removetest packages/apps/Bluetooth/tests/Android.mk
    removetest packages/apps/Nfc/tests/Android.mk
    removetest packages/apps/StorageManager/tests/Android.mk
    removetest packages/apps/CarrierConfig/tests/Android.mk
    removetest packages/apps/EmergencyInfo/tests/Android.mk
    removetest packages/apps/Launcher2/tests/Android.mk
    removetest packages/apps/Contacts/tests/Android.mk
    removetest packages/apps/KeyChain/tests/Android.mk
    removetest packages/apps/LegacyCamera/tests/Android.mk
    removetest packages/apps/DocumentsUI/tests/Android.mk
    removetest packages/apps/Calendar/tests/Android.mk
    removetest packages/apps/Settings/tests/Android.mk
    removetest packages/apps/CellBroadcastReceiver/tests/Android.mk
    removetest packages/apps/Launcher3/tests/Android.mk
    removetest packages/apps/TV/tests/Android.mk
    removetest packages/apps/PackageInstaller/tests/Android.mk
    removetest packages/apps/Messaging/tests/Android.mk
    removetest frameworks/layoutlib/create/tests/Android.mk
    removetest frameworks/layoutlib/bridge/tests/Android.mk
    removetest frameworks/rs/tests/Android.mk
    removetest frameworks/rs/rsov/tests/Android.mk
    removetest frameworks/opt/net/lowpan/libandroid_net_lowpan/tests/Android.mk
    removetest frameworks/opt/net/wifi/tests/Android.mk
    removetest frameworks/opt/net/ims/tests/Android.mk
    removetest frameworks/opt/telephony/tests/Android.mk
    removetest frameworks/opt/calendar/tests/Android.mk
    removetest frameworks/opt/vcard/tests/Android.mk
    removetest frameworks/opt/chips/tests/Android.mk
    #removetest frameworks/av/drm/mediacas/plugins/clearkey/tests/Android.mk
    removetest frameworks/av/media/libmediaplayerservice/tests/Android.mk
    removetest frameworks/av/media/libaaudio/tests/Android.mk
    removetest frameworks/av/media/libstagefright/codec2/tests/Android.mk
    removetest frameworks/av/media/libstagefright/foundation/tests/Android.mk
    removetest frameworks/av/media/libaudioprocessing/tests/Android.mk
    removetest frameworks/av/services/mediadrm/tests/Android.mk
    removetest frameworks/av/services/camera/libcameraservice/tests/Android.mk
    removetest frameworks/av/camera/tests/Android.mk
    removetest frameworks/ex/camera2/portability/tests/Android.mk
    removetest frameworks/ex/camera2/utils/tests/Android.mk
    removetest frameworks/ex/common/tests/Android.mk
    removetest frameworks/support/v17/leanback/tests/Android.mk
    removetest frameworks/support/v7/recyclerview/tests/Android.mk
    removetest frameworks/native/services/sensorservice/tests/Android.mk
    removetest frameworks/native/services/surfaceflinger/tests/Android.mk
    removetest frameworks/native/opengl/tests/Android.mk
    removetest frameworks/base/libs/androidfw/tests/Android.mk
    removetest frameworks/base/test-runner/tests/Android.mk
    removetest frameworks/base/nfc-extras/tests/Android.mk
    removetest frameworks/base/media/mca/tests/Android.mk
    removetest frameworks/base/packages/ExtServices/tests/Android.mk
    removetest frameworks/base/packages/PrintSpooler/tests/Android.mk
    removetest frameworks/base/packages/SystemUI/tests/Android.mk
    #removetest frameworks/base/packages/Shell/tests/Android.mk
    removetest frameworks/base/packages/WAPPushManager/tests/Android.mk
    removetest frameworks/base/packages/Osu2/tests/Android.mk
    removetest frameworks/base/packages/SettingsLib/tests/Android.mk
    removetest frameworks/base/packages/MtpDocumentsProvider/tests/Android.mk
    removetest frameworks/base/packages/CarrierDefaultApp/tests/Android.mk
    removetest frameworks/base/tests/testables/tests/Android.mk
    removetest frameworks/base/tests/Camera2Tests/SmartCamera/SimpleCamera/tests/Android.mk
    removetest frameworks/base/tests/Camera2Tests/CameraToo/tests/Android.mk
    removetest frameworks/base/tests/SmokeTest/tests/Android.mk
    removetest frameworks/base/tests/ImfTest/tests/Android.mk
    removetest frameworks/base/services/tests/Android.mk
    removetest frameworks/base/lowpan/tests/Android.mk
    removetest frameworks/base/wifi/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/DocumentsUI/tests/Android.mk
    removetest vendor/mediatek/proprietary/packages/apps/SettingsLib/tests/Android.mk
}

# if adb exists
if [ -f /usr/bin/adb ]; then
    adb version;
else
    echo "adb does not exists, please config it!";
    exit 0;
fi

# if mocp exists
if [ ! -f /usr/bin/mocp ]; then
    echo "mocp does not exists, please config it!";
    echo "sudo apt-get install moc";
    # TODO : 如何判断 mocp 是否启动了？ps -aux | grep "/usr/bin/mocp"?
fi

# if $1 exists
if [ ! -z $1 ] ; then
    echo $1;
else
    echo "please input the operation you want to do!";
    # TODO : you can show some tips here ????
    exit 0;
fi

# commit and push
# get branch name first
branchName=`git symbolic-ref --short -q HEAD`;
dateStr=`date +%Y/%m/%d`;
if [ $1 == "commit" ] ; then
    bugId=$2;
    commitMessage=$3;
    # make sure you code is the latest
    git pull;
    # 1. create folder
    if [ ! -d ~/gitcommit ]; then
        mkdir ~/gitcommit
    fi
    # 2. touch file
    touch ~/gitcommit/$bugId"_"$commitMessage
    # TODO : if pull failed ?
    git commit -m "test "$bugId" "$commitMessage" Submitter:zhangqi Checker:liangshuang "$dateStr;
    git push origin "HEAD:refs/for/"$branchName;
    
    notice "git_commit_push_done!"
    # TODO : how to list files just added or committed ?
    # TODO : commit 完了之后直接把bug登记到服务器上的excel表格中？？？开发一个jar包应用，用于操作excel文件

    # open redmine
    google-chrome %U http://192.168.3.78:8006/redmine/issues/""$bugId
    # after push completed, open gerrit
    google-chrome %U http://192.168.3.79:8084/#/dashboard/self
    exit 0;
fi

# check if mk file exists
if [ ! -f mk ]; then
    echo "mk_file_not_exist";
    notice "Make_sure_you_are_in_alps!!!"
    exit 0;
fi


# remove test files before make
removetests;

# new project
if [[ $1 == "new" || $1 == "n" ]] ; then
    if [ ! -z $2 ] ; then
        echo $2;
        ./mk -ud $2 new;
        # if make success push + notice
        cat new_build.log | grep "build completed successfully";
        if [ $? -ne 0 ] ; then
            notice "new_failure!";
            exit 0;
        fi
        # new_project
        new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;
        # MTK_BUILD_VERSION
        BUILD_VERSION=`cat ../sagereal/mk/$new_project/ProjectConfig.mk | grep "MTK_BUILD_VERNO" | awk '{print $3}'`;
        timeStr=`date +%m_%d_%H_%M`;
        if [ ! -f ../$new_project ]; then
            exit 0;
        else
            zip -r $BUILD_VERSION"_"$timeStr".zip" ../$new_project;
        fi
        exit 0;
    else
        if [ ! -f sagereal_build.log ]; then
            echo "sagereal_build.log does not exists! Make sure you have maked this project";
            exit 0;
        fi
        # new_project
        new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;
        # build mode
        buildMode=`cat sagereal_build.log | grep "user_mode" | awk '{print $2}'`;
        if [[ $buildMode == "yes" || $buildMode == "user" ]] ; then
            ./mk -u $new_project new;
            # if make success push + notice
            cat new_build.log | grep "build completed successfully";
            if [ $? -ne 0 ] ; then
                notice "new_failed!";
            else
                notice "new_success!";
            fi
            exit 0;
        elif [ $buildMode == "userdebug" ] ; then
            ./mk -ud $new_project new;
            cat new_build.log | grep "build completed successfully";
            if [ $? -ne 0 ] ; then
                notice "new_failed!";
            else
                notice "new_success!";
            fi
            exit 0;
        elif [[ $buildMode == "no" || $buildMode == "eng" ]] ; then
            ./mk $new_project new;
            cat new_build.log | grep "build completed successfully";
            if [ $? -ne 0 ] ; then
                notice "new_failed!";
            else
                notice "new_success!";
            fi
            exit 0;
        fi
    fi
fi

# check if sagereal_build.log file exists
if [ ! -f sagereal_build.log ]; then
    echo "sagereal_build.log does not exists! Make sure you have maked this project";
    exit 0;
fi

# new_project
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;

# target_project
target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;

# build mode
buildMode=`cat sagereal_build.log | grep "user_mode" | awk '{print $2}'`;

# sdk version
sdkVersion=`cat build/core/version_defaults.mk | grep "PLATFORM_SDK_VERSION :=" | awk '{print $3}'`;

remount;

# set sleep time
adb shell settings put system screen_off_timeout 300000;

# se big font
adb shell settings put system font_scale 3.0;

# MTK_BUILD_VERSION
BUILD_VERSION=`cat ../sagereal/mk/$new_project/ProjectConfig.mk | grep "MTK_BUILD_VERNO" | awk '{print $3}'`;
echo $BUILD_VERSION;

# type 1: vendor/mediatek/proprietary/packages/apps/*
# type 2: packages/apps/*
moduleType=1;

mModule=$1;


make(){
    module=$1;
    if [ $module == "MtkSettings" ] ;then
        adb shell pm clear com.android.settings;
        #./mk -ud $new_project mm frameworks/support/v7/;
        #./mk -ud $new_project mm frameworks/support/v14/;
        #./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SettingsLib/;

        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/MtkSettings/;
        process=com.android.settings;
        componentName=com.android.settings/.Settings;
        moduleType=1;
    elif [ $module == "MtkSettingsLib" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SettingsLib/;
        moduleType=2;
    elif [ $module == "MtkSystemUI" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SystemUI/;
        process=com.android.systemui;
        moduleType=1;
    elif [ $module == "MtkDeskClock" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/DeskClock/
        process=com.android.deskclock;
        moduleType=1;
    elif [ $module == "MtkMms" ] ; then
        make RecipientChips;
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Mms/
        process=com.android.mms;
        componentName=com.android.mms/.ui.BootActivity;
        moduleType=1;
    elif [ $module == "MtkDialer" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Dialer/
        process=com.android.dialer;
        componentName=com.android.dialer/.app.DialtactsActivity;
        moduleType=1;
    elif [ $module == "MtkContacts" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Contacts/
        process=com.android.contacts;
        componentName=com.android.contacts/.activities.PeopleActivity
        moduleType=1;
    elif [ $module == "MtkSettingsProvider" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SettingsProvider/
        process=com.android.providers.settings;
        moduleType=1;
    elif [ $module == "MtkDocumentsUI" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/DocumentsUI/
        process=com.android.documentsui;
        moduleType=1;
    elif [ $module == "MtkEmail" ] ; then
        #make RecipientChips;
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Email/
        process=com.android.email;
        componentName=com.android.email/com.android.email.activity.Welcome
        moduleType=1;
    elif [ $module == "Camera" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Camera2/
        process=com.mediatek.camera;
        componentName=com.mediatek.camera/.CameraActivity
        moduleType=1;
    elif [ $module == "SchedulePowerOnOff" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SchedulePowerOnOff/
        process=com.mediatek.schpwronoff;
        moduleType=1;
    elif [ $module == "FMRadio" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/FMRadio/
        process=com.android.fmradio;
        componentName=com.android.fmradio/.FmMainActivity
        moduleType=1;
    elif [ $module == "Music" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Music/
        process=com.android.music;
        componentName=com.android.music/com.android.music.MusicBrowserActivity
        moduleType=3
    elif [ $module == "MtkCalendar" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Calendar/
        process=com.android.calendar;
        componentName=com.android.calendar/.AllInOneActivity
        moduleType=1;
    elif [ $module == "MtkGallery2" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Gallery2/
        process=com.android.gallery3d;
        componentName=com.android.gallery3d/com.android.gallery3d.app.GalleryActivity
        moduleType=1;
    elif [ $module == "EngineerMode" ] ; then
        #notice "要先mmma"
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/EngineerMode/
        process=com.mediatek.engineermode;
        componentName=com.mediatek.engineermode/.EngineerMode
        moduleType=1;
    elif [ $module == "MtkTeleService" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/services/Telephony/
        process=com.android.phone;
        moduleType=1;
    elif [ $module == "YGPS" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/YGPS/
        process=com.mediatek.ygps;
        componentName=com.mediatek.ygps/.YgpsActivity
        moduleType=1;
    elif [ $module == "FileManager" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/FileManager/
        process=com.mediatek.filemanager;
        process=com.mediatek.filemanager/.FileManagerOperationActivity
        moduleType=1;
    elif [ $module == "MtkPackageInstaller" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/PackageInstaller/
        process=com.android.packageinstaller;
        moduleType=1;
    elif [ $module == "MediaProvider" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/providers/MediaProvider/
        process=com.android.providers.media;
        moduleType=1;
    elif [ $module == "SageRealIME" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/inputmethods/SageRealIME/
        process=com.android.providers.media;
        moduleType=1;
    elif [ $module == "MtkVideos" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/VideoPlayer/
        process=com.android.providers.media;
        componentName=com.mediatek.videoplayer/.MovieListActivity
        moduleType=1;
    elif [ $module == "Bluetooth" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Bluetooth/
        process=com.android.providers.media;
        moduleType=1;
    elif [ $module == "DownloadProvider" ] ; then
        # DownloadProvider 需要先编 mediatek-res
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/DownloadProvider/
        process=com.android.providers.downloadprovider;
        moduleType=1;
    elif [ $module == "Omacp" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Omacp/
        process=com.mediatek.omacp;
        moduleType=1;
    elif [ $module == "MtkBrowser" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Browser/
        process=com.android.browser;
        componentName=com.android.browser/.BrowserActivity
        moduleType=1;
    elif [ $module == "MtkWallpaperPicker" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/WallpaperPicker/
        process=com.android.wallpaperpicker;
        moduleType=1;
    elif [ $module == "Assistance" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Assistance/
        process=com.nan.assistance;
        moduleType=1;
    elif [ $module == "BatteryWarning" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/BatteryWarning/
        process=com.mediatek.batterywarning;
        moduleType=1;



    elif [ $module == "Browser" ] ; then
        ./mk -ud $new_project mm packages/apps/Browser/;
        process=com.android.browser;
        moduleType=1;
    elif [ $module == "Launcher3Go" ] ; then
        # TODO : 修改launcher3的Android.mk文件，去掉里面的launcher3模块和prototype模块
        ./mk -ud $new_project mm packages/apps/Launcher3/
        adb shell mkdir /system/priv-app/Launcher3Go/
        adb shell mkdir /system/priv-app/Launcher3Go/oat/
        adb shell mkdir /system/priv-app/Launcher3Go/oat/arm/
        process=com.android.launcher3;
        moduleType=1;
    elif [ $module == "SRLauncher" ] ; then
        ./mk -ud $new_project mm packages/apps/Sagereal/Launcher/
        process=com.sagereal.launcher;
        moduleType=1;
    elif [ $module == "ExactCalculator" ] ; then
        ./mk -ud $new_project mm packages/apps/ExactCalculator/
        process=com.android.calculator2;
        componentName=com.android.calculator2/com.android.calculator2.Calculator
        moduleType=1;
    elif [ $module == "FactoryDevelopX" ] ; then
        ./mk -ud $new_project mm packages/apps/FactoryDevelopX/
        process=com.example.factorydevelopx;
        componentName=com.example.factorydevelopx/.MainActivity
        moduleType=1;
    elif [ $module == "SoundRecorder_V01" ] ; then
        ./mk -ud $new_project mm packages/apps/SoundRecorder_V01/
        process=com.android.soundrecorder;
        componentName=com.android.soundrecorder/.SoundRecorder
        moduleType=1;
    elif [ $module == "Camera_TPlink" ] ; then
        ./mk -ud $new_project mm packages/apps/SagerealApp/Camera_TPlink/
        process=com.mediatek.camera;
        moduleType=1;
    elif [ $module == "FactoryMode" ] ; then
        ./mk -ud $new_project mm packages/apps/FactoryMode/
        process=com.dyc.factorymode;
        componentName=com.dyc.factorymode/.TestMainActivity
        moduleType=1;





    elif [ $module == "framework" ] ; then
        cat frameworks/base/Android.mk | grep "platformprotos"
        if [ $? -ne 0 ] ; then
            echo "without_platformprotos";
        else
            notice "You_should_modify_Android_mk_first!!!";
            gedit frameworks/base/Android.mk;
            exit 0
        fi
        ./mk -ud $new_project mm frameworks/base/
        moduleType=3
    elif [ $module == "services" ] ; then
        ./mk -ud $new_project mm frameworks/base/services/
        moduleType=3
    elif [ $module == "fres" ] ; then
        ./mk -ud $new_project mm frameworks/base/core/res/
        moduleType=3
    elif [ $module == "mtel" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/opt/telephony
        moduleType=3
    elif [ $module == "v7" ] ; then
        ./mk -ud $new_project mm frameworks/support/v7/
        moduleType=3
    elif [ $module == "protobuf" ] ; then
        ./mk -ud $new_project mm external/protobuf/
        moduleType=3
    elif [ $module == "datetimepicker" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/opt/datetimepicker/
        moduleType=3
    elif [ $module == "timezonepicker" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/opt/timezonepicker/
        moduleType=3
    elif [ $module == "RecipientChips" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/ex/chips/
        moduleType=3
    elif [ $module == "mres" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/base/res/
        moduleType=3
    elif [ $module == "wifi-service" ] ; then
        ./mk -ud $new_project mm frameworks/opt/net/wifi/service/
        moduleType=3
    elif [ $module == "mediatek-cta" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/opt/cta/
        moduleType=3
    elif [ $module == "fonts" ] ; then
        ./mk -ud $new_project mm frameworks/base/data/fonts/
        moduleType=3
    elif [[ $module == "remake" || $module == "r" ]] ; then
        ./mk -ud $new_project clone && ./mk -ud $new_project r
        exit 0;
    elif [[ $module == "ril" ]] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/hardware/ril/fusion/mtk-ril/;
        moduleType=3
    else 
        notice 'Error_Unknown_module!!!';
        exit 0;
    fi
    # if make success push + notice
    cat mm_build.log | grep "build completed successfully";
    if [ $? -ne 0 ] ; then
        notice $module"_compiled_failure!";
        exit 0;
    fi
}

push(){
    remount;
    module=$1;
    if [ $moduleType == "1" ] ; then
        # system/priv-app
        adb push out/target/product/$target_project/system/priv-app/$module/$module.apk system/priv-app/$module/;
        adb push out/target/product/$target_project/system/priv-app/$module/oat/arm/$module.odex system/priv-app/$module/oat/arm/;
        adb push out/target/product/$target_project/system/priv-app/$module/oat/arm/$module.vdex system/priv-app/$module/oat/arm/;
        # system/app
        adb push out/target/product/$target_project/system/app/$module/$module.apk system/app/$module/;
        adb push out/target/product/$target_project/system/app/$module/oat/arm/$module.odex system/app/$module/oat/arm/;
        adb push out/target/product/$target_project/system/app/$module/oat/arm/$module.vdex system/app/$module/oat/arm/;
    elif [ $moduleType == "3" ] ; then
        if [ $module == "framework" ] ; then
            # framework/base
            adb push out/target/product/$target_project/system/framework/framework.jar system/framework/;
            adb push out/target/product/$target_project/system/framework/arm/boot* system/framework/arm/;
            #make services;
            #make wifi-service;
            #make MtkSettingsProvider;
            adb reboot;
        elif [ $module == "services" ] ; then
            adb push out/target/product/$target_project/system/framework/services.jar system/framework/;
            adb push out/target/product/$target_project/system/framework/oat/arm/services.* system/framework/oat/arm/;
            adb reboot;
        elif [ $module == "fres" ] ; then
            adb push out/target/product/$target_project/system/framework/framework-res.apk system/framework/;
            adb reboot;
        elif [ $module == "mres" ] ; then
            adb push out/target/product/$target_project/system/framework/mediatek-res/mediatek-res.apk system/framework/mediatek-res/;
            adb reboot;
        elif [ $module == "Music" ] ; then
            adb push out/target/product/$target_project/vendor/app/MusicBspPlus/MusicBspPlus.apk vendor/app/MusicBspPlus/;
        elif [ $module == "mediatek-cta" ] ; then
            adb push out/target/product/$target_project/system/framework/mediatek-cta.jar system/framework/;
        elif [ $module == "fonts" ] ; then
            adb push out/target/product/$target_project/system/etc/fonts.xml system/etc/;
            adb push out/target/product/$target_project/system/fonts/Nina.ttf system/fonts/;
        elif [ $module == "wifi-service" ] ; then
            adb push out/target/product/$target_project/system/framework/wifi-service.jar system/framework;
            adb push out/target/product/$target_project/system/framework/wifi-service.jar.prof system/framework/wifi-service.jar.prof;
            adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.odex system/framework/oat/arm/;
            adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.art system/framework/oat/arm/;
            adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.vdex system/framework/oat/arm/;
            adb reboot;
        elif [ $module == "mtel" ] ; then
            adb push out/target/product/$target_project/system/framework/mediatek-telephony-common.jar system/framework/;
            adb push out/target/product/$target_project/system/framework/arm/boot* system/framework/arm/;
            adb reboot;
        elif [ $module == "ril" ] ; then
            adb push out/target/product/$target_project/vendor/lib/libmtk-ril.so vendor/lib/;
            adb reboot;
        fi
        # adb logcat -c && adb logcat -G 200M && adb logcat | grep "zhangqi8888";
    fi
    notice $module"_push_success!";
    # kill process
    if [ ! -z $process ] ; then
        adb shell kill `adb shell ps | grep $process | awk {'print $2'} | head -n 1`
    fi

    # start main activity
    if [ ! -z $componentName ] ; then
        adb shell am start -n $componentName
    fi
    # pull to last version when push done!
    git pull;
}

# Print system info
check_sys(){
    if [[ -f /etc/redhat-release ]]; then
        release="centos"
    elif cat /etc/issue | grep -q -E -i "debian"; then
        release="debian"
    elif cat /etc/issue | grep -q -E -i "ubuntu"; then
        release="ubuntu"
    elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
        release="centos"
    elif cat /proc/version | grep -q -E -i "debian"; then
        release="debian"
    elif cat /proc/version | grep -q -E -i "ubuntu"; then
        release="ubuntu"
    elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
        release="centos"
    fi
    bit=`uname -m`
    echo $release"_"$bit
}

startTime=`date +"%s"`

make $mModule;
push $mModule;

endTime=`date +"%s"`

spends=`awk -v x1="$(echo $endTime | cut -d '.' -f 1)" -v x2="$(echo $startTime | cut -d '.' -f 1)" 'BEGIN{printf "RunTime:%d s",(x1-x2)}'`

echo $spends
