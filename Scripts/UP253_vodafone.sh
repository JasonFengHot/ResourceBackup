	# framework/base
./mk up253_m2414_vodafone_SKU1_S clone;./mk up253_m2414_vodafone_SKU1_S mm mediatek/frameworks/common/;
adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/;adb push out/target/product/sr72_w_lca/system/framework/framework.jar system/framework;adb push out/target/product/sr72_w_lca/system/framework/framework2.jar system/framework;adb shell rm -r /data/aee_exp;adb shell rm -r /data/log_temp;adb shell rm -r /data/dalvik-cache;adb shell rm -r /storage/sdcard0/mtklog;playringtone;
    # service
adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/services/java/;adb push out/target/product/sr72_w_lca/system/framework/services.jar system/framework;playringtone;
	# framework/base/policy
adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/policy/;adb push out/target/product/sr72_w_lca/system/framework/android.policy.jar system/framework;playringtone;
	# frameworks/base/core/res
adb remount; rm -r out/target/common/obj/APPS/framework-res_intermediates;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/core/res/;adb push out/target/product/sr72_w_lca/system/framework/framework-res.apk system/framework;playringtone;
    # mediatek/framework/base
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/frameworks/base/;adb push out/target/product/sr72_w_lca/system/framework/mediatek-framework.jar system/framework;playringtone;
    # mediatek/frameworks/base/res
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/frameworks/base/res/;adb push out/target/product/sr72_w_lca/system/framework/mediatek-res.apk system/framework;playringtone;
	# Keyguard
adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/packages/Keyguard/;adb push out/target/product/sr72_w_lca/system/priv-app/Keyguard.apk system/priv-app;adb shell ps | grep "systemui";playringtone;
adbkill com.android.systemui
	# SystemUI
adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/packages/SystemUI/;adb push out/target/product/sr72_w_lca/system/priv-app/SystemUI.apk system/priv-app;adb shell ps | grep "systemui";playringtone;
	# Dialer
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Dialer/;adb push out/target/product/sr72_w_lca/system/priv-app/Dialer.apk system/priv-app;playringtone;
	# Contacts
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Contacts;adb push out/target/product/sr72_w_lca/system/priv-app/Contacts.apk system/priv-app;playringtone;
	# Mms
./mk up253_m2414_vodafone_SKU1_S mm frameworks/ex/chips/;
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Mms/;adb push out/target/product/sr72_w_lca/system/priv-app/Mms.apk system/priv-app;playringtone;
	# DeskClock
adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/opt/datetimepicker/;
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/DeskClock/;adb push out/target/product/sr72_w_lca/system/app/DeskClock.apk system/app;playringtone;
adb shell am start -n com.android.deskclock/.DeskClock;
	# Launcher3
./mk up253_m2414_vodafone_SKU1_S mm external/protobuf/;
adb shell rm -r /data/data/com.android.launcher3;
./mk up253_m2414_vodafone_SKU1_S clone;
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Launcher3/;adb push out/target/product/sr72_w_lca/system/priv-app/Launcher3.apk system/priv-app;playringtone;
	# Gallery2/Camera
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Gallery2/;adb push out/target/product/sr72_w_lca/system/app/Gallery2.apk system/app;playringtone;
	# Email
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Email/;adb push out/target/product/sr72_w_lca/system/app/Email.apk system/app;playringtone;
	# DocumentUI
adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/packages/DocumentsUI/;adb push out/target/product/sr72_w_lca/system/app/DocumentsUI.apk system/app;playringtone;
	# Settings
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Settings/;adb push out/target/product/sr72_w_lca/system/priv-app/Settings.apk system/priv-app;playringtone;
	# Music
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Music;adb push out/target/product/sr72_w_lca/system/app/Music.apk system/app;playringtone;
	# Calculator
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Calculator/;adb push out/target/product/sr72_w_lca/system/app/Calculator.apk system/app;playringtone;
	# Browser
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Browser/;adb push out/target/product/sr72_w_lca/system/app/Browser.apk system/app;playringtone;
	# SchedulePowerOnOff
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/SchedulePowerOnOff/;adb push out/target/product/sr72_w_lca/system/app/SchedulePowerOnOff.apk system/app;playringtone;
	# FactoryDevelopX
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/FactoryDevelopX/;adb push out/target/product/sr72_w_lca/system/app/FactoryDevelopX.apk system/app;playringtone;
	# FMRadio
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/FMRadio;adb push out/target/product/sr72_w_lca/system/app/FMRadio.apk system/app;playringtone;
    # SoundRecorder
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/SoundRecorder/;adb push out/target/product/sr72_w_lca/system/app/SoundRecorder.apk system/app;playringtone;
    # Calendar
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Calendar/;adb push out/target/product/sr72_w_lca/system/app/Calendar.apk system/app;playringtone;
    # EngineerMode
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/EngineerMode/;adb push out/target/product/sr72_w_lca/system/app/EngineerMode.apk system/app;playringtone;
    # Recovery
./makeMtk mm bootable/recovery/ && ./makeMtk -opt=ONE_SHOT_MAKEFILE=build/target/board/Android.mk r recoveryimage && ./mk up253_m2414_vodafone_SKU1_S copybin
    # TeleService
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/services/Telephony/;adb push out/target/product/sr72_w_lca/system/priv-app/TeleService.apk system/priv-app;playringtone;
    # Todos
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/Todos/;adb push out/target/product/sr72_w_lca/system/app/Todos.apk system/app;playringtone;
    # YGPS
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/YGPS/;adb push out/target/product/sr72_w_lca/system/app/YGPS.apk system/app;playringtone;
    # FileManager
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/FileManager/;adb push out/target/product/sr72_w_lca/system/app/FileManager.apk system/app;playringtone;
    # PackageIntaller
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/PackageInstaller/;adb push out/target/product/sr72_w_lca/system/app/PackageInstaller.apk system/app;playringtone;
    # SettingsProvider
adb remount;adb shell rm -r /data/data/com.android.providers.settings;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/packages/SettingsProvider/;adb push out/target/product/sr72_w_lca/system/priv-app/SettingsProvider.apk system/priv-app;playringtone;
    # MediaProvider
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/providers/MediaProvider/;adb push out/target/product/sr72_w_lca/system/priv-app/MediaProvider.apk system/priv-app;playringtone;
    # VirtualTrackball
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/SageRealApp/VirtualTrackball/;adb push out/target/product/sr72_w_lca/system/app/VirtualTrackball.apk system/app;adbkill virtualtrackball;playringtone;
    # SageRealIME
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/inputmethods/SageRealIME/;adb install -r out/target/product/sr72_w_lca/system/app/SageRealIME.apk
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/inputmethods/SageRealIME/;adb push out/target/product/sr72_w_lca/system/app/SageRealIME.apk system/app/;playringtone;
    # Videos
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/VideoPlayer/;adb push out/target/product/sr72_w_lca/system/app/Videos.apk system/app;playringtone;
    # FinalPlane
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/SageRealApp/FinalPlane/;adb push out/target/product/sr72_w_lca/system/app/FinalPlane.apk system/app;playringtone;
    # Bluetooth
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/Bluetooth/;adb push out/target/product/sr72_w_lca/system/app/Bluetooth.apk system/app;playringtone;
    # LatinIME
./mk up253_m2414_vodafone_SKU1_S mm frameworks/opt/inputmethodcommon/;
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/inputmethods/LatinIME/;adb push out/target/product/sr72_w_lca/system/app/LatinIME.apk system/app;playringtone;
    # Stk1
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/Stk1/;adb push out/target/product/sr72_w_lca/system/app/Stk1.apk system/app;playringtone;
adb shell am start -n com.android.stk/com.android.stk.StkInputActivity
    # DownloadProvider
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/providers/DownloadProvider/;adb push out/target/product/sr72_w_lca/system/priv-app/DownloadProvider.apk system/priv-app;playringtone;
    # Omacp
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/Omacp/;adb push out/target/product/sr72_w_lca/system/app/Omacp.apk system/app;playringtone;
	# new
