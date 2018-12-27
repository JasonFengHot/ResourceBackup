	# framework/base
./mk -ud VF292_EF2921_DORO7030 mm external/protobuf/;notice "Compile_protobuf_success!";
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm frameworks/base/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then   notice "framework_base_build_failure"; else adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/framework.jar system/framework;adb push out/target/product/k39tv1_bsp_512/system/framework/arm/boot* system/framework/arm/;adb reboot;notice "framework_base_build_success!";fi
    # service
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm frameworks/base/services/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "framework_res_build_failure"; else adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/services.jar system/framework/;adb reboot;notice "framework-service_compiled_success!";fi
	# frameworks/base/core/res
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm frameworks/base/core/res/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "framework_res_build_failure"; else adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/framework-res.apk system/framework;notify-send "framework_res_build_success";mocp -l /home/zq/sounds/ring3.ogg;adb reboot;fi
	# SystemUI
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/SystemUI/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkSystemUI/MtkSystemUI.apk system/priv-app/MtkSystemUI/;adbkill com.android.systemui;notice "SystemUI_compiled_success!";
	# Dialer
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Dialer/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkDialer/MtkDialer.apk system/priv-app/MtkDialer/;adb shell pm clear com.android.dialer;notice "Dialer_compiled_success!";
	# Contacts
./mk -ud VF292_EF2921_DORO7030 mm frameworks/support/v4/;notice "framework_v4_success!";
./mk -ud VF292_EF2921_DORO7030 mm frameworks/support/v7/;notice "framework_v7_success!";
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Contacts/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkContacts/MtkContacts.apk system/priv-app/MtkContacts/;adbkill com.android.contacts;notice "Contacts_compiled_success!";
	# Browser
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm packages/apps/Browser/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/MtkBrowser/MtkBrowser.apk system/app/MtkBrowser/;notice "Browser_compiled_success!";
	# Mms 需要先编 Browser
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Mms/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkMms/MtkMms.apk system/priv-app/MtkMms/;adbkill com.android.mms;notice "Mms_compiled_success!";
	# MtkDeskClock
./mk -ud VF292_EF2921_DORO7030 mm frameworks/support/v7/;notice "framework_v7_success!";
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/DeskClock/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/MtkDeskClock/MtkDeskClock.apk system/app/MtkDeskClock/;adbkill com.android.deskclock;notice "MtkDeskClock_compiled_success!";
	# Launcher3Go
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm packages/apps/Launcher3/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/Launcher3Go/Launcher3Go.apk system/priv-app/Launcher3Go/Launcher3Go.apk;adb shell pm clear com.android.launcher3;notice "Launcher3Go_compiled_success!";
    # SRLauncher
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm packages/apps/Sagereal/Launcher/;adb push out/target/product/k39tv1_bsp_512/system/priv-app/SRLauncher/SRLauncher.apk system/priv-app/SRLauncher/;adb shell pm clear com.sagereal.launcher;notice "SRLauncher_compiled_success!";
	# Camera2
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Camera2/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/Camera/Camera.apk system/app/Camera/;adbkill com.mediatek.camera;notice "Camera2_compiled_success!";
    # RecipientChips
./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/frameworks/ex/chips/;notice "RecipientChips_compiled_success!";
	# Email
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Email/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/MtkEmail/MtkEmail.apk system/app/MtkEmail/;adbkill com.android.email;notice "Email_compiled_success!";
    # mediatek-res
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/frameworks/base/res/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/mediatek-res/mediatek-res.apk system/framework/mediatek-res/;notice "mediatek-res_compiled_success!";
    # SettingsLib
./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/SettingsLib/;notice "SettingsLib_compiled_success!";
	# MtkSettings
