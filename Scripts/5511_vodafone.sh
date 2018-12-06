	# framework/base
./mk VQ551_H5511_vodafone mm external/protobuf/;
adb remount;./mk VQ551_H5511_vodafone mm frameworks/base/;adb push out/target/product/k39tv1_bsp/system/framework/framework.jar system/framework;adb push out/target/product/k39tv1_bsp/system/framework/arm/ system/framework/arm/;playringtone;
    # service
adb remount;./mk VQ551_H5511_vodafone mm frameworks/base/services/java/;adb push out/target/product/k39tv1_bsp/system/framework/services.jar system/framework;playringtone;
	# frameworks/base/core/res
adb remount;./mk VQ551_H5511_vodafone mm frameworks/base/core/res/;adb push out/target/product/k39tv1_bsp/system/framework/framework-res.apk system/framework;playringtone;
	# SystemUI
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/apps/SystemUI/;adb push out/target/product/k39tv1_bsp/system/priv-app/MtkSystemUI/MtkSystemUI.apk system/priv-app/MtkSystemUI/;adb shell ps | grep "systemui";playringtone;
	# Dialer
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/apps/Dialer/;adb push out/target/product/k39tv1_bsp/system/priv-app/MtkDialer/MtkDialer.apk system/priv-app/MtkDialer/;playringtone;
	# Contacts
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/apps/Contacts/;adb push out/target/product/k39tv1_bsp/system/priv-app/MtkContacts/MtkContacts.apk system/priv-app/MtkContacts/;playringtone;
	# Browser
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/Browser/;adb push out/target/product/k39tv1_bsp/system/app/MtkBrowser/MtkBrowser.apk system/app/MtkBrowser/;playringtone;
	# Mms 需要先编 Browser
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/apps/Mms/;adb push out/target/product/k39tv1_bsp/system/priv-app/MtkMms/MtkMms.apk system/priv-app/MtkMms/;playringtone;
	# DeskClock
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/apps/DeskClock/;adb push out/target/product/k39tv1_bsp/system/app/MtkDeskClock/MtkDeskClock.apk system/app/MtkDeskClock/;playringtone;
	# Launcher3
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/apps/Launcher3/;adb push out/target/product/k39tv1_bsp/system/priv-app/MtkLauncher3/MtkLauncher3.apk system/priv-app/MtkLauncher3/;playringtone;
	# Camera
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/apps/Camera/;adb push out/target/product/k39tv1_bsp/system/lib/libjni_jpegencoder.so system/lib/;adb push out/target/product/k39tv1_bsp/system/app/Camera/Camera.apk system/app/Camera/;playringtone;
    # Gallery2,未使用
adb remount;./mk VQ551_H5511_vodafone mm external/xmp_toolkit/;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/apps/Gallery2/;adb push out/target/product/k39tv1_bsp/system/lib/libjni_eglfence_mtk.so system/lib/;adb push out/target/product/k39tv1_bsp/system/lib/libjni_filtershow_filters_mtk.so system/lib/;adb push out/target/product/k39tv1_bsp/system/lib/libjni_jpegstream_mtk.so system/lib/;adb push out/target/product/k39tv1_bsp/system/lib/libxmp.so system/lib/;adb push out/target/product/k39tv1_bsp/vendor/etc/gallery/Gallery2Drm/Gallery2Drm.apk vendor/etc/gallery/Gallery2Drm/;adb push out/target/product/k39tv1_bsp/vendor/etc/gallery/Gallery2Gif/Gallery2Gif.apk vendor/etc/gallery/Gallery2Gif/;adb push out/target/product/k39tv1_bsp/vendor/etc/gallery/Gallery2Root/Gallery2Root.apk vendor/etc/gallery/Gallery2Root/;adb push out/target/product/k39tv1_bsp/vendor/etc/gallery/Gallery2Pq/Gallery2Pq.apk vendor/etc/gallery/Gallery2Pq/;adb push out/target/product/k39tv1_bsp/vendor/etc/gallery/Gallery2PqTool/Gallery2PqTool.apk vendor/etc/gallery/Gallery2PqTool/;adb push out/target/product/k39tv1_bsp/vendor/etc/gallery/Gallery2Raw/Gallery2Raw.apk vendor/etc/gallery/Gallery2Raw/;adb push out/target/product/k39tv1_bsp/vendor/etc/gallery/Gallery2StereoThumbnail/Gallery2StereoThumbnail.apk vendor/etc/gallery/Gallery2StereoThumbnail/;adb push out/target/product/k39tv1_bsp/system/app/MtkGallery2/MtkGallery2.apk system/app/MtkGallery2/;playringtone;
	# Email