./clean_project_Sagereal.sh;git pull;./mk -u up253_m2414_vodafone_SKU1_S new;playringtone;
	# pull mtklog
adb pull /storage/sdcard0/mtklog /home/zq/Desktop/logs/mtklog
	# rm log_temp
adb remount;adb shell rm -r /data/log_temp;adb shell rm -r /data/dalvik-cache;adb shell rm -r /storage/sdcard0/mtklog
    # webviewchromium
adb remount;./mk up253_m2414_vodafone_SKU1_S mm external/chromium_org/;adb push out/target/product/sr72_w_lca/system/lib/libwebviewchromium.so system/lib;./mk up253_m2414_vodafone_SKU1_S mm frameworks/webview/;adb push out/target/product/sr72_w_lca/system/framework/webviewchromium.jar system/framework;playringtone;
    # SocialMedia
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/SageRealApp/SocialMedia/;adb push out/target/product/sr72_w_lca/system/app/SocialMedia.apk system/app;playringtone;
    # AppStore
adb remount;./mk up253_m2414_vodafone_SKU1_S mm packages/apps/SageRealApp/AppStore;adb push out/target/product/sr72_w_lca/system/app/AppStore.apk system/app;playringtone;
    # CMASReceiver
adb remount;./mk up253_m2414_vodafone_SKU1_S mm mediatek/packages/apps/CMASReceiver/;adb push out/target/product/sr72_w_lca/system/app/CMASReceiver.apk system/app;playringtone;
    # Telephony-common
adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/opt/telephony/;adb push out/target/product/sr72_w_lca/system/framework/telephony-common.jar system/framework;playringtone;
    # update-modem
./mk up253_m2414_vodafone_SKU1_S clone && ./mk up253_m2414_vodafone_SKU1_S update-modem;playringtone;

adb push out/target/product/sr72_w_lca/system/framework/framework.jar system/framework;
adb push out/target/product/sr72_w_lca/system/framework/framework2.jar system/framework;
adb push out/target/product/sr72_w_lca/system/framework/services.jar system/framework;
adb push out/target/product/sr72_w_lca/system/framework/mediatek-framework.jar system/framework
adb push out/target/product/sr72_w_lca/system/framework/android.policy.jar system/framework
adb push out/target/product/sr72_w_lca/system/framework/framework-res.apk system/framework


adb shell logcat | grep ""

adb shell am start -n com.android.settings/.Settings
adb shell am start -n com.mediatek.todos/.TodosActivity
adb shell am start -n com.example.factorydevelopx/.KeyTest
adb shell am start -n com.android.email/.activity.Welcome
adb shell am start -n com.mediatek.mtklogger/.MainActivity
adb shell am start -n com.mediatek.engineermode/.EngineerMode

adb shell am broadcast -a android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED --es message "this is test string"

adb shell am broadcast -a cellbroadcastreceiver.SHOW_NEW_ALERT --es message "this is test string"



String plmn = android.provider.Settings.System.getString(getContentResolver(), "last_insrt_sim_plmn");

adb shell settings get system last_insrt_sim_plmn


android.util.Log.e("zhangqi0000", "Workspace-->workspaceToOverview");

	# FeatureOption
com.mediatek.common.featureoption.FeatureOption

./mk up253_m2414_vodafone_SKU1_S clone;./mk up253_m2414_vodafone_SKU1_S mm mediatek/frameworks/common/;playringtone;

adb remount;./mk up253_m2414_vodafone_SKU1_S mm frameworks/base/services/java/;adb push out/target/product/sr72_w_lca/system/framework/services.jar system/framework;playringtone;



ant build;adb push /home/zq/workspace/UIAutomatorTest/bin/first.jar /data/local/tmp;adb shell uiautomator runtest first.jar -c com.sagereal.zq.uiautomator.TestUIAutomator


./mk WQ500T_N9_SKU3 mm packages/apps/SagerealApp/AutoService/;adb install -r out/target/product/sr6737m_35_m0/system/app/AutoService/AutoService.apk;adb shell am start -n com.sagereal.zq.myfirstapplication/.MainActivity
