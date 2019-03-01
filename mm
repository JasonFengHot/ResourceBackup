#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# TODO : remove tests files

# TODO : 怎么判断是哪个平台的代码？

# TODO : 怎么判断这个脚本已经放在 alps 目录下了？

# TODO : 如何从编译的log中提取出 install

# TODO : 如何判断下面的这些基础命令是否存在？
# adb, mocp,

# TODO : 如何判断要编译的项目是否包含widevine？

# TODO : 如何判断某个模块没有发生变化？

# TODO : 如何在程序中执行脚本？QT？

# TODO : 修改编译成功和失败时候的通知铃声？通知图标？

# TODO : ICU资源的一键 编译、push、重启、拷贝 脚本？

# TODO : new 完之后发送一封邮件到指定邮箱

# TODO : 记录下开始的时间和结束的时间

# TODO : 如何添加 -t -m -p 等开关？

# TODO : 如果 $1 是空的怎么半？如何判断输入的参数是否为空？

    # TODO : 如何终止脚本执行？
    ## exit 0;

# TODO : new 完之后把软件直接拷贝到31上？

# TODO : 


remount(){
    adb root;
    adb remount;
}

notice(){
    notify-send $1;
    mocp -l /home/zq/sounds/ring3.ogg;
    date;
}

module=$1;
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;
target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;
adb shell settings put system screen_off_timeout 1800000
remount

# type 1: vendor/mediatek/proprietary/packages/apps/*
# type 2: packages/apps/*
moduleType=1;

# 0 : false    1 : true
needReboot=0;