adb remount;mmma vendor/mediatek/proprietary/packages/apps/Email/;adb push out/target/product/k39tv1_bsp/system/app/MtkEmail/MtkEmail.apk system/app/MtkEmail/;playringtone;
    # mediatek-res
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/frameworks/base/res/;adb push out/target/product/k39tv1_bsp/system/framework/mediatek-res/mediatek-res.apk system/framework/mediatek-res/;playringtone;
    # DownloadProvider
adb remount;./mk VQ551_H5511_vodafone mm vendor/mediatek/proprietary/packages/providers/DownloadProvider/;adb push out/target/product/k39tv1_bsp/system/priv-app/MtkDownloadProvider/MtkDownloadProvider.apk system/priv-app/MtkDownloadProvider/;playringtone;
	# Settings
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/Settings/;adb push out/target/product/sr72_w_lca/system/priv-app/Settings.apk system/priv-app;playringtone;
	# Music
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/Music;adb push out/target/product/sr72_w_lca/system/app/Music.apk system/app;playringtone;
	# Calculator
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/Calculator/;adb push out/target/product/sr72_w_lca/system/app/Calculator.apk system/app;playringtone;
	# SchedulePowerOnOff
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/SchedulePowerOnOff/;adb push out/target/product/sr72_w_lca/system/app/SchedulePowerOnOff.apk system/app;playringtone;
	# FactoryDevelopX
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/FactoryDevelopX/;adb push out/target/product/sr72_w_lca/system/app/FactoryDevelopX.apk system/app;playringtone;
	# FMRadio
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/FMRadio;adb push out/target/product/sr72_w_lca/system/app/FMRadio.apk system/app;playringtone;
    # SoundRecorder
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/SoundRecorder/;adb push out/target/product/sr72_w_lca/system/app/SoundRecorder.apk system/app;playringtone;
    # Calendar
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/Calendar/;adb push out/target/product/sr72_w_lca/system/app/Calendar.apk system/app;playringtone;
    # EngineerMode
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/EngineerMode/;adb push out/target/product/sr72_w_lca/system/app/EngineerMode.apk system/app;playringtone;
    # Recovery
./makeMtk mm bootable/recovery/ && ./makeMtk -opt=ONE_SHOT_MAKEFILE=build/target/board/Android.mk r recoveryimage && ./mk VQ551_H5511_vodafone copybin
    # TeleService
adb remount;./mk VQ551_H5511_vodafone mm packages/services/Telephony/;adb push out/target/product/sr72_w_lca/system/priv-app/TeleService.apk system/priv-app;playringtone;
    # Todos
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/Todos/;adb push out/target/product/sr72_w_lca/system/app/Todos.apk system/app;playringtone;
    # YGPS
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/YGPS/;adb push out/target/product/sr72_w_lca/system/app/YGPS.apk system/app;playringtone;
    # FileManager
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/FileManager/;adb push out/target/product/sr72_w_lca/system/app/FileManager.apk system/app;playringtone;
    # PackageIntaller
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/PackageInstaller/;adb push out/target/product/sr72_w_lca/system/app/PackageInstaller.apk system/app;playringtone;
    # SettingsProvider
adb remount;adb shell rm -r /data/data/com.android.providers.settings;./mk VQ551_H5511_vodafone mm frameworks/base/packages/SettingsProvider/;adb push out/target/product/sr72_w_lca/system/priv-app/SettingsProvider.apk system/priv-app;playringtone;
    # MediaProvider
adb remount;./mk VQ551_H5511_vodafone mm packages/providers/MediaProvider/;adb push out/target/product/sr72_w_lca/system/priv-app/MediaProvider.apk system/priv-app;playringtone;
    # VirtualTrackball
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/SageRealApp/VirtualTrackball/;adb push out/target/product/sr72_w_lca/system/app/VirtualTrackball.apk system/app;adbkill virtualtrackball;playringtone;
    # SageRealIME
