    # protobuf
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm external/protobuf/;notice "protobuf_compiled_success!";
	# framework/base
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm frameworks/base/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then   notice "framework_base_build_failure"; else adb remount;adb push out/target/product/$target_project/system/framework/framework.jar system/framework;adb push out/target/product/$target_project/system/framework/arm/boot* system/framework/arm/;adb reboot;notice "framework_base_build_success!";fi
    # service
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm frameworks/base/services/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "framework_service_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/framework/services.jar system/framework/;adb reboot;notice "framework_service_compiled_success!";fi
	# frameworks/base/core/res
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm frameworks/base/core/res/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "framework_res_build_failure"; else adb remount;adb push out/target/product/$target_project/system/framework/framework-res.apk system/framework;notice "framework_res_build_success";fi
	# SystemUI
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SystemUI/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "SystemUI_build_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/MtkSystemUI/MtkSystemUI.apk system/priv-app/MtkSystemUI/;adbkill com.android.systemui;notice "SystemUI_compiled_success!";fi
    # SettingsLib
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SettingsLib/;notice "SettingsLib_compiled_success!";
    # v7
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm frameworks/support/v7/;notice "framework_v7_compiled_success!";
    # v14
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm frameworks/support/v14/;notice "framework_v14_compiled_success!";
	# MtkSettings
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;adb shell pm clear com.android.settings;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/MtkSettings/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "MtkSettings_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/MtkSettings/MtkSettings.apk system/priv-app/MtkSettings/;adb shell am start -n com.android.settings/.Settings;notice "MtkSettings_compiled_success!";fi
    # DateTimePicker
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/opt/datetimepicker/;notice "DateTimePicker_compiled_success!";
    # RecipientChips
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/ex/chips/;notice "RecipientChips_compiled_success!";
	# Mms 需要先编 Browser
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm frameworks/support/v7/;notice "framework_v7_compiled_success!";
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Mms/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Mms_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/MtkMms/MtkMms.apk system/priv-app/MtkMms/;adbkill com.android.mms;notice "Mms_compiled_success!";fi
	# Dialer
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Dialer/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Dialer_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/MtkDialer/MtkDialer.apk system/priv-app/MtkDialer/;adb shell pm clear com.android.dialer;notice "Dialer_compiled_success!";fi
	# Contacts
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm frameworks/support/v4/;notice "framework_v4_compiled_success!";
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm frameworks/support/v7/;notice "framework_v7_compiled_success!";
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Contacts/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Contacts_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/MtkContacts/MtkContacts.apk system/priv-app/MtkContacts/;adbkill com.android.contacts;notice "Contacts_compiled_success!";fi
	# Browser
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm packages/apps/Browser/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Browser_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/MtkBrowser/MtkBrowser.apk system/app/MtkBrowser/;notice "Browser_compiled_success!";fi
	# MtkDeskClock
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm frameworks/support/v7/;notice "framework_v7_success!";
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/DeskClock/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "MtkDeskClock_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/MtkDeskClock/MtkDeskClock.apk system/app/MtkDeskClock/;adbkill com.android.deskclock;notice "MtkDeskClock_compiled_success!";fi
	# Launcher3Go
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm packages/apps/Launcher3/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Launcher3Go_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/Launcher3Go/Launcher3Go.apk system/priv-app/Launcher3Go/Launcher3Go.apk;adb shell pm clear com.android.launcher3;notice "Launcher3Go_compiled_success!";fi
    # SRLauncher
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm packages/apps/Sagereal/Launcher/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "SRLauncher_compiled_failure"; else adb push out/target/product/$target_project/system/priv-app/SRLauncher/SRLauncher.apk system/priv-app/SRLauncher/;adb shell pm clear com.sagereal.launcher;notice "SRLauncher_compiled_success!";fi
	# Camera2
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Camera2/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Camera2_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/Camera/Camera.apk system/app/Camera/;adbkill com.mediatek.camera;notice "Camera2_compiled_success!";fi
    # RecipientChips
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/ex/chips/;notice "RecipientChips_compiled_success!";
	# Email
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Email/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Email_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/MtkEmail/MtkEmail.apk system/app/MtkEmail/;adbkill com.android.email;notice "Email_compiled_success!";fi
    # mediatek-res
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/base/res/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "mediatek_res_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/framework/mediatek-res/mediatek-res.apk system/framework/mediatek-res/;notice "mediatek_res_compiled_success!";fi
    # SettingsProvider
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SettingsProvider/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "SettingsProvider_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/MtkSettingsProvider/MtkSettingsProvider.apk system/priv-app/MtkSettingsProvider/;adbkill com.android.providers.settings;notice "SettingsProvider_compiled_success!";fi
	# Music
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Music/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Music_compiled_failure"; else adb remount;adb push out/target/product/$target_project/vendor/app/MusicBspPlus/MusicBspPlus.apk vendor/app/MusicBspPlus/;adbkill com.android.music;notice "Music_compiled_success!";fi
	# Calculator
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm packages/apps/ExactCalculator/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Calculator_compiled_failure"; else adb remount;adb push adb push out/target/product/$target_project/system/app/ExactCalculator/ExactCalculator.apk system/app/ExactCalculator/;adbkill com.android.calculator2;notice "Calculator_compiled_success!";fi
	# SchedulePowerOnOff
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/SchedulePowerOnOff/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "SchedulePowerOnOff_compiled_failure"; else adb remount;adb push out/target/product/$target_project/vendor/app/SchedulePowerOnOff/SchedulePowerOnOff.apk vendor/app/SchedulePowerOnOff/SchedulePowerOnOff.apk;adb shell pm clear com.mediatek.schpwronoff;notice "SchedulePowerOnOff_compiled_success!";fi
	# FactoryDevelopX
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm packages/apps/FactoryDevelopX/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "FactoryDevelopX_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/FactoryDevelopX/FactoryDevelopX.apk system/app/FactoryDevelopX/;adb shell pm clear com.example.factorydevelopx;notice "FactoryDevelopX_compiled_success!";fi
	# FMRadio
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/FMRadio/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "FMRadio_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/FMRadio/FMRadio.apk system/priv-app/FMRadio/;notice "FMRadio_compiled_success!";fi
    # SoundRecorder_V01
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm packages/apps/SoundRecorder_V01/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "SoundRecorder_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/SoundRecorder_V01/SoundRecorder_V01.apk system/priv-app/SoundRecorder_V01/;adbkill com.android.soundrecorder;notice "SoundRecorder_compiled_success!";fi
    # Calendar
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Calendar;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Calendar_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/MtkCalendar/MtkCalendar.apk system/app/MtkCalendar/;adbkill com.android.calendar;notice "Calendar_compiled_success!";fi
    # EngineerMode
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/EngineerMode/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "EngineerMode_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/EngineerMode/EngineerMode.apk system/app/EngineerMode/;notice "EngineerMode_compiled_success!";fi
    # TeleService
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project mm frameworks/support/v7/;notice "framework_v7_success!";
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/services/Telephony/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "TeleService_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/MtkTeleService/MtkTeleService.apk system/priv-app/MtkTeleService/MtkTeleService.apk;adb shell pm clear com.android.phone;notice "TeleService_compiled_success!";fi
    # YGPS
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/YGPS/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "YGPS_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/YGPS/YGPS.apk system/app/YGPS/;notice "YGPS_compiled_success!";fi
    # FileManager
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/FileManager/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "FileManager_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/FileManager/FileManager.apk system/app/FileManager/;notice "FileManager_compiled_success!";fi
    # mediatek-cta
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/frameworks/opt/cta/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "mediatek_cta_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/framework/mediatek-cta.jar system/framework/;notice "mediatek_cta_compiled_success!";fi
    # PackageIntaller 需要去掉Android.mk中的 LOCAL_JAVA_LIBRARIES := mediatek-cta
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/PackageInstaller/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "PackageIntaller_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/priv-app/MtkPackageInstaller/MtkPackageInstaller.apk system/priv-app/MtkPackageInstaller/;notice "PackageIntaller_compiled_success!";fi
    # MediaProvider
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/providers/MediaProvider/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "MediaProvider_compiled_failure"; else adb remount;adb remount;adb push out/target/product/$target_project/system/priv-app/MtkMediaProvider/MtkMediaProvider.apk system/priv-app/MtkMediaProvider/;adbkill com.android.providers.media;notice "MediaProvider_compiled_success!";fi
    # SageRealIME
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/inputmethods/SageRealIME/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "SageRealIME_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/SageRealIME/SageRealIME.apk system/app/SageRealIME/;notice "SageRealIME_compiled_success!";fi
    # wifi-service
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm frameworks/opt/net/wifi/service/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "wifi_service_build_failure"; else adb remount;adb push out/target/product/$target_project/system/framework/wifi-service.jar system/framework;adb remount;adb remount;adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.odex system/framework/oat/arm/;adb remount;adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.art system/framework/oat/arm/;adb remount;adb push out/target/product/$target_project/system/framework/oat/arm/wifi-service.vdex system/framework/oat/arm/;adb remount;adb push out/target/product/$target_project/system/framework/wifi-service.jar.prof system/framework/wifi-service.jar.prof;adb reboot;notice "wifi_service_build_success";fi
    # Videos
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/VideoPlayer/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Videos_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/MtkVideos/MtkVideos.apk system/app/MtkVideos/;notice "Videos_compiled_success!";fi
    # Bluetooth
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Bluetooth/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Bluetooth_compiled_failure"; else adb remount;adb push out/target/product/sr72_w_lca/system/app/Bluetooth.apk system/app;notice "Bluetooth_compiled_success!";fi
    # DownloadProvider 需要先编 mediatek-res（还是编不过，缺少 out/target/common/obj/APPS/mediatek-res_intermediates/classes.jack 这个文件）
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/providers/DownloadProvider/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "DownloadProvider_compiled_failure"; else adb remount;adb push out/target/product/sr72_w_lca/system/priv-app/DownloadProvider.apk system/priv-app;notice "DownloadProvider_compiled_success!";fi
    # Omacp
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm vendor/mediatek/proprietary/packages/apps/Omacp/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "Omacp_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/app/Omacp/Omacp.apk system/app/Omacp/;adbkill com.mediatek.omacp;notice "Omacp_compiled_success!";fi
    # fonts
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb root;adb remount;./mk -ud $new_project mm frameworks/base/data/fonts/;cat mm_build.log | grep "build completed successfully";if [ $? -ne 0 ] ;then notice "fonts_compiled_failure"; else adb remount;adb push out/target/product/$target_project/system/etc/fonts.xml system/etc;adb push out/target/product/$target_project/system/fonts/Nina.ttf system/fonts/;adb reboot;notice "fonts_compiled_success";fi
	# user new
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./clean_project_Sagereal.sh;git pull;./mk -ud $new_project new;notice "New_compiled_success!";
    # update-modem
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;./mk -ud $new_project clone && ./mk -ud $new_project update-modem;notice "update_modem_success!";
	# pull mtklog
