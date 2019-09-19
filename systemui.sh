source build/envsetup.sh;lunch full_k39tv1_bsp_512-userdebug;adb root;adb remount;mmm vendor/mediatek/proprietary/packages/apps/SystemUI/;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkSystemUI/MtkSystemUI.apk system/priv-app/MtkSystemUI/;adb shell ps | grep "systemui";adb shell kill `adb shell ps | grep "com.android.systemui" | awk {'print $2'} | head -n 1`;mocp -l /home/zq/sounds/ring3.ogg;


source build/envsetup.sh;lunch full_k39tv1_bsp_512-userdebug;adb root;adb remount;mmm frameworks/base/services/;adb push out/target/product/k39tv1_bsp_512/system/framework/services.jar system/framework;adb push out/target/product/k39tv1_bsp_512/system/framework/oat/arm/services.* system/framework/oat/arm/;


source build/envsetup.sh;lunch full_k39tv1_bsp_512-userdebug;adb root;adb remount;mmm vendor/mediatek/proprietary/packages/apps/MtkSettings/;adb push out/target/product/k39tv1_bsp_512/system/priv-app/MtkSettings/MtkSettings.apk system/priv-app/MtkSettings/;adb shell ps | grep "settings";adb shell kill `adb shell ps | grep "com.android.settings" | awk {'print $2'} | head -n 1`;mocp -l /home/zq/sounds/ring3.ogg;