./mk -ud VF292_EF2921_DORO7030 mm frameworks/support/v7/;notice "framework_v7_success!";
adb root;adb remount;adb shell pm clear com.android.settings;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/MtkSettings/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkSettings/MtkSettings.apk system/priv-app/MtkSettings/;adb shell am start -n com.android.settings/.Settings;notice "MtkSettings_compiled_success!";
    # SettingsProvider
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/SettingsProvider/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkSettingsProvider/MtkSettingsProvider.apk system/priv-app/MtkSettingsProvider/;adbkill com.android.providers.settings;notice "SettingsProvider_compiled_success!";
	# Music
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Music/;adb remount;adb push out/target/product/k39tv1_bsp_512/vendor/app/MusicBspPlus/MusicBspPlus.apk vendor/app/MusicBspPlus/;adbkill com.android.music;notice "Music_compiled_success!";
	# Calculator
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm packages/apps/ExactCalculator/;adb remount;adb push adb push out/target/product/k39tv1_bsp_512/system/app/ExactCalculator/ExactCalculator.apk system/app/ExactCalculator/;adbkill com.android.calculator2;notice "Calculator_compiled_success!";
	# SchedulePowerOnOff
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/SchedulePowerOnOff/;adb remount;adb push out/target/product/k39tv1_bsp_512/vendor/app/SchedulePowerOnOff/SchedulePowerOnOff.apk vendor/app/SchedulePowerOnOff/SchedulePowerOnOff.apk;adb shell pm clear com.mediatek.schpwronoff;notice "SchedulePowerOnOff_compiled_success!";
	# FactoryDevelopX
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm packages/apps/FactoryDevelopX/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/FactoryDevelopX/FactoryDevelopX.apk system/app/FactoryDevelopX/;adb shell pm clear com.example.factorydevelopx;notice "FactoryDevelopX_compiled_success!";
	# FMRadio
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/FMRadio/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/FMRadio/FMRadio.apk system/priv-app/FMRadio/;notice "FMRadio_compiled_success!";
    # SoundRecorder
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm packages/apps/SoundRecorder_V01/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/SoundRecorder_V01/SoundRecorder_V01.apk system/priv-app/SoundRecorder_V01/;adb shell pm clear com.android.soundrecorder;notice "SoundRecorder_compiled_success!";
    # Calendar
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Calendar;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/MtkCalendar/MtkCalendar.apk system/app/MtkCalendar/;adbkill com.android.calendar;notice "Calendar_compiled_success!";
    # EngineerMode
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/EngineerMode/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/EngineerMode/EngineerMode.apk system/app/EngineerMode/;notice "EngineerMode_compiled_success!";
    # TeleService
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/services/Telephony/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkTeleService/MtkTeleService.apk system/priv-app/MtkTeleService/MtkTeleService.apk;adb shell pm clear com.android.phone;notice "TeleService_compiled_success!";
    # YGPS
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/YGPS/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/YGPS/YGPS.apk system/app/YGPS/;notice "YGPS_compiled_success!";
    # FileManager
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/FileManager/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/FileManager/FileManager.apk system/app/FileManager/;notice "FileManager_compiled_success!";
    # mediatek-cta
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/frameworks/opt/cta/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/mediatek-cta.jar system/framework/;notice "mediatek-cta_compiled_success!";
    # PackageIntaller 需要去掉Android.mk中的 LOCAL_JAVA_LIBRARIES := mediatek-cta
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/PackageInstaller/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkPackageInstaller/MtkPackageInstaller.apk system/priv-app/MtkPackageInstaller/;notice "PackageIntaller_compiled_success!";
    # MediaProvider
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/providers/MediaProvider/;adb remount;adb remount;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkMediaProvider/MtkMediaProvider.apk system/priv-app/MtkMediaProvider/;adbkill com.android.providers.media;notice "MediaProvider_compiled_success!";
    # SageRealIME
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/inputmethods/SageRealIME/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/SageRealIME/SageRealIME.apk system/app/SageRealIME/;notice "SageRealIME_compiled_success!";
    # wifi-service
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm frameworks/opt/net/wifi/service/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/wifi-service.jar system/framework;adb remount;adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/oat/arm/wifi-service.odex system/framework/oat/arm/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/oat/arm/wifi-service.art system/framework/oat/arm/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/oat/arm/wifi-service.vdex system/framework/oat/arm/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/framework/wifi-service.jar.prof system/framework/wifi-service.jar.prof
    # Videos
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/VideoPlayer/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/MtkVideos/MtkVideos.apk system/app/MtkVideos/;notice "Videos_compiled_success!";
    # Bluetooth
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Bluetooth/;adb remount;adb push out/target/product/sr72_w_lca/system/app/Bluetooth.apk system/app;notice "Bluetooth_compiled_success!";
    # DownloadProvider 需要先编 mediatek-res（还是编不过，缺少 out/target/common/obj/APPS/mediatek-res_intermediates/classes.jack 这个文件）
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/providers/DownloadProvider/;adb remount;adb push out/target/product/sr72_w_lca/system/priv-app/DownloadProvider.apk system/priv-app;notice "DownloadProvider_compiled_success!";
    # Omacp
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm vendor/mediatek/proprietary/packages/apps/Omacp/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/app/Omacp/Omacp.apk system/app/Omacp/;adbkill com.mediatek.omacp;notice "Omacp_compiled_success!";
    # fonts
adb root;adb remount;./mk -ud VF292_EF2921_DORO7030 mm frameworks/base/data/fonts/;adb remount;adb push out/target/product/k39tv1_bsp_512/system/etc/fonts.xml system/etc;adb push out/target/product/k39tv1_bsp_512/system/fonts/Nina.ttf system/fonts/;
	# user new
./clean_project_Sagereal.sh;git pull;./mk -ud VF292_EF2921_DORO7030 new;notice "New_compiled_success!";
    # update-modem
./mk -ud VF292_EF2921_DORO7030 clone && ./mk -ud VF292_EF2921_DORO7030 update-modem;notice "update-modem success!";
	# pull mtklog
adb pull /storage/sdcard0/mtklog /home/zq/Desktop/logs/mtklog


adb shell am start -n com.android.settings/.Settings
adb shell am start -n com.mediatek.todos/.TodosActivity
adb shell am start -n com.example.factorydevelopx/.KeyTest
adb shell am start -n com.android.email/.activity.Welcome
adb shell am start -n com.mediatek.mtklogger/.MainActivity

    # kill process
adb shell kill `adb shell ps | grep com.android.systemui | awk {'print $2'} | head -n 1`

    # disable KiKa IME
adb shell ime disable com.iqqijni.dv12key/.keyboard_service.view.HDKeyboardService

    # set screen off timeout
adb shell settings put system screen_off_timeout 1800000

    # delete font_scale
adb shell settings delete system font_scale

adb shell settings get system font_scale

android.util.Log.e("zhangqi0000", "Workspace-->workspaceToOverview");

    # adb logcat
adb logcat -c && adb logcat -G 200M && adb logcat | grep "zhangqi8888"