adb remount;./mk VQ551_H5511_vodafone mm packages/inputmethods/SageRealIME/;adb install -r out/target/product/sr72_w_lca/system/app/SageRealIME.apk
adb remount;./mk VQ551_H5511_vodafone mm packages/inputmethods/SageRealIME/;adb push out/target/product/sr72_w_lca/system/app/SageRealIME.apk system/app/;playringtone;
    # Videos
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/VideoPlayer/;adb push out/target/product/sr72_w_lca/system/app/Videos.apk system/app;playringtone;
    # FinalPlane
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/SageRealApp/FinalPlane/;adb push out/target/product/sr72_w_lca/system/app/FinalPlane.apk system/app;playringtone;
    # Bluetooth
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/Bluetooth/;adb push out/target/product/sr72_w_lca/system/app/Bluetooth.apk system/app;playringtone;
    # LatinIME
./mk VQ551_H5511_vodafone mm frameworks/opt/inputmethodcommon/;
adb remount;./mk VQ551_H5511_vodafone mm packages/inputmethods/LatinIME/;adb push out/target/product/sr72_w_lca/system/app/LatinIME.apk system/app;playringtone;
    # Stk1
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/Stk1/;adb push out/target/product/sr72_w_lca/system/app/Stk1.apk system/app;playringtone;
adb shell am start -n com.android.stk/com.android.stk.StkInputActivity
    # DownloadProvider
adb remount;./mk VQ551_H5511_vodafone mm packages/providers/DownloadProvider/;adb push out/target/product/sr72_w_lca/system/priv-app/DownloadProvider.apk system/priv-app;playringtone;
    # Omacp
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/Omacp/;adb push out/target/product/sr72_w_lca/system/app/Omacp.apk system/app;playringtone;
	# new
./clean_project_Sagereal.sh;git pull;./mk -u VQ551_H5511_vodafone new;playringtone;
	# pull mtklog
adb pull /storage/sdcard0/mtklog /home/zq/Desktop/logs/mtklog
	# rm log_temp
adb remount;adb shell rm -r /data/log_temp;adb shell rm -r /data/dalvik-cache;adb shell rm -r /storage/sdcard0/mtklog
    # webviewchromium
adb remount;./mk VQ551_H5511_vodafone mm external/chromium_org/;adb push out/target/product/sr72_w_lca/system/lib/libwebviewchromium.so system/lib;./mk VQ551_H5511_vodafone mm frameworks/webview/;adb push out/target/product/sr72_w_lca/system/framework/webviewchromium.jar system/framework;playringtone;
    # SocialMedia
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/SageRealApp/SocialMedia/;adb push out/target/product/sr72_w_lca/system/app/SocialMedia.apk system/app;playringtone;
    # AppStore
adb remount;./mk VQ551_H5511_vodafone mm packages/apps/SageRealApp/AppStore;adb push out/target/product/sr72_w_lca/system/app/AppStore.apk system/app;playringtone;
    # CMASReceiver
adb remount;./mk VQ551_H5511_vodafone mm mediatek/packages/apps/CMASReceiver/;adb push out/target/product/sr72_w_lca/system/app/CMASReceiver.apk system/app;playringtone;
    # update-modem
./mk VQ551_H5511_vodafone clone && ./mk VQ551_H5511_vodafone update-modem;playringtone;

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

adb shell am broadcast -a android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED --es message "this is test string"

adb shell am broadcast -a cellbroadcastreceiver.SHOW_NEW_ALERT --es message "this is test string"


android.util.Log.e("zhangqi0000", "Workspace-->workspaceToOverview");

	# FeatureOption
com.mediatek.common.featureoption.FeatureOption

./mk VQ551_H5511_vodafone clone;./mk VQ551_H5511_vodafone mm mediatek/frameworks/common/;playringtone;

adb remount;./mk VQ551_H5511_vodafone mm frameworks/base/services/java/;adb push out/target/product/sr72_w_lca/system/framework/services.jar system/framework;playringtone;



ant build;adb push /home/zq/workspace/UIAutomatorTest/bin/first.jar /data/local/tmp;adb shell uiautomator runtest first.jar -c com.sagereal.zq.uiautomator.TestUIAutomator