new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;adb pull /storage/sdcard0/mtklog /home/zq/Desktop/logs/mtklog


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

    # adbrestart server
sudo adb kill-server && sudo adb start-server


git push origin HEAD:refs/for/dev_MyOS_Doro

android:duplicateParentState="true"

view.setDuplicateParentStateEnabled(true);


android:tint="@*android:color/item_text_color_selector"


ColorStateList.valueOf(0x00000000);

setTintList(getContext().getResources().getColorStateList(com.android.internal.R.color.item_text_color_selector));

setBackground(getResources().getDrawable(com.android.internal.R.drawable.item_background_selector));

<!--Redmine158992 zhangqi modified for Settings/Connected devices/USB 2019/01/07:begin-->


notice 修改成功和失败时候的铃声的图标
如何判断某个模块没有发生变化？
如何在程序中执行脚本？QT？
    如何在已编译过的代码中获取项目名称？和project名称？
    new_project=`cat sagereal_build.log | grep "new_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;target_project=`cat sagereal_build.log | grep "sagereal_target_project" | awk '{print $2}'`;
把lint功能整合进来？
如何检测手机是否开机？
icu资源的编译和push,reboot


select * from dicts where word like 'aa%' or word like 'ab%' or word like 'ac%' or word like 'ba%' or word like 'bb%' or word like 'bc%' or word like 'ca%' or word like 'cb%' or word like 'cc%';