make(){
    if [ $module == "MtkSettings" ] ;then
        adb shell pm clear com.android.settings;
        ./mk -ud $new_project mm frameworks/support/v7/;
        ./mk -ud $new_project mm frameworks/support/v14/;
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SettingsLib/;
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/MtkSettings/;
        process=com.android.settings;
    elif [ $module == "MtkSystemUI" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SystemUI/;
        process=com.android.systemui;
    elif [ $module == "MtkDeskClock" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/DeskClock/
        process=com.android.deskclock;
    elif [ $module == "MtkMms" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Mms/
        process=com.android.mms;
    elif [ $module == "MtkDialer" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Dialer/
        process=com.android.dialer;
    elif [ $module == "MtkContacts" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Contacts/
        process=com.android.contacts;
    elif [ $module == "MtkSettingsProvider" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SettingsProvider/
        process=com.android.providers.settings;
    elif [ $module == "MtkDocumentsUI" ] ; then
        rm vendor/mediatek/proprietary/packages/apps/DocumentsUI/tests/Android.mk
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/DocumentsUI/
        process=com.android.documentsui;
    elif [ $module == "MtkEmail" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Email/
        process=com.android.email;
    elif [ $module == "Camera2" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Camera2/
        process=com.mediatek.camera;
    elif [ $module == "SchedulePowerOnOff" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SchedulePowerOnOff/
        process=com.mediatek.schpwronoff;
    elif [ $module == "FMRadio" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/FMRadio/
        process=com.android.fmradio;
    elif [ $module == "Music" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Music/
        process=com.android.music;
        moduleType=3
    elif [ $module == "MtkCalendar" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Calendar/
        process=com.android.calendar;
    elif [ $module == "EngineerMode" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/EngineerMode/
        process=com.mediatek.engineermode;
    elif [ $module == "MtkTeleService" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/services/Telephony/
        process=com.android.phone;
    elif [ $module == "YGPS" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/YGPS/
        process=com.mediatek.ygps;
    elif [ $module == "FileManager" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/FileManager/
        process=com.mediatek.filemanager;
    elif [ $module == "MtkPackageInstaller" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/PackageInstaller/
        process=com.android.packageinstaller;
    elif [ $module == "MediaProvider" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/providers/MediaProvider/
        process=com.android.providers.media;
    elif [ $module == "SageRealIME" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/inputmethods/SageRealIME/
        process=com.android.providers.media;
    elif [ $module == "MtkVideos" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/VideoPlayer/
        process=com.android.providers.media;
    elif [ $module == "Bluetooth" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Bluetooth/
        process=com.android.providers.media;
    elif [ $module == "DownloadProvider" ] ; then
        # DownloadProvider 需要先编 mediatek-res
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/DownloadProvider/
        process=com.android.providers.downloadprovider;
    elif [ $module == "Omacp" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Omacp/
        process=com.mediatek.omacp;




    elif [ $module == "Browser" ] ; then
        ./mk -ud $new_project mm packages/apps/Browser/
        process=com.android.browser;
    elif [ $module == "Launcher3Go" ] ; then
        ./mk -ud $new_project mm packages/apps/Launcher3/
        process=com.android.launcher3;
    elif [ $module == "SRLauncher" ] ; then
        ./mk -ud $new_project mm packages/apps/Sagereal/Launcher/
        process=com.sagereal.launcher;
    elif [ $module == "ExactCalculator" ] ; then
        ./mk -ud $new_project mm packages/apps/ExactCalculator/
        process=com.android.calculator2;
    elif [ $module == "FactoryDevelopX" ] ; then
        ./mk -ud $new_project mm packages/apps/FactoryDevelopX/
        process=com.example.factorydevelopx;
    elif [ $module == "SoundRecorder_V01" ] ; then
        ./mk -ud $new_project mm packages/apps/SoundRecorder_V01/
        process=com.android.soundrecorder;
    elif [ $module == "Camera_TPlink" ] ; then
        ./mk -ud $new_project mm packages/apps/SagerealApp/Camera_TPlink/
        process=com.mediatek.camera;


    elif [ $module == "framework" ] ; then
        ./mk -ud $new_project mm frameworks/base/
        moduleType=3
    elif [ $module == "services" ] ; then
        ./mk -ud $new_project mm frameworks/base/services/
        moduleType=3
    elif [ $module == "fres" ] ; then
        ./mk -ud $new_project mm frameworks/base/core/res/
        moduleType=3
    elif [ $module == "protobuf" ] ; then
        ./mk -ud $new_project mm external/protobuf/
        moduleType=3
    elif [ $module == "datetimepicker" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/opt/datetimepicker/
        moduleType=3
    elif [ $module == "RecipientChips" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/ex/chips
        moduleType=3
    elif [ $module == "mres" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/base/res/
        moduleType=3
    elif [ $module == "wifi-service" ] ; then
        ./mk -ud $new_project mm frameworks/opt/net/wifi/service
        moduleType=3
    elif [ $module == "mediatek-cta" ] ; then
        ./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/opt/cta/
        moduleType=3
    elif [ $module == "fonts" ] ; then
        ./mk -ud $new_project mm frameworks/base/data/fonts/
        moduleType=3
    elif [ $module == "new" ] ; then
        ./mk -ud $new_project new && ./mk -ud $new_project sign-image
        exit 0;
    else 
        notice 'Unknown_module!!!';
        exit 0;
    fi
}

push(){
    # if make success push + notice
    remount;
    cat mm_build.log | grep "build completed successfully";
    if [ $? -ne 0 ] ; then
        notice $module"_compiled_failure!"
    else
        notice $module"_compiled_success!"
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
                # service
                adb push out/target/product/$target_project/system/framework/services.jar system/framework/;
                adb push out/target/product/$target_project/system/framework/oat/arm/services.* system/framework/oat/arm/;
                # wifi-service
                adb push out/target/product/$target_project/system/framework/wifi-service.jar system/framework;
                adb push out/target/product/$target_project/system/framework/wifi-service.jar.prof system/framework/wifi-service.jar.prof;
                adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.odex system/framework/oat/arm/;
                adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.art system/framework/oat/arm/;
                adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.vdex system/framework/oat/arm/;
                # SettingsProvider
                adb push out/target/product/$target_project/system/priv-app/MtkSettingsProvider/MtkSettingsProvider.apk system/priv-app/MtkSettingsProvider/;
                adb push out/target/product/$target_project/system/priv-app/MtkSettingsProvider/oat/arm/MtkSettingsProvider.odex system/priv-app/MtkSettingsProvider/oat/arm/;
                adb push out/target/product/$target_project/system/priv-app/MtkSettingsProvider/oat/arm/MtkSettingsProvider.vdex system/priv-app/MtkSettingsProvider/oat/arm/;
                adb reboot;
            elif [ $module == "services" ] ; then
                adb push out/target/product/$target_project/system/framework/services.jar system/framework/;
                adb push out/target/product/$target_project/system/framework/oat/arm/services.* system/framework/oat/arm/;
            elif [ $module == "fres" ] ; then
                adb push out/target/product/$target_project/system/framework/framework-res.apk system/framework/;
            elif [ $module == "mres" ] ; then
                adb push out/target/product/$target_project/system/framework/mediatek-res/mediatek-res.apk system/framework/mediatek-res/;
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
            fi
        fi
        # kill process
        if [ ! -z $process ] ; then
            adb shell kill `adb shell ps | grep $process | awk {'print $2'} | head -n 1`
        fi
    fi
}

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

make;
push;
