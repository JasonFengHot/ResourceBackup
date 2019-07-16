在注释中添加生效的路径
研究输入法
把培训做成视频
整理bug并归类？？？？？？？

## mtk开发论坛

```
http://bbs.16rd.com/forum-263-1.html
```

## 常用Base类

```
BaseActivity
BaseAdapter
BaseFragment
```

## 常用工具类

```
https://github.com/Blankj/AndroidUtilCode/blob/master/utilcode/README-CN.md
https://github.com/BolexLiu/DevNote
文件操作工具类
```

## 更新jdk版本

``` bash
sudo update-alternatives --config java
sudo update-alternatives --config javac
```

## 常用jar包

```
操作excel的包
操作json的包
jsoup
爬虫的包
```

## TODO : 整理语言列表

## TODO : 常用缩写的意思(单开一个)

## TODO : 常用默认值的修改(单开一个)

## TODO : 常用sql语句

## TODO : 常用库(AndroidStudio)

## TODO : 常用adb命令

[awesome-adb](https://github.com/mzlogin/awesome-adb)

## TODO : 常用git命令

## TODO : 常用工具安装

```
qgit
vscode
```

## 打印当前所使用的类名、方法名、行号

``` Java
android.util.Log.e("zhangqi8888", Thread.currentThread().getStackTrace()[2].getMethodName()+"  "+Thread.currentThread().getStackTrace()[2].getMethodName()+"  "+Thread.currentThread().getStackTrace()[2].getLineNumber());
```

## android:duplicateParentState 属性详解

[android:duplicateParentState](https://blog.csdn.net/sodino/article/details/8809778)

``` Java
setDuplicateParentStateEnabled(true)
```

## Android进阶学习网站

```
https://github.com/lizhangqu/CoreLink
https://github.com/GcsSloop/AndroidNote?utm_source=gold_browser_extension
```

## TODO : 反射代码模板

## [Snippet]OnClickListener

``` Java
button.setOnClickListener(new android.view.View.OnClickListener() {
    @Override
    public void onClick(android.view.View v) {
        android.util.Log.e("zhangqi8888", "onClick(1) view:" + view);
    }
});
```

## [Snippet]OnKeyListener

``` Java
button.setOnKeyListener(new android.view.View.OnKeyListener() {
    @Override
    public boolean onKey(android.view.View v, int keyCode, android.view.KeyEvent event) {
        if (keyCode == android.view.KeyEvent.ACTION_DOWN) {
            if (event.getAction() == android.view.KeyEvent.KEYCODE_DPAD_DOWN) {
                android.util.Log.e("zhangqi8888", "onKey(1111) event:" + event);
                return true;
            }
        }
        android.util.Log.e("zhangqi8888", "onKey(2222) event:" + event);
        return false;
    }
});
```

## [Snippet]对话框的按键监听

``` Java
mDialog.setOnKeyListener(new android.content.DialogInterface.OnKeyListener() {
    @Override
    public boolean onKey(android.content.DialogInterface dialog, int keyCode, android.view.KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_UP) {
            if (keyCode == KeyEvent.KEYCODE_STAR) {
                keyRemappingSendFakeKeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_VOLUME_DOWN);
                keyRemappingSendFakeKeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_VOLUME_DOWN);
                return true;
            } else if (keyCode == KeyEvent.KEYCODE_POUND || keyCode == KeyEvent.KEYCODE_DEL) {
                keyRemappingSendFakeKeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_VOLUME_UP);
                keyRemappingSendFakeKeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_VOLUME_UP);
                return true;
            }
        }
        return false;
    }
});
```

## [Snippet]OnFocusChangeListener

``` Java
view.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {
    @Override
    public void onFocusChange(android.view.View v, boolean hasFocus) {
        android.util.Log.e("zhangqi8888", "onFocusChange(1) v:" + v + " hasFocus:" + hasFocus);
        if (hasFocus) {
        } else {
        }
    }
});
```

## [Snippet]onLongClickListener

``` Java
view.setOnLongClickListener(new android.view.View.OnLongClickListener() {
    @Override
    public boolean onLongClick(android.view.View v) {
        android.util.Log.e("zhangqi8888", "onLongClick() v:" + v);
        return false;
    }
});
```

## [Snippet]onLayoutChangeListener 监听布局的变化

``` Java
getListView().addOnLayoutChangeListener(new android.view.View.OnLayoutChangeListener() {
    @Override
    public void onLayoutChange(android.view.View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        android.util.Log.e("zhangqi8888", "onLayoutChangeListener(1)" + v);
    }
});
```

## [Snippet]ListView onItemClickListener

``` Java
mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(){
    public void onItemClick(android.widget.AdapterView<?> parent, android.view.View view, int position, long id){
        android.util.Log.e("zhangqi8888", "onItemClick(1)" + view);
    }
});
```

## [Snippet]CheckBox.setOnCheckedChangeListener

``` Java
mSwitch.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener(){
    public void onCheckedChanged(android.widget.CompoundButton compoundButton, boolean isChecked) {
        android.util.Log.e("zhangqi8888", "onCheckedChanged(0)" + isChecked);
        if (isChecked) {
        } else {
        }
    }
});
```

## [Snippet]监听全局布局的变化

``` Java
getWindow().getDecorView().addOnLayoutChangeListener(new android.view.View.OnLayoutChangeListener() {
    public void onLayoutChange(android.view.View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        android.widget.TextView search_src_text = (android.widget.TextView) findViewById(getResources().getIdentifier("android:id/search_src_text", null, null));
        if (search_src_text != null) {
            search_src_text.setTextColor(0xffffffff);
            setTextCursorColor(search_src_text, 0xffffffff);
        }
    }
});
```

## [Snippet]ListView上seekbar的按键监听

``` Java
getListView().setOnKeyListener(new android.view.View.OnKeyListener() {
    public boolean onKey(android.view.View v, int keyCode , android.view.KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_UP && (keyCode == android.view.KeyEvent.KEYCODE_DPAD_LEFT || keyCode == android.view.KeyEvent.KEYCODE_DPAD_RIGHT)) {
            android.view.View selectedView = getListView().getSelectedView();
            if (selectedView != null) {
                android.widget.SeekBar seekbar = (android.widget.SeekBar)selectedView.findViewById(com.android.internal.R.id.seekbar);
                seekbar.onKeyDown(keyCode, new android.view.KeyEvent(android.view.KeyEvent.ACTION_DOWN, keyCode));
                seekbar.onKeyUp(keyCode, new android.view.KeyEvent(android.view.KeyEvent.ACTION_UP, keyCode));
                return true;
            }
        }
        return false;
    }
});
```

## [Snippet]监听音量的变化

``` Java
mAudioManager.listenRingerModeAndVolume(new AudioProfileListener() {
    public void onRingerVolumeChanged(int oldVolume, int newVolume, String extra) {
        android.util.Log.e("listenRingerModeAndVolume", "StatusBarWindowView->onRingerVolumeChanged("+oldVolume+","+newVolume+")");
        seekbar_volume.setProgress(mAudioManager.getStreamVolume(AudioManager.STREAM_RING));
    }
}, AudioProfileListener.LISTEN_RINGER_VOLUME_CHANGED);
```

## [Snippet]监听sim状态的变化

``` Java
android.telephony.TelephonyManager mTelephonyManager = (android.telephony.TelephonyManager)getSystemService(TELEPHONY_SERVICE);
mTelephonyManager.listen(mPhoneServiceListener, PhoneStateListener.LISTEN_SERVICE_STATE);
private PhoneStateListener mPhoneServiceListener = new PhoneStateListener() {
    @Override
    public void onServiceStateChanged(ServiceState serviceState) {
        mServiceState = serviceState.getState();
        Resources mRes = getResources();
        String display = mRes.getString(R.string.radioInfo_unknown);
        switch (mServiceState) {
            case ServiceState.STATE_IN_SERVICE:
                //display = mRes.getString(R.string.radioInfo_service_in);
                display = "";
                break;
            case ServiceState.STATE_OUT_OF_SERVICE:
                display = "out of service";
                display = mRes.getString(R.string.radioInfo_service_emergency);
                break;
            case ServiceState.STATE_EMERGENCY_ONLY:
                display = mRes.getString(R.string.radioInfo_service_out);
                display = mRes.getString(R.string.radioInfo_service_emergency);
                break;
            case ServiceState.STATE_POWER_OFF:
                display = mRes.getString(R.string.radioInfo_service_off);
                display = mRes.getString(R.string.radioInfo_service_emergency);
                break;
            default:
                display = mRes.getString(R.string.radioInfo_service_emergency);
                break;
        }
        btn_arrow.setText(display);
    }
};
```

## [Snippet]Handler handleMessage
``` Java
private android.os.Handler mHandler = new android.os.Handler() {
    public void handleMessage(android.os.Message msg) {
        android.util.Log.e("zhangqi8888", "handleMessage(1)" + msg.what);
        switch (msg.what) {
            case 1:
                break;
            case 2:
                break;
        }
    }
};

//sendMessage
Message msg = mHandler.obtainMessage(1);
msg.what = 1;
msg.arg1 = 2;
msg.arg2 = 3;
msg.obj = new Object();
mHandler.sendMessage(msg);
```

## TODO : 通过handler处理长按的消息？？？？

## [Snippet]启动线程

``` Java
new Thread(new Runnable() {
    public void run() {
        try {
            Thread.sleep(1000);
            android.util.Log.e("zhangqi8888", "new Thread(1)");
        } catch(Exception e) {
            android.util.Log.e("zhangqi8888", "new Thread(2) exception:" + e, e);
            e.printStackTrace();
        }
    }
}).start();
```

## [Snippet]try-catch模板

``` Java
try {
    Object mObject = null;
    mObject.toString();
} catch (Exception e) {
    e.printStackTrace();
    android.util.Log.e("zhangqi8888", "NPE:" + e, e);
}
```

## 滚动条不消失

``` xml
android:fadeScrollbars="false"
```

## [APN]APN相关知识

```
apn常见type及使用场景:
default:用于普通的上网，如浏览器，qq，微信等
mms:收发彩信时建立
dun:tethering时使用
xcap:ss操作
supl:定位使用
ims:volte call,vilte call,wfc,sms over ip
bip:bip相关操作

Background
apns-conf.xml is an XML file containing APN configurations for different operators. Telephony Provider will load content of apns-conf.xml into database, and User can check and edit APN from Settings application, also Data Framework will read APN configuration and use it for data connection.

apns-conf.xml provides APN configuration for world-wide operators, as the xml file has special format, there is something you need to know for apn data check in.

L	vendor/mediatek/proprietary/frameworks/base/telephony/etc/apns-conf.xml
M/N	device/mediatek/common/apns-conf.xml
O0	device/mediatek/config/apns-conf.xml
O1  device/mediatek/config/apns-conf.xml  + wifi-apns.xml
P0	device/mediatek/config/apns-conf.xml

APN parameters
The above figure is a sample of one APN item

The apn item must be included in <apn /> mark.
The fields marked red are usually mandatory, the other fields are optional according to the APN type and decided by operator.
For specific mcc/mnc, the same apn entry with the same type should be unique, update the original data instead of adding a new item.
authtype   0: None,  1: PAP,  2: CHAP,  3: PAP or CHAP. 
If this field is not specified but user item exists, default value is 3 PAP or CHAP.
If this field is not specified and user item is not configured too, default value is 0 None.
protocol/roaming_protocol   The valid values are "IP" "IPV6" "IPV4V6". Please don't use IPV4, use IP instead. If not specified, default value is IP.
type   The valid values are "default", "mms", "supl"(used by GPS), "dun"(used by tethering, hotspot), "hipri", "fota", "ims", "cbs", "ia", "emergency", "dm", "wap", "net", "cmmail", "tethering"(phase out, don't use!), "rcse", "xcap", "rcs", "*". If not specified, it will be "*". * matches all. Normally we shouldn't use "*".
bearer_bitmask This field is used to specify under which bearers the APN can be used. E.g. to add support of WFC we need to modify it. (this field is replaced by network_type_bitmask after P0 Branch)
If configured as "1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19", that means this apn can be used by mobile data and wifi both.
If configured as "18", it means this apn can only be used by wifi.
If configured as "1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|19", it means all kinds of mobile data network bearer can use it except wifi.
If it's not configured, it is treated same as "1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|19" described above. The only difference is that Settings App will not show the apn Bearer item if not configured.
On N1 and later, we should use "1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19" to represent all bearers  instead of 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18. Bit 19 means LTE_CA which is a new type added since N1. The number used by bearer_bitmask is defined in ServiceState.java, from RIL_RADIO_TECHNOLOGY_GPRS to RIL_RADIO_TECHNOLOGY_LTE_CA.
On P0 and later branches please use network_type_bitmask, the same config logic and value as bearer_bitmask. Android uses this to replace bearer_bitmask, the number used by network_type_bitmask is defined in TelephonyManager.java, from NETWORK_TYPE_GPRS to NETWORK_TYPE_LTE_CA.
user_visible the value can be "true" or "false", which is supported since M1. Default is true. If configed as false, the apn will be hidden, not shown in apn list of Settings.
user_editable the value can be "true" or "false", which is supported since O1. Default is true. If configed as false, the apn will be read only, shown in grey on UI.
mvno_type the value can be "imsi", "spn", "gid", "pnn".
mvno_match_data the value defined by OP.
For MORE items, please check Telephony Provider code about how it parses the apns-conf.xml. Generally the above information is enough.
How to modify the apns-conf.xml and update DB on mobilephone
adb pull system/etc/apns-conf.xml
modify...
adb push apns-conf.xml system/etc
delete telephony.db
N/O：adb shell rm -r data/user_de/0/com.android.providers.telephony/databases/telephony.db
Before N：adb shell rm -r data/data/com.android.providers.telephony/databases/telephony.db
adb reboot
O1 specific config file wifi-apns.xml
Note: This section is specially for O1 Branch, so please skip it if your project is not based on O1.

On O1 branch we have a specific file wifi-apns.xml for WiFi configurations.

If the APN is support:

Cellular only
Do not need to add bearer_bitmask field and no entry in wifi-apns.xml
Wifi only
Need add bearer_bitmask=18 in apns-conf.xml's apn entry
Cellular(All Rat) + WiFi
Do not add bearer_bitmask in apns-conf.xml. Add apn in wifi-apns.xml
IMPORTANT NOTE: all key fields (mcc, mnc, apn, mvno_type, mvno_match_data) in wifi-apns.xml should be exactly same as those in apns-conf.xml; in wifi-apns.xml you should add seprated item for each type if the APN has several types supported in apns-conf.xml (example3)

example1:
apns-conf.xml:
<apn carrier="IMS" mcc="202" mnc="01" apn="ims" type="ims" protocol="IPV4V6" roaming_protocol="IP"/>
wifi-apns.xml:
<apn mcc="201" mnc="01" apn="ims" type="ims"/>

example2: 
apns-conf.xml:
<apn carrier="IMS" mcc="525" mnc="05" apn="ims" type="ims" protocol="IPV4V6" roaming_protocol="IP" mvno_type="gid" mvno_match_data="0A"/>
wifi-apns.xml:
<apn mcc="525" mnc="05" apn="ims" type="ims" mvno_type="gid" mvno_match_data="0A"/>

example3: 
apns-conf.xml:
<apn carrier="HOS" mcc="260" mnc="02" apn="hos" mmsc="http://mms/servlets/mms" mmsproxy="213.158.194.226" mmsport="8080" type="mms,xcap" protocol="IPV4V6" roaming_protocol="IP"/>
wifi-apns.xml:
<apn mcc="260" mnc="02" apn="hos" type="mms"/> <apn mcc="260" mnc="02" apn="hos" type="xcap"/>

Cellular(Partial Rat) + WiFi
Specify the bearer_bitmask in apns-conf.xml,  ex: bearer_bitmask=1|14|18

APN数据保存在 /data/user_de/0/com.android.providers.telephony/databases/telephony.db 中
```

## [Snippet]listenRingerModeAndVolume 监听情景模式的变化

``` Java
mAudioManager.listenRingerModeAndVolume(new AudioProfileListener(){
    public void onRingerModeChanged(int ringerMode) {
        // silent mode
        if (ringerMode == 1) {
            Vibrator vibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);
            vibrator.vibrate(500);
        }
    }
}, AudioProfileListener.LISTEN_RINGERMODE_CHANGED);
```

## [Snippet]setTextSize

``` Java
setTextSize(android.util.TypedValue.COMPLEX_UNIT_DIP, 21.0f);
```

## [Snippet]调节情景模式

``` Java
AudioProfileManager mProfileManager = (AudioProfileManager) mContext.getSystemService(Context.AUDIOPROFILE_SERVICE);
if(indexToRingerMode(index) == AudioManager.RINGER_MODE_NORMAL){
    int mSetVolume = Settings.System.getInt(mContext.getContentResolver(), "audio_profile_general_volume", 9);
    mProfileManager.setStreamVolume("mtk_audioprofile_general", AudioProfileManager.STREAM_RING, mSetVolume);
    mAudioManager.setStreamVolume(AudioManager.STREAM_RING, mSetVolume, 9);
}else if(indexToRingerMode(index) == AudioManager.RINGER_MODE_VIBRATE){
    Settings.System.putInt(mContext.getContentResolver(), "audio_profile_general_volume", mProfileManager.getStreamVolume("mtk_audioprofile_general", AudioProfileManager.STREAM_RING));
    mProfileManager.setStreamVolume("mtk_audioprofile_general", AudioProfileManager.STREAM_RING, 0);
    mAudioManager.setStreamVolume(AudioManager.STREAM_RING, 0, 0);
}
```

## [Snippet]onKeyDown / onKeyUp

``` Java
@Override
public boolean onKeyDown(int keyCode, android.view.KeyEvent event) {
    return super.onKeyDown(keyCode, event);
}
@Override
public boolean onKeyUp(int keyCode, android.view.KeyEvent event) {
    return super.onKeyUp(keyCode, event);
}
```

## [Snippet]下拉通知栏

``` Java
((android.app.StatusBarManager)getSystemService("statusbar")).expandNotificationsPanel();
```

## [Snippet]获取View的几种方法

``` Java
//通过id的名称获取id
int id = getContext().getResources().getIdentifier("android:id/search_src_text", null, null);
View mView = findViewById(id);
```

## [Snippet]启动service

``` Java
Intent intent = new Intent("xxx");
intent.setPackage("xxx");
intent.setComponent(new ComponentName("aaa", "bbb"));
startService(intent);
```

## [Snippet]绑定service bindService

``` Java
mContext.bindService(new Intent("android.intent.action.START_MMS_SETTINGS_SERVICE_AIDL"), conn, Service.BIND_AUTO_CREATE);
```

## TODO : 用代码写LinearLayout

## [Snippet]常用View控件的xml模板

``` xml
<ImageView
    android:id="@+id/delete"
    android:layout_width="wrap_content"
    android:layout_height="match_parent"
    android:layout_gravity="center_vertical"
    android:layout_alignParentEnd="true"
    android:layout_alignTop="@id/checkbox"
    android:layout_alignBottom="@id/checkbox"
    android:paddingLeft="20dp"
    android:paddingRight="20dp"
    android:src="@drawable/ic_delete" />
```

``` xml
<TextClock
    android:id="@+id/digital_clock"
    android:format12Hour="@string/main_clock_12_hours_format"
    android:format24Hour="@string/clock_24_hours_format"
    android:layout_gravity="center"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:layout_marginTop="4dp"
    android:layout_marginBottom="-8dp"
    android:singleLine="true"
    android:ellipsize="none"
    style="@style/big_thin"
    android:textSize="80dp"
    android:textColor="#ffffff" />
```

``` xml
<SeekBar
    android:id="@+id/seekbar_volume"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:background="@drawable/background_selector"
    android:paddingLeft="16dp"
    android:paddingRight="16dp"
    android:focusable="false"
    android:paddingTop="10dp"
    android:paddingBottom="10dp" />
```

## [Snippet]常用属性

``` xml
android:focusable="true"
android:focusableInTouchMode="true"
android:descendantFocusability="afterDescendants" 
android:textColorLink="@color/linkColor"
android:ellipsize="marquee" 　　　//跑马灯跑动的几个条件, selected=true focusable=true focusableInTouch=true
<item name="android:actionBarStyle">@style/ActionBarStyle</item>
<item name="android:selectableItemBackground">@*android:drawable/item_background_holo_dark</item>
<item name="android:textColorSecondary">#ffffff</item>
```

## [Snippet]修改actionbar的颜色

``` Java
getWindow().getDecorView().findViewById(com.android.internal.R.id.action_bar_container).setBackgroundColor(android.graphics.Color.parseColor("#ffffff"));
```

## [Snippet]发送广播

``` Java
sendBroadcast(new Intent(""));
```

## [Snippet]发送通知模板Notification

https://blog.csdn.net/lilu_leo/article/details/6608101

``` Java
NotificationManager notMgr = (NotificationManager)context.getSystemService(Context.NOTIFICATION_SERVICE);
Notification n = new Notification();
n.icon = R.drawable.ic_launcher;
n.flags |= Notification.FLAG_ONLY_ALERT_ONCE;
n.flags |= Notification.FLAG_ONGOING_EVENT;
n.defaults = Notification.DEFAULT_SOUND;
n.tickerText = title;
n.when = timeStamp;
Intent openIntent = new Intent(Constants.ACTION_INCOMING_FILE_CONFIRM);
openIntent.setClassName(Constants.THIS_PACKAGE_NAME, BluetoothOppReceiver.class.getName());
openIntent.setDataAndNormalize(uri);
n.setLatestEventInfo(context, title, caption, PendingIntent.getBroadcast(context, 0, openIntent, 0));
Intent hideIntent = new Intent(Constants.ACTION_HIDE);
hideIntent.setClassName(Constants.THIS_PACKAGE_NAME, BluetoothOppReceiver.class.getName());
hideIntent.setDataAndNormalize(uri);
n.deleteIntent = PendingIntent.getBroadcast(context, 0, hideIntent, 0);
notMgr.notify(id, n);
```

## [Snippet]动态注册监听广播

``` Java
registerReceiver(new android.content.BroadcastReceiver() {
    public void onReceive(android.content.Context context, android.content.Intent intent){
        String action = intent.getAction();
        android.util.Log.e("zhangqi8888", "onReceive()" + action);
    }
}, new android.content.IntentFilter("$1"));
```

## [Snippet]颜色解析

``` Java
textView.setTextColor(android.graphics.Color.parseColor("#0096ff"));
textView.setTextColor(0x0000ff00);
```

## 反色相关代码(color inversion)

``` Java
ACCESSIBILITY_DISPLAY_INVERSION_ENABLED

framework/base/java/com/android/internal/hardware/AmbientDisplayConfiguration.java:        return boolSettingDefaultOff(Settings.Secure.ACCESSIBILITY_DISPLAY_INVERSION_ENABLED, user);
framework/base/java/android/provider/Settings.java:        public static final String ACCESSIBILITY_DISPLAY_INVERSION_ENABLED =
framework/base/java/android/provider/Settings.java:            ACCESSIBILITY_DISPLAY_INVERSION_ENABLED,
framework/base/java/android/provider/Settings.java:            INSTANT_APP_SETTINGS.add(ACCESSIBILITY_DISPLAY_INVERSION_ENABLED);
framework/base/accessibility/java/com/android/server/accessibility/AccessibilityManagerService.java:                Settings.Secure.ACCESSIBILITY_DISPLAY_INVERSION_ENABLED);
framework/base/accessibility/java/com/android/server/accessibility/DisplayAdjustmentUtils.java:                    Secure.ACCESSIBILITY_DISPLAY_INVERSION_ENABLED, 0, userId) != 0;
framework/base/core/java/com/android/server/wm/WindowManagerService.java:                Settings.Secure.getUriFor(Settings.Secure.ACCESSIBILITY_DISPLAY_INVERSION_ENABLED);
framework/base/core/java/com/android/server/wm/WindowManagerService.java:                    Settings.Secure.ACCESSIBILITY_DISPLAY_INVERSION_ENABLED, 0, currentUserId);
```

## [Snippet]更新界面显示

``` Java
try {
    mActivityManager.updateConfiguration(null);
} catch (RemoteException e) {
}
```

## TODO : 给apk签名

## [Snippet][Android.mk]Android.mk模板(各个属性的含义)

``` Makefile
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
# 需要修改====apk的名称
LOCAL_PACKAGE_NAME := VodafoneLauncher
LOCAL_SRC_FILES := $(call all-java-files-under, src)
# 不一定需要修改====签名
LOCAL_CERTIFICATE := platform
LOCAL_PROGUARD_FLAG_FILES := proguard-project.txt
# 如果要预置进去可卸载,需要添加以下这行
#LOCAL_MODULE_PATH := $(TARGET_OUT_DATA_APPS)
include $(BUILD_PACKAGE)
include $(call all-makefiles-under,$(LOCAL_PAT))
```

## TODO : 常用权限

``` xml
//T卡读写权限
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_MEDIA_STORAGE" />

//全局对话框的权限
<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>
```

## TODO : Style常用属性

## [Snippet]SharedPreference保存读取

``` Java
//保存
getSharedPreferences("prefs", Context.MODE_APPEND).edit().putBoolean("isFirst", true).apply();

//读取
boolean isFirst = getSharedPreferences("prefs", Context.MODE_APPEND).getBoolean("isFirst", false);
```

## [Snippet]ro值的读取(在某些地方可能需要用到反射)

``` Java
android.os.SystemProperties.get("ro.build.type", "null");
```

## TODO : persist值的保存读取？权限问题

## [Snippet]ContentObserver监听某个数据库的值

``` Java
getContentResolver().registerContentObserver(android.provider.Settings.System.getUriFor(android.provider.Settings.System.AIRPLANE_MODE_ON), false, new android.database.ContentObserver(new android.os.Handler()) {
    @Override
    public void onChange(boolean selfChange, android.net.Uri uri) {
        super.onChange(selfChange, uri);
        android.util.Log.e("zhangqi8888", "onChange()" + uri);
    }
});
```

## [Snippet]Toast

``` Java
android.widget.Toast.makeText(getContext(), "", 2000).show();
```

## [Snippet]Toast高级版

``` Java
private Toast mToast;
public void showToast(String msg){
    if (mToast == null) {
        mToast = Toast.makeText(mContext, msg, 2000);
    }
    if (mToast != null) {
        mToast.setText(msg);
        mToast.show();
    }
}
```

## TODO : Toast自定义版

## TODO : [Snippet]Toast开源库

## [Snippet]Dialog模板

``` Java
Dialog mDialog = new Dialog(this, R.style.dialog_theme);
View dialogView = LayoutInflater.from(Launcher.this).inflate(R.layout.dialog_first_run, null);
View btn_cling = dialogView.findViewById(R.id.btn_cling);
btn_cling.setOnClickListener(new OnClickListener(){
    public void onClick(View v){
    }
});
mDialog.setCancelable(false);
mDialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
mDialog.setContentView(dialogView);
mDialog.show();
```

## [Snippet]AlertDialog模板

``` Java
android.app.AlertDialog.Builder builder = new android.app..AlertDialog.Builder(mContext);
builder.setTitle("Title");
builder.setMessage("Message");
builder.setIconAttribute(android.R.attr.alertDialogIcon)
builder.setPositiveButton("ok", new android.ontent.DialogInterface.OnClickListener() {
    @Override
    public void onClick(android.ontent.DialogInterface dialog, int which) {
        android.util.Log.e("zhangqi8888", "AlertDialog->onClick(positive)->");
    }
});
builder.setNegativeButton("cancel", new DialogInterface.OnClickListener() {
    @Override
    public void onClick(android.ontent.DialogInterface dialog, int which) {
        android.util.Log.e("zhangqi8888", "AlertDialog->onClick(negative)->");
    }
});
builder.create().show();
```

## [Snippet]全局对话框

``` Java
//使用 Application 作为 Dialog 的 Context 将对话框的window类型设置为 WindowManager.LayoutParams.TYPE_SYSTEM_ALERT
AlertDialog.Builder builder = new AlertDialog.Builder(mApplicationContext);
...
AlertDialog alertDialog = builder.create();
alertDialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
alertDialog.show();
```

//在AndroidManifest.xml文件中添加如下权限

``` xml
<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>
```

## [Snippet]AlertDialog状态不变黑

``` Java
public class CustomDialog extends AlertDialog {
    public CustomDialog(@NonNull Context context) {
        super(context);
    }
    public CustomDialog(@NonNull Context context, @StyleRes int theme) {
        super(context, theme);
    }
    protected CustomDialog(@NonNull Context context, boolean cancelable, OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
    }
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // 请使用自己的工具类获取屏幕的高度
        int screenHeight = ScreenUtils.getScreenHeight(getContext());
        // 请使用自己的工具类获取到状态栏的高度
        int statusBarHeight = ScreenUtils.getStatusHeight(getContext());
        int dialogHeight = screenHeight - statusBarHeight;
        getWindow().setLayout(ViewGroup.LayoutParams.MATCH_PARENT, dialogHeight);
    }
}
```

## [Snippet]showProgressDialog

``` Java
android.app.ProgressDialog mProgressDialog = new android.app.ProgressDialog(this);
mProgressDialog.setProgressStyle(android.app.ProgressDialog.STYLE_HORIZONTAL);
mProgressDialog.setTitle("MyTitle");
//mDialog.setIcon(R.drawable.icon);
mProgressDialog.setMessage("This is a progress example!");
mProgressDialog.setMax(100);
mProgressDialog.setProgress(0);
//mDialog.setSecondaryProgress(50);
mProgressDialog.setIndeterminate(false);
mProgressDialog.setCancelable(true);
mProgressDialog.show();
```

## [Snippet]隐藏toolbar上的 NavigationView

``` Java
Toolbar mToolbar = (Toolbar) findViewById(com.android.internal.R.id.action_bar);
if (mToolbar != null) {
    mToolbar.getNavigationView().setVisibility(View.GONE);
}
```

## [Snippet]PreferenceActivity的使用

``` Java
public class Setting extends PreferenceActivity {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);  
        addPreferencesFromResource(R.xml.settings);  
    }
}
```

``` xml
Setting.xml:
<Preference
    android:key="seting2"
    android:title="@string/seting2"
    android:summary="@string/seting2"/>
    android:key="seting1" 
    android:title="@string/seting1" 
    android:summaryOff="@string/seting1summaryOff" 
    android:summaryOn="@stringseting1summaryOff"/>
```

## 通话录音之前播放DTMF声音通知对方

``` Java
CallCommandClient.getInstance().playDtmfTone('9', true);
CallCommandClient.getInstance().stopDtmfTone();
```

## [Snippet]按键转发

``` Java
private long mKeyRemappingSendFakeKeyDownTime;
private void keyRemappingSendFakeKeyEvent(int action, int keyCode) {
    long eventTime = android.os.SystemClock.uptimeMillis();
    if (action == android.view.KeyEvent.ACTION_DOWN) {
        mKeyRemappingSendFakeKeyDownTime = eventTime;
    }
    android.view.KeyEvent keyEvent = new android.view.KeyEvent(mKeyRemappingSendFakeKeyDownTime, eventTime, action, keyCode, 0);
    android.hardware.input.InputManager inputManager = (android.hardware.input.InputManager) getActivity().getSystemService(Context.INPUT_SERVICE);
    inputManager.injectInputEvent(keyEvent, android.hardware.input.InputManager.INJECT_INPUT_EVENT_MODE_ASYNC);
}

mEditTextFrequency.setOnKeyListener(new View.OnKeyListener() {
    @Override
    public boolean onKey(View view, int i, android.view.KeyEvent keyEvent) {
        if (keyEvent.getAction() == android.view.KeyEvent.ACTION_UP && keyEvent.getKeyCode() == android.view.KeyEvent.KEYCODE_STAR) {
            //转发
            keyRemappingSendFakeKeyEvent(android.view.KeyEvent.ACTION_DOWN, android.view.KeyEvent.KEYCODE_NUMPAD_DOT);
            keyRemappingSendFakeKeyEvent(android.view.KeyEvent.ACTION_UP, android.view.KeyEvent.KEYCODE_NUMPAD_DOT);
            return true;
        }
        return false;
    }
});
```

## [Snippet]去掉状态栏

``` Java
//注意在setContentView()之前调用，否则无效。
requestWindowFeature(Window.FEATURE_NO_TITLE);
```

## [Snippet]设置窗口格式为半透明

``` Java
getWindow().setFormat(PixelFormat.TRANSLUCENT);
```

## [Snippet]全屏

``` Java
//注意在setContentView()之前调用，否则无效。
getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
```

## Android中在非UI线程里更新View的不同方法

``` Java
Activity.runOnUiThread( Runnable )
View.post( Runnable )
View.postDelayed( Runnable, long )
Hanlder
AsyncTask
```

## 通话静音

``` Java
ITelephony telephonyManager = ITelephony.Stub.asInterface(ServiceManager.checkService(Context.TELEPHONY_SERVICE));
if (telephonyManager != null) {
    try {
        if (telephonyManager.isRinging()) {
            telephonyManager.silenceRinger();
            return true;
        }
    } catch(Exception e) {
        e.printStackTrace();
    }
}
```

## 禁止截屏

``` Java
getWindow().addFlags(WindowManager.LayoutParams.FLAG_SECURE);
```

## 判断屏幕旋转方向

``` Java
// 判断Android当前的屏幕是横屏还是竖屏。横竖屏判断
if (this.getResources().getConfiguration().orientation == Configuration.ORIENTATION_PORTRAIT) {
    //竖屏
} else {
    //横屏
}
```

# 通过代码动态设置屏幕方向

``` Java
setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
```

# 通过InputFilter禁止输入特殊字符

``` Java
/** 禁止输入表情以及特殊字符 */
public static class EmojiExcludeFilter implements InputFilter {
    @Override
    public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
        for (int i = start; i < end; i++) {
            int type = Character.getType(source.charAt(i));
            if (type == Character.SURROGATE || type == Character.OTHER_SYMBOL) {
                return "";
            }
        }
        String speChat = "[`~!@#$%^&*()+=|{}':;'\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘”“’？]";
        Pattern pattern = Pattern.compile(speChat);
        Matcher matcher = pattern.matcher(source.toString());
        if (matcher.find()) {
            return "";
        } else {
            return null;
        }
    }
}

// 调用方法如下
edtRemark.setFilters(new InputFilter[]{new UIHelper.EmojiExcludeFilter()});
```

## ViewPager无限滑动

``` Java
mViewPager.setOnPageChangeListener(new OnPageChangeListener() {
    @Override
    public void onPageSelected(int arg0) {
    }
    @Override
    public void onPageScrolled(int arg0, float arg1, int arg2) {
        if(arg0 == 0 && (arg1 <= 0.001f && arg1 >= -0.001f)){
            mVp.setCurrentItem(list.size()-2, false);
        }else if(arg0 == list.size() - 1){
            mVp.setCurrentItem(1, false);
        }
    }
    @Override
    public void onPageScrollStateChanged(int arg0) {
    }
});
```

## 判断ViewPager的滑动方向

``` Java
vp.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
    float lastPositionOffset = 0L;

    @Override
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        if (lastPositionOffset > positionOffset && positionOffset != 0) {
            //右滑
            Log.e("direction", "right");
        } else if (lastPositionOffset < positionOffset && positionOffset != 0) {
            //左滑
            Log.e("direction", "left");
        }
        lastPositionOffset = positionOffset;
    }

    @Override
    public void onPageSelected(int position) { }

    @Override
    public void onPageScrollStateChanged(int state) {}
});
```

## 根据百分比计算颜色值

``` Java
/**
 * 根据当前的百分比 计算两个颜色之间的值
 * @param fraction 分值
 * @param startValue 开始颜色
 * @param endValue 结束颜色
 * @return 计算得出的颜色
 */
public static Integer evaluate(float fraction, Integer startValue, Integer endValue) {
    float[] startHsv = new float[3];
    float[] endHsv = new float[3];
    float[] outHsv = new float[3];

    // 把 ARGB 转换成 HSV
    Color.colorToHSV(startValue, startHsv);
    Color.colorToHSV(endValue, endHsv);

    // 根据当前的百分比（fraction）所对应的颜色值
    if (endHsv[0] - startHsv[0] > 180) {
        endHsv[0] -= 360;
    } else if (endHsv[0] - startHsv[0] < -180) {
        endHsv[0] += 360;
    }
    outHsv[0] = startHsv[0] + (endHsv[0] - startHsv[0]) * fraction;
    if (outHsv[0] > 360) {
        outHsv[0] -= 360;
    } else if (outHsv[0] < 0) {
        outHsv[0] += 360;
    }
    outHsv[1] = startHsv[1] + (endHsv[1] - startHsv[1]) * fraction;
    outHsv[2] = startHsv[2] + (endHsv[2] - startHsv[2]) * fraction;

    // 根据当前的百分比（fraction）所对应的透明度
    int alpha = startValue >> 24 + (int) ((endValue >> 24 - startValue >> 24) * fraction);

    // 把 HSV 转换回 ARGB 返回
    return Color.HSVToColor(alpha, outHsv);
}
```

## 解析图片的几种方法

``` Java
Bitmap bitmap = BitmapFactory.decodeResource(R.drawable.ic_launcher);
```

## HttpClient

``` Java
DefaultHttpClient httpClient = new DefaultHttpClient(); 
HttpGet method = new HttpGet("http://www.baidu.com/1.html"); 
HttpResponse resp; 
Reader reader = null; 
try { 
    HttpParams params = new BasicHttpParams(); 
    params.setIntParameter(AllClientPNames.CONNECTION_TIMEOUT, 10000); 
    httpClient.setParams(params); 
    resp = httpClient.execute(method); 
    int status = resp.getStatusLine().getStatusCode(); 
    if (status != HttpStatus.SC_OK) {
        return false; 
    }
    return true; 
} catch (ClientProtocolException e) { 
    e.printStackTrace(); 
} catch (IOException e) { 
    e.printStackTrace(); 
} finally { 
    if (reader != null) {
        try { 
            reader.close(); 
        } catch (IOException e) { 
            // TODO Auto-generated catch block 
            e.printStackTrace(); 
        } 
    }
}
```

## Shape的模板

``` xml
<?xml version="1.0" encoding="utf-8"?>
<!-- android:shape指定形状类型，默认为rectangle -->
<shape xmlns:android="http://schemas.android.com/apk/res/android" android:shape="rectangle">
    <size android:width="10dp" android:height="10dp"/>
    <!-- solid指定形状的填充色，只有android:color一个属性 -->
    <solid android:color="#2F90BD" />
    <!-- padding设置内容区域离边界的间距 -->
    <padding
        android:bottom="12dp"
        android:left="12dp"
        android:right="12dp"
        android:top="12dp" />
    <!-- corners设置圆角，只适用于rectangle -->
    <corners android:radius="200dp" />
    <!-- stroke设置描边 -->
    <stroke
        android:width="2dp"
        android:color="@android:color/darker_gray"
        android:dashGap="4dp"
        android:dashWidth="4dp" />
</shape>
```

## Shape(圆)

``` xml
<?xml version="1.0" encoding="utf-8"?>
<shape xmlns:android="http://schemas.android.com/apk/res/android"
    android:shape="oval"
    android:useLevel="false">

    <solid android:color="#c6c6c6" />
    <size
        android:width="50dp"
        android:height="50dp" />
</shape>
```

## 带圆角的矩形

``` xml
<shape xmlns:android="http://schemas.android.com/apk/res/android">
    <solid android:color="#b2b2b2" />
    <size
        android:width="50dp"
        android:height="30dp" />
    <corners android:radius="5dp" />
</shape>
```

##　带圆角的矩形边框

``` xml
<?xml version="1.0" encoding="utf-8"?>
<shape xmlns:android="http://schemas.android.com/apk/res/android">
    <stroke
        android:width="1dp"
        android:color="#ff5a85" />
    <size
        android:width="50dp"
        android:height="30dp" />
    <corners android:radius="5dp" />
</shape>
```

## 文字根据状态更改颜色的Selector模板

``` Xml
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:color="#53c1bd" android:state_selected="true"/>
    <item android:color="#53c1bd" android:state_focused="true"/>
    <item android:color="#53c1bd" android:state_pressed="true"/>
    <item android:color="#777777"/>
</selector>

<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android="http://schemas.android.com/apk/res/android" >
    <item android:state_selected="true" android:color="@color/software_textColor_selected"></item>
    <item android:state_selected="false" android:color="@color/software_textColor_unselected"></item>
</selector>
```

``` Java
//通过代码调用颜色selector
ColorStateList mTintColor = getContext().getResources().getColorStateList(com.android.internal.R.color.item_text_color_selector);
int color = mTintColor.getColorForState(getDrawableState(), 0);
mTrackDrawable.setTintList(mTintColor);

ImageView imageView = new ImageView(mContext);
imageView.setImageTintList(mTintColor);
```

## 背景色根据状态更改颜色的Selector模板

``` Xml
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:state_selected="true">
        <shape>
            <gradient android:angle="0" android:centerColor="#00a59f" android:endColor="#00a59f" android:startColor="#00a59f" />
        </shape>
    </item>
    <item android:state_focused="true">
        <shape>
            <gradient android:angle="0" android:centerColor="#00a59f" android:endColor="#00a59f" android:startColor="#00a59f" />
        </shape>
    </item>
    <item android:state_pressed="true">
        <shape>
            <gradient android:angle="0" android:centerColor="#00a59f" android:endColor="#00a59f" android:startColor="#00a59f" />
        </shape>
    </item>
    <item>
        <shape>
            <gradient android:angle="0" android:centerColor="#00ff00" android:endColor="00ff00" android:startColor="00ff00" />
        </shape>
    </item>
</selector>
```

``` Java
//通过代码调用背景色selector
Drawable selector = getResources().getDrawable(com.android.internal.R.drawable.item_background_selector);
```

## 设置Activity透明

``` Xml
<style name="TransparentActivity" parent="AppBaseTheme">
    <item name="android:windowBackground">@android:color/transparent</item>
    <item name="android:colorBackgroundCacheHint">@null</item>
    <item name="android:windowIsTranslucent">true</item>
    <item name="android:windowNoTitle">true</item>
    <item name="android:windowContentOverlay">@null</item>
</style>
```

## 切换系统中某个组件的状态,设置其enable或disable

``` Java
public void toggleComponent(View view){
    PackageManager pm = getPackageManager();
    String pkgName = "com.aa.activitytest";
    String comName = "com.aa.activitytest.SecondActivity";
    ComponentName componentName = new ComponentName(pkgName, comName);
    int state = pm.getComponentEnabledSetting(componentName);
    boolean isEnable = state == PackageManager.COMPONENT_ENABLED_STATE_ENABLED || state == PackageManager.COMPONENT_ENABLED_STATE_DEFAULT;
    if(isEnable){
        pm.setComponentEnabledSetting(componentName, PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
    }else {
        pm.setComponentEnabledSetting(componentName, PackageManager.COMPONENT_ENABLED_STATE_ENABLED, PackageManager.DONT_KILL_APP);
    }
}
```

## 代码设置activity全屏/非全屏

``` Java
//切换到全屏
getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FORCE_NOT_FULLSCREEN);
getActivity().getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);

//切换到非全屏
getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
getWindow().addFlags(WindowManager.LayoutParams.FLAG_FORCE_NOT_FULLSCREEN);
```

## 调用开发者选项中显示触摸位置功能

``` Java
android.provider.Settings.System.putInt(getContentResolver(), "show_touches", 1);
```

## px-dp转换

``` Java
public static int dip2px(Context context, float dpValue) {
    final float scale = context.getResources().getDisplayMetrics().density;
    return (int) (dpValue * scale + 0.5f);
}

public static int px2dip(Context context, float pxValue) {
    final float scale = context.getResources().getDisplayMetrics().density;
    return (int) (pxValue / scale + 0.5f);
}
```

## px-sp转换

``` Java
public static int px2sp(Context context, float pxValue) {
    final float fontScale = context.getResources().getDisplayMetrics().scaledDensity;
    return (int) (pxValue / fontScale + 0.5f);
}

public static int sp2px(Context context, float spValue) {
    final float fontScale = context.getResources().getDisplayMetrics().scaledDensity;
    return (int) (spValue * fontScale + 0.5f);
}
```

## dip转px

``` Java
public static int dipToPX(final Context ctx, float dip) {
    return (int)TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, dip, ctx.getResources().getDisplayMetrics());
}
```

## 手机号码正则表达式

``` Java
public static final String REG_PHONE_CHINA = "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";
```

## 邮箱正则表达式

``` Java
public static final String REG_EMAIL = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
```

## 收集设备信息

``` Java
public static Properties collectDeviceInfo(Context context) {
    Properties mDeviceCrashInfo = new Properties();
    try {
        PackageManager pm = context.getPackageManager();
        PackageInfo pi = pm.getPackageInfo(context.getPackageName(), PackageManager.GET_ACTIVITIES);
        if (pi != null) {
            mDeviceCrashInfo.put(VERSION_NAME, pi.versionName == null ? "not set" : pi.versionName);
            mDeviceCrashInfo.put(VERSION_CODE, pi.versionCode);
        }
    } catch (PackageManager.NameNotFoundException e) {
        Log.e(TAG, "Error while collect package info", e);
    }
    Field[] fields = Build.class.getDeclaredFields();
    for (Field field : fields) {
        try {
            field.setAccessible(true);
            mDeviceCrashInfo.put(field.getName(), field.get(null));
        } catch (Exception e) {
            Log.e(TAG, "Error while collect crash info", e);
        }
    }
    return mDeviceCrashInfo;
}

public static String collectDeviceInfoStr(Context context) {
    Properties prop = collectDeviceInfo(context);
    Set deviceInfos = prop.keySet();
    StringBuilder deviceInfoStr = new StringBuilder("{\n");
    for (Iterator iter = deviceInfos.iterator(); iter.hasNext();) {
        Object item = iter.next();
        deviceInfoStr.append("\t\t\t" + item + ":" + prop.get(item) + ", \n");
    }
    deviceInfoStr.append("}");
    return deviceInfoStr.toString();
}
```

## 判断是否有SD卡

``` Java
public static boolean haveSDCard() {
    return android.os.Environment.getExternalStorageState().equals(android.os.Environment.MEDIA_MOUNTED);
}
```

## 查看是否有存储卡插入

``` Java
String status=Environment.getExternalStorageState();
if(status.equals(Enviroment.MEDIA_MOUNTED)){
}
```

## 动态隐藏软键盘

``` Java
public static void hideSoftInput(Activity activity) {
    View view = activity.getWindow().peekDecorView();
    if (view != null) {
        InputMethodManager inputmanger = (InputMethodManager) activity.getSystemService(Context.INPUT_METHOD_SERVICE);
        inputmanger.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}

public static void hideSoftInput(Context context, EditText edit) {
    edit.clearFocus();
    InputMethodManager inputmanger = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
    inputmanger.hideSoftInputFromWindow(edit.getWindowToken(), 0);
}
```

## 动态显示软键盘

``` Java
public static void showSoftInput(Context context, EditText edit) {
    edit.setFocusable(true);
    edit.setFocusableInTouchMode(true);
    edit.requestFocus();
    InputMethodManager inputManager = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
    inputManager.showSoftInput(edit, 0);
}
```

## 动态显示或隐藏软键盘

``` Java
public static void toggleSoftInput(Context context, EditText edit) {
    edit.setFocusable(true);
    edit.setFocusableInTouchMode(true);
    edit.requestFocus();
    InputMethodManager inputManager = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
    inputManager.toggleSoftInput(InputMethodManager.SHOW_FORCED, 0);
}
```

## 主动回到home

``` Java
public static void goHome(Context context) {
    Intent mHomeIntent = new Intent(Intent.ACTION_MAIN);
    mHomeIntent.addCategory(Intent.CATEGORY_HOME);
    mHomeIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
    context.startActivity(mHomeIntent);
}
```

## 设置状态栏的颜色

``` Java
//需要在Android.mk文件中添加v4包的支持
protected void setStatusBarColor(int statusColor) {
    android.view.Window window = getWindow();
    window.clearFlags(android.view.WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
    window.addFlags(android.view.WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
    window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_VISIBLE);
    window.setStatusBarColor(statusColor);
    android.view.ViewGroup mContentView = (android.view.ViewGroup) window.findViewById(android.view.Window.ID_ANDROID_CONTENT);
    View mChildView = mContentView.getChildAt(0);
    if (mChildView != null) {
        android.support.v4.view.ViewCompat.setFitsSystemWindows(mChildView, false);
        android.support.v4.view.ViewCompat.requestApplyInsets(mChildView);
    }
    // set statusbar light mode
    getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
}

//使用方法
public void onAttachedToWindow() {
    super.onAttachedToWindow();
    if("com.android.settings.Settings".equalsIgnoreCase(getClass().getName())){
        setStatusBarColor(android.graphics.Color.parseColor("#3A96FE"));
    }
}
```

## 设置状态栏透明

``` Java
//方法1
setStatusBarColor(android.graphics.Color.parseColor("#00000000"));

//方法2
WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
LayoutParams.flags = (WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | localLayoutParams.flags);

//方法3(貌似没效果)
<item name="android:windowTranslucentStatus">true</item>
```

# 通过style设置状态栏颜色

``` xml
<item name="android:windowLightStatusBar">true</item>
```


## 修改状态栏高度

frameworks/base/core/res/res/values/dimens.xml
``` xml
<dimen name="status_bar_height">48dp</dimen>
```

## 获取状态栏高度

``` Java
public static int getStatusBarHeight(Activity activity) {
    Rect frame = new Rect();
    activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(frame);
    return frame.top;
}
```

## 获取状态栏高度

``` Java
public static int getStatusBarHeight(Context context){
    Class<?> c = null;
    Object obj = null;
    Field field = null;
    int x = 0, statusBarHeight = 0;
    try {
        c = Class.forName("com.android.internal.R$dimen");
        obj = c.newInstance();
        field = c.getField("status_bar_height");
        x = Integer.parseInt(field.get(obj).toString());
        statusBarHeight = context.getResources().getDimensionPixelSize(x);
    } catch (Exception e1) {
        e1.printStackTrace();
    }
    return statusBarHeight;
}
```

## 获取状态栏高度＋标题栏(ActionBar)高度

``` Java
public static int getTopBarHeight(Activity activity) {
    return activity.getWindow().findViewById(Window.ID_ANDROID_CONTENT).getTop();
}
```

## 清空手机上的cookie

``` Java
CookieSyncManager.createInstance(getApplicationContext());
CookieManager.getInstance().removeAllCookie();
```

## 建立gprs链接

``` Java
private boolean openDataConnection() {
    // Set up data connection.
    DataConnection conn = DataConnection.getInstance();
    if (connectMode == 0) {
        ret = conn.openConnection(mContext, “cmwap”, “cmwap”, “cmwap”);  
    } else {
        ret = conn.openConnection(mContext, “cmnet”, “”, “”);  
    }
}
```

## 获取MCC+MNC代码 (SIM卡运营商国家代码和运营商网络代码)

``` Java
// 仅当用户已在网络注册时有效, CDMA 可能会无效（中国移动：46000 46002, 中国联通：46001,中国电信：46003）
public static String getNetworkOperator(Context context) {
    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    return telephonyManager.getNetworkOperator();
}
```

## 获取运营商名称

``` Java
// (例：中国联通、中国移动、中国电信) 仅当用户已在网络注册时有效, CDMA 可能会无效)
public static String getNetworkOperatorName(Context context) {
    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    return telephonyManager.getNetworkOperatorName();
}
```

## 获取移动终端类型

``` Java
// PHONE_TYPE_NONE :0 手机制式未知
// PHONE_TYPE_GSM :1 手机制式为GSM，移动和联通
// PHONE_TYPE_CDMA :2 手机制式为CDMA，电信
// PHONE_TYPE_SIP:3
public static int getPhoneType(Context context) {
    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    return telephonyManager.getPhoneType();
}
```

## 判断手机连接的网络类型(2G,3G,4G)

``` Java
public class Constants {
    /**
     * Unknown network class
     */
    public static final int NETWORK_CLASS_UNKNOWN = 0;

    /**
     * wifi net work
     */
    public static final int NETWORK_WIFI = 1;

    /**
     * "2G" networks
     */
    public static final int NETWORK_CLASS_2_G = 2;

    /**
     * "3G" networks
     */
    public static final int NETWORK_CLASS_3_G = 3;

    /**
     * "4G" networks
     */
    public static final int NETWORK_CLASS_4_G = 4;

}

public static int getNetWorkClass(Context context) {
    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    switch (telephonyManager.getNetworkType()) {
        case TelephonyManager.NETWORK_TYPE_GPRS:
        case TelephonyManager.NETWORK_TYPE_EDGE:
        case TelephonyManager.NETWORK_TYPE_CDMA:
        case TelephonyManager.NETWORK_TYPE_1xRTT:
        case TelephonyManager.NETWORK_TYPE_IDEN:
            return Constants.NETWORK_CLASS_2_G;

        case TelephonyManager.NETWORK_TYPE_UMTS:
        case TelephonyManager.NETWORK_TYPE_EVDO_0:
        case TelephonyManager.NETWORK_TYPE_EVDO_A:
        case TelephonyManager.NETWORK_TYPE_HSDPA:
        case TelephonyManager.NETWORK_TYPE_HSUPA:
        case TelephonyManager.NETWORK_TYPE_HSPA:
        case TelephonyManager.NETWORK_TYPE_EVDO_B:
        case TelephonyManager.NETWORK_TYPE_EHRPD:
        case TelephonyManager.NETWORK_TYPE_HSPAP:
            return Constants.NETWORK_CLASS_3_G;

        case TelephonyManager.NETWORK_TYPE_LTE:
            return Constants.NETWORK_CLASS_4_G;

        default:
            return Constants.NETWORK_CLASS_UNKNOWN;
    }
}
```

## 获取网络类型名称

``` Java
public static String getNetworkTypeName(Context context) {
   if (context != null) {
       ConnectivityManager connectMgr = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
       if (connectMgr != null) {
           NetworkInfo info = connectMgr.getActiveNetworkInfo();
           if (info != null) {
               switch (info.getType()) {
               case ConnectivityManager.TYPE_WIFI:
                   return "WIFI";
               case ConnectivityManager.TYPE_MOBILE:
                   return getNetworkTypeName(info.getSubtype());
               }
           }
       }
   }
   return getNetworkTypeName(TelephonyManager.NETWORK_TYPE_UNKNOWN);
}

public static String getNetworkTypeName(int type) {
   switch (type) {
   case TelephonyManager.NETWORK_TYPE_GPRS:
       return "GPRS";
   case TelephonyManager.NETWORK_TYPE_EDGE:
       return "EDGE";
   case TelephonyManager.NETWORK_TYPE_UMTS:
       return "UMTS";
   case TelephonyManager.NETWORK_TYPE_HSDPA:
       return "HSDPA";
   case TelephonyManager.NETWORK_TYPE_HSUPA:
       return "HSUPA";
   case TelephonyManager.NETWORK_TYPE_HSPA:
       return "HSPA";
   case TelephonyManager.NETWORK_TYPE_CDMA:
       return "CDMA";
   case TelephonyManager.NETWORK_TYPE_EVDO_0:
       return "CDMA - EvDo rev. 0";
   case TelephonyManager.NETWORK_TYPE_EVDO_A:
       return "CDMA - EvDo rev. A";
   case TelephonyManager.NETWORK_TYPE_EVDO_B:
       return "CDMA - EvDo rev. B";
   case TelephonyManager.NETWORK_TYPE_1xRTT:
       return "CDMA - 1xRTT";
   case TelephonyManager.NETWORK_TYPE_LTE:
       return "LTE";
   case TelephonyManager.NETWORK_TYPE_EHRPD:
       return "CDMA - eHRPD";
   case TelephonyManager.NETWORK_TYPE_IDEN:
       return "iDEN";
   case TelephonyManager.NETWORK_TYPE_HSPAP:
       return "HSPA+";
   default:
       return "UNKNOWN";
   }
}
```


## 判断当前手机的网络类型(WIFI还是2,3,4G)

``` Java
public static int getNetworkStatus(Context context) {
    int netWorkType = Constants.NETWORK_CLASS_UNKNOWN;

    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
    NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();

    if (networkInfo != null && networkInfo.isConnected()) {
        int type = networkInfo.getType();

        if (type == ConnectivityManager.TYPE_WIFI) {
            netWorkType = Constants.NETWORK_WIFI;
        } else if (type == ConnectivityManager.TYPE_MOBILE) {
            netWorkType = getNetWorkClass(context);
        }
    }
    return netWorkType;
}
```

## 启动App默认的Activity

``` Java
public static void startApkActivity(final Context ctx, String packageName) {
    PackageManager pm = ctx.getPackageManager();
    PackageInfo pi;
    try {
        pi = pm.getPackageInfo(packageName, 0);
        Intent intent = new Intent(Intent.ACTION_MAIN, null);
        intent.addCategory(Intent.CATEGORY_LAUNCHER);
        intent.setPackage(pi.packageName);
        List<ResolveInfo> apps = pm.queryIntentActivities(intent, 0);
        ResolveInfo ri = apps.iterator().next();
        if (ri != null) {
            String className = ri.activityInfo.name;
            intent.setComponent(new ComponentName(packageName, className));
            ctx.startActivity(intent);
        }
    } catch (NameNotFoundException e) {
        Log.e("startActivity", e);
    }
}
```

## 拨打电话

``` Java
public static void call(Context context, String phoneNumber) {
    context.startActivity(new Intent(Intent.ACTION_CALL, Uri.parse("tel:" + phoneNumber)));
}
```

## 跳转到拨号界面

``` Java
public static void callDial(Context context, String phoneNumber) {
    context.startActivity(new Intent(Intent.ACTION_DIAL, Uri.parse("tel:" + phoneNumber)));
}
```

## 发送短信

``` Java
public static void sendSms(Context context, String phoneNumber, String content) {
    Uri uri = Uri.parse("smsto:" + (TextUtils.isEmpty(phoneNumber) ? "" : phoneNumber));
    Intent intent = new Intent(Intent.ACTION_SENDTO, uri);
    intent.putExtra("sms_body", TextUtils.isEmpty(content) ? "" : content);
    context.startActivity(intent);
}
```

## 发送彩信

``` Java
StringBuilder sb = new StringBuilder();
sb.append("file://");
sb.append(fd.getAbsoluteFile());
Intent intent = new Intent(Intent.ACTION_SENDTO, Uri.fromParts("mmsto", number,null));// Below extra datas are all optional.
intent.putExtra(Messaging.KEY_ACTION_SENDTO_MESSAGE_SUBJECT, subject);
intent.putExtra(Messaging.KEY_ACTION_SENDTO_MESSAGE_BODY, body);
intent.putExtra(Messaging.KEY_ACTION_SENDTO_CONTENT_URI, sb.toString());
intent.putExtra(Messaging.KEY_ACTION_SENDTO_COMPOSE_MODE, composeMode);
intent.putExtra(Messaging.KEY_ACTION_SENDTO_EXIT_ON_SENT, exitOnSent);
startActivity(intent);
```

## 发送email

``` Java
String mime = "img/jpg";
shareIntent.setDataAndType(Uri.fromFile(fd), mime);
shareIntent.putExtra(Intent.EXTRA_STREAM, Uri.fromFile(fd));
shareIntent.putExtra(Intent.EXTRA_SUBJECT, subject);
shareIntent.putExtra(Intent.EXTRA_TEXT, body);
```

## 打开浏览器浏览某一个网站

``` Java
Intent viewIntent = new Intent("android.intent.action.VIEW",Uri.parse("http://vaiyanzi.cnblogs.com"));
startActivity(viewIntent);
```

## 唤醒屏幕并解锁

``` Java
public static void wakeUpAndUnlock(Context context) {
    KeyguardManager km = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
    KeyguardManager.KeyguardLock kl = km.newKeyguardLock("unLock");
    // 解锁
    kl.disableKeyguard();
    // 获取电源管理器对象
    PowerManager pm = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
    // 获取PowerManager.WakeLock对象,后面的参数|表示同时传入两个值,最后的是LogCat里用的Tag
    PowerManager.WakeLock wl = pm.newWakeLock(PowerManager.ACQUIRE_CAUSES_WAKEUP | PowerManager.SCREEN_DIM_WAKE_LOCK, "bright");
    // 点亮屏幕
    wl.acquire();
    // 释放
    wl.release();
}

//需要添加权限
<uses-permission android:name="android.permission.WAKE_LOCK" />
<uses-permission android:name="android.permission.DISABLE_KEYGUARD" />
```

## 判断当前App处于前台还是后台状态

``` Java
public static boolean isApplicationBackground(final Context context) {

    ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
    @ SuppressWarnings("deprecation")
    List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(1);
    if (!tasks.isEmpty()) {
        ComponentName topActivity = tasks.get(0).topActivity;
        if (!topActivity.getPackageName().equals(context.getPackageName())) {
            return true;
        }
    }
    return false;
}

//需要添加权限
<uses-permission android:name="android.permission.GET_TASKS" />
```

## 判断当前手机是否处于锁屏(睡眠)状态

``` Java
public static boolean isSleeping(Context context) {
    KeyguardManager kgMgr = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
    boolean isSleeping = kgMgr.inKeyguardRestrictedInputMode();
    return isSleeping;
}
```

## 判断当前是否有网络连接

``` Java
public static boolean isOnline(Context context) {
    ConnectivityManager manager = (ConnectivityManager) context.getSystemService(Activity.CONNECTIVITY_SERVICE);
    NetworkInfo info = manager.getActiveNetworkInfo();
    if (info != null && info.isConnected()) {
        return true;
    }
    return false;
}
```

## 判断当前是否是WIFI连接状态

``` Java
public static boolean isWifiConnected(Context context) {
    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
    NetworkInfo wifiNetworkInfo = connectivityManager.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
    if (wifiNetworkInfo.isConnected()) {
        return true;
    }
    return false;
}
```

## 安装APK

``` Java
public static void installApk(Context context, File file) {
    Intent intent = new Intent();
    intent.setAction("android.intent.action.VIEW");
    intent.addCategory("android.intent.category.DEFAULT");
    intent.setType("application/vnd.android.package-archive");
    intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    context.startActivity(intent);
}
```

## 获取已经安装的APK路径

``` Java
PackageManager pm = getPackageManager();
for (ApplicationInfo app : pm.getInstalledApplications(0)) {
    Log.d("PackageList", "package: " + app.packageName + ", sourceDir: " + app.sourceDir);
}
```

## 判断当前设备是否为手机

``` Java
public static boolean isPhone(Context context) {
    TelephonyManager telephony = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    if (telephony.getPhoneType() == TelephonyManager.PHONE_TYPE_NONE) {
        return false;
    } else {
        return true;
    }
}
```

## 判断设备是否是平板

``` Java
public static boolean isTablet(Context context) {
    return (context.getResources().getConfiguration().screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK) >= Configuration.SCREENLAYOUT_SIZE_LARGE;
}
```

## 监听apk的安装和卸载

``` Java
MyBroadcastReceiver myReceiver = new MyBroadcastReceiver();
IntentFilter filter = new IntentFilter(Intent.ACTION_PACKAGE_INSTALL);
filter.addAction(Intent.ACTION_PACKAGE_REMOVED);
filter.addAction(Intent.ACTION_PACKAGE_ADDED);
filter.addAction(Intent.ACTION_PACKAGE_CHANGED);
filter.addAction(Intent.ACTION_PACKAGE_RESTARTED);
filter.addDataScheme("package"); //This line is very important. Otherwise, broadcast can't be received.
registerReceiver(myReceiver, filter);
```

## 获取内存大小

``` Java
ActivityManager.MemoryInfo outInfo = new ActivityManager.MemoryInfo();
activityManager.getMemoryInfo(outInfo);
//可用内存
outInfo.availMem
//是否在低内存状态
outInfo.lowMemory
```

## 取得ScrollView的实际高度

``` Java
scrollview.getHeight()
scrollview.getMeasuredHeight()
scrollview.compute()
scrollview.getLayoutParams().height
```

## 获取当前设备宽高，单位px

``` Java
public static int getDeviceWidth(Context context) {
    WindowManager manager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
    return manager.getDefaultDisplay().getWidth();
}

@ SuppressWarnings("deprecation")
public static int getDeviceHeight(Context context) {
    WindowManager manager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
    return manager.getDefaultDisplay().getHeight();
}
```

## 获取屏幕宽高

``` Java
DisplayMetrics dm = new DisplayMetrics();
//获取窗口属性
getWindowManager().getDefaultDisplay().getMetrics(dm);
int screenWidth = dm.widthPixels;//320
int screenHeight = dm.heightPixels;//480
```

## 获取当前设备的IMEI，需要与上面的isPhone()一起使用

``` Java
public static String getDeviceIMEI(Context context) {
    String deviceId;
    if (isPhone(context)) {
        TelephonyManager telephony = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
        deviceId = telephony.getDeviceId();
    } else {
        deviceId = Settings.Secure.getString(context.getContentResolver(), Settings.Secure.ANDROID_ID);

    }
    return deviceId;
}
```

## 获取SIM卡的IMSI号码

``` Java
//方法1
TelephonyManager tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
String mIMSI = tm.getSubscriberIdGemini(PhoneConstants.GEMINI_SIM_1);

//方法2
import com.android.internal.telephony.Phone;
import com.android.internal.telephony.PhoneFactory;
import com.android.internal.telephony.RIL;
private static final int EVENT_GET_IMSI_DONE = 1;

Phone phone = PhoneFactory.getDefaultPhone();
phone.mCM.getIMSI(obtainMessage(EVENT_GET_IMSI_DONE));
public void handleMessage(Message msg) {
    switch (msg.what){
        case EVENT_GET_IMSI_DONE:
            isRecordLoadResponse = true;
            ar = (AsyncResult)msg.obj;
            if (ar.exception != null) {
                Log.e(LOG_TAG, "Exception querying IMSI, Exception:" + ar.exception);
                break;
            }
            imsi = (String) ar.result;
            Log.d(LOG_TAG, "IMSI: " + imsi.substring(0, 6) + "xxxxxxx");
            break;
        default:
            break;
    }
}
```

## 获取当前设备的MAC地址

``` Java
public static String getMacAddress(Context context) {
    String macAddress;
    WifiManager wifi = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
    WifiInfo info = wifi.getConnectionInfo();
    macAddress = info.getMacAddress();
    if (null == macAddress) {
        return "";
    }
    macAddress = macAddress.replace(":", "");
    return macAddress;
}
```

## 获取android设备唯一标示码

``` Java
String android_id = Secure.getString(getContext().getContentResolver(), Secure.ANDROID_ID)
```

## 获取当前程序的版本号

``` Java
public static String getAppVersion(Context context) {
    String version = "0";
    try {
        version = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
    } catch (PackageManager.NameNotFoundException e) {
        e.printStackTrace();
    }
    return version;
}
```

## 精确获取屏幕尺寸

``` Java
public static double getScreenPhysicalSize(Activity ctx) {
    DisplayMetrics dm = new DisplayMetrics();
    ctx.getWindowManager().getDefaultDisplay().getMetrics(dm);
    double diagonalPixels = Math.sqrt(Math.pow(dm.widthPixels, 2) + Math.pow(dm.heightPixels, 2));
    return diagonalPixels / (160 * dm.density);
}
```

## 获取应用程序下所有的activity

``` Java
public static ArrayList<String> getActivities(Context ctx) {
    ArrayList<String> result = new ArrayList<String>();
    Intent intent = new Intent(Intent.ACTION_MAIN, null);
    intent.setPackage(ctx.getPackageName());
    for (ResolveInfo info : ctx.getPackageManager().queryIntentActivities(intent, 0)) {
        result.add(info.activityInfo.name);
    }
    return result;
}
```

## 获取设备上已安装并且可启动的应用列表

``` Java
Intent intent = new Intent(Intent.ACTION_MAIN);
intent.addCategory(Intent.CATEGORY_LAUNCHER);
List<ResolveInfo> activities = getPackageManager().queryIntentActivities(intent, 0)
```

## 列出系统中所有安装的app的信息

``` Java
PackageManager pm = getPackageManager();
List<PackageInfo> packages = pm.getInstalledPackages(PackageManager.GET_UNINSTALLED_PACKAGES);
for(PackageInfo packageInfo : packages){
    //应用图标
    Drawable icon = packageInfo.applicationInfo.loadIcon(pm);
    //标题
    CharSequence lable = packageInfo.applicationInfo.loadLabel(pm);
    //包名
    String packageName = packageInfo.packageName;
}
```

## 将raw中的apk拷贝到/data/data/包名/files/中

``` Java
InputStream in = null;
OutputStream out = null;
try {
    in = getResources().openRawResource(R.raw.dex_apk);
    out = this.openFileOutput("dex_apk.apk", Context.MODE_PRIVATE);
    copyFile(in, out);
} catch (FileNotFoundException e) {
    e.printStackTrace();
} finally {
    try {
        if (in != null) {
            in.close();
        }
    } catch (IOException e) {
        e.printStackTrace();
    }

    try {
        if (out != null) {
            out.close();
        }
    } catch (IOException e) {
        e.printStackTrace();
    }
}
```

## 文件读写相关

https://blog.csdn.net/lilu_leo/article/details/6597302
https://blog.csdn.net/lilu_leo/article/details/6589510

## TODO : 保存文件

## 拷贝文件

``` Java
private void copyFile(InputStream in, OutputStream out){
    byte[] buffer = new byte[1024];
    int len = 0;

    try {
        while((len = in.read(buffer) ) != -1){
            out.write(buffer , 0 , len);
        }
    } catch (IOException e) {
        e.printStackTrace();
    }
}
```

## 使用DexClassLoader加载 /data/data/包名/files/ 下的apk的classes.dex，并通过反射执行。

``` Java
String pkgDataPath = "/data/data/" + getPackageName();
String optimizedDirectory = pkgDataPath + "/files/";
String dexPath = optimizedDirectory + "dex_apk.apk";
DexClassLoader dexClassLoader = new DexClassLoader(dexPath, optimizedDirectory, null, this.getClassLoader());
try {
    Class personClazz = dexClassLoader.loadClass("com.aa.dexapk.Person");
    Object newInstance = personClazz.newInstance();
    Method method = personClazz.getMethod("doWork");
    method.invoke(newInstance);
} catch (Exception e) {
    e.printStackTrace();
}
```

## 动态加载其他已经安装的apk的dex文件， 并通过反射执行

``` Java
private void useDexClassLoader(){
    //创建一个意图，用来找到指定的apk
    Intent intent = new Intent("com.suchangli.android.plugin", null);
    //获得包管理器
    PackageManager pm = getPackageManager();
    List<ResolveInfo> resolveinfoes =  pm.queryIntentActivities(intent, 0);
    //获得指定的activity的信息
    ActivityInfo actInfo = resolveinfoes.get(0).activityInfo;
    //获得包名
    String pacageName = actInfo.packageName;
    //获得apk的目录或者jar的目录
    String apkPath = actInfo.applicationInfo.sourceDir;
    //dex解压后的目录,注意，这个用宿主程序的目录，android中只允许程序读取写自己
    //目录下的文件
    String dexOutputDir = getApplicationInfo().dataDir;
    //native代码的目录
    String libPath = actInfo.applicationInfo.nativeLibraryDir;
    //创建类加载器，把dex加载到虚拟机中
    DexClassLoader calssLoader = new DexClassLoader(apkPath, dexOutputDir, libPath,　this.getClass().getClassLoader());
    //利用反射调用插件包内的类的方法
    try {
        Class<?> clazz = calssLoader.loadClass(pacageName+".Plugin1");
        Object obj = clazz.newInstance();
        Class[] param = new Class[2];
        param[0] = Integer.TYPE;
        param[1] = Integer.TYPE;
        Method method = clazz.getMethod("function1", param);
        Integer ret = (Integer)method.invoke(obj, 1,12);
        Log.i("Host", "return result is " + ret);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (InstantiationException e) {
        e.printStackTrace();
    } catch (IllegalAccessException e) {
        e.printStackTrace();
    } catch (NoSuchMethodException e) {
        e.printStackTrace();
    } catch (IllegalArgumentException e) {
        e.printStackTrace();
    } catch (InvocationTargetException e) {
        e.printStackTrace();
    }
}
```

## 获取其他包中的资源

``` Java
Intent intent = new Intent("com.suchangli.android.plugin", null);
//获得包管理器
PackageManager pm = getPackageManager();
List<ResolveInfo> resolveinfoes =  pm.queryIntentActivities(intent, 0);
//获得指定的activity的信息
ActivityInfo actInfo = resolveinfoes.get(0).activityInfo;
//获得包名
String pacageName = actInfo.packageName;
try {
    Resources res = pm.getResourcesForApplication(pacageName);
    int id = 0;
    id = res.getIdentifier("ic_launcher", "drawable", pacageName);
    Log.i("", "resId is " + id);
} catch (NameNotFoundException e) {
    e.printStackTrace();
}
```

## 获取Activity的图标

``` Java
private Bitmap getIconForActivity(Context context, String packageName, String activityName){
    ComponentName activityComp = new ComponentName(packageName, activityName);
    PackageManager pm = context.getPackageManager();
    Intent intentToResolve = new Intent();
    intentToResolve.setComponent(activityComp);
    ResolveInfo resolveInfo = pm.resolveActivity(intentToResolve, 0);
    Drawable iconDrawable = resolveInfo.activityInfo.loadIcon(pm);
    return Utilities.createIconBitmap( iconDrawable, context); //其中Utilities为Launcher中的工具类
}
```

## 获取当前app的签名信息

``` Java
/**
 * get signature of current package
 * @param context
 * @return signature, null if there is no signature
 */
public static String getSignature(Context context){
    Log.i(TAG, "SignatureUtils.getSignature");
    PackageManager pm = context.getPackageManager();
    String pkgName = context.getPackageName();
    try {
        PackageInfo pi = pm.getPackageInfo(pkgName, PackageManager.GET_SIGNATURES);
        Signature[] signatures = pi.signatures;
        if(signatures != null && signatures.length > 0){
            String signature =  signatures[0].toCharsString();
            Log.i(TAG, "Signature of current package is : " + signature);

            return  signature;
        }
    } catch (PackageManager.NameNotFoundException e1) {
        e1.printStackTrace();
    }
    return null;
}
```

## 获取apk文件的签名信息

``` Java
/**
 * get signature of an apk file
 * this method will execute quit a long time, so it is suitable to call it in sub thread
 * @param context
 * @param apkFilePath
 * @return signature , null if there is no signature , or apkFilePath is wrong
 */
public static String getSignatureOfApk(Context context, String apkFilePath){
    if (TextUtils.isEmpty(apkFilePath)) {
        return null;
    }

    PackageManager pm = context.getPackageManager();
    PackageInfo pi = pm.getPackageArchiveInfo(apkFilePath, PackageManager.GET_SIGNATURES);
    Signature[] signatures = pi.signatures;

    if(signatures != null && signatures.length > 0){
        String signature =  signatures[0].toCharsString();
        Log.i(TAG, "Signature of " + apkFilePath + " is : " + signature);
        return  signature;
    }
    return null;
}
```

## 获取apk文件的权限信息

``` Java
public static List<PermissionInfo> getApkPermissions(String apkFile, PackageManager pm){
    List<PermissionInfo> permissionInfos = new ArrayList<PermissionInfo>();
    PackageInfo packageInfo =  pm.getPackageArchiveInfo(apkFile, PackageManager.GET_PERMISSIONS);
    String[] permissions = packageInfo.requestedPermissions;
    for(String permName : permissions ){
        try {
            PermissionInfo permissionInfo = pm.getPermissionInfo(permName, 0);
            permissionInfos.add(permissionInfo);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }
    return permissionInfos;
}
```

## 检测字符串中是否包含汉字

``` Java
public static boolean checkChinese(String sequence) {
    final String format = "[\\u4E00-\\u9FA5\\uF900-\\uFA2D]";
    boolean result = false;
    Pattern pattern = Pattern.compile(format);
    Matcher matcher = pattern.matcher(sequence);
    result = matcher.find();
    return result;
}
```

## 检测字符串中只能包含:中文、数字、下划线(_)、横线(-)

``` Java
public static boolean checkNickname(String sequence) {
    final String format = "[^\\u4E00-\\u9FA5\\uF900-\\uFA2D\\w-_]";
    Pattern pattern = Pattern.compile(format);
    Matcher matcher = pattern.matcher(sequence);
    return !matcher.find();
}
```

## 检查又没有应用程序来接受处理你发出的intent

``` Java
public static boolean isIntentAvailable(Context context, String action) {
    final PackageManager packageManager = context.getPackageManager();
    final Intent intent = new Intent(action);
    List<ResolveInfo> list = packageManager.queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY);
    return list.size() > 0;
}
```

## 使用TransitionDrawable实现渐变效果

``` Java
private void setImageBitmap(ImageView imageView, Bitmap bitmap) {
    final TransitionDrawable td = new TransitionDrawable(new Drawable[] { new ColorDrawable(android.R.color.transparent), new BitmapDrawable(mContext.getResources(), bitmap) });
    imageView.setBackgroundDrawable(imageView.getDrawable());
    imageView.setImageDrawable(td);
    td.startTransition(200);
}
```

## 发送广播扫描指定文件

``` Java
sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, uri));
```

## 多进程Preferences数据共享

``` Java
public static void putStringProcess(Context ctx, String key, String value) {
    SharedPreferences sharedPreferences = ctx.getSharedPreferences("preference_mu", Context.MODE_MULTI_PROCESS);
    Editor editor = sharedPreferences.edit();
    editor.putString(key, value);
    editor.commit();
}

public static String getStringProcess(Context ctx, String key, String defValue) {
    SharedPreferences sharedPreferences = ctx.getSharedPreferences("preference_mu", Context.MODE_MULTI_PROCESS);
    return sharedPreferences.getString(key, defValue);
}
```

## 泛型ArrayList转数组

``` Java
public static <T> T[] toArray(Class<?> cls, ArrayList<T> items) {
    if (items == null || items.size() == 0) {
        return (T[]) Array.newInstance(cls, 0);
    }
    return items.toArray((T[]) Array.newInstance(cls, items.size()));
}
```

## 保存恢复ListView为当前位置

``` Java
private void saveCurrentPosition() {
    if (mListView != null) {
        int position = mListView.getFirstVisiblePosition();
        View v = mListView.getChildAt(0);
        int top = (v == null) ? 0 : v.getTop();
        //保存position和top
    }
}

private void restorePosition() {
    if (mFolder != null && mListView != null) {
        int position = 0;//取出保存的数据
        int top = 0;//取出保存的数据
        mListView.setSelectionFromTop(position, top);
    }
}
```

## 调用便携式热点和数据共享设置

``` Java
public static Intent getHotspotSetting() {
    Intent intent = new Intent();
    intent.setAction(Intent.ACTION_MAIN);
    ComponentName com = new ComponentName("com.android.settings", "com.android.settings.TetherSettings");
    intent.setComponent(com);
    return intent;
}
```

## 格式化输出IP地址

``` Java
public static String getIp(Context ctx) {
    return Formatter.formatIpAddress((WifiManager) ctx.getSystemService(Context.WIFI_SERVICE).getConnectionInfo().getIpAddress());
}
```

## ip地址转成8位16进制串

``` Java
/** ip转16进制 */
public static String ipToHex(String ips) {
    StringBuffer result = new StringBuffer();
    if (ips != null) {
        StringTokenizer st = new StringTokenizer(ips, ".");
        while (st.hasMoreTokens()) {
        String token = Integer.toHexString(Integer.parseInt(st.nextToken()));
        if (token.length() == 1) {
            token = "0" + token;
            result.append(token);
        }
    }
    return result.toString();
}

/** 16进制转ip */
public static String texToIp(String ips) {
    try {
        StringBuffer result = new StringBuffer();
        if (ips != null && ips.length() == 8) {
            for (int i = 0; i < 8; i += 2) {
                if (i != 0) {
                    result.append('.');
                    result.append(Integer.parseInt(ips.substring(i, i + 2), 16));
                }
            }
            return result.toString();
    } catch (NumberFormatException ex) {
        Logger.e(ex);
    }
    return "";
}
```

## 利用反射机制，获取drawable文件夹下的图片名称

``` Java
Field[] fields = R.drawable.class.getDeclaredFields();
for(Field field:fields){
    if(!"icon".equals(field.getName())){
        sb.append(field.getName() + "\t");
    }
    }
mTextView.setText(sb.toString());
```

## 文件夹排序

``` Java
public static void sortFiles(File[] files) {
    Arrays.sort(files, new Comparator<File>() {
        @Override
        public int compare(File lhs, File rhs) {
            //返回负数表示o1 小于o2，返回0 表示o1和o2相等，返回正数表示o1大于o2。 
            boolean l1 = lhs.isDirectory();
            boolean l2 = rhs.isDirectory();
            if (l1 && !l2)
                return -1;
            else if (!l1 && l2)
                return 1;
            else {
                return lhs.getName().compareTo(rhs.getName());
            }
        }
    });
}
```

## 发送不重复的通知

``` Java
public static void sendNotification(Context context, String title, String message, Bundle extras) {
    Intent mIntent = new Intent(context, FragmentTabsActivity.class);
    mIntent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
    mIntent.putExtras(extras);
    int requestCode = (int) System.currentTimeMillis();
    PendingIntent mContentIntent = PendingIntent.getActivity(context, requestCode, mIntent, 0);
    Notification mNotification = new NotificationCompat.Builder(context).setContentTitle(title).setSmallIcon(R.drawable.app_icon).setContentIntent(mContentIntent).setContentText(message).build();
    mNotification.flags |= Notification.FLAG_AUTO_CANCEL;
    mNotification.defaults = Notification.DEFAULT_ALL;
    NotificationManager mNotificationManager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
    mNotificationManager.notify(requestCode, mNotification);
}
```

## 通过代码设置TextView的样式

``` Java
new TextView(new ContextThemeWrapper(this, R.style.text_style));
```

## 通过html设置TextView中内容的样式

``` Java
tv.setText(Html.fromHtml("<font color="#ff0000">红色</font>其它颜色"));
```

## WebView保留缩放功能但隐藏缩放控件

``` Java
mWebView.getSettings().setSupportZoom(true);
mWebView.getSettings().setBuiltInZoomControls(true);
if (DeviceUtils.hasHoneycomb()){
    mWebView.getSettings().setDisplayZoomControls(false);
}
```

## 通过代码解压zip包

``` Java
/**
 * 解压一个压缩文档 到指定位置
 * @param zipFileString 压缩包的名字
 * @param outPathString 指定的路径
 */
public static void UnZipFolder(String zipFileString, String outPathString) throws Exception {
    java.util.zip.ZipInputStream inZip = new java.util.zip.ZipInputStream(new java.io.FileInputStream(zipFileString));
    java.util.zip.ZipEntry zipEntry;
    String szName = "";

    while ((zipEntry = inZip.getNextEntry()) != null) {
        szName = zipEntry.getName();
        if (zipEntry.isDirectory()) {
            // get the folder name of the widget
            szName = szName.substring(0, szName.length() - 1);
            java.io.File folder = new java.io.File(outPathString + java.io.File.separator + szName);
            folder.mkdirs();
        } else {
            java.io.File file = new java.io.File(outPathString + java.io.File.separator + szName);
            file.createNewFile();
            // get the output stream of the file
            java.io.FileOutputStream out = new java.io.FileOutputStream(file);
            int len;
            byte[] buffer = new byte[1024];
            // read (len) bytes into buffer
            while ((len = inZip.read(buffer)) != -1) {
                // write (len) byte from buffer at the position 0
                out.write(buffer, 0, len);
                out.flush();
            }
            out.close();
        }
    }
    inZip.close();
}
```

## 从assets中读取文本和图片资源

``` Java
/** 从assets 文件夹中读取文本数据 */
public static String getTextFromAssets(final Context context, String fileName) {
    String result = "";
    try {
        InputStream in = context.getResources().getAssets().open(fileName);
        // 获取文件的字节数
        int lenght = in.available();
        // 创建byte数组
        byte[] buffer = new byte[lenght];
        // 将文件中的数据读到byte数组中
        in.read(buffer);
        result = EncodingUtils.getString(buffer, "UTF-8");
        in.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return result;
}

/** 从assets 文件夹中读取图片1 */
public static Drawable loadImageFromAsserts(final Context ctx, String fileName) {
    try {
        InputStream is = ctx.getResources().getAssets().open(fileName);
        return Drawable.createFromStream(is, null);
    } catch (IOException e) {
        if (e != null) {
            e.printStackTrace();
        }
    } catch (OutOfMemoryError e) {
        if (e != null) {
            e.printStackTrace();
        }
    } catch (Exception e) {
        if (e != null) {
            e.printStackTrace();
        }
    }
    return null;
}

/** 从assets 文件夹中读取图片2 */
bgimg0 = getImageFromAssetsFile("Cat_Blink/cat_blink0000.png");
private Bitmap getImageFromAssetsFile(String fileName) {
    Bitmap image = null;
    AssetManager am = getResources().getAssets();
    try {
        InputStream is = am.open(fileName);
        image = BitmapFactory.decodeStream(is);
        is.close();
    } catch (IOException e) {
        e.printStackTrace();
    }
    return image;
}
```

## 解析assets文件夹下的xml文件

``` Java
SAXParserFactory.newInstance().newSAXParser().parse(getResources().getAssets().open("apns-conf.xml"), apnHandler);
```

## 展开、收起状态栏

``` Java
public static final void collapseStatusBar(Context ctx) {
    Object sbservice = ctx.getSystemService("statusbar");
    try {
        Class<?> statusBarManager = Class.forName("android.app.StatusBarManager");
        Method collapse;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            collapse = statusBarManager.getMethod("collapsePanels");
        } else {
            collapse = statusBarManager.getMethod("collapse");
        }
        collapse.invoke(sbservice);
    } catch (Exception e) {
        e.printStackTrace();
    }
}

public static final void expandStatusBar(Context ctx) {
    Object sbservice = ctx.getSystemService("statusbar");
    try {
        Class<?> statusBarManager = Class.forName("android.app.StatusBarManager");
        Method expand;
        if (Build.VERSION.SDK_INT >= 17) {
            expand = statusBarManager.getMethod("expandNotificationsPanel");
        } else {
            expand = statusBarManager.getMethod("expand");
        }
        expand.invoke(sbservice);
    } catch (Exception e) {
        e.printStackTrace();
    }
}
```

## 计算字宽

``` Java
public static float getTextWidth(String text, float Size) {
    TextPaint FontPaint = new TextPaint();
    FontPaint.setTextSize(Size);
    return FontPaint.measureText(text);
}
```

## 图片的旋转

``` Java
Bitmap bitmapOrg = BitmapFactory.decodeResource(this.getContext().getResources(), R.drawable.moon);
Matrix matrix = new Matrix();
matrix.postRotate(-90);//旋转的角度
Bitmap resizedBitmap = Bitmap.createBitmap(bitmapOrg, 0, 0, bitmapOrg.getWidth(), bitmapOrg.getHeight(), matrix, true);
BitmapDrawable bmd = new BitmapDrawable(resizedBitmap);
```

## 格式化 string.xml 中的字符串

``` xml
// in strings.xml..
<string name="my_text">Thanks for visiting %s. You age is %d!</string>
```

``` Java
// and in the java code:
String.format(getString(R.string.my_text), "oschina", 33);
```

## 查看电池使用详情

``` Java
Intent intentBatteryUsage = new Intent(Intent.ACTION_POWER_USAGE_SUMMARY);
startActivity(intentBatteryUsage);
```

## android获取存储卡路径以及使用情况

``` Java
/** 获取存储卡路径 */
File sdcardDir=Environment.getExternalStorageDirectory();
/** StatFs 看文件系统空间使用情况 */
StatFs statFs=new StatFs(sdcardDir.getPath());
/** Block 的 size*/
Long blockSize=statFs.getBlockSize();
/** 总 Block 数量 */
Long totalBlocks=statFs.getBlockCount();
/** 已使用的 Block 数量 */
Long availableBlocks=statFs.getAvailableBlocks();
```

## android中添加新的联系人

``` Java
private Uri insertContact(Context context, String name, String phone) {
    ContentValues values = new ContentValues();
    values.put(People.NAME, name);
    Uri uri = getContentResolver().insert(People.CONTENT_URI, values);
    Uri numberUri = Uri.withAppendedPath(uri, People.Phones.CONTENT_DIRECTORY);
    values.clear();

    values.put(Contacts.Phones.TYPE, People.Phones.TYPE_MOBILE);
    values.put(People.NUMBER, phone);
    getContentResolver().insert(numberUri, values);

    return uri;
}
```

## 唤醒屏幕并解锁

``` Java
public static void wakeUpAndUnlock(Context context){
    KeyguardManager km= (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
    KeyguardManager.KeyguardLock kl = km.newKeyguardLock("unLock");
    //解锁
    kl.disableKeyguard();
    //获取电源管理器对象
    PowerManager pm=(PowerManager) context.getSystemService(Context.POWER_SERVICE);
    //获取PowerManager.WakeLock对象,后面的参数|表示同时传入两个值,最后的是LogCat里用的Tag
    PowerManager.WakeLock wl = pm.newWakeLock(PowerManager.ACQUIRE_CAUSES_WAKEUP | PowerManager.SCREEN_DIM_WAKE_LOCK,"bright");
    //点亮屏幕
    wl.acquire();
    //释放
    wl.release();
}

<uses-permission android:name="android.permission.WAKE_LOCK" />
<uses-permission android:name="android.permission.DISABLE_KEYGUARD" />
```

## 判断当前App处于前台还是后台状态

``` Java
public static boolean isApplicationBackground(final Context context) {
    ActivityManager am = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
    @SuppressWarnings("deprecation")
    List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(1);
    if (!tasks.isEmpty()) {
        ComponentName topActivity = tasks.get(0).topActivity;
        if (!topActivity.getPackageName().equals(context.getPackageName())) {
            return true;
        }
    }
    return false;
}
<uses-permission android:name="android.permission.GET_TASKS" />
```

## 获取栈顶Activity

``` Java
private ComponentName getTopActivity() {
    final ActivityManager am = (ActivityManager)mContext.getSystemService(Context.ACTIVITY_SERVICE);
    ActivityInfo aInfo = null;
    List<RunningTaskInfo> list = am.getRunningTasks(1);
    if (list.size() != 0) {
        RunningTaskInfo topRunningTask = list.get(0);
        return topRunningTask.topActivity;
    } else {
        return null;
    }
}

// 判断facebook是否在栈顶
private boolean isFaceBookLiteTop(){
    ComponentName topActivity = getTopActivity();
    String packageName = "";
    String className = "";
    if (topActivity != null) {
        packageName = topActivity.getPackageName().trim();
        className = topActivity.getClassName().trim();
    }
    if ("com.facebook.lite".equalsIgnoreCase(packageName)　{
        return true;
    }
    return false;
}

// L之后的方法
public static boolean isAppRunningForeground(Context context){
    ActivityManager activityManager = (ActivityManager) context.getSystemService(Service.ACTIVITY_SERVICE);
    List<ActivityManager.RunningAppProcessInfo> runningAppProcessInfoList = activityManager.getRunningAppProcesses();
    if (runningAppProcessInfoList==null){
        return false;
    }
    for (ActivityManager.RunningAppProcessInfo processInfo : runningAppProcessInfoList) {
        if (processInfo.processName.equals(context.getPackageName())
                && processInfo.importance==ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND){
            return true;
        }
    }
    return false;
}
```

## 判断当前手机是否处于休眠状态

``` Java
public static boolean isSleeping(Context context) {
    KeyguardManager kgMgr = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
    boolean isSleeping = kgMgr.inKeyguardRestrictedInputMode();
    return isSleeping;
}
```

## 在View Layout完成后获取控件大小

``` Java
final TextView tv = (TextView) findViewById(R.id.myTextView);
ViewTreeObserver vto = tv.getViewTreeObserver();
vto.addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
    @Override
    public void onGlobalLayout() {
        Toast.makeText(MyActivity.this, tv.getWidth() + " x " + tv.getHeight(), Toast.LENGTH_LONG).show();
        tv.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
});
```

## 关键帧插值器

``` Java
public static float calculateValue(float[] values, float time, float def) {
    float value = def;
    if (values != null && values.length > 0) {
        float segment = 1.0f / (float)(values.length - 1);
        int index = (int)(time / segment);
        if (index >= values.length - 1) {
            value = values[values.length - 1];
        } else {
            float extra = time - segment * (float)index;
            value = values[index] + (values[index + 1] - values[index]) * extra / segment;
        }
    }
    return value;
}
```

## 给图片叠加渐变

``` Java
private void addShadow(Bitmap bitmap, int color) {
    int[] colors = new int[]{
            color & 0x00FFFFFF,
            color & 0x0AFFFFFF,
            color & 0x33FFFFFF,
            color & 0x66FFFFFF,
            color & 0x99FFFFFF,
            color & 0xCCFFFFFF,
            color
    };
    GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, colors);
    gradientDrawable.setGradientType(GradientDrawable.LINEAR_GRADIENT);
    Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
    gradientDrawable.setBounds(rect);
    gradientDrawable.setLevel(8);
    Canvas canvass = new Canvas(bitmap);
    gradientDrawable.draw(canvass);
}
```

## ListView 或者 GridView 去除滑动特性 (即固定高度)

``` Java
@Override
protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
    heightMeasureSpec = MeasureSpec.makeMeasureSpec(Integer.MAX_VALUE >> 2, MeasureSpec.AT_MOST);
    super.onMeasure(widthMeasureSpec, heightMeasureSpec);
}
```

## 获取系统长按时间，自定义View会用到

``` Java
getSystemLongPressTime
```

## 圆形的ImageView,CircleImageView

``` Java
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.graphics.Matrix;

/** 圆形的Imageview */
public class CircleImageView extends ImageView {
    private Paint paint = new Paint();

    public CircleImageView(Context context) {
        super(context);
    }

    public CircleImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CircleImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (null != drawable) {
            Bitmap bitmap1 = ((BitmapDrawable) drawable).getBitmap();
            Matrix matrix = new Matrix();
            float x = (float)100/bitmap1.getWidth();
            float y = (float)100/bitmap1.getHeight();
            matrix.postScale(x, y);
            Bitmap bitmap = Bitmap.createBitmap(bitmap1, 0, 0, bitmap1.getWidth(), bitmap1.getHeight(), matrix, true);
            Bitmap b = toRoundCorner(bitmap, 14);
            final Rect rect = new Rect(0, 0, b.getWidth(),  b.getHeight());
            paint.reset();
            canvas.drawBitmap(b, rect, rect, paint);
        } else {
            super.onDraw(canvas);
        }
    }

    private Bitmap toRoundCorner(Bitmap bitmap, int pixels) {
        Bitmap output = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(output);
        final int color = 0xff424242;
        final Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(color);
        int x = bitmap.getWidth();
        canvas.drawCircle(x / 2, x / 2, x / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return output;
    }
}
```

## 通过代码动态设置语言

``` Java
Resources resources = getResources();//获得res资源对象
Configuration config = resources.getConfiguration();//获得设置对象
DisplayMetrics dm = resources.getDisplayMetrics();//获得屏幕参数：主要是分辨率，像素等。
config.locale = Locale.SIMPLIFIED_CHINESE; //简体中文
resources.updateConfiguration(config, dm);
```

## 根据控件的id名称获取控件

frameworks/base/core/java/android/app/Activity.java

``` Java
private View findViewByName(String name){
    return findViewById(getResources().getIdentifier(name, "id", getPackageName()));
}

private View findViewByName(View parent, String name){
    return parent.findViewById(getResources().getIdentifier(name, "id", getPackageName()));
}

//具体用法如下
View setting_autodownload_layout = findViewByName("setting_autodownload_layout");
```

## 获取图片信息

``` Java
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.imaging.jpeg.JpegProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;

public class ReadPic {
    /** 导入标签，使用metadata-extractor */
    public static void main(String[] args) {
        readPic();
    }

    /** 处理 单张 图片 */
    private static void readPic() {
        File jpegFile = new File("d:\\002.jpg");
        Metadata metadata;
        try {
            metadata = JpegMetadataReader.readMetadata(jpegFile);
            Iterator<Directory> it = metadata.getDirectories().iterator();
            while (it.hasNext()) {
                Directory exif = it.next();
                Iterator<Tag> tags = exif.getTags().iterator();
                while (tags.hasNext()) {
                    Tag tag = (Tag) tags.next();
                    System.out.println(tag);
                }
            }
        } catch (JpegProcessingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

## 解析res/drawable下图片的另一种方式

``` Java
if (width == 540) {
    path = "/res/drawable-960x540/paillette_" + pailletteIndex + ".png";
} else if(width == 480) {
    path = "/res/drawable-800x480/paillette_" + pailletteIndex + ".png";
} else if(width == 720) {
    path = "/res/drawable-1280x720/paillette_" + pailletteIndex + ".png";
} else {
    path = "/res/drawable/paillette_" + pailletteIndex + ".png";
}
paillette_array[0] = BitmapFactory.decodeStream(getClass().getResourceAsStream(path));
```

## 通过代码动态设置view的selector

``` Java
private StateListDrawable getStateDrawable(Context context, int normalId, int focusedId, int pressedId) {
    StateListDrawable stateListDrawable = new StateListDrawable();
    Drawable normalDrawable = normalId == -1 ? null : context.getResources().getDrawable(normalId);
    Drawable focusedDrawable = focusedId == -1 ? null : context.getResources().getDrawable(focusedId);
    Drawable pressedDrawable = pressedId == -1 ? null : context.getResources().getDrawable(pressedId);
    stateListDrawable.addState(new int[] { android.R.attr.state_enabled, android.R.attr.state_focused }, focusedDrawable);
    stateListDrawable.addState(new int[] { android.R.attr.state_enabled, android.R.attr.state_pressed }, pressedDrawable);
    stateListDrawable.addState(new int[] { android.R.attr.state_focused }, focusedDrawable);
    stateListDrawable.addState(new int[] { android.R.attr.state_pressed }, pressedDrawable);
    stateListDrawable.addState(new int[] { android.R.attr.state_enabled }, normalDrawable);
    stateListDrawable.addState(new int[] {}, normalDrawable);
    return stateListDrawable;
}

//使用方法
btn_state.setBackground(getStateDrawable(mContext, R.drawable.dialog_button_normal, R.drawable.dialog_button_focused, R.drawable.dialog_button_pressed));
```

## 模拟鼠标点击？？？？

## 模拟鼠标长按？？？？

``` Java
//frameworks/base/test-runner/src/android/test/TouchUtils.java
public static void longClickView(InstrumentationTestCase test, View v) {
    int[] xy = new int[2];
    v.getLocationOnScreen(xy);
    
    final int viewWidth = v.getWidth();
    final int viewHeight = v.getHeight();
    
    final float x = xy[0] + (viewWidth / 2.0f);
    float y = xy[1] + (viewHeight / 2.0f);
    
    Instrumentation inst = test.getInstrumentation();

    long downTime = SystemClock.uptimeMillis();
    long eventTime = SystemClock.uptimeMillis();

    MotionEvent event = MotionEvent.obtain(downTime, eventTime, MotionEvent.ACTION_DOWN, x, y, 0);
    inst.sendPointerSync(event);
    inst.waitForIdleSync();

    eventTime = SystemClock.uptimeMillis();
    final int touchSlop = ViewConfiguration.get(v.getContext()).getScaledTouchSlop();
    event = MotionEvent.obtain(downTime, eventTime, MotionEvent.ACTION_MOVE, x + touchSlop / 2, y + touchSlop / 2, 0);
    inst.sendPointerSync(event);
    inst.waitForIdleSync();
    
    try {
        Thread.sleep((long)(ViewConfiguration.getLongPressTimeout() * 1.5f));
    } catch (InterruptedException e) {
        e.printStackTrace();
    }

    eventTime = SystemClock.uptimeMillis();
    event = MotionEvent.obtain(downTime, eventTime, MotionEvent.ACTION_UP, x, y, 0);
    inst.sendPointerSync(event);
    inst.waitForIdleSync();
}
```

## 模拟滑动？？？？

## 模拟按键事件？？？？

``` Java
//方法a
new EditText(context).onKeyDown(keyCode, new KeyEvent(KeyEvent.ACTION_DOWN, keyCode));    //模拟按键的点击事件,这里必须需要一个EditText才可以

//方法b, 这个也可以通过命令行发送    adb shell input keyevent 82
Process process = Runtime.getRuntime().exec("input keyevent 82");                        //模拟按键的点击事件,82相当于上面的keyCode

//方法c
Instrumentation instrumentation = new Instrumentation();
instrumentation.sendKeyDownUpSync(KeyEvent.KEYCODE_MENU);

//方法d
Instrumentation instrumentation = new Instrumentation();
instrumentation.sendKeySync(new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MENU));
instrumentation.sendKeySync(new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MENU));
```

## 通过反射修改全局默认字体

``` Java
private final static String CUSTOM_FONT = "fonts/custom_font.ttf";
public static void changeDefaultFont(Context ctx){
    try{
        Typeface typeface = Typeface.createFromAsset(cts.getAssets(), CUSTOM_FONT);
        Field defaultField = Typeface.class.getDeclaredField("SERIF");
        defaultField.setAccessible(true);
        defaultField.set(null, typeface);
    }catch(Exception e){
        e.printStackTrace();
    }
}
```

## 通过反射获取FeatureOption中的所有字段的值

``` Java
private String getFields() {
    StringBuilder builder = new StringBuilder();
    try {
        //通过反射可以获取 FeatureOption.java文件中定义的所有的宏还有宏的值
        Class clazz = Class.forName("com.mediatek.common.featureoption.FeatureOption");
        Field[] fields = clazz.getDeclaredFields();
        for (int i = 0; i < fields.length; i++) {
            if ("boolean".equalsIgnoreCase(fields[i].getType().getName())) {
                Log.e("test", fields[i].getName() + ":" + fields[i].getBoolean(clazz));
                builder.append(fields[i].getName() + ":" + fields[i].getBoolean(clazz) + "\n");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return builder.toString();
}
```

## 通过反射设置EditText的游标颜色

``` Java
private void setTextCursorColor(TextView et, int color){
    try {
        java.lang.reflect.Field fCursorDrawableRes = TextView.class.getDeclaredField("mCursorDrawableRes");
        fCursorDrawableRes.setAccessible(true);
        int mCursorDrawableRes = fCursorDrawableRes.getInt(et);
        java.lang.reflect.Field fEditor = TextView.class.getDeclaredField("mEditor");
        fEditor.setAccessible(true);
        Object editor = fEditor.get(et);
        Class<?> clazz = editor.getClass();
        java.lang.reflect.Field fCursorDrawable = clazz.getDeclaredField("mCursorDrawable");
        fCursorDrawable.setAccessible(true);
        android.graphics.drawable.Drawable[] drawables = new android.graphics.drawable.Drawable[1];
        drawables[0] = et.getContext().getResources().getDrawable(mCursorDrawableRes);
        drawables[0].setColorFilter(color, android.graphics.PorterDuff.Mode.SRC_IN);
        fCursorDrawable.set(editor, drawables);
    } catch (Exception e) {
        e.printStackTrace();
    }
}
```

## Launcher上长按下键RecyclerView乱跳的问题

``` Java
@Override
public View onInterceptFocusSearch(View focused, int direction) {
    int currentPosition = getPosition(getFocusedChild());
    int count = getItemCount();
    int lastVisiblePosition = findLastVisibleItemPosition();
    switch (direction) {
        case View.FOCUS_RIGHT:
            currentPosition++;
            break;
        case View.FOCUS_LEFT:
            currentPosition--;
            break;
        case View.FOCUS_DOWN:
            currentPosition += 3;
            break;
        case View.FOCUS_UP:
            break;
    }
    if (currentPosition < 0 || currentPosition>count) {
        return focused;
    } else {
        if (currentPosition > lastVisiblePosition) {
            scrollToPosition(currentPosition);
        }
    }
    return super.onInterceptFocusSearch(focused, direction);
}
```

---------------------------------- 17-3-20 ----------------------------------

## SRLauncher修改图片之后，部分图片不生效

在 Android.mk 文件中看到有 LOCAL_USE_AAPT2 := true　，说明是用AAPT2来编译链接资源的，把这个去掉用aapt去编译即可
因为 AAPT2 不会重新编译生成 SRLauncher_intermediates，而 AAPT 就会重新生成

The main idea behind AAPT2, apart from new features, is that it divides the 'package' step into two: 'compile' and 'link'. It improves performance, since if only one file changes, you only need to recompile that one file and link all the intermediate files with the 'link' command.

https://fucknmb.com/2018/10/05/%E5%86%8D%E8%B0%88aapt2%E8%B5%84%E6%BA%90%E5%88%86%E5%8C%BA/

## tint 着色器的原理和使用方法

http://yifeng.studio/2017/03/30/android-tint/

``` Java
mMessageListItem.setBackgroundTintList(android.content.res.ColorStateList.valueOf(0x00000000));
```

## Android 利用 activity-alias 动态改变 App 桌面图标

http://yifeng.studio/2016/12/30/android-change-app-launcher-icon-dynamically/

## 单例模板

``` Java
private volatile static $classname$ instance;
public static $classname$ getInstance() {
    if (instance == null) {
        synchronized ($classname$.class) {
            if (instance == null) {
                instance = new $classname$();
            }
        }
    }
    return instance;
}
```

## 防止内存泄漏的Handler模板

``` Java
private static class OkHandler extends android.os.Handler {
    private java.lang.ref.WeakReference<$classname$> activityWeakReference;
    public OkHandler($classname$ activity) {
        activityWeakReference = new java.lang.ref.WeakReference<$classname$>(activity);
    }
    @Override
    public void handleMessage(android.os.Message msg) {
        $classname$ activity = activityWeakReference.get();
        if (activity != null) {

        }
    }
}
```

## PID的获取方法

``` Java
//方法1
Binder.getCallingPid()

//方法2
android.os.Process.myPid();
```

## 通过pid获取app包名

``` Java
String callerPackage = getAppNameByPID(getContext(), Binder.getCallingPid());

private String getAppName(int pID) {
    String processName = "";
    ActivityManager am = (ActivityManager)this.getSystemService(ACTIVITY_SERVICE);
    List l = am.getRunningAppProcesses();
    Iterator i = l.iterator();
    PackageManager pm = this.getPackageManager();
    while(i.hasNext()) {
        ActivityManager.RunningAppProcessInfo info = (ActivityManager.RunningAppProcessInfo)(i.next());
        try {
            if(info.pid == pID) {
                CharSequence c = pm.getApplicationLabel(pm.getApplicationInfo(info.processName, PackageManager.GET_META_DATA));
                processName = info.processName;
            }
        } catch(Exception e) {
        }
    }
    return processName;
}
```

## 获取电池电量

``` Java
android.os.BatteryManager batteryManager = (android.os.BatteryManager)getSystemService("batterymanager");
int battery = batteryManager.getIntProperty(4);//BATTERY_PROPERTY_CAPACITY = 4
```

## TAG模板

``` Java
private static final String TAG = $className$.class.getSimpleName();
```

## 文字设置高对比度 HighContrastText

``` Java
View.java
canvas.setHighContrastText(mAttachInfo.mHighContrastText);
```

## 通过代码修改字体颜色的另外一种方法

``` Java
setSpan(new ForegroundColorSpan(android.graphics.Color.parseColor("#0096ff")), before, buf.length(), Spannable.SPAN_INCLUSIVE_EXCLUSIVE);
```

## 39Ogo默认壁纸(其他的一些属性也会在 device/mediatek/common/overlay/ago/ 目录下overlay)

```
device/mediatek/common/overlay/ago/frameworks/base/core/res/res/drawable-nodpi/default_wallpaper.jpg
```

## TextView设置跑马灯效果

``` Java
1.首先控件必须是focused或selected的
2.不能设置spannable，不能是editable的
android:ellipsize="marquee"
android:singleLine="true"
android:lines="1"
android:maxLines="1"
```

## TextView设置为大字体的时候wrap_content还是不能显示完全

https://blog.csdn.net/HJF_HUANGJINFU/article/details/79813172

``` Java
TextView textView = new Text(context);
textView.setText("hello world");
textView.requestLayout();   //在setText()之后主动条用requestLayout();
```

## 修改WebView的字体大小

``` Java
webSettings.setTextZoom(textZoom);
```

## 在symbols.xml文件中添加了资源之后

需要先编译 frameworks/base/core/res
再编译 frameworks/base
再编译对应模块即可 MtkSettings

## Android WebView 禁止缩放（手势、点击）

``` Java
webSettings.setBuiltInZoomControls(false);
webSettings.setSupportZoom(false);
webSettings.setDisplayZoomControls(false);
```

## system/priv-app 和 system/app 的区别

在system/priv-app目录主要是存放手机厂商定制的系统的系统级应用，比如phone app,settings app，systemui app等，这些应用需要系统及权限，而又不能被用户卸载掉。这个目录是在Android KitKat新增加的分区。在KitKat之前版本在系统分区的所有apks都可以使用系统权限，这个更改使手机厂商能够更好的控制捆绑软件对敏感权限的访问。手机厂商在定制一些系统软件的时候软件也会需要专门给priv-app添加selinux policy。当然应用需要获取系统权限还有其他的办法，在AndroidManifest.xml文件中添加 android:sharedUserId="android.uid.sysytem",同时给该apk添加系统签名，比如小米手机就需要给apk添加小米的系统权限。

## 去掉ActionBar标题栏上的阴影效果
frameworks/base/core/res/res/values/dimens_material.xml
<dimen name="action_bar_elevation_material">0dp</dimen>
frameworks/support/v7/appcompat/res/values/dimens_material.xml
<dimen name="abc_action_bar_elevation_material">0dp</dimen>

## 壁纸设置流程
https://blog.csdn.net/lj527409/article/details/79825015

## Android Button有默认padding值的元凶！！！
https://blog.csdn.net/vv_bug/article/details/71698200
把padding设置为0还是有边距的原因？theme中默认把minHeight设置为56dp
所以需要把minHeight先改为0dp


## 连续插拔usb播放音效之后不会播放
01-03 08:49:11.478   431  1506 E AudioFlinger: not enough memory for AudioTrack size=65760
01-03 08:49:11.479   431  1506 E AudioFlinger_Threads: createTrack_l() initCheck failed -12; no control block?
01-03 08:49:11.479   440  3271 E AudioTrack: AudioFlinger could not create track, status: -12
01-03 08:49:11.480   440  3271 E AudioSink: Unable to create audio track
01-03 08:49:11.480   440  3271 W NuPlayerRenderer: openAudioSink: non offloaded open failed status: -19
01-03 08:49:11.480   440  3271 W NuPlayerRenderer: onDrainAudioQueue(): audio sink is not ready
01-03 08:49:11.480   440  3272 E NuPlayerDecoder: Renderer reported 0xffffffed when changing audio output format
01-03 08:49:11.480   440  3271 W NuPlayerRenderer: onDrainAudioQueue(): audio sink is not ready
01-03 08:49:11.480   440  3268 E NuPlayer: received error(0xffffffed) from audio decoder, flushing(0), now shutting down
01-03 08:49:11.481  1131  1383 E MediaPlayerNative: error (1, -19)
01-03 08:49:11.483  1131  1131 E MediaPlayer: Error (1,-19)
01-03 08:49:11.485  1013  1118 I AudioService: setForceUse(FOR_MEDIA, FORCE_NO_BT_A2DP) due to setBluetoothA2dpOn(false) from u/pid:1000/1013

可能是播放铃声之后没有及时释放导致内存泄漏
https://github.com/google/ExoPlayer/issues/954

Ringtone ringtone;
ringtone.play();
什么时候释放比较好呢？

最终是因为对应的音频文件没有编译进去导致的

## 模拟高温报警命令

``` bash
adb shell "echo 55 > /sys/devices/platform/battery/Battery_Temperature"
```

## 高温报警代码中修改字符串不起效果

查看 alps/vendor/mediatek/proprietary/packages/apps/BatteryWarning/Android.mk 文件发现有两种编译方式，一种是把编译好的apk直接编译到系统中，另外一种是通过源码编译apk

``` Makefile
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

MY_BUILD_PORTABLE := yes        # 这里默认是 yes，所以

ifeq ($(strip $(MY_BUILD_PORTABLE)),yes)
# Module name should match apk name to be installed
LOCAL_MODULE := BatteryWarning
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(LOCAL_MODULE)-release-unsigned.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := platform

LOCAL_PROPRIETARY_MODULE := false
LOCAL_MODULE_OWNER := mtk
include $(BUILD_PREBUILT)
else
LOCAL_JAVA_LIBRARIES := bouncycastle

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := BatteryWarning
LOCAL_PROPRIETARY_MODULE := false
LOCAL_MODULE_OWNER := mtk
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)
endif

# Use the following include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
```

这里的 MY_BUILD_PORTABLE 默认为 yes，所以会默认编译已经编译好的apk，所以怎么修改字符串都不会起作用

修改方案：
MY_BUILD_PORTABLE 修改为 no 即可

## 通过 adb 抓取 radio log

``` bash
查看包含在无线/电话相关的缓冲区消息
adb logcat -b radio | grep "zhangqi7777"

查看事件相关的消息
adb logcat -b events

查看主缓冲区 (默认缓冲区)
adb logcat -b main

adb logcat 的用法
https://developer.android.com/studio/command-line/logcat?hl=zh-cn
```

## 修改默认浏览器搜索引擎为google

https://blog.csdn.net/wobushizhainan/article/details/79872757

修改方案:
把如下文件中的 google 移动到最上面第一条即可
M:alps/vendor/mediatek/proprietary/frameworks/base/res/res/values*/donottranslate-new-search_engines.xml
``` xml
<resources xmlns:xliff="urn:oasis:names:tc:xliff:document:1.2">
    <string-array name="new_search_engines" translatable="false">
        <item>--</item>
        <!--Redmine176101 zhangqi modified for default "Google" search engine for browser 2019/05/08:begin-->
        <item>google--Google--google.com--search_engine_google--http://www.google.com/m?hl={language}&amp;ie={inputEncoding}&amp;source=android-browser&amp;q={searchTerms}--UTF-8--http://www.google.com/complete/search?hl={language}&amp;json=true&amp;q={searchTerms}</item>
        <!--Redmine176101 zhangqi modified for default "Google" search engine for browser 2019/05/08:end-->
        <item>start--Start--mt.start.fyi--search_engine_other--http://mt.start.fyi/search?ie={inputEncoding}&amp;source=browser#gsc.q={searchTerms}--UTF-8--http://www.google.com/complete/search?hl={language}&amp;json= true&amp;q={searchTerms}</item>
        <item>yahoo--Yahoo!--yahoo.com--search_engine_yahoo--https://search.yahoo.com/search?ei={inputEncoding}&amp;.tsrc=mtkandroid&amp;p={searchTerms}--UTF-8--http://sugg.search.yahoo.com/gossip/?output=fxjson&amp;command={searchTerms}</item>
        <item>bing--Bing--bing.com--search_engine_bing--http://www.bing.com/search?q={searchTerms}--UTF-8--http://api.bing.com/osjson.aspx?query={searchTerms}&amp;language={language}</item>
    </string-array>
</resources>
```

## 8.0O版本上默认打开数据连接

http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commitdiff;h=c0729839d0b3a73c3b67e58d1f4cd20f3068e446;hp=2991172ce00d8c7b979b2cf405f2a8fe417be2e2

## 操作excel的类库

POI
http://poi.apache.org/download.html

## 修改信号log的抓取

修改：
vendor/mediatek/proprietary/hardware/ril/fusion/mtk-ril/mdcomm/nw/RmcNetworkHandler.cpp
的 updateSignalStrengthProperty() 方法中有
编译：
./mk -ud DFC0270_VF292_7030_DORO_S01A mm vendor/mediatek/proprietary/hardware/ril/fusion/mtk-ril/
adb root;adb remount;
adb push out/target/product/k39tv1_bsp_512/vendor/lib/libmtk-ril.so vendor/lib/;
push之后需要重启
adb reboot;

## 信号强度
在Android手机上，通过“设置”-“关于手机”-“状态”-“信号强度”可以查看到手机的信号强度，显示出如“-87 dBm 13 asu”这样的数据。ASU与dBm之间的关系是：dBm=-113+（2*ASU）。在你手机屏幕上方显示的信号条永远不会是最好的方法来确定你手机的信号，无论你用什么手机都一样。Android也是，用很粗的条来展示很强的信号，但这些条仅仅表示最高的信号。或许你并不熟悉，信号通常是以dBm度量的。dBm是每毫瓦特的电磁波产生的功率。-60dBm的信号接近完美，-112dBm就很容易掉线，如果你在 -87dBm以上，Android会显示一个4格的满信号。android界面UI信号显示是通过RIL对通讯模块发送AT命令来实现的，如AT+CSQ，我们查看一般可以通过 logcat -b radio来获取一些RIL的实时信息，可以通过关键字“CSQ”查找radio.log，查看手机信号强度。log如：AT< +CSQ: 14,99  这里的14就是ASU值，在4.0源码中有SignalStrength.Java类，其中有ASU值转换为几格信号的方法

## 修改 TextView 的省略号

``` Java
- effectiveEllipsize = TruncateAt.END_SMALL;
+ effectiveEllipsize = TruncateAt.END;
```

## adb直接打开某个网页进行浏览

``` bash
adb shell am start -a android.intent.action.VIEW -d http://www.baidu.com
```

## ota 升级之后没有走 DatabaseHelper.java 中的 onUpgrade() 方法

o上走的是 SettingsProvider.java 中的 onUpgradeLocked() 方法

## APN相关

https://blog.csdn.net/u012686462/article/details/55213023

## framework下字体文件的修改

``` Java
1.将需要添加的ttf字体文件放在 frameworks/base/data/fonts/ 目录

A:frameworks/base/data/fonts/hiosClock_thin.ttf

2.修改 frameworks/base/data/fonts/Android.mk 文件,将字体文件编译到 system/fonts/ 目录中

M:frameworks/base/data/fonts/Android.mk
#Redmine124982 modified for clock widget font 2018/03/23:begin
font_src_files := \
    AndroidClock.ttf \
    hiosClock_thin.ttf
#Redmine124982 modified for clock widget font 2018/03/23:end

3.修改 frameworks/base/data/fonts/fonts.mk 文件

M:frameworks/base/data/fonts/fonts.mk
#Redmine124982 modified for clock widget font 2018/03/23:begin
PRODUCT_PACKAGES := \
    DroidSansMono.ttf \
    AndroidClock.ttf \
    hiosClock_thin.ttf \
    fonts.xml
#Redmine124982 modified for clock widget font 2018/03/23:end

4.在 fonts.xml 文件中定义字体对应的名称

M:frameworks/base/data/fonts/fonts.xml
<!--Redmine124982 modified for clock widget font 2018/03/23:begin-->
<family name="tecno-clock-font">
    <font weight="400" style="normal">hiosClock_thin.ttf</font>
</family>
<!--Redmine124982 modified for clock widget font 2018/03/23:end-->

5.使用新添加的字体

方法1:
TextView textView = new TextView(mContext);
textView.setTypeface(android.graphics.Typeface.createFromFile("/system/fonts/hiosClock_thin.ttf"));

方法2:
<TextView
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:fontFamily="tecno-clock-font" />

6.在项目中的具体使用实例----Bug124982 修改桌面时钟widget的字体

M:alps/frameworks/base/core/java/android/widget/RemoteViews.java
public class RemoteViews implements Parcelable, Filter {
    ...
    private class TextViewSizeAction extends Action {
        ...
        @Override
        public void apply(View root, ViewGroup rootParent, OnClickHandler handler) {
            final TextView target = root.findViewById(viewId);
            if (target == null) return;

            //通过特殊约定的参数(如77,0)来特殊设置TextView的字体
            if(units == -77 && size == 0f){
                target.setTypeface(android.graphics.Typeface.createFromFile("/system/fonts/hiosClock_thin.ttf"));
            }else{
                target.setTextSize(units, size);
            }
        }
        ...
    }
    ...
}

M:alps/vendor/mediatek/proprietary/packages/apps/DeskClock/src/com/android/alarmclock/DigitalAppWidgetProvider.java
public class DigitalAppWidgetProvider extends AppWidgetProvider {
    private static RemoteViews relayoutWidget(Context context, AppWidgetManager wm, int widgetId, Bundle options, boolean portrait) {
        final String packageName = context.getPackageName();
        final RemoteViews rv = new RemoteViews(packageName, R.layout.digital_widget);
        //通过特殊约定的参数(如77,0)来特殊设置TextView的字体,这里调用setTextViewTextSize方法就会调用RemoteViews的内部类TextViewSizeAction的apply方法
        rv.setTextViewTextSize(R.id.clock, -77, 0f);
        ...
    }
    ...
}
```

## 使用framework下隐藏的api

在 Android.mk 文件中添加 LOCAL_JAVA_LIBRARIES := framework 即可

## 监听 SharePreference 的变化

``` Java
SharedPreferences sp1 = getSharedPreferences(getPackageName() + "test", MODE_PRIVATE);
sp1.registerOnSharedPreferenceChangeListener(new SharedPreferences.OnSharedPreferenceChangeListener() { 
    @Override 
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
    }
});
```

## 通过监听布局变化来获取view的高度和宽度

``` Java
private int mViewHeight;
private View mView;
...
//注册监听
mView.getViewTreeObserver().addOnGlobalLayoutListener(
    new OnGlobalLayoutListener() {
        @Override
        public void onGlobalLayout() {
            //获取View高度
            mViewHeight = mView.getHeight();
            //取消监听，否则该方法会不断回调
            mView.getViewTreeObserver().removeGlobalLayoutListener(this);
        }
    }
)
```

## TextView各种padding解析、长度测量

https://www.jianshu.com/p/fd9cce7a333f

## View.post()原理

https://www.jianshu.com/p/85fc4decc947

## Android KeyEvent 点击事件分发处理流程（一）

https://www.jianshu.com/p/2f28386706a0

## 查看方法的调用栈

``` Java
RuntimeException here = new RuntimeException("bolex");
here.fillInStackTrace();
Log.w("myTag", "Called: " + this, here);
```

## 插国外SIM卡，第一次开机语言没有自适应

语言自适应需要通过利用SIM卡MCC信息查表来实现，而此表内容对于每个国家并不一样，有些国家没有默认语言，只有较少国家有默认语言。
``` Java
frameworks\base\telephony\java\com\android\internal\telephony\MccTable.java
table = new ArrayList<MccEntry>(240);
table.add(new MccEntry(202,"gr",2,"el"));//Greece
```

## 读取图片信息

``` Java
package com.test;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.imaging.jpeg.JpegProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;

public class ReadPic {
    /** 导入标签，使用metadata-extractor */
    public static void main(String[] args) {
        readPic();
    }
    /** 处理 单张 图片 */
    private static void readPic() {
        File jpegFile = new File("d:\\002.jpg");
        Metadata metadata;
        try {
            metadata = JpegMetadataReader.readMetadata(jpegFile);
            Iterator<Directory> it = metadata.getDirectories().iterator();
            while (it.hasNext()) {
                Directory exif = it.next();
                Iterator<Tag> tags = exif.getTags().iterator();
                while (tags.hasNext()) {
                    Tag tag = (Tag) tags.next();
                    System.out.println(tag);

                }
            }
        } catch (JpegProcessingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

## 如何设置MTKlogger是否开机自启动

``` Java
1. 第一次开机MTKlogger是否开启

1) 配置prop文件:   true则开启，false则关闭 
com.mediatek.log.mobile.enabled = true/false
com.mediatek.log.modem.enabled = true/false
com.mediatek.log.net.enabled = true/false
com.mediatek.log.gps.enabled = true/false

2) prop文件路径
KK版本: alps/mediatek/external/xlog/tools/mtklog-config-eng.prop或mtklog-config-user.prop
L 版本:  alps/vendor/mediatek/proprietary/external/xlog/tools/mtklog-config-eng.prop或mtklog-config-user.prop
M/N版本:  alps/device/mediatek/common/mtklog/mtklog-config-bsp-eng.prop或mtklog-config-bsp-user.prop

2. 非第一次开机是否开启的配置方法有如下两种

1) 勾选Start Automatically进行设置
MTKlogger UI——》Settings——》MobileLog/ModemLog/NetworkLog/GPSLog——》Start Automatically

2) 通过adb发送广播设置
adb shell am broadcast -a com.mediatek.mtklogger.ADB_CMD -e cmd_name set_auto_start_1/set_auto_start_0 --ei   cmd_target 23
set_auto_start_1表示开启开机自启动, set_auto_start_0表示关闭开机自启动
cmd_target is a combination or just a single of each Log type
MobileLog: 1 ModemLog: 2 NetworkLog: 4 GPSLog: 16
```

## 编译优化：去掉编译java的时候生成的javadoc

``` Java
android2.3 以前
修改如下：
build/tools/droiddoc/src/DroidDoc.java
private static boolean generateDocs = false;

android4.0 以后
修改如下：
external/doclava/src/com/google/doclava/Doclava.java
private static boolean generateDocs = false;
```

## java使用代理访问网络

``` Java
使用代码的方式：
String proxyHost = "127.0.0.1";
String proxyPort = "1080";

System.setProperty("http.proxyHost", proxyHost);
System.setProperty("http.proxyPort", proxyPort);

System.setProperty("https.proxyHost", proxyHost);
System.setProperty("https.proxyPort", proxyPort);

使用参数的方式：
-Dhttp.proxyHost=127.0.0.1 -Dhttp.proxyPort=1080 -Dhttps.proxyHost=127.0.0.1 -Dhttps.proxyPort=1080
```

## AsyncTask和Thread的使用场景

``` Java
AsyncTask 的使用场景
不需要下载大量数据的简单网络操作
I/O 密集型任务，耗时可能几个毫秒以上

Java Thread 使用场景
涉及中等或大量的网络数据操作（包括上传和下载）
需要在后台执行的 CPU 密集型任务
当你想要在 UI 线程控制 CPU 占用率时

还有一个老生常谈的问题就是，千万不要在 UI 线程（主线程）执行网络操作。你需要使用上述两种方式之一来访问网络。
```

## 性能优化

``` Java
根据 SystemServer.java 中的代码去掉一些不用的feature和service
去掉 init.rc 中启动的一些不需要的服务
媒体播放：预留给视频解码器可以去掉，操作系统看不到
界面：硬件拉伸缓存，芯片厂商SDK配置，操作系统可见
Java堆大小全局配置，堆调小。
JVM预加载jar包，可以不加载部分不用的jar包
swap分区在内存不足的情况下，擦写频繁对flash压力大
内存裁剪：不用的驱动通过menuconfig裁掉
socket缓存调小，默认256k，多个socket消耗更多内存
去掉一些不用的监听，ContentObserver
去掉一些广播和广播监听器


1、移除或修改Window默认的Background
2、移除XML布局文件中非必需的Background
3、按需显示占位背景图片
4、控制绘制区域

第一个建议：可以使用相对布局减少层级的就使用相对布局，否则使用线性布局。Android中RelativeLayout和LinearLayout性能分析，参考：www.jianshu.com/p/8a7d059da…
第二个建议：用merge标签来合并布局，这可以减少布局层次。
第三个建议：用include标签来重用布局，抽取通用的布局可以让布局的逻辑更清晰明了，但要避免include乱用。
第四个建议：避免创建不必要的布局层级。（最容易发生的！）
第五个建议：使用惰性控件ViewStub实现布局动态加载
```

## ROM优化

``` Java
开机动画换成更小的
精简 system/media/audio/ 下的铃声资源
system/tts
删除整个srec的内容，语音拨号相关的东西，从来不用
删除ttf字库文件
```

## adbkill 脚本

``` bash
adb shell kill `adb shell ps | grep $1 | awk {'print $2'} | head -n 1`;

or:
PID=`adb shell ps | grep $1 | awk '{print $2}'`
echo "adb shell kill $1 : $PID"
result=`adb shell kill $PID`
echo "$result"
```

## android 7.0 之后启动服务必须 startForegroundService()

``` bash
Prior to Android 8.0, the usual way to create a foreground service was to create a background service, then promote that service to the foreground. With Android 8.0, there is a complication; the system doesn't allow a background app to create a background service. For this reason, Android 8.0 introduces the new method startForegroundService() to start a new service in the foreground. After the system has created the service, the app has five seconds to call the service's startForeground() method to show the new service's user-visible notification. If the app does not call startForeground() within the time limit, the system stops the service and declares the app to be ANR.
```

## 签名问题:如何在L上use release key？

https://online.mediatek.com/FAQ#/SW/FAQ13817

## 查看apk签名？？

``` Java
jarsigner -verify -verbose -certs ${your_apk} > log.txt
```

## 设置 EditText 的游标颜色

``` Java
方法一、通过XML文件设置
TextView 有一个属性 android:textCursorDrawable，这个属性是用来控制光标颜色的
android:textCursorDrawable="@null"，"@null"作用是让光标颜色和text color一样

也可以自定义游标的颜色
cursor.xml
<shape xmlns:android="http://schemas.android.com/apk/res/android" android:shape="rectangle">
    <size android:width="1dp" />
    <solid android:color="#008000" />
</shape>
android:textCursorDrawable="@drawable/cursor"

方法二、通过代码设置
遗憾的是 TextView 默认没有设置游标颜色的方法
在 TextView.java 中找到
    case com.android.internal.R.styleable.TextView_textCursorDrawable:
        mCursorDrawableRes = a.getResourceId(attr, 0);
        break;
int mCursorDrawableRes;     //这个值是不可以被直接访问的

于是就想到可以使用反射来设置游标的颜色
try {
    Field f = TextView.class.getDeclaredField("mCursorDrawableRes");
    f.setAccessible(true);
    f.set(editText, R.drawable.cursor_color);
} catch (Exception ignored) {
}

也可以使用如下封装好的方法
private void setTextCursorColor(TextView et, int color){
    try {
        java.lang.reflect.Field fCursorDrawableRes = TextView.class.getDeclaredField("mCursorDrawableRes");
        fCursorDrawableRes.setAccessible(true);
        int mCursorDrawableRes = fCursorDrawableRes.getInt(et);
        java.lang.reflect.Field fEditor = TextView.class.getDeclaredField("mEditor");
        fEditor.setAccessible(true);
        Object editor = fEditor.get(et);
        Class<?> clazz = editor.getClass();
        java.lang.reflect.Field fCursorDrawable = clazz.getDeclaredField("mCursorDrawable");
        fCursorDrawable.setAccessible(true);
        android.graphics.drawable.Drawable[] drawables = new android.graphics.drawable.Drawable[1];
        drawables[0] = et.getContext().getResources().getDrawable(mCursorDrawableRes);
        drawables[0].setColorFilter(color, android.graphics.PorterDuff.Mode.SRC_IN);
        fCursorDrawable.set(editor, drawables);
    } catch (Exception e) {
        e.printStackTrace();
    }
}
```

## 联系人编辑界面上的号码输入框无法输入+号？

``` Java
问题分析：
可以参照拨号盘界面上的号码输入框的实现方法，通过跟踪代码发现长按0键之后会调用如下方法
packages/apps/Dialer/src/com/android/dialer/dialpad/DialpadFragment.java
public boolean onLongClick(View view) {
    ......
    case R.id.zero: {
        removePreviousDigitIfPossible();        //删除之前输入的 "0"
        keyPressed(KeyEvent.KEYCODE_PLUS);      //输入 "+"
        stopTone();
        mPressedDialpadKeys.remove(view);
        return true;
    }
    ......
}
private void removePreviousDigitIfPossible() {
    final Editable editable = mDigits.getText();
    final int currentPosition = mDigits.getSelectionStart();
    if (currentPosition > 0) {
        mDigits.setSelection(currentPosition);
        mDigits.getText().delete(currentPosition - 1, currentPosition);
    }
}
private void keyPressed(int keyCode) {
    ......
    mDigits.onKeyDown(keyCode, new KeyEvent(KeyEvent.ACTION_DOWN, keyCode));        //关键代码，重新发送 keycode 的 event 事件，模拟按键的输入
    final int length = mDigits.length();
    if (length == mDigits.getSelectionStart() && length == mDigits.getSelectionEnd()) {
        mDigits.setCursorVisible(false);
    }
    mDigits.setCursorVisible(true);
}

但是很遗憾，EditText默认没有 onKey 的长按监听事件，我们需要自己重写EditText，添加 onKey 的长按监听事件

public class DigitsEditText extends EditText {
    public DigitsEditText(Context context) {
        super(context);
        setInputType(getInputType() | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        setShowSoftInputOnFocus(false);
    }
    public DigitsEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
        setInputType(getInputType() | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        setShowSoftInputOnFocus(false);
    }
    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if(event.getRepeatCount() > 0 && lockLongPressKey){
            if(KeyEvent.KEYCODE_0 <= event.getKeyCode() && event.getKeyCode() <= KeyEvent.KEYCODE_9){
                return true;
            }else if(KeyEvent.KEYCODE_STAR == event.getKeyCode()){
                return true;
            }else if(KeyEvent.KEYCODE_POUND == event.getKeyCode()){
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }
    private boolean lockLongPressKey = false;
    private final static int MSG_LONG_CLICK = 777;
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if(event.getRepeatCount() > 0 && !lockLongPressKey){
            event.startTracking();
            lockLongPressKey = true;
            Message msg = new Message();
            msg.what = MSG_LONG_CLICK;
            msg.arg1 = keyCode;
            handler.sendMessageDelayed(msg, 500);
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
    private Handler handler = new Handler(){
        public void handleMessage(Message msg){
            if(msg.what == MSG_LONG_CLICK){
                if(mOnKeyLongClickListener != null){
                    mOnKeyLongClickListener.onKeyLongClick(msg.arg1);
                }
            }
        }
    };
    public interface OnKeyLongClickListener{
        public void onKeyLongClick(int keyCode);
    }
    private OnKeyLongClickListener mOnKeyLongClickListener;
    public void setOnKeyLongClickListener(OnKeyLongClickListener onKeyLongClickListener){
        mOnKeyLongClickListener = onKeyLongClickListener;
    }
    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if(lockLongPressKey){
            lockLongPressKey = false;
            handler.removeMessages(MSG_LONG_CLICK);
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }
}

长按 onKey 方法的实现原理如下：
a. 在 onKeyDown() 的时候发送一个延时500ms的消息
b. 在 onKeyUp() 的时候移除这个消息，如果Handler接收到了这个消息，就处理长按事件，如果Handler没有接收到这个消息，就处理短按事件
```

## 在某些ListView界面点击按键的时候会显示搜索框？？

``` Java
listView.setTextFilterEnabled(false);
```

## 减慢按键输入速度

``` Java
public boolean onKeyDown(int keyCode, KeyEvent event) {
    if(event.getRepeatCount() % 3 != 0){    //添加了这段代码
        return true;
    }
}
```

## Launcher预置快捷方式shortcut

``` xml
launcher:uri 可以从 Launcher 数据库中获取

<shortcut
launcher:uri="#Intent;action=android.intent.action.MAIN;launchFlags=0x10200000;component=com.cleanmaster.mguard/com.cleanmaster.processcleaner.ProcessCleanerActivity;end"
launcher:icon="@drawable/ic_launcher_application"
launcher:title="@string/jinshan_title" 
launcher:screen=""
launcher:x=""
launcher:y=""/>
```

## 通过代码创建快捷方式

``` Java
private void createShortcut(String title, String url) {
    Intent intent = new Intent(INSTALL_SHORTCUT);
    intent.putExtra(Intent.EXTRA_SHORTCUT_NAME, "Baidu");
    Intent shortcutIntent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
    long urlHash = url.hashCode();
    long uniqueId = (urlHash << 32) | shortcutIntent.hashCode();
    shortcutIntent.putExtra("com.android.browser.application_id", Long.toString(uniqueId));
    intent.putExtra(Intent.EXTRA_SHORTCUT_INTENT, shortcutIntent);
    intent.putExtra(Intent.EXTRA_SHORTCUT_ICON, BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher));
    sendBroadcast(intent);
}
```

## 设置 SeekBar 每一格的进度？

``` Java
mSlider.setKeyProgressIncrement(val);
```

## 隐藏AllApp中的应用图标？？

``` Java
public void reorderApps() {
    ......
    //Redmine87958 zhangqi modified to hide GoogleSettings 2017/03/04:begin
    for(int i = mApps.size() - 1; i > 0 ; i--){
        AppInfo appInfo = mApps.get(i);
        if("com.google.android.gms".equalsIgnoreCase(appInfo.getPackageName())){
            mApps.remove(appInfo);
        }
    }
    //Redmine87958 zhangqi modified to hide GoogleSettings 2017/03/04:end
}
```

## 耳机模式下播放音乐再拍照，音乐会卡顿

``` Java
M:alps/frameworks/av/services/camera/libcameraservice/CameraService.cpp
//mp->setAudioStreamType(AUDIO_STREAM_ENFORCED_AUDIBLE);    //注释掉这一行就可以了

M:alps/vendor/mediatek/proprietary/packages/apps/Camera/src/com/mediatek/camera/util/CaptureSound.java
//AudioAttributes attrs = new AudioAttributes.Builder().setInternalLegacyStreamType(AudioManager.STREAM_SYSTEM_ENFORCED).build();//去掉STREAM_SYSTEM_ENFORCED
AudioAttributes attrs = new AudioAttributes.Builder().build();
case AUDIO_STREAM_ENFORCED_AUDIBLE:
    attr->flags  |= AUDIO_FLAG_AUDIBILITY_ENFORCED;
// intended fall through, attributes in common with STREAM_SYSTEM
```

## 查看手机中安装的所有apk的包名？？？

``` bash
adb shell pm -l
```

## 查看 Android 许可权限

``` bash
adb shell pm list permissions -d -g
```

## KK GMS无法通过网络定位？？

``` Java
https://onlinesso.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ11643
1.系统对提供LocationProvider的应用需要进行申明,而KK GMS将NetworkLocation应用的功能集成到了GmsCore（Google Play Service）中，所以需要添加GmsCore的packageName进去：
framework/base/core/res/res/values/config.xml
<string-array name="config_locationProviderPackageNames" translatable="false">
    <!-- The standard AOSP fused location provider -->
    <item>com.android.location.fused</item>
    <!-- MTK add for GMS -->
    <item>com.google.android.location</item>
    <item>com.google.android.gms</item>
    <!-- MTK add end -->
</string-array>

2.GMS4.4_r3（包含r3）之后版本在满足1条件下依然可能存在无法使用网络定位功能，请继续按照如下修改操作：
WifiStateMachine.java (frameworks\base\wifi\java\android\net\wifi)
private void setScanResults() {
    ...
    if (bssid != null) {
    String ssid = (wifiSsid != null) ? wifiSsid.toString() : WifiSsid.NONE;
    String key = bssid + ssid;
    tsf = SystemClock.elapsedRealtimeNanos()/1000;//add this line
    ScanResult scanResult = mScanResultCache.get(key);
    ...
}
```

## 如何判断是否支持VOLTE？？

``` Java
在如下文件中搜索 107(sfr)
ALPS-MP-N0.MP1-V1.0.2_SR6737T_65_N_modem/custom/service/nvram/custom_nvram_int_config.c
```

## android中图片的uri??

``` Java
"http://site.com/image.png" // from Web
"file:///mnt/sdcard/image.png" // from SD card
"file:///mnt/sdcard/video.mp4" // from SD card (video thumbnail)
"content://media/external/images/media/13" // from content provider
"content://media/external/video/media/13" // from content provider (video thumbnail)
"assets://image.png" // from assets
"drawable://" + R.drawable.img // from drawables (non-9patch images) //通常不用。
```

## 提高进程优先级的方法

``` Java
方法1：
找到这个进程对应的AndroidMannifest.xml文件，在其中添加属性『android:persistent="true"』， 这样可以将该进程设置为常驻内存进程，就可以降低被Kill的概率。以Acore进程为例， 在 /package/providers/ContactsProvider/AndroidMannifest.xml 文件中增加一行『android:persistent="true"』
具体修改示例如下：
android:label="@string/app_label"
android:icon="@drawable/app_icon"
android:allowBackup="false"
android:persistent="true" 

方法2： 
提高进程优先级 startForeground(1, new Notification()); 降低进程优先级 stopForeground(true); 
onStart() 方法中进行提高优先级操作，然后在onStop()方法中进行降低优先级操作
这个方法可以将对应AP的ADJ临时提高到2。
```

## 去掉ID资源编译检查？？

``` Java
alps/vendor/mediatek/proprietary/framework/base/res/android.mk 文件中
#include #(LOCAL_PATH)/apicheck.mk
```

## 通过代码设置view的selector

``` Java
private StateListDrawable getStateDrawable(Context context, int normalId, int focusedId, int pressedId) {
    StateListDrawable stateListDrawable = new StateListDrawable();
    Drawable normalDrawable = normalId == -1 ? null : context.getResources().getDrawable(normalId);
    Drawable focusedDrawable = focusedId == -1 ? null : context.getResources().getDrawable(focusedId);
    Drawable pressedDrawable = pressedId == -1 ? null : context.getResources().getDrawable(pressedId);
    stateListDrawable.addState(new int[] { android.R.attr.state_enabled, android.R.attr.state_focused }, focusedDrawable);
    stateListDrawable.addState(new int[] { android.R.attr.state_enabled, android.R.attr.state_pressed }, pressedDrawable);
    stateListDrawable.addState(new int[] { android.R.attr.state_focused }, focusedDrawable);
    stateListDrawable.addState(new int[] { android.R.attr.state_pressed }, pressedDrawable);
    stateListDrawable.addState(new int[] { android.R.attr.state_enabled }, normalDrawable);
    stateListDrawable.addState(new int[] {}, normalDrawable);
    return stateListDrawable;
}

btn_state.setBackground(getStateDrawable(mContext, R.drawable.dialog_button_normal, R.drawable.dialog_button_focused, R.drawable.dialog_button_pressed));
```

## 通过代码删除一个字符

``` Java
mDigits.getText().delete(currentPosition - 1, currentPosition);
```

## adb 关机命令

``` bash
adb shell reboot -p
adb shell svc power shutdown
```

## adb shell input 的代码实现

``` Java
private void sendKeyCode(int paramInt1, int paramInt2) {
    long l = SystemClock.uptimeMillis();
    KeyEvent localKeyEvent = new KeyEvent(l, l, paramInt2, paramInt1, 0);
    try {
        IWindowManager.Stub.asInterface(ServiceManager.getService("window")).injectKeyEvent(localKeyEvent, true);
        return;
    } catch (RemoteException localRemoteException) {
    }
}

private void sendTouchKeyEvent(int paramInt, boolean paramBoolean1, boolean paramBoolean2) {
    if (paramBoolean2);
    try {
        this.mIWM.injectKeyEvent(new KeyEvent(this.now, SystemClock.uptimeMillis(), 1, paramInt, 0), paramBoolean1);
        return;
        //this.now = SystemClock.uptimeMillis();
        //this.mIWM.injectKeyEvent(new KeyEvent(this.now, this.now, 0, paramInt, 0), paramBoolean1);
    } catch (RemoteException localRemoteException) {
    }
}

private void sendTouchKeyEvent(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2) {
    if (paramBoolean2);
    try {
        this.mIWM.injectKeyEvent(new KeyEvent(0L, 0L, 1, paramInt1, paramInt2), paramBoolean1);
        return;
        //this.mIWM.injectKeyEvent(new KeyEvent(this.now, 1100L + this.now, 0, paramInt1, paramInt2, 0, 0, 0, this.flag), paramBoolean1);
    } catch (RemoteException localRemoteException) {
        Log.i("input", localRemoteException.toString());
    }
}
```

## 状态栏上显示小时钟？？？

``` xml
<item
    android:id="@+id/clock"
    android:actionLayout="@layout/actionbar_layout_menu"
    android:showAsAction="always"
    android:title="时钟"/>

actionbar_layout_menu.xml
<AnalogClock xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content" >
</AnalogClock>
```

## FAQ15487 如何让Launcher3支持横屏显示？

``` Java
N/M：
Launcher默认支持横屏显示，只需要按如下操作即可开启横屏显示：
桌面空白处长按→进入OverviewMode→点击设置→打开允许旋转的开关
 
L：
1.修改AndroidManifest.xml
<activity
android:name="com.android.launcher3.Launcher"
android:launchMode="singleTask"
android:clearTaskOnLaunch="true"
android:stateNotNeeded="true"
android:theme="@style/Theme"
android:configChanges="mcc|mnc"
android:windowSoftInputMode="adjustPan"
android:screenOrientation="sensor"> <!--modify to sensor -->

2.修改Utilities.java的isRotationEnabled方法
public static boolean isRotationEnabled(Context c) {
    return true;//直接返回true
}

此时旋转手机，Launcher会横竖屏切换。但hotseat会显示在屏幕的右方。如果要让hotseat显示在屏幕底部，可以按照如下步骤操作：

3.修改res/values/config.xml
<!--hotseat --> 
<bool name="hotseat_transpose_layout_with_orientation">false</bool> <!--改为false-->

4.修改Hotseat.java的onFinishInflate方法
@Override
protected void onFinishInflate() {
    super.onFinishInflate();
    LauncherAppState app = LauncherAppState.getInstance();
    DeviceProfile grid = app.getDynamicGrid().getDeviceProfile();
    mAllAppsButtonRank = grid.hotseatAllAppsRank;
    mContent = (CellLayout) findViewById(R.id.layout);
    if (grid.isLandscape && !grid.isLargeTablet()) {
        mContent.setGridSize((int) grid.numHotseatIcons, 1); //modify
    } else {
        mContent.setGridSize((int) grid.numHotseatIcons, 1);
    }
    mContent.setIsHotseat(true);
    Log.i(TAG, "onFinishInflate,(int) grid.numHotseatIcons: " + (int) grid.numHotseatIcons);
    resetLayout();
}
```

## 修改recovery界面的显示问题

1.修改 Makefile 中的 recovery 字体资源
M:alps/build/make/core/Makefile
-recovery_font := $(call include-path-for, recovery)/fonts/12x22.png
+recovery_font := $(call include-path-for, recovery)/fonts/8x14.png

2.添加 8*14 的资源
A:alps/bootable/recovery/fonts/8x14.png
A:alps/bootable/recovery/minui/font_8x14.h

3.添加 ldpi 分辨率的 recovery 动画资源
A:alps/bootable/recovery/res-ldpi/images/*

4.上传记录
http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commit;h=97d43c37c7a211fd1e768c4ae1c93e3bf6f3ce18

## 根据霍尔器件的状态发送AT指令来控制 SAR 值功率是否回退

1.在 EngineerMode 中添加一个 ATService 来发送AT命令
``` Java
String cdmaSlotIdStr = SystemProperties.get("persist.radio.cdma_slot", "1");
int cdmaSlotId = Integer.parseInt(cdmaSlotIdStr) - 1;
Phone sarPhone = null;
if (TelephonyManager.getDefault().getPhoneCount() > 1) {
    try {
        sarPhone = PhoneFactory.getPhone(cdmaSlotId);
    } catch (Exception e) {
        return;
    }
} else {
    sarPhone = PhoneFactory.getDefaultPhone();
}
String[] sarStr = new String[2];
sarStr[0] = shutDown ? "AT+ERFIDX=1,0" : "AT+ERFIDX=1,1";    //对应的AT命令，盒盖的时候发送 AT+ERFIDX=1,0 回退功率，开盖的时候发送 AT+ERFIDX=1,1 不回退功率
sarStr[1] = "+ERFIDX";
if (sarPhone != null) {
    sarPhone.invokeOemRilRequestStrings(sarStr, mMessageHandler.obtainMessage(EVENT_AT_CMD));   //发送命令
}
```

2.在 PhoneWindowManager.java 中通过 AIDL 绑定 EngineerMode 中的 ATService

3.在 PhoneWindowManager.java 的 notifyLidSwitchChanged(long whenNanos, boolean lidOpen) 方法中的 lidOpen 就是霍尔器件的状态
``` Java
if (atService == null) {
    bindATService(mContext);
}
if (null != atService){
    try {
        atService.sendATCommand(lidOpen);
    } catch (RemoteException e) {
        e.printStackTrace();
    }
}
```

4.遇到的问题
a.为什么在 EngineerMode 中添加 ATService，而不是在别的应用中？

因为 Phone 这个类只能在 phone 进程中使用，而 EngineerMode 中有 android:sharedUserId="android.uid.phone"

b.开机第一次盒盖没有发送 AT 命令？

因为第一次绑定 ATService 的时候 phone 进程可能没有启动，绑定失败
http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commit;h=518e1a0088cfb63c262926f69f537398da78a73e


c.开机第一次盒盖没有发送正确的 AT 命令

因为第一次绑定的时候需要一定的时间，绑定成功了之后实际的霍尔器件的状态已经发生了改变，通过一个局部变量 private int mLidOpenState = 0; 来保存第一次绑定时候的霍尔器件的状态
http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commit;h=fb0b93a7cc02d2b4652859510ed58aefe6477a24

d.如何查看对应 AT 命令是否发送成功，是否发送正确？

adb logcat -b radio > log.txt
在 log 中搜索 ERFIDX 附近的 log, 如果有 OK 则表示已经发送成功

5.上传记录
http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commit;h=54ba3a5018d97814ffe21bd9df4c5ca238baf3b9
http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commit;h=c6e5472f36bdaea5230f48b3f5450ff1cdd2b64c
http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commit;h=518e1a0088cfb63c262926f69f537398da78a73e
http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commit;h=fb0b93a7cc02d2b4652859510ed58aefe6477a24

## 按键无法输入#的问题

在 39go SmartFeaturePhone 平台一开始移植按键输入法的时候就没有把#键加到 alps/device/mediatek/mt6739/mtk-kpd.kcm 文件中
只是在添加了 SageRealIME 之后，这个问题被隐藏了。现在添加了 Kika 输入法之后，这个问题又被曝光了出来，修改方案如下:
M:alps/device/mediatek/mt6739/mtk-kpd.kcm
key POUND {
    label: '#'
    base: '#'
}

M:alps/frameworks/base/core/java/android/text/method/WordResource.java
this.put(KeyEvent.KEYCODE_POUND, "#");

## 在连续点击 * 键之后会卡在某些字符上一直切换大小写

因为在 MultiTapKeyListener.java 中有实现 * 键切换大小写的功能，代码如下：
``` Java
if (keyCode == KeyEvent.KEYCODE_STAR) {
    char current = content.charAt(selStart);
    if (Character.isLowerCase(current)) {
        content.replace(selStart, selEnd, String.valueOf(current).toUpperCase());   //切换为大写
        removeTimeouts(content);
        new Timeout(content); // for its side effects
        return true;
    }
    if (Character.isUpperCase(current)) {
        content.replace(selStart, selEnd, String.valueOf(current).toLowerCase());   //切换为小写
        removeTimeouts(content);
        new Timeout(content); // for its side effects
        return true;
    }
}
```

而在 WordResource.java 中有 private static String WORD_KEYCODE_STAR = "*+Δ¡¿£Φ\"¥ΓΛ¤ΩΠΨΣÇøΘΞØÄäÅåÆæàÉéèìÖöòÑñßÜüù§";
在遇到 Δ 的时候就会一直在切换大小写，无法切换后后面的字符

修改方案:
只需要去掉 MultiTapKeyListener.java 中点击 * 键切换大小写的功能即可

## 根据包名查看apk的安装路径

``` bash
adb shell pm path com.sagereal.launcher
```

## 39go无法打开 modemlog

M:sagereal/mk/VQ288_common/k39tv1_bsp_512.mk
MTK_DYNAMIC_CCB_BUFFER_GEAR_ID =

M:sagereal/mk/VQ288_common/ProjectConfig.mk
MTK_DYNAMIC_CCB_BUFFER_GEAR_ID =

## EngineerMode 中没有 batterylog

``` Java
private static final String[] KEY_REMOVE_ARRAY = {"de_sense", "display", "battery_log", //只需要去掉 battery_log 就不会消失了
```

## 通过 "Outline" tag 来控制View是否高对比度显示

``` Java
Object mViewTag = getTag();
if (mViewTag instanceof String) {
    String mViewTagStr = (String)mViewTag;
    if ("Outline".equalsIgnoreCase(mViewTagStr)) {
        canvas.setHighContrastText(true);   //设置高对比度显示
    }
}
```

## dumpsys 系统服务

``` bash
$ adb shell service list 列出所有系统服务 然后通过dumpsys media.camera 打印media.camera服务的信息
$ adb shell dumpsys meminfo 打印内存信息
$ adb shell dumpsys SurfaceFlinger 显示当前应用的包名
$ adb shell dumpsys activity
$ adb shell dumpsys cpuinfo CPU
$ adb shell dumpsys battery
$ adb shell dumpsys window（最后部分可以看到分辨率的信息） 有些service能够接收额外的参数，我们可以使用-h查看帮助信息。
$ adb shell dumpsys package -h
$ adb shell dumpsys activity -h
如adb shell dumpsys activity o 能够输出oom的值 adb shell dumpsys activity p 能够打印运行中的进程
```

## 39Go TPLink 中 FaceBook 图标显示白块

http://192.168.3.79:8084/gitweb?p=O1_MP1/alps-release-o1.mp1-default.git;a=commitdiff;h=24fd8a317d43a1c618a26a58101927139164c750
M:alps/frameworks/base/core/java/android/app/Notification.java
``` Java
private void processSmallIconColor(Icon smallIcon, RemoteViews contentView, boolean ambient) {
-            boolean colorable = !isLegacy() || getColorUtil().isGrayscaleIcon(mContext, smallIcon);
+            boolean colorable = getColorUtil().isGrayscaleIcon(mContext, smallIcon);
```

M:alps/vendor/mediatek/proprietary/packages/apps/SystemUI/src/com/android/systemui/statusbar/ExpandableNotificationRow.java
``` Java
-        boolean colorize = !isPreL || NotificationUtils.isGrayscale(expandedIcon,
+        boolean colorize = NotificationUtils.isGrayscale(expandedIcon, NotificationColorUtil.getInstance(mContext));
```

M:alps/vendor/mediatek/proprietary/packages/apps/SystemUI/src/com/android/systemui/statusbar/phone/NotificationIconAreaController.java
``` Java
-        boolean colorize = !isPreL || NotificationUtils.isGrayscale(v, mNotificationColorUtil);
+        boolean colorize = NotificationUtils.isGrayscale(v, mNotificationColorUtil);
```

## 强制修改 39Go TPLink 中安兔兔跑分中的参数

一开始的时候在 setText() 方法中作的修改，但是在最新的antutu中不管用了，反编译发现最新的antutu中不再使用 setText() 来设置字符串了，而是把字符串分割成了单个的字符再append()到TextView中，应该是发现有太多的厂商强行修改这些参数，然而这并难不倒我们，修改方法如下。
``` Java
public void append(CharSequence text, int start, int end) {
    if (!(mText instanceof Editable)) {
        setText(mText, BufferType.EDITABLE);
    }

    ((Editable) mText).append(text, start, end);

    //modified begin
    if (getContext() != null) {
        String packageName = getContext().getPackageName();
        if ("com.antutu.ABenchMark".equalsIgnoreCase(packageName)) {
            int textViewId = getContext().getResources().getIdentifier("item_hardware_text_desc", "id", "com.antutu.ABenchMark");
            if (textViewId == getId()) {
                String sizeStr = getContext().getResources().getString(getContext().getResources().getIdentifier("size_panel", "string", "com.antutu.ABenchMark"));
                if (mText.toString().contains(sizeStr)) {
                    mText = "5.45 " + sizeStr;
                    setText(mText);
                }
            }
        }
    }
    //modified end

    if (mAutoLinkMask != 0) {
        boolean linksWereAdded = Linkify.addLinks((Spannable) mText, mAutoLinkMask);
        // Do not change the movement method for text that support text selection as it
        // would prevent an arbitrary cursor displacement.
        if (linksWereAdded && mLinksClickable && !textCanBeSelected()) {
            setMovementMethod(LinkMovementMethod.getInstance());
        }
    }
}
```

## 查看文件夹占用磁盘空间大小

``` bash
du -h --max-depth=1
```

## 如何精简apk??

https://blog.csdn.net/u013176138/article/details/78894538
https://blog.csdn.net/xJ032w2j4cCjhOW8s8/article/details/80174800

1.使用proguard混淆，规则是什么样的呢？
    a. 修改该模块的Android.mk文件，添加如下内容：
    LOCAL_PROGUARD_ENABLED := custom
    LOCAL_PROGUARD_FLAG_FILES := proguard.flags

    b. 编写一个文本文件，将其命名为proguard.flags，并将该文件放到与该模块的Android.mk相同的目录下；该文件开头部分内容需要填写：
    -dontpreverify
    -dontoptimize
    -keepattributes *Annotation*
    该文件其余部分根据模块的内容填写即可，文件格式可参考Codebase中其他proguard.flags文件(Codebase中有很多proguard.flags文件)

2.优化图片资源，使用 webp 或 9.png 格式

3.去掉一些没必要的分辨率

## LCA项目，MTK_PRODUCT_LOCALES中"-sw600dp -sw720dp"的含义

LCA项目中，为给img瘦身，若MTK_PRODUCT_LOCALES中定义了"-sw600dp -sw720dp"，则在MTK_LCA_ROM_OPTIMIZE为yes，且MTK_TABLET_PLATFORM为no的前提情况下，那些为Tablet（大屏幕设备）准备的资源（含有sw600dp，sw720dp限定符的resource目录）将不会被build到apk中。
 
比如：
定义MTK_PRODUCT_LOCALES=zh_CN en_US zh_TW hdpi -sw600dp -sw720dp
假设某一app的res目录下，关于drawable，含有下面的资源目录：
drawable
drawable-hdpi
drawable-land-hdpi
drawable-land-mdpi
drawable-land-xhdpi
drawable-mdpi
drawable-nodpi
drawable-sw600dp-hdpi
drawable-sw600dp-mdpi
drawable-sw600dp-xhdpi
drawable-sw720dp-hdpi
drawable-sw720dp-mdpi
drawable-sw720dp-xhdpi
drawable-xhdpi

那么，最终编译过后，apk中将只含有下面这些目录：
drawable
drawable-hdpi
drawable-land-hdpi
drawable-nodpi

这样将大大减小img的大小，达到为project瘦身的目的。

aapt2 link 怎么使用 --preferred-density 参数？？？

device/mediatek/common/aapt_config.mk 中的参数好像不起作用？？

1. 在L0(android 5.0)及之前的AOSP版本：
在device\mediatek\$(proj_name)\full_$(proj_name).mk设置
PRODUCT_AAPT_CONFIG := hdpi xhdpi xxhdpi 
指定project支持的density.

2. 在L1和M0(android 5.1之后版本):
系统会通过屏幕height和width来算出project默认应该支持的density:
device/mediatek/common/aapt/aapt_config.mk

如果该默认值不符合您的要求，可以在device\mediatek\$(proj_name)\full_$(proj_name).mk中添加如下：
PRODUCT_AAPT_PREF_CONFIG := xhdpi
AAPT会将xhdpi的资源打包。如果此时找不到xhdpi资源, AAPT会去找其他分辨率。这种情况下，为避免资源缺失，至少会包一种类型的资源进来。所以这种case下，可能会发生系统编译进多种其他分辨率资源，导致rom变大的情况。

注意1：PRODUCT_AAPT_PREF_CONFIG只能设置一种dpi。不能设置为PRODUCT_AAPT_PREF_CONFIG := xhdpi xxhdpi 这种错误形式。
注意2: PRODUCT_AAPT_CONFIG在L1上已经失效.

## makefile 中打 log

``` bash
$(warning Warning:xxxx)
eg:$(warning Warning:BUILD_FINGERPRINT=$(BUILD_FINGERPRINT))
```

## 监测设备是否root

``` Java
public boolean isRoot() {
    boolean root = false;
    try {
        if(!("eng".equals(SystemProperties.get("ro.build.type")))){
            if ((!new File("/system/bin/su").exists()) && (!new File("/system/xbin/su").exists())) {
                root = false;
            }else {
                root = true;
            }
        }
    } catch (Exception e) {
    }
    return root;
}
```

## lint 命令行怎么使用？
lint [flags] <project directory>
gradlew lint

## Selinux权限快速编译

添加对应selinux权限到文件之后
编译：
source build/envsetup.sh
lunch {prj}
mmm system/sepolicy （O之后）
mmm external/sepolicy （O之前）
make -j24 ramdisk-nodeps
make -j24 bootimage-nodeps
重刷boot.img

## Android.mk 文件中打印log

有时候需要在Android.mk文件或者其他以 .mk结尾的文件中打印默写变量的值, 如何打印呢. 使用$(waing text ) 或者 $(error text) 语句,
其中text 可以是普通文本 加 变量. 变量打印用$(val) sample:
$(waing 111 $(TARGET_BOARD_PLATFORM_PRODUCT))
$(warning Warning:BUILD_FINGERPRINT=$(BUILD_FINGERPRINT))
$(error 111  $(TARGET_BOARD_PLATFORM_PRODUCT))
Note: 如使用error, 打印完成后,停止向下继续执行

## 添加系统应用引v7包

部分模块没有添加V7包，导致有些主题（appcompat）不能使用。
具体修改如下：
在模块的android.mk下面添加：
LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v7-appcompat

LOCAL_RESOURCE_DIR += \
    $(LOCAL_PATH)/res \
    $(LOCAL_PATH)/../../../../prebuilts/sdk/current/support/v7/appcompat/res       //v7/路径

LOCAL_AAPT_FLAGS := \
    --auto-add-overlay \
    --extra-packages android.support.v7.appcompat

## 默认语言不会随着sim卡变化而变化

``` Java
alps/vendor/mediatek/proprietary/packages/services/Telephony/src/com/android/phone/PhoneInterfaceManager.java
-        final Locale mccLocale = MccTable.getLocaleFromMcc(mPhone.getContext(), mcc, simLanguage);
+        //final Locale mccLocale = MccTable.getLocaleFromMcc(mPhone.getContext(), mcc, simLanguage);
+        //redmine139979 panhaoda modify for language not change from sim 2018 0704 begin
+        final Locale mccLocale = null;
+        //redmine139979 panhaoda modify for language not change from sim 2018 0704 end
```

## P go 上关机对话框上会有两种 item 的颜色

```
vendor/mediatek/proprietary/packages/apps/SystemUI/src/com/android/systemui/globalactions/GlobalActionsDialog.java

MyAdapter
public View getView(int position, View convertView, ViewGroup parent) {
    Action action = getItem(position);
    View view = action.create(mContext, convertView, parent, LayoutInflater.from(mContext));
    // Everything but screenshot, the last item, gets white background.
    if (position == getCount() - 1) {
        //HardwareUiLayout.get(parent).setDivisionView(view);   //这里会把最后一项变成其他颜色，去掉这一行代码就可以
    }
    return view;
}
```

## smaps 各个字段含义

``` bash
adb shell ps | grep "systemui"

adb shell cat /proc/${pid}/smaps

ffff0000-ffff1000 r-xp 00000000 00:00 0          [vectors]
Size:                  4 kB
Rss:                   0 kB
Pss:                   0 kB
Shared_Clean:          0 kB
Shared_Dirty:          0 kB
Private_Clean:         0 kB
Private_Dirty:         0 kB
Referenced:            0 kB
Anonymous:             0 kB
AnonHugePages:         0 kB
Shared_Hugetlb:        0 kB
Private_Hugetlb:       0 kB
Swap:                  0 kB
PSwap:                 0 kB
SwapPss:               0 kB
KernelPageSize:        4 kB
MMUPageSize:           4 kB
Locked:                0 kB
VmFlags: rd ex mr me

第一行： 
08048000-080bc000 地址空间的开始地址 - 结束地址 
r-xp 属性。前三个是rwx（读、写、可执行）,如果不具有则为“-”。最后一个是p/s(私有/共享) 
00000000 偏移量。如果这段内存是从文件里映射过来的，则偏移量为这段内容在文件中的偏移量。如果不是从文件里面映射过来的则为0. 
03:02 If the region was mapped from a file, this is the major and minor device number (in hex) where the file lives. 
13130 If the region was mapped from a file, this is the file number. 
/bin/bash If the region was mapped from a file, this is the name of the file. This field is blank for anonymous mapped regions. There are also special regions with names like [heap], [stack], or [vdso]. [vdso] stands for virtual dynamic shared object. It’s used by system calls to switch to kernel mode.

Rss-Resident Set Size 实际使用物理内存（包含共享库占用的内存） 
Rss=Shared_Clean+Shared_Dirty+Private_Clean+Private_Dirty 
Pss 实际使用的物理内存（按比例包含共享库占用的内存）。比如四个进程共享同一个占内存1000MB的共享库，每个进程算进250MB在Pss。 
Shared_Clean 、 Shared_Dirty 、 Private_Clean、 Private_Dirty 
（shared/private）共享和私有 
一个页的clean字段表示没有更改此页，当发生换页时不用写回。dirty表示更改了此页，当发生换页时要写回磁盘。此处这四个值是遍历页表中各个页后得到的。 
“Referenced” indicates the amount of memory currently marked as referenced or accessed. “Anonymous” shows the amount of memory that does not belong to any file. Even a mapping associated with a file may contain anonymous pages: when MAP_PRIVATE and a page is modified, the file page is replaced by a private anonymous copy. “Swap” shows how much would-be-anonymous memory is also used, but out on swap.
```

## meminfo 各个字段含义
 
``` bash
adb shell dumpsys meminfo com.android.systemui

Applications Memory Usage (in Kilobytes):
Uptime: 560220 Realtime: 560220

** MEMINFO in pid 875 [com.android.systemui] **
                   Pss  Private  Private  SwapPss     Heap     Heap     Heap
                 Total    Dirty    Clean    Dirty     Size    Alloc     Free
                ------   ------   ------   ------   ------   ------   ------
  Native Heap     7482     7324      108     2073    12544    10061     2482
  Dalvik Heap     4124     4004       12      147     7038     3519     3519
 Dalvik Other     1522     1516        4       16                           
        Stack       44       44        0        0                           
       Ashmem        2        0        0        0                           
    Other dev       16        0       12        0                           
     .so mmap     6851      132      732       77                           
    .apk mmap     6026        0     5528        0                           
    .ttf mmap      385        0      256        0                           
    .dex mmap     5151        0      688        0                           
    .oat mmap     3584        0       64        0                           
    .art mmap     2249      784       60       32                           
   Other mmap     2587        4     1388        1                           
   EGL mtrack       62       62        0        0                           
    GL mtrack     5289     5289        0        0                           
      Unknown      652      560       92      101                           
        TOTAL    48473    19719     8944     2447    19582    13580     6001
 
 App Summary
                       Pss(KB)
                        ------
           Java Heap:     4848
         Native Heap:     7324
                Code:     7400
               Stack:       44
            Graphics:     5351
       Private Other:     3696
              System:    19810
 
               TOTAL:    48473       TOTAL SWAP PSS:     2447
 
 Objects
               Views:      376         ViewRootImpl:        3
         AppContexts:        5           Activities:        0
              Assets:        7        AssetManagers:        0
       Local Binders:      156        Proxy Binders:       55
       Parcel memory:       20         Parcel count:      110
    Death Recipients:        2      OpenSSL Sockets:        0
            WebViews:        0
 
 SQL
         MEMORY_USED:        0
  PAGECACHE_OVERFLOW:        0          MALLOC_SIZE:        0


PSS TOTAL:              内存锁实际占用的值
Dalvik Heap Alloc:      Runtime.totalMemory() - Runtime.freeMemory(), Dalvik Heap 分配的内存大小
Dalvik Heap Free:       Runtime.freeMemory()  获得，DalvikHeap 剩余的内存大小
Dalvik Heap size:       Runtime.totalMemory() 获得，DalvikHeap 总共的内存大小 = Heap Alloc + Heap Free
.so mmap                C库代码占用的内存
.jar mmap               Java文件代码占用的内存
.apk mmap               apk代码占用的内存
.ttf mmap               ttf文件代码占用的内存
.dex mmap               dex文件代码占用的内存
Other mmap              其他文件占用的内存
Cursor                  /dev/ashmem/Curxor Cursor消耗的内存(KB)
Ashmem                  /dev/ashmem，匿名共享内存用来提供共享内存通过分配一个或多个进程可以共享的带名称的内存块
Other dev               /dev/,内部driver占用的在 Other dev
```

## showmap

``` bash
adb shell showmap ${pid}
```

## procrank

``` bash
VSS - Virtual Set Size 虚拟耗用内存（包含共享库占用的内存）
RSS - Resident Set Size 实际使用物理内存（包含共享库占用的内存）
PSS - Proportional Set Size 实际使用的物理内存（比例分配共享库占用的内存）
USS - Unique Set Size 进程独自占用的物理内存（不包含共享库占用的内存）
一般来说内存占用大小有如下规律：VSS >= RSS >= PSS >= USS

VSS：VSS表示一个进程可訪问的所有内存地址空间的大小。

这个大小包含了进程已经申请但尚未使用的内存空间。在实际中非常少用这样的方式来表示进程占用内存的情况，用它来表示单个进程的内存使用情况是不准确的。
RSS：表示一个进程在RAM中实际使用的空间地址大小。包含了所有共享库占用的内存。这样的表示进程占用内存的情况也是不准确的。
PSS：表示一个进程在RAM中实际使用的空间地址大小，它按比例包括了共享库占用的内存。假如有3个进程使用同一个共享库，那么每一个进程的PSS就包括了1/3大小的共享库内存。

这样的方式表示进程的内存使用情况较准确。但当仅仅有一个进程使用共享库时，其情况和RSS一模一样。
USS：表示一个进程本身占用的内存空间大小，不包括其他不论什么成分，这是表示进程内存大小的最好方式！

Overview

The aim of this post is to provide information that will assist in interpreting memory reports from various tools so the true memory usage for Linux processes and the system can be determined.

Android has a tool called procrank (/system/xbin/procrank), which lists out the memory usage of Linux processes in order from highest to lowest usage. The sizes reported per process are VSS, RSS, PSS, and USS.

For the sake of simplicity in this description, memory will be expressed in terms of pages, rather than bytes. Linux systems like ours manage memory in 4096 byte pages at the lowest level.

VSS (reported as VSZ from ps) is . This size also includes memory that may not be resident in RAM like mallocs that have been allocated but not written to. VSS is of very little use for determing real memory usage of a process.

RSS is the. RSS can be misleading, because it reports the total all of the shared libraries that the process uses, even though a shared library is only loaded into memory once regardless of how many processes use it. RSS is not an accurate representation of the memory usage for a single process.

PSS , i.e. if three processes all use a shared library that has 30 pages, that library will only contribute 10 pages to the PSS that is reported for each of the three processes. PSS is a very useful number because when the PSS for all processes in the system are summed together, that is a good representation for the total memory usage in the system. When a process is killed, the shared libraries that contributed to its PSS will be proportionally distributed to the PSS totals for the remaining processes still using that library. In this way PSS can be slightly misleading, because when a process is killed, PSS does not accurately represent the memory returned to the overall system.

USS is . USS is an extremely useful number because it indicates the true incremental cost of running a particular process. When a process is killed, the USS is the total memory that is actually returned to the system. USS is the best number to watch when initially suspicious of memory leaks in a process.

For systems that have Python available, there is also a nice tool called smem that will report memory statistics including all of these categories.
```

## free命令查看剩余可用空间

``` bash
free 命令显示系统使用和空闲的内存情况，包括物理内存、交互区内存(swap)和内核缓冲区内存。
            total        used        free      shared     buffers
Mem:        441946112   432463872     9482240     1175552     1437696
-/+ buffers/cache:      431026176    10919936
Swap:       331452416    91521024   239931392
```

## reserve memory 查看和详情

https://online.mediatek.com/FAQ#/SW/FAQ21499
```
一个固定的内存，通过proc/meminfo 发现total memory 并不是全部的内存，那剩下的的内存如何查看？
都是做了什么？
 
部分kernel代码、modem ,  tee,  framebuffer 等都会占用一部分的内存

MTK 有相关内容的记录
k71v1_64_bsp:/proc/mtk_memcfg # ls
memory_layout reserve_memory total_reserve
 
k71v1_64_bsp:/proc/mtk_memcfg # cat reserve_memory
*mblock-15-ccci: 80412672
mblock-9-dtb_kernel_addr_mb: 524288
ram_console-reserved-memory@54400000: 65536
pstore-reserved-memory@54410000: 917504
minirdump-reserved-memory@544f0000: 65536
mblock-4-atf-reserved: 262144
mblock-7-pl-bootarg: 2097152  // pl 
mblock-8-lk_addr_mb: 4194304 // lk 
reserve-memory-dram_r0_dummy_read: 4096
mblock-12-SPM-reserved: 65536
mblock-10-framebuffer: 29229056  //framebuffer
mblock-6-SSPM-reserved: 786432
mblock-3-log_store: 262144  // log 
*mblock-16-ccci: 23068672  // modem
*mblock-14-ccci: 1048576
reserve-memory-scp_share: 20971520
reserve-memory-sspm_share: 5308416
mblock-13-SCP-reserved: 6291456
consys-reserve-memory: 2097152
mblock-11-vpu_binary: 44105728
mblock-5-atf-log-reserved: 262144
mblock-1-dramc-rk0: 4096
mblock-2-dramc-rk1: 4096
kernel(text): 13340672
kernel(data): 14116716
kernel(page): 67108800
kernel(other): 12486868

k71v1_64_bsp:/proc/mtk_memcfg # cat total_reserve
321388 kB
 
321388 kB = 321388 /1024 =  313 MB
 
totoal  meminfo 
 
k71v1_64_bsp:/proc/mtk_memcfg # cat /proc/meminfo
MemTotal: 3872916 kB
MemFree: 119676 kB
MemAvailable: 2269012 kB
Buffers: 218348 kB
 
MemTotal: 3872916 kB =  3872916  / 1024  = 3782.14 MB
 
4G =4096MB - 313 MB = 3783M
 
physics RAM = Total meminfo + total_reserve
```

## Android P one 版本默认底层配的 device version为 HAL3.2，如果想改为 HAL1.0

``` C
在文件 alps/vendor/mediatek/proprietary/custom/mt6739/hal/imgsensor_metadata/common/config_static_metadata_common.h 中把
case 0:
    CONFIG_METADATA_BEGIN(MTK_HAL_VERSION)
    CONFIG_ENTRY_VALUE(MTK_HAL_VERSION_3_2, MINT32)
    CONFIG_METADATA_END()
    break;
case 1:
    CONFIG_METADATA_BEGIN(MTK_HAL_VERSION)
    CONFIG_ENTRY_VALUE(MTK_HAL_VERSION_3_2, MINT32)
    CONFIG_METADATA_END()
    break;
改为
case 0:
    CONFIG_METADATA_BEGIN(MTK_HAL_VERSION)
    CONFIG_ENTRY_VALUE(MTK_HAL_VERSION_1_0, MINT32)
    CONFIG_METADATA_END()
    break;
case 1:
    CONFIG_METADATA_BEGIN(MTK_HAL_VERSION)
    CONFIG_ENTRY_VALUE(MTK_HAL_VERSION_1_0, MINT32)
    CONFIG_METADATA_END()
    break;
```

## 根据 SIM 卡的 mccmnc 设置语言

``` Java
MccTable.java updateMccMncConfiguration() 中添加
setLocaleFromMccIfNeeded(context, mcc);     //部分平台没有这个方法，需要自行添加实现部分的代码
```

## 开机后发现Home和Menu功能不正常

``` Java
原因是开机向导过程中意外关机导致 Settings.Global.DEVICE_PROVISIONED 这个值没有写入到数据库中
M:frameworks/base/services/core/java/com/android/server/pm/PackageManagerService.java文件中的setEnabledSetting方法中   ----->redmine62528
try {
    if(packageName.equals("com.google.android.setupwizard") && !(newState == COMPONENT_ENABLED_STATE_ENABLED||newState == COMPONENT_ENABLED_STATE_DEFAULT)) {
        if (android.provider.Settings.Global.getInt(mContext.getContentResolver(),android.provider.Settings.Global.DEVICE_PROVISIONED, 0) == 0) {
            android.provider.Settings.Global.putInt(mContext.getContentResolver(), android.provider.Settings.Global.DEVICE_PROVISIONED, 1);
        }
    }
} catch (Exception e) {
}

adb shell settings put  global device_provisioned 0
adb shell settings get  global device_provisioned
```

## 在 app 中使用自定义字体

``` Java
//package/apps/calculate/里面新建assets/fonts文件夹，然后把那个.otf/.ttf文件放到里面
Typeface typeface = Typeface.createFromAsset(context.getAssets(), "fonts/HelveticaNeueLTStd-UltLt.otf");
setTypeface(typeface);
```

## SIM卡联系人数量显示的与实际不符

```
SIM卡联系人数量显示的与实际不符（SIM卡中有很多联系人，选择删除所有SIM卡联系人，删除过程中下拉状态栏，点击“联系人”正在运行，选择强制停止后返回联系人。sim卡中联系人的数量没有变，重启后才会减少。）
1、sim卡中的联系人删除原理：删除过程中首先删除的是sim卡里的数据，然后去删除数据库的数据，如果在删除过程中强制停止的话，可能就只删除了sim卡里面的数据，而还没有删除掉数据库的数据，然后再打开联系人的时候，它会根据数据库的数据进行更新，如果数据库没被 删除掉的话，联系人的数据也就不会变了，因此出现了上述的bug情况。
2、手机中联系人删除原理：删除过程中是直接删除数据库的数据，不会出现上述情况。
3、手机重启联系人会更新的原理：手机重启后，会先把数据库中关于sim卡的数据进行删除，然后再从sim卡中把那些号码导入到数据库，这样数据库的数据就会跟sim卡的数据一样，然后再从数据库读取数据显示出来就会是最新的。
4、无法修改原因：我通过调试和使用MTKlog抓取log的方法，在删除联系人的地方发现了有关它删除sim卡联系人的方法，然后进行修改，最终发现更新功能是能实现，但是删除的速度会减慢，本来是100条删除一次，现在变成每1条删除一次，这样会严重影响效率，而且该bug的操作我认为是非法操作，手机已经提醒如此操作会使数据发生错乱，综合上面种种原因，我认为该bug不用修改。
5、删除sim卡联系人数据具体方法：trunk/Packages/apps/Contacts/src/com/mediatek/contacts/list/DeleteProcessor.java中的runInternal()方法中。
```

## (情景模式)勾选触摸提示音，每次约5s后第一次触摸时触摸音较小，之后触摸声音会变大一点(主要还是要注意kernel修改以后怎么把它烧到手机里面去)

```
注意：先进入mediatek/config/所编的工程/ProjectConfig.mk,然后搜索CUSTOM_KERNEL_SOUND，看我们所使用su_android_speaker.c
1.打开mediatek/custom/common/kernel/sound/上一步搜索出来的文件夹/yusu_android_speaker.c，然后把define CONFIG_DEBUG_MSG前面的“//”去掉，接着把define SPK_WARM_UP_TIME的参数改为50，然后再Sound_Speaker_Turnon方法下面加上了两句log。
2.在终端里执行./mk sagetel82_wet_kk r kernel
3.在终端里执行./mk bootimage
4.在终端里执行./copy_sagetel82_wet_kk.sh
5.然后用Release_SW文件夹进行刷机
然后就可以了！
```

## 为什么第一次编译的时候要"./mk 工程名 new"，而第二次编的与上一次编的是同一个工程的话，我们直接"./mk new"就可以了？

```
这是因为你把工程下下来后，第一次编译的时候会编译产生makeMtk.ini文件，然后再这个文件里面会把第一次输入的"./mk 工程名 new"中的工程名记录到这个文件里面,然后下次编译再你不写工程名的时候就会默认为makeMtk.ini文件的工程名
```

## 经常会出现开机logo显示正确，而关机充电图标显示乱，

```
原因：
1、我们少修改了一个文件mediatek/custom/common/lk/include/target/cust_display.h)以tecno的UP07为例，config文件中BOOT_LOGO=fwvga_tecno_d7 
tecnoD7项目是FWVGA的分辨率，因此需要在cust_display.h的FWVGA最后添加一句
#elif defined(FWVGA) || defined(CU_FWVGA) || defined(CMCC_FWVGA) || defined(FWVGA_TECNO_D7) (这个的分辨率是fwvga 480*854，所以每个项目都要到projectConfig.mk文件中找到手机对应的分辨率)
如果你的分辨率是320*480的话，就要在该文件中的#elif defined(HVGA) || defined(CU_HVGA) || defined(CMCC_HVGA) || defined(CT_HVGA) || defined(HVGA_UP11)加了，可以直接搜索分辨率(320*480)
注：BOOT_LOGO中定义的是小写的，而cust_display.h中需要写成大写的
2、你要去看mediatek/custom/common/lk/logo中的图片的分辨率是否正确！
```

## FeatureOption.java 的位置

```
out/target/product/mq16_h451_t3_p/obj/JAVA_LIBRARIES/mediatek-common_intermediates/FeatureOption.java（看宏编译后生成的是什么就再java文件中调用什么，注意有些宏再projectConfig.mk文件中的宏名字和featrueoption产生的宏名字不一样，如果我们要使用这个宏的话以编后再featrueoption生成的为准）
```

## [默认值]usb默认联接用Media device(MTP)而不用USB Storage

```
方法：[FAQ04464] [USB]如何修改USB连接后的默认功能
/build/core/main.mk 中搜索 ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config，会发现默认连接值用哪个可以用宏控制，MTK_MASS_STORAGE
```

## [默认值]短信转彩信条数

```
短信字数到达一定数字短信变成彩信（redmine 6837）
SAGEREAL_SMSTOMMS_LIMIT，这个宏要打开!
该功能修改再MmsConfig.java文件里面！

1.短信变为彩信？？？？
解决：
packages/apps/Mms/res/xml/mms_config.xml
<!-- Maximum number of SMS message segments in a long text message before converting the SMS message to an MMS message. -->
<int name="smsToMmsTextThreshold">7</int>
```

## [默认值]当用USB链接的时候，USB名称修改

```
1、打开/system/vold/Fat.cpp，然后 if(isInttrunkernalSd)下面把要修改的名字修改了！（相当于我的电脑上显示出来的名称）
2、是按照客户需求名称汇总表20131105文件修改！（这个是虚拟机上面的设备-->分配设备）
```

## [默认值]照片详情中 maker,modle 名称修改

```
1、mediatek/custom/mt6572/hal/camera/camera/camera_custom_if.cpp中修改（jb3），可以搜索CUSTOM_EXIF_STRING_MAKE
2、mediatek/custom/up09l_h401_ddm_single/hal/inc/camera_custom_exif.h（kk），可以搜索CUSTOM_EXIF_STRING_MAKE
3、mediatek/custom/common/hal/inc/camera_custom_exif.h（kk），可以搜索CUSTOM_EXIF_STRING_MAKE
4、../sagereal/mk/UP19_H353_Vodacom/full_sr6572_wet_l.mk (l),可以搜索PRODUCT_MANUFACTURER和PRODUCT_MODEL

TODO : 其他平台的也更新进来？？？
```

## launcher界面最下面排顺序（Hotseat）-->[FAQ10350] 如何修改Allapp Button的位置

```
1、/packages/apps/Launcher2/res/xml/default_workspace.xml中修改除了app button以外按钮的顺序，就是Hotseat
然后/packages/apps/Launcher2/src/com/android/launcher2/Hotseat.java中有一个Allapp Button的默认位置，是通过/packages/apps/Launcher2/res/values/config.xml中的hotseat_all_apps_index值设置的，如果你要把all button的位置也修改了，必须要把这个hotseat_all_apps_index默认值给修改了,当然那个默认值修改后你要把default_workspace.xml中的hotseat的其他图标的位置做相应的修改！
2、/packages/apps/Launcher3:
DynamicGrid.java文件
hotseatAllAppsRank = (int) (numColumns/2); //默认是列数除以2取整，可以设置为需要的值,(比如说(int) (numColumns/2)-1就是相当与把Allapp Button向左移动了一位，当然在default_workspace.xml中要把原来在Allapp Button左边的那个应用的位置给让出来！)
```

## [NTP]选择使用网络自动更新时间后，时间不准确

```
frameworks/base/services/java/com/android/server/NetworkTimeUpdateService.java
进入文件，然后把"203.160.128.59","2.android.pool.ntp.org","time-a.nist.gov"中的"203.160.128.59"注销掉，因为这个通过这个服务器获得的时间是有问题，导致了这个时间不准确！
```

## [NTP]修改自动对时服务器

```
How to change server address?
There are two ways:
1. change Android default server address. Just replace this value that in "/frameworks/base/core/res/res/values/config.xml"with your own server address.
2. Add your server in NetworkTimeUpdateService.java. use ((NtpTrustedTime) mTime).setServer(custom_server) to set custom NTP server before call mTime.forceRefresh(). Then 
NtpTrustedTime will connect to custom_server to update time.

How to verify modify?
initialization:
Make sure handset can access internet, enter settings -> Date & time, enable Automatic time from network. Disable Automatic time zone.

test:
reboot phone, check mainlog/syslog:

07-12 08:56:09.770370   943   943 D NtpTrustedTime: getServer:[time.android.com]   // this address should be custom server 
07-12 08:57:07.184321   943  1172 D NetworkTimeUpdateService: New default network 100; checking time.
07-12 08:57:07.184816   943  1172 D NetworkTimeUpdateService: onPollNetworkTime start
07-12 08:57:07.191897   943  1172 D NetworkTimeUpdateService: Stale NTP fix; forcing refresh
07-12 08:57:07.192420   943  1172 D NetworkTimeUpdateService: mTryAgainCounter = 0;mNtpServers.size() = 3;index = 0;mNtpServers = time.android.com
07-12 08:57:07.192835   943  1172 D NtpTrustedTime: setServer:[time.android.com]
07-12 08:57:07.555810   943  1172 D SntpClient: round trip: 84ms, clock offset: 200ms  // means success
```

## [6509](情景模式)勾选触摸提示音，每次约5s后第一次触摸时触摸音较小，之后触摸声音会变大一点（第二十三条有详细步骤）

```
custom/common/kernel/sound/amp_aw8145/yusu_android_speaker.c
然后把 SPK_WARM_UP_TIME 的数值修改！
```

## [6410](通话记录)通话记录详情界面进入到电话本记录后，按返回键退出的不是上一个界面

```
packages/apps/Dialer/src/com/android/dialer/CallDetailActivity.java
把 onPostExecute() 中的 mainActionIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP)注销掉！
```

## [11203] pls remove the calendar option

```
packages/apps/Mms/src/com/android/mms/util/MessageConsts.java
把calendar的项给去掉，然后进入 packages/apps/Mms/res/values/mtk_arrays.xml 把calendar的项去掉

packages/apps/Mms/src/com/mediatek/ipmsg/ui/SharePanel.java
把多余的一页去掉！
```

## [11786](相机)后置摄像头拍照的预览大小更换为全屏后，再更换为4:3，默认像素变为8M

```
描述：手机默认像素为13.1M，后置摄像头的预览大小默认为4:3，更换为全屏后，像素变为6M，再更换为4:3后，像素默认为8M
期望：更换为4:3，像素应该仍然为默认值13.1M；全屏的像素为6M，请确认是否正确
首先去找projectconfig.mk文件中的CUSTOM_HAL_MAIN_IMGSENSOR（后摄像头），然后按照这个找到/mediatek/custom/mq16_h504_c5vp/hal/imgsensor/ov8858_mipi_raw/config.ftbl.ov8858_mipi_raw.h文件
一般在java和xml文件中已经把每个比例的所有pictrue size都写进去了，只是config.ftbl.ov8858_mipi_raw.h这个文件中没有把所有的东西写进去（每个比例写了哪几个就在手机上显示哪几个尺寸）
```

## [FAQ02892] 紧急号码的管理及客制化方法

```
思想大义：framework/base/telephony/java/android/telephony/PhoneNumberUtils.java 中的 isEmergencyNumber 为 true，isSpecialEmergencyNumber 为 false
1、不插卡时：framework/base/telephony/java/android/telephony/PhoneNumberUtils.java 中的 isEmergencyNumber(String number) 方法中是有插卡和不插卡的两个方法(可以直接抓取log看，一般就能看出有卡和无卡情况下怎么修改)
isEmergencyNumber(String number)方法中当int eccNo = 9;
String[] emergencyNumList = {"112", "911", "000", "08", "110", "118", "119", "999", "123"}中把要加的号码加上去（一般再SIM4的判断后面是无sim情况的）
2、插卡时：打开 mediatek/frameworks/base/op/java/com/mediatek/op/telephony/PhoneNumberExt.java，有 isCustomizedEmergencyNumber(String number, String plusNumber, String numberPlus) 方法，然后就可以在这里加上你要定制的紧急拨号号码！（特殊情况：如果是去掉911号码要在PhoneNumberUtils中判断sim1的时候（有注释的），直接在判断方法中把911去除）
ps：编译 mediatek/frameworks/base/op/java/com/mediatek/op/telephony/PhoneNumberExt.java 该文件的时候可以编译 ./mk -t mm mediatek/frameworks/base

ps:在插入卡的时候会发现在默认112、911为紧急拨号，如果要去除的话，要在 frameworks/opt/telephony/src/java/com/android/internal/telephony/uicc/SIMRecords.java 文件中handleMessage(Message msg)方法中 case EVENT_GET_SIM_ECC_DONE和case EVENT_GET_USIM_ECC_DONE下有个mEfEcc = "112,911"

[Android Version]
Android 5.0/5.1 (L)
Android 6.0 (M)
Android 7.0(N)
Android 8.0(O)

[DESCRIPTION]
L及之后的版本紧急号码Customer的部分改成了在XML文件中来配置，文件的路径：
alps/vendor/mediatek/proprietary/external/EccList

EccList文件夹中会包含ecc_list.xml，以及与运营商有关的ecc_list_OP01.xml、ecc_list_OPXX.xml等对应文件，此外还包括一个EccList.mk的Makefile。实际运行中会根据Makefile文件中的定义匹配对应的XML文件作为判断是否是紧急号码的来源。

下面是ecc_list.xml文件中的内容：

N及之后的版本ecc_list.xml 文件不变，但是有加上PLMN的配置， 也就是可以按照运营商

26    <!-- Add for China CTA -->
27    <EccEntry Ecc="110" Category="0" Condition="2" Plmn = "460 FFF" />
28    <EccEntry Ecc="119" Category="0" Condition="2" Plmn = "460 FFF" />
29    <EccEntry Ecc="120" Category="0" Condition="2" Plmn = "460 FFF" />
30    <EccEntry Ecc="122" Category="0" Condition="2" Plmn = "460 FFF" />
31
32    <!-- Add for Malaysis Digi operator -->
33    <EccEntry Ecc="999" Category="0" Condition="1" Plmn = "502 FFF" />
*说明：

一 、添加号码请注意Condition的配置，根据需求来选择对应的值。
0:表示在无卡的时候当紧急号码；
1:表示始终当紧急号码；
2:表示界面上显示成紧急拨号，但实际以普通方式拨出。
二 、Category属性的设置于语音台选择有关，只有在实际拨打紧急号码的时候会将此号码配置的Category属性发送到Modem。国内默认都是‘0’，国外根据实际情况选择。 

[FAQ21186] 特定运营商紧急号码配置（After Android O）
```

## 查看sim卡信息

```
*#*#4636#*#*
```

## 改了宏该如何编译(KK)

```
需要编译mediatek/frameworks/common(不需要push进去)，然后把使用宏的java代码重新编译一下，push到手机上就会有新的现象产生！
```

## [shell]通过终端找字符串

``` bash
find . | xargs grep -n --color "orange"
grep "字符" ./ -r(./代表当前文件夹，-r代表遍trunk历)
```

## 如何确定全屏时屏幕比例

```
再 ProjectConfig.mk 文件中搜索LCM，会找到一个宽度和一个高度，然后比一下就会出来全屏的比例！
```

## [adb]抓取kernel log

``` bash
adb shell cat /proc/kmsg > log.txt
```

## 如何修改actionbar上面的颜色

```
一般可先找到该activity到底是使用了哪种主题或者style到value/theme.xml（或style.xml）文件中找到相应的主题或者style，用android:windowBackground去设置！
```

## [默认值]camera闪光灯默认情况

``` bash
可以打开 package/apps/camera/res/values/string.xml,然后搜索 pref_camera_flashmode_default 就可以了！(R.styleable.ListPreference_defaultValue要去搜索defaultValue而不是去搜索ListPreference_defaultValue)
```

## [默认值]默认声音改成80%

```
可以打开/frameworks/base/media/java/android/media/AudioService.java，可以发现MAX_STREAM_VOLUME，这个数组里面有各种声音的最大值，STREAM_NOTIFICATION和STREAM_ALARM应该改成80%，然后进入/frameworks/base/media/java/android/media/AudioManager.java，搜索DEFAULT_STREAM_VOLUME，然后把STREAM_RING和STREAM_ALARM改成15x80%=12就可以了
打开mediatek/frameworks/base/media/audio/java/com/mediatek/audioprofile/AudioProfileManager.java，然后搜索DEFAULT_NOTIFICATION_VOLUME_GENERAL和DEFAULT_ALARM_VOLUME_GENERAL，把他们改成15x80%=12就可以了！
```

## 如何修改邮件帐号类型和邮件签名

``` Java
帐号类型：packages/apps/Email/res/xml/providers.xml（redmine16643）
邮件签名：（redmine30687）
M:mediatek/config/mq16_h504_c5ql/sagereal_copy/packages/apps/Email/UnifiedEmail/src/com/android/mail/compose/ComposeActivity.java  -->appendSignature方法下
if (TextUtils.isEmpty(newSignature)) {
    newSignature  = getString(R.string.email_signature_h504_c5ql);
}
M:mediatek/config/mq16_h504_c5ql/sagereal_copy/packages/apps/Email/src/com/android/email/activity/setup/AccountSettingsFragment.java  -->loadSettings()方法下
if (TextUtils.isEmpty(accountSignature)) {
    accountSignature =getString(R.string.email_signature_h504_c5ql);
} 
M:packages/apps/Email/res/values/mtk_strings.xml
M:packages/apps/Email/res/values-es/mtk_strings.xml
```

## [默认值]如何使settings/printing/cloud print默认为off

``` Java
frameworks/base/services/java/com/android/server/print/UserState.java  -->  enableSystemPrintServicesOnFirstBootLocked()
if (builder.length() <= 0) {
    return;
}后面加上if (true) return; 
相当于没有寻找到相关设备，默认就会是off 
```

## [默认值]修改 GPS 默认高精度 high accuracy

```
frameworks/base/packages/SettingsProvider/res/values/defaults.xml
把 def_location_providers_allowed 设置为 gps,network 然后清理一下 SettingsProvider 的数据或恢复出厂设置就可以了！
```

## [默认值]修改make passwords visible默认为off
打开frameworks/base/packages/SettingsProvider/src/com/android/providers/settings/DatabaseHelper.java，然后查看com.android.providers.settings的数据库（一般你一点击你要修改的项，数据库的最后一项就会自动改变），你找到要修改项的名字，这个项的名字show_password，然后可以看到再loadSystemSettings中没有进行loading，所以加上loadBooleanSetting(stmt, Settings.System.TEXT_SHOW_PASSWORD, R.bool.show_password)（主要是该数据保存存在叫system的table中，所以用loadSystemSettings）;show_password到frameworks/base/packages/SettingsProvider/res/values/defaults.xml里面去加这个字符串，然后值为false

## [默认值]修改unknown sources默认为off

```
frameworks/base/packages/SettingsProvider/res/values/defaults.xml
def_install_non_market_apps
```

## [默认值]如何使vibrate默认为on

```
mediatek/frameworks/base/media/audio/java/com/mediatek/audioprofile/AudioProfileManager.java
DEFAULT_VIBRATION_GENERAL = true;
```

## [默认值]如何使dial pad touch tones默认为off

```
mediatek/frameworks/base/media/audio/java/com/mediatek/audioprofile/AudioProfileManager.java
DEFAULT_DTMFTONE_GENERAL = false;
```

## [默认值]screen lock sound默认为off (redmine36401)

```
mediatek/frameworks/base/media/audio/java/com/mediatek/audioprofile/AudioProfileManager.java
DEFAULT_LOCK_SCREEN_GENERAL = false;
```

## [默认值]默认语言

```
mediatek/config/项目名/ProjectConfig.mk
MTK_PRODUCT_LOCALES = en_GB en
```

## [默认值]默认键盘语言

```
这个是写在数据库里面的！
```

## 下载DRM的音频文件，使用google play music无法播放，原生音乐app可播放。

```
[FAQ10443] [Audio App] DRM下载的音频文件无法使用GMS play music播放。
可修改DrmMtkDef.cpp文件，把有需要打开该格式的的APK名称添加到TRUSTED_APP数组中（比如说用google play music打开该文件，就可以在这个数组里面加上apk名字.注意该apk名字eclipse中的DDMS中显示的apk名字，不是Hierarchy中显示的apk名字），
TRUSTED_APP[TRUSTED_APP_CNT]这个数组我们要把TRUSTED_APP_CNT也要加上1（可全局搜索TRUSTED_APP_CNT）
同样的，如果是视频文件，也可以使用类似的方式修改，把播放视频APK 添加到TRUSTED_VIDEO_APP中
```

## 信号跳变如何分析

```
如果是想从log里面看modem上报的信号强度，可以在radio log里面搜 : +ECSQ:，然后看第一个参数的值，如果是99为无效，其他值是越小表示信号强度越弱；
```

## 如何模拟sim卡的mcc和mnc

```
ApnSettings.java 文件中的 initSimState() 方法的最下面添加一行代码 mNumeric = "21403";就可以模拟了
现在有专门的白卡可以写mccmnc
```

## 在修改Preference上的内容之后，不会立刻刷新如何修改！

```
只要在设置好内容之后调用 notifyChanged() 就行了
```

## 获取屏幕密度

``` Java
DisplayMetrics metric = new DisplayMetrics();
getWindowManager().getDefaultDisplay().getMetrics(metric);
int density Dpi = metric.densityDpi;    //屏幕dpi
```

## 如何使桌面去掉没有app的页面

```
打开/packages/apps/Launcher3/res/values/config.xml，然后把config_workspaceMaxScreenNum改为1（相当于说再其他页都没有app的情况下，launcher最多显示一页，当然如果其他页上面也有app，当然可以多页）
config_workspaceDefaultScreen则表示默认的中间页，也就是按home键回到的那一页！
```

## [shell]linux下替换某些文件中的某些字符

``` bash
格式: sed -i "s/查找字段/替换字段/g" `grep 查找字段 -rl 路径`
sed -i "/MTK_VOLTE_SUPPORT =/s/=.*/= no/" ----->  sed -i "/查找字段/s/需要替换的字段/想要替换成的结果/
```

## 升级SettingsProvider数据库

``` Java
if (oldVersion <= 43) {
    try {
        db.execSQL("alter table " + Account.TABLE_NAME + " add column " + AccountColumns.IS_START +" integer" + ";");
        final ContentValues cv = new ContentValues(1);
        cv.put(AccountColumns.IS_START, 0);
        db.update(Account.TABLE_NAME, cv, null, null);
    } catch (final SQLException e) {
        // Shouldn't be needed unless we're debugging and interrupt the process
        LogUtils.w(TAG, "Exception upgrading EmailProvider.db from v113 to v114", e);
    }
}
```

## ToggleButton 如何设置背景

``` Java
mSundayButton.setButtonDrawable(getContext().getResources().getDrawable(R.drawable.sunday_4));sunday_4里面可以设置点击和不点击的图片(normal 和 pressed)
```
在布局文件中可以设置textOn,textOff为空 ，不然的话会在图片上出现on和off字样
android:textOff=""
android:textOn=""
drawable/sunday_4

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<selector xmlns:android="http://schemas.android.com/apk/res/android" android:exitFadeDuration="@android:integer/config_mediumAnimTime">
    <item android:state_checked="true" android:drawable="@drawable/friday_pressed" />
    <item android:state_checked="false" android:drawable="@drawable/friday_normal" />
</selector>
```

## [默认值]Chrome 第三方浏览器添加书签

```
packages/providers/PartnerBookmarksProvider/res/values 里面的两个文件进行修改!
```

## [默认值]如何修改network mode的默认值

```
frameworks/base/telephony/java/com/android/internal/telephony/RILConstants.java
该文件中的 PREFERRED_NETWORK_MODE 是默认的 network mode 的值！
```

## [Bug](相机)用闪光灯拍照声音会卡（redmine 20631）

```
原因：拍照后loading的时候一个cpu不够用，可以直接强制开启两个cpu
[FAQ12541] 拍照时强制开两个CPU
```

## soft touch 左右中快捷键（menu键出现运行的文件）（具体可参考h502s_srf中的redmine 16884）-->虚拟键

```
frameworks/base/policy/src/com/android/internal/policy/impl/PhoneWindowManager.java，加上keyCode == KeyEvent.KEYCODE_F12的判断
frameworks/base/core/res/res/values/config.xml，然后<integer name="config_longPressOnHomeBehavior">1</integer>改为2，<bool name="config_dreamsEnabledByDefault">true</bool>改为false（config_longPressOnHomeBehavior中的值每个都是有不同意思的，可以到这个文件中去看，那里有注释）
mediatek/custom/up16_sfr_h502s/kernel/touchpanel/GT9XX_V22/tpd_custom_gt9xx.h，把#define GTP_KEY_TAB     {KEY_BACK, KEY_HOMEPAGE, KEY_MENU}改为#define GTP_KEY_TAB     {KEY_BACK, KEY_HOMEPAGE, KEY_F12}
l路径:/alps/kernel-3.10/drivers/input/touchscreen/mediatek/GT9XX_V24，如果在projectConfig.mk中去搜索touchpanel，然后如果发现在前面路径中没有这个touchpanel的文件夹，这时候就需要我们去/sagereal/mk/WQ30_H556_WINONA/sr6735_65u_l1_defconfig文件去中找具体用了哪个touchpanel
M路径：kernel-3.18/arch/arm/boot/dts/sr6580_we_m.dts，在这个里面有个tpd-key-local= <158 172 88 0>;88为F12的值，139为MENU的值

ps：为什么我们不能直接在menu的以前的方法上直接改成另一种方法实现bug的要求呢？那是因为menu里面的方法是不能修改的，不然CTS是过不了的，所以我们直接把KEY_MENU改成了KEY_F12，然后在    PhoneWindowManager.java，加上keyCode == KeyEvent.KEYCODE_F12的判断，这样就会不走keyCode == KeyEvent.KEYCODE_MENU,会直接走keyCode == KeyEvent.KEYCODE_F12
```

## [默认值]修改相机 Anti-flicker 默认为 Auto

``` xml
关于相机中 Anti-flicker 默认要求为Auto,然后这个就是默认值的修改方法，如果相机配有自动功能，则选择auto，如果没有则选择下面一个
packages/apps/Camera/res/values/camera_arrays.xml
<string-array name="pref_camera_antibanding_default_array" translatable="false">
    <item>auto</item>
    <item>60hz</item>
    <item>off</item>
</string-array>
```

## 信号图标的显示（信号的具体的值）

```
frameworks/base/op/java/com/mediatek/op/telephony/ServiceStateExt.java
```

## [bug](相机)相机连拍，手松开后，仍会继续拍照（redmine22662）

```
分两种情况：
1、虽然声音和拍照张数不符合，但是不会一直连拍到40张：长按快门连拍，快门声音比拍出的照片数量多。因为目前长按快门连拍时，声音的循环播放是AP端来控制的，跟拍照的次数没有关系，所以会不同步。
2、松手后直接拍照到40张：
packages/apps/Camera/src/com/android/camera/actor/PhotoActor.java中 onKeyUp(int keyCode, KeyEvent event)
case KeyEvent.KEYCODE_CAMERA:最后面加上
mContinuousShotPerformed = false;
if (mCamera.getCameraState() == Camera.STATE_SNAPSHOT_IN_PROGRESS) {
    cancelContinuousShot();
}
```

## 修改 VoiceMail number

```
voicemail number设置
frameworks/opt/telephony/src/java/com/android/internal/telephony/gsm/GSMPhone.java
frameworks/opt/telephony/src/java/com/android/internal/telephony/gsm/SIMRecords.java

主要是再 SIMRecords.java 中的 setVoiceMailByCountry() 方法中把
//mIsVoiceMailFixed = true;  //注释掉此语句以让用户能够修改
isSetByCountry = true; 
voiceMailNum = "*77";
voiceMailTag = "Messagerie vocale";

把 voiceMailNum 和 voiceMailTag 写死
然后把这个方法下面的mVmConfig.containsCarrier(spn)判断方法去掉，该方法是当把voicemail-conf.xml写进common.mk中才能检测到，我们使用简单方法是没有把这个文件写进去的，所以把该判断方法也是去掉的！ 
```

## [bug]0005636: ITA Vodafone italy PLMN name is wrong（把plmn中的"Voda IT"改成"VODAFONE IT"）

```
M:mediatek/frameworks/base/telephony/etc/spn-conf.xml，把这个里面的"Voda IT"都改成"VODAFONE IT"
```

## (小部件)电量控制小部件无法从最大亮点切换到自动亮度（redmine 25309）,该问题是再jb3升级到kk时候出现的，原因是jb3上面是没有disable_aal这个参数，而到了kk是有这个参数的，当这个参数为0时才能正常操作

```
packages/apps/Settings/src/com/android/settings/widget/SettingsAppWidgetProvider.java中
int secureMode = Settings.System.getInt(context.getContentResolver(),Settings.System.DISABLE_AAL);改成int secureMode = Settings.System.getInt(context.getContentResolver(),Settings.System.DISABLE_AAL，0)；
```

## 在 c++ 中引用 ProjectConfig.mk 中定义的宏

```
详细如下:
AUTO_ADD_GLOBAL_DEFINE_BY_NAME:
如果你希望定义一个宏开关（作为一个功能模块的开关），然后在源文件(*.c/h等使用到这个宏开关)，比如你定义了一个XXX_SUPPORT这个宏的值只有yes和no。那么你可以在
ProjectConfig.mk中定义：
XXX_SUPPORT = yes
但是这样定义在源文件是找不到XXX_SUPPORT的，因此需要加入AUTO_ADD_GLOBAL_DEFINE_BY_NAME，加入之后就可以在源文件使用了，比如aa.c中：
#ifdef XXX_SUPPORT
......
#endif
注意：如果添加的宏的值为no/none/false（无论大小写），那么该宏不会被添加进去。

AUTO_ADD_GLOBAL_DEFINE_BY_VALUE:
同上，但是差别在于你希望将宏的值传给源文件，比如定义了：
XXX_TP = CTP#RTP or CTP
你希望在代码中去判断当前使用了RTP还是CTP，那么可以将XXX_TP加入AUTO_ADD_GLOBAL_DEFINE_BY_VALUE
这样在源文件中就可以引用了，比如aa.c中：
#ifdef CTP
......
#elif RTP
......
#endif

AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE:
它与AUTO_ADD_GLOBAL_DEFINE_BY_NAME差别在于AUTO_ADD_GLOBAL_DEFINE_BY_NAME只有定义和没有定义之分，而AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE还可以知道它的值是多少(注意这个值是字符串)，比如：
XXX_NUM = 1#1 or 2
那么加入AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE之后：
在源文件中就可以这样用(比如aa.c):
if (!strcmp(XXX_NUM, "1")) {
} else {
}
```

## [Recovery]模式中无法恢复出厂设置，即进入恢复出厂设置没有yes选项（redmine 26513）

```
bootable/recovery/recovery.cpp，打开该文件const char* items[]中把第八项往上移（该bug我们是移到第二项），然后把chosen_item != 7改成chosen_item != 1
```

## 从jb3升级到kk，音量变成原来的一半

```
因为jb3的音量最大值是7，而kk的最大值是15，所以当jb3存的音量是7时，升上去到kk后7相当于一半的音量
```

## 语言设置为阿拉伯语，添加快捷方式至桌面或删除桌面快捷图标，待机界面会先显示一下第二页再显示主页面（redmine 26599）

```
关于redmine 26599这个问题是在由于阿拉伯语显示的时候从右往左引起的，而我们其他的语言一般都是从左到右显示的
修改方法：/ddm/packages/apps/Launcher3/AndroidManifest.xml中的com.android.launcher3.LauncherApplication上有个android:supportsRtl="true"这个支持从右往左的功能，所以把这句话去掉就可以了，阿拉伯语的launcher也会从左往右    就不会这个问题了！
```

## 日历中的事件不能通过蓝牙分享（redmine 27043）

```
打开packages/apps/Bluetooth/src/com/android/bluetooth/opp/Constants.java文件，然后 ACCEPTABLE_SHARE_INBOUND_TYPES = new String[] 中加上"text/x-vcalendar",在UNACCEPTABLE_SHARE_INBOUND_TYPES = new String[]中去掉"text/x-vcalendar",这样我们手机就可以通过蓝牙分享接收了，但是分享出去的话只能是同样这样修改的手机才可以！
```

## camera拍照的的咔嚓声音的存储位置

```
adb shell -->cd /system/media/audio/ui
frameworks/av/services/camera/libcameraservice/CameraService.cpp
```

## 1、默认输入法的配置（默认输入法和默认输入法的语言）

```
kk：进入projectConfig.mk文件，搜索DEFAULT_INPUT_METHOD=com.google.android.inputmethod.latin和DEFAULT_LATIN_IME_LANGUAGES=en_US，然后如果输入法是第三方的，必须要把客户提供的第三方软件也要编进去（把该apk放到packages/apps/中，然后在build/target/product/common.mk中也加上，让它编进去）
L、M：请在APK正确预置的前提下，再修改如下
在InputMethodManagerService的systemRunning()函数， if (!mImeSelectedOnBoot) 的分支中修改如下
if (!mImeSelectedOnBoot) {
Slog.w(TAG, "Reset the default IME as \"Resource\" is ready here.");
// String preInstalledImeName = SystemProperties.get("ro.mtk_default_ime");
String preInstalledImeName = "第三方输入法的完整包名ID";
或者直接修改build.prop中的ro.mtk_default_ime属性值，也可在system.prop中增加此属性值。只要修改完后，adb shell getprop ro.mtk_default_ime能获取到正确的预置输入法ID即可。

如何修改默认输入法 请参考FAQ04327
如果按照FAQ04327修改之后不成功，JBX版本请参考FAQ06663，KKX版本请先参考FAQ12213，如果没有FAQ12213中的内容请参考FAQ06663。
如何实现把多个第三方输入法转换为系统输入法，并且在输入法设置时候勾选框默认是勾选的，请参考FAQ08909
Latin输入法怎么默认勾选几种语言，请参考FAQ06649。
Latin输入法如何添加删除某些语言的输入法，请参考FAQ08884
如何添加一个新的Latin输入法语言，请参考FAQ09620

ps：PinyinIME是mtk默认的输入法apk，LatinImeGoogle是google的输入法，两个apk必须预置其中一个
```

## SIM ME lock

```
 一、首先是要下载对应的modem代码，通过shengjun的ppt里面的方法，把该锁的运营商给锁起来（custom/service/nvram/custom_nvram_sec.c这个文件中去锁网的时候最好用一个宏去控制下，做到一个项目一个宏，比如说加个宏__UP11_DDM_A35_EI_SINGLE_TELMA_SIM_LOCK__，然后还要去定义这个宏，那么就要进入make/文件夹中，然后按照其他项目建一个自己项目的.mak文件，再该文件中去定义前面的宏，再该.mak文件中的CUSTOM_OPTION +=后面加上宏），然后用./make.sh .mak(新加的.mak文件) new去编译这个modem，然后按照excel表格去把需要的文件拿出来放到mediatek/custom/common/modem/中
ps：如果是升级下载的话必须还要修改modem的东西，不然的话升级下载后还是没有锁网现象，修改方法
1、trunk/service/nvram/src/nvram_io.c这个文件中加上
#if !defined(__SFR_H502S_SIMUNLOCK__) && !defined(__UP11_DDM_A35_EI_SINGLE_TELMA_SIM_LOCK__)
    EXT_ASSERT(KAL_FALSE, DISPLAY_ERROR(status), NVRAM_LOC_WRITE_IMPORTANT_DATA_FAIL, ldi->LID);
    return status;
#endif
#if !defined(__H5_MTN_SIMLOCK__) && !defined(__UP11_DDM_A35_EI_SINGLE_TELMA_SIM_LOCK__)
    EXT_ASSERT(KAL_FALSE, DISPLAY_ERROR(status), NVRAM_LOC_READ_IMPORTANT_DATA_FAIL, ldi->LID);
#endif
#if !defined(__H5_MTN_SIMLOCK__) && !defined(__UP11_DDM_A35_EI_SINGLE_TELMA_SIM_LOCK__)
    EXT_ASSERT(KAL_FALSE, DISPLAY_ERROR(status), NVRAM_LOC_RESTORE_SUCCESS_READ_FAIL, ldi->LID);(这句话是在kk的版本上必须修改的，不然OTA方式升级没有问题，升级下载方式升级会出问题)
#endif
（具体可以参照kk的modem）
2、trunk/interface/service/nvram/nvram_editor_data_item.h中NVRAM_EF_SML_LID_VERNO加上1，同时用自己modem的宏控制下，
如#elif defined （__UP09L_H401_DDM_SINGLE_SIMLOCK__）
#define NVRAM_EF_SML_LID_VERNO               "008"
二、除了上述的需要修改外还要在上层代码中打开SAGEREAL_SIM_ME_LOCK_SUPPORT = yes
```

## [shell]通过命令查看每个文件夹的大小

```
du -d 1 data/
```


## chip id

```
基带芯片的唯一的chip id（CPUID）
Userdata的backup和restore是读取的chip id，此id在/proc/rid，如果不一样，就不能实现不同机器的userdata backup和restore，请知悉。
```

## [术语]基带

```
Baseband 基带。信源（信息源，也称发终端）发出的没有经过调制（进行频谱搬移和变换）的原始电信号所固有的频带（频率带宽），称为基本频带，简称基带。
```

## 开机状态下拔下电池再插上电池，会自动开机

```
该功能是kk新加的功能，短时间掉电后会自动开机，因此不用修改
```

## Sim卡中的通话记录与NVRAM中通话记录的关系

```
下面通过几个关键点来介绍：
1.Sim卡和NVRAM里面都存放有通话记录，但是Sim卡由于容量限制只存放已拨记录，并且已拨记录只包含名字和号码。
2.当我们进入通话记录菜单的时侯，显示出来的通话记录是从NVRAM里读出来的，当我们产生一个新的通话时，通话记录也是更新到NVRAM里面去。
3.Sim卡的通话记录和NVRAM里面的通话记录会进行同步,这个同步的做法是,关机的时候会把NVRAM的已拨通话记录更新到Sim卡里面去,开机的时候,会先判断Sim卡是否更换，如果更换了，则会删除手机的通话记录，然后将Sim卡的通话记录复制到NVRAM里面。
4.Sim卡通话记录与NVRAM通话记录的同步是可以改变的，在10A上可以通过宏CFG_MMI_CLOG_SIM_SYNC_SUPPORT来控制，但是在10A之前没有类似的宏，所以需要手动修改代码。关机时候的同步过程是在phb_sync_handler里面完成的，所以只需定义__PHB_NVRAM_LN_ONLY__就可以免去这个过程；开机过程的同步是在phb_startup_erase_ln完成的，只要在函数前面加上两条语句直接返回即可：phb_init_ln_confirm(PHB_ERRNO_SUCCESS, control_block);
return;
```

## 在 Launcher 上隐藏某个应用

```
一、如果有APK的源码，只需修改AndroidManifest.xml文件
<activity
    android:name=".Calculator"
    android:label="@string/app_name"
    android:windowSoftInputMode="stateAlwaysHidden">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />   <!--去掉此行-->
        <category android:name="android.intent.category.APP_CALCULATOR" />
    </intent-filter>
</activity>


二、如果不能修改apk的源码，修改Launcher的代码
1. 请修改LauncherModel.java的loadAllApps()方法，如下：
    // Create the ApplicationInfos
    for (int i = 0; i < apps.size(); i++) {
        LauncherActivityInfoCompat app = apps.get(i);
        // This builds the icon bitmaps.
        mBgAllAppsList.add(new AppInfo(mContext, app, user, mIconCache, quietMode));
    }
    //mtk add begin
    mBgAllAppsList.removePackage("PackageName",user,true);
    mBgAllAppsList.added.removeAll(mBgAllAppsList.removed);
    mBgAllAppsList.removed.clear();
    //PackageName为要隐藏的包名
    //mtk add end
}
......
2. 请在LauncherModel.java的PackageUpdatedTask的run()方法开头，将mPackages变量中要求不显示的package name移除掉。 
```

## [shell]如何查看电脑的ip地址等信息

``` bash
ifconfig
```

## 快捷方式不能更新

```
快捷方式不能更新
72KK与82KK有一个共性问题，某些老版本的apk在安装后第一次打开会在Idle界面自动生成一个快捷方式，然后更新此apk，发现自动生成的这个快捷方式图标未更新，QQ新老版本就有这个问题存在；
纠其原因，是因为apk自己生成的那个虽然与应用程序图标相同，但却是一个shortcut，而我们手动拖出来放在桌面上的却是application，而源码中只判断了application，因此造成了这个现象的产生；
现已经在所有KK分支中上传；

该问题并不是很严重，目前只发现QQ满足以下三点：
1.新老版本图标不同
2.打开后会自动在桌面生成图标
3.生成的图标是shortcut类型的
如后续客户在他们自己使用apk的过程中发现了该问题，还请集成组同时更新以下代码：
packages/apps/Launcher3/src/com/android/launcher3/Workspace.java
packages/apps/Launcher2/src/com/android/launcher2/Workspace.java
```

## 如何修改某些plmn(plmn = mcc+mnc)的一些漫游或者显示的文件

```
/frameworks/opt/telephony/src/java/com/android/internal/telephony/gsm/GsmServiceStateTracker.java
N:frameworks/opt/telephony/src/java/com/android/internal/telephony/ServiceStateTracker.java
哪些PLMN（MCC+MNC）想不显示roaming图标就可以在customEhplmn中加上该主运营商和虚拟运营商的plmn就可以了（如果要把某个虚拟运营商去掉roaming图标，也要把主运营商的plmn加上去）
如果要去获取主运营商和虚拟运营商，可以早radio.log中去搜索plmn
MVNO(Mobile Virtaul Network Operator)虚拟网络运营商，没有自己的实体网络，通过租用MNO(Mobile Network Operator)的网络来提供网络服务
[FAQ10438][NW]如何设定忽略国内漫游 ---> SIM卡的MCC跟网络MCC相同时，默认设定不属于漫游，不需要修改。如果需要修改，按照该FAQ，每个平台修改方法不同
```

## [默认值]默认亮度

```
/frameworks/base/packages/SettingsProvider/res/values/defaults.xml
def_screen_brightness
def_screen_brightness_automatic_mode
```

## （信息）在收到内容只有一个“=”的信息后，手机自动重启（redmine 9870）

```
原因：
01-01 03:11:31.515 501 517 E AndroidRuntime: *** FATAL EXCEPTION IN SYSTEM PROCESS: android.server.ServerThread
01-01 03:11:31.515 501 517 E AndroidRuntime: java.lang.RuntimeException: Error receiving broadcast Intent { act=android.provider.Telephony.SMS_RECEIVED flg=0x10 (has extras) } in com.android.server.location.GpsLocationProvider$6@41676700
01-01 03:11:31.515 501 517 E AndroidRuntime: at android.app.LoadedApk$ReceiverDispatcher$Args.run(LoadedApk.java:798)
01-01 03:11:31.515 501 517 E AndroidRuntime: at android.os.Handler.handleCallback(Handler.java:800)
01-01 03:11:31.515 501 517 E AndroidRuntime: at android.os.Handler.dispatchMessage(Handler.java:100)
01-01 03:11:31.515 501 517 E AndroidRuntime: at android.os.Looper.loop(Looper.java:194)
01-01 03:11:31.515 501 517 E AndroidRuntime: at com.android.server.ServerThread.run(SystemServer.java:1303)
01-01 03:11:31.515 501 517 E AndroidRuntime: Caused by: java.lang.ArrayIndexOutOfBoundsException: length=0; index=0
01-01 03:11:31.515 501 517 E AndroidRuntime: at com.android.server.location.GpsLocationProvider.gpsTestMessageParser(GpsLocationProvider.java:1902)
01-01 03:11:31.515 501 517 E AndroidRuntime: at com.android.server.location.GpsLocationProvider.access$2400(GpsLocationProvider.java:98)
01-01 03:11:31.515 501 517 E AndroidRuntime: at com.android.server.location.GpsLocationProvider$6.onReceive(GpsLocationProvider.java:1861)
01-01 03:11:31.515 501 517 E AndroidRuntime: at android.app.LoadedApk$ReceiverDispatcher$Args.run(LoadedApk.java:788)
01-01 03:11:31.515 501 517 E AndroidRuntime: ... 4 more
说明上述原因是数组越界
修改：frameworks/base/services/java/com/android/server/location/GpsLocationProvider.java中
```

## 通过反射调用 SystemProperties

```
Class clazz = Class.forName("android.os.SystemProperties");  -->通过具体类名获取到具体的类
Method method = clazz.getMethod("get", String.class);   -->通过上面拿到的类获取到get方法（String.class是参数的类型，相当于后面的"internal_sd_path"的类型）
String path = (String) method.invoke(clazz, "internal_sd_path"); -->通过上面的类和方法获取到该方法运行后的结果（其中"internal_sd_path"为get里面的参数）
等同于
String path = SystemProperties.get("internal_sd_path");
Log.e("test", path);

ps：有时候google把某些类的方法给@hide了，这就导致我们在其他apk上无法拿到这个方法，这时候就要用到反射
@hide在新的sdk版本上越来越少，因为google会对每一个@hide的方法进行多次验证，如果验证完全没问题了就会把@hide给去掉
```

## 如何获取到phone storage的路径

``` Java
String path = SystemProperties.get("internal_sd_path")，L、M上不可用
```

## 常用运营商制式

```
中国移动：band1、band8
中国联通：band1、band8
美频：band2、band4、band5
欧频：band1、band8
```

## 预置apk的库文件

```
如果apk有库文件怎么办？
如果该apk有lib库的话，也要把这个lib给内置进去，然后android.mk文件也需要修改，具体可参照其他项目的内置lib库的apk中的android.mk（预制在system区需要这个步骤，预制在data区或者vendor下的话就会开机自动去解析lib文件，不会出现找不到lib库报错问题）
库文件加的方法:
include $(CLEAR_VARS)
LOCAL_MODULE := libLCEFnativeU
LOCAL_SRC_FILES := libs/libLCEFnativeU.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib  -->相当于把库放到system/lib中，apk要用到的时候会直接去拿
include $(BUILD_PREBUILT)
或者是把库文件拿出来放到/vendor/mediatek/项目名/artifacts/out/target/product/项目名/system/lib -->相当于把库放到system/lib中，apk要用到的时候会直接去拿

然后把 libLCEFnativeU 添加到 common.mk 或 device.mk 文件中编译


有的时候库文件太多，一个一个解析太麻烦
File file = new File("vendor/mediatek/proprietary/packages/inputmethods/KikaIME/lib");
for (String fileName : file.list()) {
    if (fileName.endsWith(".so")) {
        System.out.println("PRODUCT_COPY_FILES += vendor/mediatek/proprietary/packages/inputmethods/KikaIME/lib/"+fileName+":system/lib/"+fileName);
    }
}
```

## 解析 apk 包中的文件列表

``` Java
public static void readZipFile2(File file) { 
    try { 
        ZipFile zipfile = new ZipFile(file); //创建ZipFile对象
        System.out.println(zipfile.getName()); //打印Zip文件路径
        System.out.println("ZIP条目数：" + zipfile.size()); //打印Zip文件条目数
        Enumeration<? extends ZipEntry> en = zipfile.entries(); 
        ZipEntry entry; 
        while (en.hasMoreElements()) { 
            entry = (ZipEntry) en.nextElement(); 
            System.out.println(entry.getName()); 
        } 
        zipfile.close(); 
    } catch(ZipException e) { 
        System.out.println(file.getName() + "压缩文件错误"); 
    } catch(IOException e) { 
        System.out.println(file.getName() + "读取文件时出错"); 
    } 
}
```

## 修改recovery后怎么快速编译

``` bash
./makeMtk mm bootable/recovery/
./makeMtk -opt=ONE_SHOT_MAKEFILE=build/target/board/Android.mk r recoveryimage
然后把recovery.img单独down进去就行了
```

## Collections.sort() 排序

``` Java
Collections.sort排序
Collections.sort(appsPackageName, comparator);
举例：
ArrayList<String> aa = new ArrayList<String>();
aa.add("1");
aa.add("2");
Collections.sort(aa, comparator );
Comparator<? super String> comparator =  new Comparator<String>() {
    public int compare(String lhs, String rhs) {
        return Integer.valueOf(lhs)-Integer.valueOf(rhs);
    }
};
aa是什么类型的list，那么comparator的方法的参数就是什么类型的，比如说这个是string的list，那么生成的方法的参数就是String类型的，但是该方法返回的是一个int
如果你要排序某些string的数组，那么可以给每个string中做个数字的排序，
HashMap<String, String> hashMap = new HashMap<String, String>();
hashMap.put("packageName","aa");
hashMap.put("index", "1");
ArrayList<HashMap<String, String>> appsPackageName =  new ArrayList<HashMap<String,String>>();
appsPackageName.add(hashMap);
相当于把string中的东西放到hashMap上，然后同时在hashMap中加上一个标记位，然后标记位去通过Collections.sort(aa, comparator );进行比较
```

## 如何使data/nvram中的东西备份到bin区

```
打开 mediatek/custom/common/cgen/CFG_file_info.c 或 mediatek/external/nvram/libcustom_nvram/CFG_file_info.c 文件，然后找到aBackupToBinRegion[]这一个数组
把要备份到bin区写到这里，然后刷IMEI触动备份即可
```

## [FAQ08623]如何在滑动解锁界面添加“紧急拨号”按钮

```
如需在滑动解锁界面添加“紧急拨号”，请修改EmergencyButton.java文件onFinishInflate()方法，将mIsSecure = mLockPatternUtils.isSecure()改为 mIsSecure = true。
```

## 怎样延长锁屏界面显示时间？

```
屏灭状态，按power键，显示锁屏界面，然后又进入灭屏状态，现在显示锁屏界面，到又进入灭屏状态大概5s，怎样延长该时间到15s。
修改KeyguardViewMediator.java中的KEYGUARD_LOCK_AFTER_DELAY_DEFAULT的值
```

## [需求](Factory Mode)All the menus should be in English

```
MTK_FACTORY_MODE_IN_GB2312=no
```

## 通过反射获取 FeatureOption 中的值

``` Java
Class clazz = Class.forName("com.mediatek.common.featureoption.FeatureOption");
Field[] fields = clazz.getDeclaredFields();                 //获取这个类里面的所有变量
for (int i = 0; i < fields.length; i++) {
    if ("boolean".equalsIgnoreCase(fields[i].getType().getName())) {
        builder.append(fields[i].getName() + ":" + fields[i].getBoolean(clazz) + "\n");
    }
}
```

## IO流文件读写模板

``` Java
//读取文件方法1：
private String path = "/sys/devices/platform/pcbid/pcbid"
File file = new File(path);
BufferedReader bufferedReader = null;
if(file.exists()){
    try {
        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        bufferedReader.readLine();
        .....
    } catch (FileNotFoundException e1) {
        // TODO Auto-generated catch block
        e1.printStackTrace();
    }catch (IOException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
}

读取文件方法2：
private boolean proc_read_flash_light() {
    FileInputStream fileinputstream = null;
    byte abyte0[] = new byte[3];
    try {
        File procFile = new File("/proc/torch_config");
        if (procFile.exists() && procFile.canRead()) {
            fileinputstream = new FileInputStream(procFile);
            fileinputstream.read(abyte0);
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (fileinputstream != null) {
                fileinputstream.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    return abyte0[2] == 0x31 ? true : false;
}
    
写入文件方法1：
final File file = new File("/storage/sdcard0/jcb.txt");
try {
    FileOutputStream fileOutputStream = new FileOutputStream(file);
    fileOutputStream.write(aa.getBytes());
    fileOutputStream.close();
} catch (FileNotFoundException e) {
    e.printStackTrace();
} catch (IOException e) {
    e.printStackTrace();
}

写入文件方法2：
private void proc_write_flash_light(boolean state) {
    FileOutputStream fileoutputstream=null;
        
    byte abyte0[] = new byte[1];
    if(state)
        abyte0[0] = 0x31;
    else
        abyte0[0] = 0x30;
        
    try {
        File procFile = new File("/proc/torch_config");
        if(procFile.exists() && procFile.canWrite()) {
            fileoutputstream = new FileOutputStream(procFile);
            fileoutputstream.write(abyte0);
            fileoutputstream.flush();
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally{
        try {
            if(fileoutputstream != null){
                fileoutputstream.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

ps：新建文件的方法
private String path = "/sys/devices/platform/pcbid/pcbid";
File file = new File(path);
file.createNewFile();当然当使用new FileOutputStream(file)方法的时候也是会默认新建文件到指定路径的
```

## 如何使屏幕不灭屏

``` Java
getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);-->保持屏幕不灭屏
```

## 无法抓取log时将log写入到文件中的方法

``` Java
public static void Log(String tag, String str) {
    File file = null;
    try {
        file = new File("storage/sdcard0/log.txt");
        if(!file.exists()) {
            file.createNewFile();
        }
    } catch (IOException e1) {
        e1.printStackTrace();
    }
    if (file == null) {
        return;
    }
    FileWriter fw = null;
    try {
        fw = new FileWriter(file, true);
        fw.append("\n" + System.currentTimeMillis() + "\t" + tag + ",\t" + str);
    } catch (IOException e) {
        e.printStackTrace();
    } finally {
        if (fw != null) {
            try {
                fw.flush();
                fw.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            fw = null;
        }
    }
}
```

## watchDog的作用

```
Watchdog目的是监控系统几个比较主要的service，如果超过一定时间没有反应，认为系统出错，会强制重启Android.
```

## L项目文件获取写入权限：

```
[FAQ13635]Android L APP 如何获取sys file system 中节点的写权限+SELinux_Policy_Editing_Guideline这个文档
device/mediatek/common/sepolicy/system_app.te
```

## 手机安装apk的代码：/packages/apps/PackageInstaller/src/com/android/packageinstaller/

```
在PackageInstallerActivity.java这个Activity中：
1.首先检查所要安装的程序是否是正确的安装文件
2.判断安装应用是否设置未知来源应用的安装判断：isInstallingUnknownAppsAllowed()
3.当前系统中是否已安装了此应用程序，提示用户是否重复安装
4.还获取所欲安装的程序所将要用到的权限，然后将这些信息通过一个对话框提示给用户，startInstallConfirm()
然后当用户确定安装时，启动packages/apps/PackageInstaller/src/com/android/packageinstaller/InstallAppProgress.java，在这个Activity中，系统调用
pm.installPackageWithVerificationAndEncryption(mPackageUri,observer,installFlags,installerPackageName);-->该方法实现在packageManagerService.java中，即进行安装
```

## 结束当前程序的进程

``` Java
android.os.Process.killProcess(android.os.Process.myPid());
```

## 如何让 app 自行处理 power key

```
Power key 通常都是由 framework 自行的
app 无法拿到这个 key 值
如果想让某个 app 自行处理 power key
应该要怎么做呢?

L、M
修改PhoneWindowManager的interceptKeyBeforeQueueing方法：
....
case KeyEvent.KEYCODE_POWER: {
    result &= ~ACTION_PASS_TO_USER;
    isWakeKey = false; // wake-up will be handled separately
    //com.example.adc 为要处理power key的包名
    if (win != null && win.getAttrs() != null && win.getOwningPackage().equals("com.example.adc")) {
        return 1;// return 1事件就传给app处理
    }
    if (down) {
        interceptPowerKeyDown(event, interactive);
    } else {
        interceptPowerKeyUp(event, interactive, canceled);
    }
    break;
}
 
如果只想让power键让某个Activity处理，将以上的if条件改为：
if(win != null && win.getAttrs() != null&&win.getAttrs().getTitle().equals("xxx.xxx.xxx.xxxActivity")){
    return 1;// return 1 就会传给 xxx.xxx.xxx.xxxActivity处理
}
 
KK、JB
1: 修改 phoneWindowManager.java 的 interceptKeyBeforeQueueing 方法,在 reference line 后加入下面这段代码
case KeyEvent.KEYCODE_POWER: { //reference line
    result &= ~ACTION_PASS_TO_USER; //reference line
    // add begin
    ActivityManager activityManager = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
    try {
        if (activityManager.getRunningTasks(1).get(0).topActivity.getPackageName().equals("your_special_package_name")) { 
            //Please reset the special package name.
            result |= ACTION_PASS_TO_USER;
            Xlog.d(TAG,"detect power key in special package, pass to user!")
        }
    }catch(NullPointerException e){
        Xlog.d(TAG,"ingore a NullPointerException ..");
    }
    //add end
 
2: 同样在此分支内, 找到 else 语句段, 并找到如下位置加入
if (interceptPowerKeyUp(canceled || mPendingPowerKeyUpCanceled)) { //参考行
    if(!((result & ACTION_PASS_TO_USER) == ACTION_PASS_TO_USER)){ //加入行
        result = (result & ~ACTION_WAKE_UP) | ACTION_GO_TO_SLEEP; //原有代码
    } //加入行
}
```

## ro值修改位置（KK）

```
ro.build.display.id -->相当于版本号，可直接修改ProjectConfig.mk文件中的CUSTOM_BUILD_VERNO，CUSTOM_BUILD_VERNO1，CUSTOM_BUILD_VERNO2
ro.product.model -->/build/target/product/up29_h403_ddm.mk中
ro.product.name -->ProjectConfig.mk文件中SAGEREAL_PRODUCT_NAME
ro.product.device -->ProjectConfig.mk文件中SAGEREAL_TARGET_DEVICE
ro.product.board -->ProjectConfig.mk文件中SAGEREAL_TARGET_DEVICE
ro.product.locale.language -->/build/core/Makefile中可搜索define default-locale-language，其中后面的$是指取出的值赋值给default-locale-language
ro.product.locale.region  -->/build/core/Makefile中可搜索define default-locale-region，其中后面的$是指取出的值赋值给default-locale-region
ro.build.product -->ProjectConfig.mk文件中SAGEREAL_TARGET_DEVICE
ro.build.fingerprint --> /build/core/Makefile中可搜索BUILD_FINGERPRINT
```

## *.mk中加宏的时候

```
ifdef MTK_WEATHER_PROVIDER_APP   -->先判定是否有宏
    ifneq ($(strip $(MTK_WEATHER_PROVIDER_APP)), no)   -->再判断宏的值
        PRODUCT_PACKAGES += MtkWeatherProvider
    endif
endif

ifneq (yes, $(strip $(BUILD_CLARO_GMS)))     --> 当BUILD_CLARO_GM不是yes的情况下，怎么样，其他情况怎么样
    $(shell rm -r $(TOPDIR)vendor/claro_gms)
else
    $(shell cp $(TOPDIR)mediatek/config/$(PROJECT)/sagereal_copy/vendor/claro_gms/apps/Android_gms.mk $(TOPDIR)vendor/claro_gms/google/apps/Android.mk)
endif
ps：BUILD_CLARO_GMS在common.mk里面如果其他项目的projectConfig.mk文件中没有定义这个宏，也不会报错，直接当成no，如果是java宏的话一定要去判断ifdef BUILD_CLARO_GMS，不然某些项目没有定义这个宏，就会报错 
```

## 如何获取可用内存

``` Java
private long getAvailMemory(Context context) {
    String path = "/proc/meminfo";
    String[] arrayOfString = null;
    File file = new File(path);
    BufferedReader bufferedReader = null;
    InputStreamReader inputStreamReader = null;
    long avail_memory = 0;
    try {
        inputStreamReader = new InputStreamReader(new FileInputStream(file));
    } catch (FileNotFoundException e2) {
        // TODO Auto-generated catch block
        android.util.Log.d("jcb", "e2 =", e2);
        e2.printStackTrace();
    }
    if (file.exists()) {
        bufferedReader = new BufferedReader(inputStreamReader);
        String readLine = null;
        try {
            for(int i = 0 ; i<2 ; i++){
                readLine = bufferedReader.readLine();
            }
            android.util.Log.d("jcb", "readLine = "+readLine);
            arrayOfString = readLine.split("\\s+");
            avail_memory = Integer.valueOf(arrayOfString[1]).intValue() * 1024;
        } catch (IOException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
            android.util.Log.d("jcb", "e1 =", e1);
        }
        android.util.Log.d("jcb", "getAvailMemory readLine = " + arrayOfString[1]);
        android.util.Log.d("jcb","getAvailMemory = "+ Formatter.formatFileSize(context,avail_memory));
    }
    return avail_memory;
}
```

## 如何获取总内存

``` Java
private long getTotalMemory(Context context) {
    // 获取android当前可用内存大小
    String path = "/proc/meminfo";
    String[] arrayOfString = null;
    File file = new File(path);
    BufferedReader bufferedReader = null;
    InputStreamReader inputStreamReader = null;
    long initial_memory = 0;
    try {
        inputStreamReader = new InputStreamReader(new FileInputStream(file));
    } catch (FileNotFoundException e2) {
        // TODO Auto-generated catch block
        android.util.Log.d("jcb", "e2 =", e2);
        e2.printStackTrace();
    }
    if (file.exists()) {
        bufferedReader = new BufferedReader(inputStreamReader);
        String readLine = null;
        try {
            readLine = bufferedReader.readLine();
            android.util.Log.d("jcb", "readLine = "+readLine);
            arrayOfString = readLine.split("\\s+");
            initial_memory = Integer.valueOf(arrayOfString[1]).intValue() * 1024;
        } catch (IOException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
            android.util.Log.d("jcb", "e1 =", e1);
        }
        android.util.Log.d("jcb", "readLine = " + arrayOfString[1]);
        android.util.Log.d("jcb","getTotalMemory = "+ Formatter.formatFileSize(context,initial_memory));
    }
    return initial_memory;
}
```

## [FAQ03065]如何开启或隐藏 Navigation Bar

```
第一步：修改系统变量。
打开目录下文件：alps/device/mediatek/工程名字/system.prop
修改变量值：qemu.hw.mainkeys=0
qemu.hw.mainkeys=1   表示隐藏Navigationbar
qemu.hw.mainkeys= 0   表示显示Navigationbar
注意： 如果工程没有定义该变量，再进行第二步。否则修改结束。因系统变量优先级比配置文件高。

第二步：修改配置文件。
frameworks/base/core/res/res/values/config.xml
device/mediatek/common/overlay/navbar/frameworks/base/core/res/res/values/config.xml
修改 config 文件中的 config_showNavigationBar 的值。

隐藏Navigationbar：

<bool name=“config_showNavigationBar”>false</bool>
将这个配置信息修改为false即可。

显示Navigationbar：
<bool name=“config_showNavigationBar”>true</bool>

将这个配置信息修改为true即可。

特别的，对于O版本还要修改如下：
O版本主要是google 设计默认有navigationbar，所以没有判断mNavigationBar 这个window 为null，还请修改如下，
如果还有其他异常报错请贵司按照这个mWindowManagerService.hasNavigationBar()办法来规避即可。
frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/phone/StatusBar.java
frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/phone/StatusBar.java
public NavigationBarView getNavigationBarView() {
    // return (NavigationBarView) mNavigationBar.getView(); 修改为下面：
    boolean showNav = mWindowManagerService.hasNavigationBar();
    if(showNav) {
        mNavigationBar.onKeyguardOccludedChanged(keyguardOccluded);
    } else {
        return null; 
    }
}

public void onKeyguardOccludedChanged(boolean keyguardOccluded) {
    //mNavigationBar.onKeyguardOccludedChanged(keyguardOccluded);修改如下：
    boolean showNav = mWindowManagerService.hasNavigationBar();
    if(showNav) {
        mNavigationBar.onKeyguardOccludedChanged(keyguardOccluded);
    }
}
```

## 如何在L上预置图片且恢复出厂设置不会消失

```
先在data/media中预置图片，然后在system/vendor下面预置图片，然后在恢复出厂设置的时候去调用recovery.cpp文件，在该文件中自己写方法把system/vendor下面的图片还原到data/media下面
具体可以看/home/jiangcunbin/Desktop/sagereal资料/自己总结/他人培训/预置资源
ps:刷机进去后到开机不会进入recovery模式，也就是说不会调用recovery.cpp文件，但是在恢复出厂设置的时候是会进入recovery模式的，会调用recovery.cpp文件
提交记录：http://192.168.3.76:8007/gitweb/?p=ALPS-MP-N0.MP2-V1_SR6580_WE_N.git;a=commit;h=bb723f9be5edf6c5ccaaf04e5240d11fa6060691
```

## [shell]使用终端查看ascii码

```
在终端中输入man ascii，然后hex列代表16进制，比如说那边写的31，我们在代码中使用要写0x31;Dec列为10进制，可以直接写
```

## L项目上如何让手机能充电

```
把alps/kernel-3.10/drivers/misc/mediatek/mach/mt6735/include/mach/upmu_sw.h 文件中关闭宏 BATTERY_CDP_WORKAROUND  就可以充电了
```

## [FAQ12075]如何让 keguard run 在 com.android.keyguard 进程

```
如何让 keguard run 在 com.android.keyguard 进程
KK 上, keyguard 默认会 run 在 com.android.systemui 进程中如果需要将 keyguard run 在 com.android.keyguard 进程中，请修改

alps/frameworks/base/packages/Keyguard/res/values/mtk_config.xml
-<string name="keyguard_process_name">com.android.systemui</string>
+<string name="keyguard_process_name">com.android.keyguard</string>

PS:L上keyguard作为SystemUI的一个lib,不再是一个独立的apk,不能运行在单独的进程。
```

## 开机进入桌面，会先出现壁纸，而后状态栏空白透明，屏幕其他地方为黑色，之后进入锁屏界面。这一概率比较大

```
期望：希望不要出现状态栏透明空白，其他地方却是黑色
--- a/packages/SystemUI/src/com/android/systemui/statusbar/phone/StatusBarWindowView.java
public class StatusBarWindowView extends FrameLayout {
    onAttachedToWindow(){
    ...
    //WindowManagerGlobal.getInstance().changeCanvasOpacity(windowToken, true); 注释掉这句，设置不透明.
    setWillNotDraw(false);
} else {
    ...
}
```

## [adb]通过命令启动 Service

``` bash
adb shell am startservice -n "包名类名"   ----> service
```

## 阿拉伯语下文字布局等相反，有些布局显示不正常，可采用如下方式优化：

```
1.Androidmanifest中设置android:supportsRtl="true"， 找到显示异常的布局，将其中的left，right等标签修改为start， end标签
eg: android:layout_marginStart替换android:layout_marginLeft, android:layout_alignParentStart替换android:layout_alignParentLeft

2.图片若显示异常，可尝试将图片修改正常，放置res下带有ldrtl的文件夹中，具体根据手机分辨率放置
eg：res/drawable-ldrtl-hdpi

3.重写 public void onRtlPropertiesChanged(int layoutDirection)， 根据layoutDirection判断
layoutDirection = 1， 则为rtl
layoutDirection = 0， 则为ltr

4.可根据Configuration的getLayoutDirection()方法获取是否是View.LAYOUT_DIRECTION_RTL
RTL     right-> left
LTR     left-> right
```

## 如何去看调用的是drawable_hdpi还是drawable_xdpi等？

```
alps/device/mediatek/common/aapt/aapt_config.mk
```

## preference设置后如何保存到sharedPrefence的文件中

```
在布局文件中加上android:persistent="true"，如果为false就不会保存到sharedPrefence
```

## 系统数据库对多媒体文件已经进行了归类，我们使用它就可以了。

```
String volumeName = "external";
获取音频
Uri uri = Audio.Media.getContentUri(volumeName);
获取视频
uri = Video.Media.getContentUri(volumeName);
获取图片
uri = Images.Media.getContentUri(volumeName);
获取所有文件
uri = Files.getContentUri(volumeName);
可以看出音频，视频，图片已经完全被系统归类好了，对于apk,doc, zip等文件，我们可以根据它们的后缀在uri = Files.getContentUri(volumeName);里面进行筛选，获得我们想要的数据
```

## 系统媒体数据库无法扫描到数据

```
1.插入一张SDCARD
2.push 3000左右图片到sdcard
3.重启
4.观察发现手机不能读取到图片数据 （读取方法：Images.Media.getContentUri(“external”)获取uri, 然后读取数据库）
5.push 1首歌曲
6.重启进入music,等待扫描结束,music不能显示歌曲

根本原因是：
多媒体文件所在目录下有.nomedia文件，因此，MediaProvider会把该目录的文件识别为普通文件，具体表现是在db文件中media_type的值为0； 因此在image、video 、audio等视图中通过type查询时，是查询不到信息的。 该问题的原因就在目录中有了.nomedia文件

.nomedia产生的原因：
在MediaProvider.apk中是不会自动添加该文件的； 一般.nomedia文件是由其他apk的一些设置等操作才会添加。由于缺乏信息且无法复现，无法分析是什么产生的。
```

## Webview是用来浏览网页或浏览文件使用，使用google webview会有以下两问题：

```
1.打开中文电子书乱码
2.浏览器输入 186.148.57.28/browser/httpreq，查看UAPROFILE为Unknow
```

## [UserAgent][UA]UA相关

```
UserAgent：Http协议中的一部分，属于头域的组成部分，是一种向访问网站提供你所使用的浏览器类型、操作系统及版本、CPU类型、浏览器渲染引擎、浏览器语言、浏览器插件等信息的标识。UA字符串在每次浏览器HTTP请求时发送到服务器。
ex:browser.UserAgent = Athens15_TD/V2 Linux/3.0.13 Android/4.0 Release/02.15.2012 Browser/AppleWebKit534.30 Mobile Safari/534.30 System/Android 4.0.1;
mms.UserAgent = Android-Mms/2.0
UAProfileURL是一个相当于放在某个服务器的UAProfile的网址，如http://218.249.47.94/Xianghe/MTK_Phone_KK_UAprofile.xml
UAProfile就是上面的MTK_Phone_KK_UAprofile.xml文件，该文件中有终端机的一下信息：
1、硬件信息：制造厂商、类型、屏幕大小（像素、文字等）
2、软件信息：应用软件管理版本、SK-VM版本、MIN
UAProfile文件描述了手机的功能，包括供应商、型号、分辨率、多媒体功能、支持字符集等

[FAQ13899][VS]RTSP流媒体UA/UAProfile修改方法
[FAQ04656]如何修改Android自带浏览器的User Agent

可以查看 UA 的网址
186.148.57.28/browser/httpreq   //不可用了～
www.ua.yeswap.com
www.show-ip.net/browserinfo     //不可用了～

browser.UserAgent所在位置
alps/device/sagetel/sr6572_wet_l/custom.conf中的
#browser.UserAgent = Athens15_TD/V2 Linux/3.0.13 Android/4.0 Release/02.15.2012 Browser/AppleWebKit534.30 Mobile Safari/534.30 System/Android 4.0.1;
browser.UAProfileURL = http://218.249.47.94/Xianghe/MTK_Phone_KK_UAprofile.xml
mms.UserAgent = Android-Mms/0.1
mms.UAProfileURL = http://www.google.com/oha/rdf/ua-profile-kila.xml

//通过代码获取 UA
public String getUserAgent() {
    String user_agent = ProductProperties.get(ProductProperties.USER_AGENT_KEY, null);
    return user_agent;
}
```

## 以下是根据早前的mtk分析kazam网络问题导致modem重启得到的经验，我们也可以根据以下信息对后续的丢信号问题进行分析

```
1.在radio log中查找关键字updateDataStallInfo
如果出现连续的一片只有out的情况updateDataStallInfo: OUT
则说明网络出了问题，只有发出去的数据，却没有收到回复；
正常的应该是updateDataStallInfo: IN/OUT

2.搜索关键字onDataStallAlarm
06-04 12:09:17.374: D/DCT(1189): [0]onDataStallAlarm: tag=28495 do recovery action=3
在KK中当这个recovery action为3时，会去reset radio
在L中当这个recovery action为4时，会去reset radio
当达到次数条件时，会出现如下log：
06-04 12:10:49.618: D/DCT(1189): [0]restarting radio with gsm.radioreset to true
06-04 12:10:50.621: D/DCT(1189): [0]restartRadio: ************TURN OFF RADIO**************

3.在mainlog中同步搜索socket：
06-04 12:10:20.674: I/System.out(1550): [socket][157] connection www.google.com/216.58.221.132:443;LocalPort=36353(30000)
可以看到它都是在尝试与谷歌的地址链接，确定引起问题的原因
```

## 如何在log中分析网络是否为3g

```
打开radio_log，然后搜索“networktype =”即可
```

## 如何调整横竖屏

```
1、android:screenOrientation="landscape"（"portrait"）
2、setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
3、横竖屏切换的时候先会去调用onSaveInstanceState(Bundle outState)方法，然后切换好了onRestoreInstanceState(Bundle savedInstanceState)
注意：可以通过outState的putInt，以及savedInstanceState的getint来传输数据
4、android:configChanges="orientation"，然后切换横竖屏的时候可以去重写onConfigurationChanged(Configuration newConfig)方法
```

## 发送开机广播的位置

```
frameworks/base/packages/SystemUI/src/com/android/systemui/keyguard/KeyguardViewMediator.java  -->  onBootCompleted() 方法里面进行开机广播的发送
```

## [默认值]USB连接方式，CD-ROM

```
mediatek/config/mq16_h451_t3_p/system.prop 中搜索 ro.sys.usb.storage.type，然后在后面可以加上你想加的选择项 mtp,mass_storage
usb、mtp ：真正修改的地方：device/sagetel/$base_project/system.prop中的ro.sys.usb.storage.type值设为mtp,mass_storage，现在都用宏控，即config_usbtype=mtp,mass_storage
如何选择默认选择为usb：用宏控MTK_MASS_STORAGE = yes
cd rom：真正修改的地方：device/sagetel/$base_project/system.prop中的ro.sys.usb.bicr设为yes，现在都用宏控，即ro_sys_usb_bicr=yes
```

## [默认值]如何使Settings --> Security --> Lock screen = None

```
frameworks/base/packages/SettingsProvider/res/values/defaults.xml 中的 def_lockscreen_disabled 改为 true
```

## git 终端显示颜色

```
git config --global color.ui true
```

## L项目的falsh的配置怎么看

```
ProjectConfig.mk文件--> sagereal_memory_flash = EMMC_64_8（8G+1G）、EMMC_32_4（4G+512M）、EMMC_16GB_2GB（16G+2G）
```

## [FAQ09022]如何调整锁屏界面的背景亮度

```
锁屏和launcher一样，都是透到wallpaper上的.但是同样一张wallpaper背景图片，在锁屏界面上看起来要比launcher暗一些。这是因为锁屏界面设置了一个半透明的灰色背景色0X70000000。
如果需要调整锁屏界面的背景色，可以通过调整KeyguardViewBase.java中BACKGROUND_COLOR的值。

L上的修改参考如下:
ScrimView.java()
private float mViewAlpha = 1.0f; // 将1.0f修改为0.0f.
```

## user版本和eng版本的区别, UserDebug版本呢？？？？？

```
1.user 版本为提高第一次开机速度，使用了ART 的预优化，将dex 文件分解成可直接load 运行的odex 文件；ENG 版本不会开启这项优化，每次开机都会从apk包解析出dex文件，执行的是dex文件，降低运行速度。
2.user版本更少的LOG 打印，UART 的关闭。UART，是一种异步收发传输器。
3.ART执行的区别
user：首次开机执行一次，apk->dex->odex->被ART执行  ----->直接被优化为odex后，一直不用去apk中提取dex，直接运行odex文件就可以了，这样速度就快了
eng：每次执行，apk->dex->被ART执行
4.编译路径区别
User版：64位路径：out/.../system/app/arm64/***.odex
32位路径：out/.../system/app/arm/***.odex
User版本的32位apk在64位系统环境下编译时，默认被编译解析为64位路径。当运行时找不到其32位的默认路径，报错。在Android.mk文件中加入LOCAL_MULTILIB := 32，可以编译解析为32位路径，运行不报错。
Eng版本没有32位和64位区分，运行不报错
5、如何分辨32位和64位系统
1.ProjectConfig.mk文件中，MTK_K64_SUPPORT = yes/no
2.在sagereal/mk/项目名/full_sr67**m_**gu_l.mk中，
# Inherit for devices that support 64-bit primary and 32-bit secondary zygote startup script
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
有以上这句话的是64位系统，反之没有这句话是32位系统。
3. 在alps/device/sagetel/     sr6735m_35gu_l（32位系统）     sr6735m_65u_l（64位系统）
4. 在当前手机中查看。输入adb shell---->cd system----->ls----->看到lib(lib64)，32位系统没有lib64文件夹，64位系统含有lib和lib64文件夹
```

## sharedUserID 的使用

```
Android提供了如下的一种机制，可以使两个apk打破前面讲的这种壁垒，只有相同签名和相同sharedUserID标签的两个应用程序签名才会被分配相同的用户ID。
在AndroidManifest.xml中利用sharedUserId属性给不同的package分配相同的userID，通过这样做，两个package可以被当做同一个程序，系统会分配给两个程序相同的UserID。当然，基于安全考虑，两个package需要有相同的签名，否则没有验证也就没有意义了。
如果增加了上面的属性但没有定义与之对应的LOCAL_CERTIFICATE（android.mk）的话，APK是安装不上去的。提示错误是：Package com.test.MyTest has no signatures that match those in shared user android.uid.system; ignoring!（也就是上面说的需要两个相同的签名），例如所有和media/download相关的APK都使用android.media作为sharedUserId的话，那么它们必须有相同的签名media。
关于签名： build/target/product/security目录中有四组默认签名供Android.mk在编译APK使用： 
1、testkey/releasekey：普通APK，默认情况下使用。
2、platform：该APK完成一些系统的核心功能。经过对系统中存在的文件夹的访问测试，这种方式编译出来的APK所在进程的UID为system。 
3、shared：该APK需要和home/contacts进程共享数据。 
4、media：该APK是media/download系统中的一环。 
应用程序的Android.mk中有一个LOCAL_CERTIFICATE字段，由它指定用哪个key签名，未指定的默认用testkey（但是当MTK_SIGNATURE_CUSTOMIZATION这个宏打开后，未指定的默认的会用releasekey，不懂看第五百四十六条即可）. 对于使用eclipse编译的apk，可以使用signapk.jar来手动进行签名
platform和shared对应签名文件的key都放在alps/build/target/product/security/common下，如platform.x509.pem、platform.pk8、shared.x509.pem、shared.pk8
签名工具signapk.jar位于/out/host/linux-x86/framework 下，由alps/build/tools/signapk/生成​。

ps：当打开MTK_SIGNATURE_CUSTOMIZATION这个宏时会直接使用device/mediatek/common/security/sr6580_we_n下面的key去进行签名，如果关闭MTK_SIGNATURE_CUSTOMIZATION这个宏时会直接使用MTK默认的key去签名，即build/target/product/security下面的，device/mediatek/common/security/sr6580_we_n下面的keyplatform.x509.pem、platform.pk8等这些是梁爽做出来的，同平台的应该都是一样的

使用方法：
1、以platform为例：java -jar signapk.jar platform.x509.pem platform.pk8 input.apk output.apk (platform.x509.pem platform.pk8在build/target/product/security获取)
2、以shared为例：用 shared.x509.pem和shared.pk8来签名 Contacts.apk，重新签名之后的apk名字为Contacts_2.apk 
java -jar signapk.jar shared.x509.pem shared.pk8 Contacts.apk Contacts_2.apk 

ps：如果在AndroidManifest.xml和android.mk中都进行了修改，可以把该apk预置到手机中，这样在编译整个项目的时候会去编译这个apk，这样就会按照android.mk中的LOCAL_CERTIFICATE进行平台签名，如果不内置直接对apk进行签名，这时候就要用signapk.jar来手动进行签名，步骤在上面。

LOCAL_CERTIFICATE := PRESIGNED 表示 这个apk已经签过名了，系统不需要再次签名；

关于apk的签名
1、第三方的apk用eclipse生成后可以直接install到手机中，我们如果不再eclipse里面特地的生成签名，那就默认会使用debug的签名；当然可以直接在生成apk的时候生成有自己个人信息的正式签名
2、第三方的apk用客户提供的keystore签名，会出现两种情况，如果该apk中没有使用shareduserid，那就可以直接install到手机上；如果该apk中使用了shareduserid（system）,这时候需要在keystore的基础上再进行平台签名，才能install到手机中
3、第三方的apk直接用平台签名可以直接install到手机中
```

## 如何实现每台手机的序列号唯一？

```
KK：alps/mediatek/platform/mt65**/ kernel/core/mt_devs.c中定义CONFIG_MTK_USB_UNIQUE_SERIAL
L ：alps/bootable/bootloader/lk/app/mt_boot/mt_boot.c中定义CONFIG_MTK_USB_UNIQUE_SERIAL
M ：alps/vendor/mediatek/proprietary/bootable/bootloader/lk/app/mt_boot/mt_boot.c 中定义CONFIG_MTK_USB_UNIQUE_SERIAL

PS：在c文件中定义该CONFIG_MTK_USB_UNIQUE_SERIAL，即为#define CONFIG_MTK_USB_UNIQUE_SERIAL

FAQ10923[USB serial number客制化][系列2]：如何实现每台手机的序列号唯一？10924[USB serial number客制化][系列3]：如何修改手机序列号为Barcode ？
FAQ10925[USB serial number客制化][系列4]：如何修改手机序列号为手机型号？
FAQ10926[USB serial number客制化][系列5]：如何实现可以通过pc工具来修改serial number？
FAQ10927[USB serial number客制化][系列6]：能否实现adb devices的序列号，usb serial number, cts device ID，SN一致？
```

## [术语]UUID

```
UUID是一个128位长的数字,用16进制表示，然后是电脑随机生成的一个值，是结合机器的网卡、当地时间、一个随机数生成的，能保证3240年不重复，相当于一个永不重复的随机数
```

## 文件监听

```
当删除文件管理器上的音乐文件的时候，数据库会发生改变，可监听 Uri.parse("content://media/external/file") 这个uri的数据库
```

## permission和uses-permission的区别

```
两者之间的不同之一就是，作用域不同，在 manifest.xml文件中，<uses-permission>是和<application>同级的节点，一般<uses-permission >是在</application>后面的。但<permission>就不同了，是定义在<application>和</application>之间，和Activity、Service同级别的，同时使用 group的权限组可以大幅减少你同类型相似权限的声明。
其二可能就是<uses-permission>是官方定义的权限，<permission>是自己定义的权限。
ps：uses-permission这个是给整个apk用的权限，permission是给自己activity或者service使用的权限
```

## 如何预置wifi热点  （redmine55627）

```
kk：/mediatek/external/mtk_wifi/config/mtk-wpa_supplicant.conf
l：请在alps/hardware/mediatek/wlan/config/mtk-wpa_supplicant.conf
m:alps/vendor/mediatek/proprietary/hardware/connectivity/wlan/config/mtk-wpa_supplicant.conf
文件中增加network={} 即可。
network={
 	ssid="aaaa"
 	scan_ssid=1
 	key_mgmt=NONE
}
ps：Wifi的预置说明也可以查看/alps/hardware/mediatek/wlan/wpa_suppli_8/wpa_supplicant/wpa_supplicant.conf

ps:ps:ps:在增加这个wifi热点的时候，一定要加上节省功耗的操作，文件路径：
kk：external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant.c，在ssid_len == os_strlen("CMCC")判断之后，加上如下代码
if(ssid_len == os_strlen("MEO-WiFi.x")){
   if(os_strncasecmp(cmcc_conf->ssid,"MEO-WiFi.x",ssid_len) == 0){
       tmp = cmcc_conf->next;
       removed = 1;
       wpa_config_remove_network(wpa_s->conf, cmcc_conf->id);
       if(wpa_s->conf->update_config){
           if(wpa_config_write(wpa_s->confname, wpa_s->conf)){
               wpa_printf(MSG_DEBUG,"CTRL_IFACE:SAVE_CONFIG - Failed to update configuration");
           }else{
               wpa_printf(MSG_DEBUG,"CTRL_IFACE:SAVE_CONFIG -Configuration updated");
           }
       }
   }
}
[ALPS02441559] 预制WIFI热点造成功耗过大问题
[ALPS02399488] 预制WIFI热点造成功耗过大问题
M:external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant.c,在wpa_supplicant_init_iface
Redmine 63933[bug]wifi有时不能自动连接上
```

## 识别SIM卡的位置

```
SIM卡识别位置寻找与开机类似，我们知道SIM卡状态变化时会有 android.intent.action.SIM_STATE_CHANGED，这样我们就可以找发出此广播的地方：
alps/frameworks/opt/telephony/src/java/com/android/internal/telephony/uicc/IccCardProxy.java 其中有一个方法为 broadcastIccStateChangedIntent()
```

## 开机顺序

```
开机顺序：
IccCardProxy（在亮屏之前会有消息，在手机运行过程中sim卡状态改变也会有消息）---主要用来读取数据，也需要启动动画
doKeyguardLocked（在亮屏之前）
finishBooting（在亮屏之后一小段时间）---启动动画
```

## 如何自定义google launcher的桌面

```
自己写一个apk（比如说packages/apps/SageRealApp/GoogleHomeCustomization/），这个apk的里面是一个广播接收器，action为com.android.launcher3.action.PARTNER_CUSTOMIZATION
```

## Handler.post(runnable)和 new Thread(runnable)的区别

```
mHandler.post(mMeoRunnable);这个是没有启动新的线程，还是在原来线程中，用这个的好处主要是可以在非ui线程中修改ui
new Thread(runnable)，这个是直接启动新的线程
```

## 防止用户在最近应用程序列表中看到

```
在 activity 中请加入 android:excludeFromRecents="true" 属性
```

## M项目上关于settingsProvider是在哪里？

```
adb shell --> data/system/user/0
android N后某些数据库位置：
Google Now Launcher数据库存放位置  ---->  /data/data/com.google.android.googlequicksearchbox/databases/launcher.db
ContactsProvider ----->  contacts.db和callog.db都位于data/user/0/com.android.providers.contacts/databases
TelephonyProvider -----> data/user_de/0/com.android.providers.telephony/databases
MediaProvider -----> data/user/userid/com.android.providers.media/databases
```

## 如何设置fm、music的耳机声音提示等级

```
frameworks/base/core/res/res/values/config.xml 中的 config_safe_media_volume_index 值
```

## 手机加密默认开关方法：

```
/device/sagetel/sr6735m_35gu_l/fstab.mt6735，encryptable=/dev/block/platform/mtk-msdc.0/by-name/metadata表示默认关闭，而替换成forceencrypt表示默认开启
该文件可能位于project、platform、common下，优先级从前到后，以优先级最高的属性为准
手动开启加密方法：
1.电量在80%以上
2.连接usb或者充电器
3.设置锁定屏幕 PIN 或密码
点击加密菜单进行加密，刚刚刷的软件一般加密需要几分钟时间，加密成功后会自动重启手机，再进入菜单会显示“已加密”，菜单点击无效

此功能可以用来加密手机上的所有数据，包括 Google 帐户、应用数据、音乐和其他媒体信息、已下载的信息等。如果执行了加密操作，您每次开机时都必须输入数字 PIN 或密码。
请注意，上述 PIN 或密码与您在未加密状态下解锁手机时所用的相同，无法单独设置。
警告：加密操作无法撤消。要将手机恢复为未加密状态，唯一的方法是恢复出厂设置，但这会清除您的所有数据

三百四十四、客户希望在通话过程中我方开始录音时，对方能够收到提示音；
我们发现在通话过程中点击拨号盘会有声音发出，且对方能够听到，于是我们在通话录音开启的时候使用拨号盘的发声方式去解决此问题；
方法很简单：
alps/packages/apps/InCallUI/src/com/android/incallui/CallButtonFragment.java
在onVoiceRecordClick方法中添加如下：

Call mRecordCall=CallList.getInstance().getActiveCall();
TelecomAdapter.getInstance().playDtmfTone(mRecordCall.getId(), '0');
TelecomAdapter.getInstance().stopDtmfTone(mRecordCall.getId());
TelecomAdapter.getInstance().playDtmfTone(mRecordCall.getId(), '9');
TelecomAdapter.getInstance().stopDtmfTone(mRecordCall.getId());
TelecomAdapter.getInstance().playDtmfTone(mRecordCall.getId(), '0');
TelecomAdapter.getInstance().stopDtmfTone(mRecordCall.getId());
代码连续播放了三个键的tone，用来区分录音和普通按键音
```

## Google app安全检查

```
该项的修改在/alps/frameworks/base/packages/SettingsProvider/res/values/defaults.xml中的def_package_verifier_enable，该项需要设置为true；该项设置为true后会有一个问题，当在有数据连接或wifi的情况下安装app，大多数情况下会出现一个弹出框，详见redmine46265。而客户的sfr应用会在有网络的情况下自动下载app，因此会弹出这个框，客户要求将此框去掉，只要将该值设定为false即可，在KK上是这么做的；但是最新google认证中，需要有这个弹出框，因此将其设置为true，google认证软件以google认证优先
```

## 在 init.rc 文件里面添加回调

```
//监听 sys.camera_standby 的值，如果设置为0则把 0100 00 写入到 /proc/driver/camsensor 文件中
on property:sys.camera_standby=0
    write /proc/driver/camsensor "0100 00"

on property:sys.camera_standby=1
    write /proc/driver/camsensor "0100 01"
```

## 如何隐藏settings-->apps里面的一些apk

``` Java
packages/apps/Settings/src/com/android/settings/applications/ApplicationsState.java，在该文件中的handleRebuildList()方法中的 filteredApps.add(entry);下面加上
for(int j=0;j<HIDE_APPS.length;j++){
    if(HIDE_APPS[j].equals(info.packageName)){
        filteredApps.remove(entry);
    }
}

而
public final static String[] HIDE_APPS=new String[] {
	"com.mediatek.mtklogger",
	"com.example.factorydevelop",
	"com.example.factorydevelopx",
	"com.mediatek.ygps",
	"com.mediatek",
	"com.android.simmelock",
	"com.android.location.fused",
	"com.mediatek.engineermode",
	"com.mediatek.weather",
	"com.mediatek.appwidget.weather",
	"com.android.keyguard",
	"com.mediatek.thermalmanager",
	"com.android.printspooler",
	"com.mediatek.apst.target",
	"org.simalliance.openmobileapi.service",
};
```

## [FAQ12880]锁屏界面如何延长亮屏到灭屏的等待时间

```
默认锁屏界面无操作情况下到灭屏的等待时间是10S.如想延长锁屏界面到灭屏的等待时间, 可参考如下solution.
可以修改KeyguardViewMediator.java文件中常量AWAKE_INTERVAL_DEFAULT_MS的值:protected static final int AWAKE_INTERVAL_DEFAULT_MS = 10000;
可自行修改，但需注意:
(1)锁屏界面亮屏到灭屏的等待时间不会大于系统设置中休眠时间的值, 例如系统设置->显示->休眠中 设置为一分钟, 而AWAKE_INTERVAL_DEFAULT_MS的值为修改两分钟，则锁屏界面亮屏到灭屏的等待时间为一分钟。
(2)如果AWAKE_INTERVAL_DEFAULT_MS的值设置为小于10S, 则锁屏到灭屏的等待时间为10S.
```

## settings-->more-->Mobile networks-->Access Point Names里面的默认值

```
这些默认值都是在mediatek/frameworks/base/telephony/etc/apns-conf.xml里面设置的，具体哪项用哪句话去写（比如说要apns protocol默认为IPV4/IPV6，那就要在apns-conf.xml文件中加上protocol="IPV4V6"，至于为什么用protocol,因为这些默认值都是写在com.android.providers.telephony中的，默认的值是直接解析apns-conf.xml文件的，所以到底为什么用protocol，我们可以进入packages/providers/TelephonyProvider/src/com/android/providers/telephony/TelephonyProvider.java中getRow(XmlPullParser parser)方法去看，里面都有解析的方法）
ps：如果默认为ipv4的话，protocol="IP"；如果默认为ipv6，protocol="IPV6"；如果默认为ipv4、ipv6的话，protocol="IPV4V6"
```

## 如何抓取操作数据库的log的方法（因为操作数据库的log较大且多，所以mtklogger一般不会把这块的代码放入到mobilelog里面，要进行以下操作）

```
新建一个local.prop文件，里面填入
log.tag.SQLiteStatements=VERBOSE
log.tag.SQLiteTime=VERBOSE
log.tag.SQLiteLog=VERBOSE
log.tag.SQLiteQueryBuilder=VERBOSE
log.tag.SQLiteDatabase=VERBOSE
log.tag.SQLiteConnection=VERBOSE
log.tag.ContactsProvider=VERBOSE
log.tag.ContactAggregator=VERBOSE
log.tag.ContentService=VERBOSE
然后
adb remount
adb push ./local.prop ./data/
adb shell chmod 750 ./data/local.prop
adb reboot
添加以上log后，帮忙复现问题，抓取mobilelog来分析，并且给出复现问题时手机显示的时间。
复现后请不要再继续操作
```

## 如何看陀螺仪是否支持

```
进入projectConfig.mk文件后，搜索CUSTOM_KERNEL_GYROSCOPE即可，如何后面没有写东西，就是不支持，反之，亦然
```

## 关于modem mak文件的命名长度问题--不要超过38个字符，否则手机链接cat抓取log会出现log挂掉的情况

## IMEISV的修改   [FAQ02072]关于IMEI、IMEISV、SVN

```
IMEI(International Mobile Equipment Identity)是国际移动设备身份码的缩写，固化于手机中，每个手机的IMEI应该是唯一、不变的。
IMEI码由GSM（全球移动通信协会）统一分配，授权BABT（英国通信认证管理委员会）审受。
2004年以前的标准中，IMEI共15位（取值必须是0~9的数字），依次分别是6位TAC、2位FAC、6位SNR、1位CD校验位。
2004年以后的标准中删去了最后的1位CD校验位，新加入了2位SVN(software version number)，故称IMEISV，共16位（取值仍必须是0~9的数字）。
SVN的取值也必须是0~9的数字，而且99这个值是被保留的。
网络检查的时候会指明检查IMEI还是IMEISV，如果是检查IMEI，则手机许上报前14位IMEI（1位CD校验位不上报），如果是检查IMEISV，则手机上报16位IMEISV
1、IMEI SV 的修改，可以通过AT COMMAND ：AT+EGMR=1,9,”00”;
2、在modem端修改，custom/service/nvram/nvram_data_items.c文件中的
SYS_CACHE_ENTRY(NVRAM_SYS_SVN,
            NVRAM_APP_RESERVED,
            KAL_FALSE,
            "NVRAM_SYS_SVN",
            0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
```

## ro.product.device以及ro.product.name里面不可以有非法字符（如"."）,会导致google的play store连接不上

## [FAQ13432][Dialer]如何使拨号盘搜索支持葡萄牙文？     http://unicode-table.com/cn/#control-character

```
packages/providers/ContactsProvider/src/com/android/providers/contacts/HanziToPinyin.java中添加的
static {
    sMuiSupportMap.put('\u00c0', '2'); //   -->'\u00c0'这个unicode对应的字符可以用2搜索出来
    sMuiSupportMap.put('\u00c0', 'a'); //   -->'\u00c0'这个unicode对应的字符可以用a搜索出来

    sMuiSupportMap.put('\u00e3', 'a'); //ã
    sMuiSupportMap.put('\u00e2', 'a'); //â
    sMuiSupportMap.put('\u00e1', 'A'); //Á
    sMuiSupportMap.put('\u00c3', 'A'); //Ã
    sMuiSupportMap.put('\u00c0', 'A'); //À
    sMuiSupportMap.put('\u00c2', 'A'); //Â

    sMuiSupportMap.put('\u00e9', 'e'); //é 
    sMuiSupportMap.put('\u00ea', 'e'); //ê
    sMuiSupportMap.put('\u00e8', 'e'); //è
    sMuiSupportMap.put('\u00eb', 'e'); //ë

    sMuiSupportMap.put('\u00ed', 'i'); // í
    sMuiSupportMap.put('\u00ec', 'i'); // ì
    sMuiSupportMap.put('\u00ee', 'i'); // î
    sMuiSupportMap.put('\u00ef', 'i'); // ï

    sMuiSupportMap.put('\u00f5', 'o'); // õ
    sMuiSupportMap.put('\u00f4', 'o'); //ô
    sMuiSupportMap.put('\u00f3', 'o'); //ó
    sMuiSupportMap.put('\u00f2', 'o'); //ò

    sMuiSupportMap.put('\u00e7', 'c'); // ç

    sMuiSupportMap.put('\u00fa', 'u'); //ú
    sMuiSupportMap.put('\u00f9', 'u'); //ù
    sMuiSupportMap.put('\u00fb', 'u'); //û
    sMuiSupportMap.put('\u00fc', 'u'); //ü

    sMuiSupportMap.put('\u00ff', 'y'); //ÿ
}
具体所有的特殊字符的对应unicode值，可以看/home/jiangcunbin/Desktop/sagereal资料/自己总结/特殊字符unicode值 该文件
```

## 预置联系人的名字修改在

```
packages/apps/Contacts/src/com/mediatek/contacts/simservice/PresetContactsImportProcessor.java中的INSERT_PRESET_NAME[]
问题点：如果在恢复出厂设置后预置联系人去写入数据库时断电，就会出现预置联系人只写入一部分，这时候去重启的时候，代码端检测到预置联系人数据库已经有值（不会去管你是否完全写入），这就导致预置联系人一直丢失一部分，这时候就需要一些保护措施。
修改方法：packages/apps/Contacts/src/com/mediatek/contacts/simservice/PresetContactsImportProcessor.java文件中contactCursor != null && contactCursor.getCount() > 0下面的return修改为continue；packages/apps/Contacts/src/com/mediatek/contacts/simservice/PresetContactsImportProcessorOrange.java文件中contactCursor != null && contactCursor.getCount() > 0下面的return修改为continue；
```

## 如何关闭小区广播（Cell Broadcast）

```
在modem端修改，custom/service/nvram/nvram_cust_pack.c文件中COMMON_NVRAM_EF_SMSAL_COMMON_PARAM_DEFAULT[]项中
#if defined (__CB_SETTING_OFF__)  //redmine 36063 CB setting modify by shiyujiao 2015-07-23 begin
    0x00, 0x01,              -->关闭小区广播
#else
    0x01, 0x01,              -->打开小区广播
#endif
ps:有时候在modem端关闭小区广播后，发现插卡后刚进去是关闭的，过段时间进去就出现又打开的状态，这是去看下MTK_ETWS_SUPPORT是否关闭
```

## 当使用startActivityForResult()时，去启动一个acitivity的时候，前面千万不能有Intent.FLAG_ACTIVITY_NEW_TASK和Intent.FLAG_ACTIVITY_SINGLE_TOP，且被启动的apk

```
在androidManifest.xml文件中不可以有android:launchMode="singleInstance"，只能是默认的（也就是launchMode是standard模式），不然的话，会出现startActivityForResult()运行后，还没等到被调用的 Activity 返回，onActivityResult() 就被执行了，且返回的RESULT_CANCELED
还有一种情况：startActivityForResult(intent, 0);是第二个参数的问题，该参数必须大于0才能在返回值，并激活onActivityResult方法。
ps：也就是onActivityResult要这个有用被启动的activity只能是standard模式
```

## 短信编码方式(bit是位，byte是字节，1byte = 8bit)，短信最多输入140个字节（byte）

```
1、GSM编码 --> 7bit -->1个字节-->主要用来发送ASCII字符 --> 有abc、ABC、123、@主要是这四种类型的可以通过GSM编码发送
2、UCS2编码 --> 16bit -->2个字节-->主要用来发送Unicode字符 -->除了ASCII字符，还加上了很多国家的语言，比如汉字，所以短信发汉字用的是2个字节
1.GSM alphabet  表示用户编辑的短信内容都用7bit进行编码
如果输入的都为ASCII字符，则最多可以输入的字符数为140x8(每个字节为8位)/7(该编码方式为7位)=160，但是如果输入中存在Unicode字符，则按照Unicode的编码方式进行编码，则最多可以输入的字符数为140x8(每个字节为8位)/16(Unicode编码方式为16位)=70
2.Unicode    表示用户编辑的短信内容都用ucs2进行编码
不管输入的是ASCII字符还是Unicode字符，都是按照16位的进行计算，则最多可以输入的字符数为140x8(每个字节为8位)/16(Unicode编码方式为16位)=70
3.Automatic  先用7bit进行编码，如果有些字符无法用7bit编码（有些字符并没有在编码表里面定义），则用ucs2进行编码
如果输入的都为ASCII字符，则最多可以输入的字符数为140x8(没个字节为8位)/7(该编码方式为7位)=160，但是如果输入中存在Unicode字符，则按照Unicode的编码方式进行编码，则最多可以输入的字符数为140x8(没个字节为8位)/16(Unicode编码方式为16位)=70     （同GSM alphabet的编码方式）
由于默认的GSM alphabet和Automatic的编码方式相同，所以很多客户要求我们在选择GSM alphabet编码方式时，直接[FAQ10993]SMS内容强制用7bit编码[Orange operator]，当你输入Unicode字符时，发送出去的时候直接用“？”代替，而“？”就是ASCII字符，所以此时选择该编码方式，最多可以输入的字符数为140x8(没个字节为8位)/7(该编码方式为7位)=160
```

## 如何实现短信编码方式（M平台上）

```
[FAQ10993]SMS内容强制用7bit编码[Orange operator]
[FAQ09191]信息设置里增加让用户选择短信编码方式的菜单    ----> 里面有修改默认值的方法
vendor/mediatek/proprietary/packages/apps/Mms/src/com/android/mms/transaction/SmsSingleRecipientSender.java文件中sendMessage方法加上
SharedPreferences pref = mContext.getSharedPreferences("com.android.mms_preferences", Context.MODE_WORLD_READABLE);
String inputString = pref.getString("pref_key_sms_input_mode", "GSM alphabet");

if ("GSM alphabet".equals(inputString)) {
    mMessageText=mMessageText.replaceAll("ą","a");
    mMessageText=mMessageText.replaceAll("ā","a");
    mMessageText=mMessageText.replaceAll("á","a");
    mMessageText=mMessageText.replaceAll("â","a");
    mMessageText=mMessageText.replaceAll("ã","a");

    mMessageText=mMessageText.replaceAll("Ą","A");
    mMessageText=mMessageText.replaceAll("Ā","A");
    mMessageText=mMessageText.replaceAll("Á","A");
    mMessageText=mMessageText.replaceAll("À","A");
    mMessageText=mMessageText.replaceAll("Â","A");
    mMessageText=mMessageText.replaceAll("Ã","A");

    mMessageText=mMessageText.replaceAll("č","c");
    mMessageText=mMessageText.replaceAll("ç","c");
    mMessageText=mMessageText.replaceAll("ć","c");

    mMessageText=mMessageText.replaceAll("Č","C");	
    mMessageText=mMessageText.replaceAll("Ć","C");

    mMessageText=mMessageText.replaceAll("ê","e");
    mMessageText=mMessageText.replaceAll("ë","e");
    mMessageText=mMessageText.replaceAll("ė","e");
    mMessageText=mMessageText.replaceAll("ę","e");
    mMessageText=mMessageText.replaceAll("ē","e");

    mMessageText=mMessageText.replaceAll("È","E");
    mMessageText=mMessageText.replaceAll("Ê","E");
    mMessageText=mMessageText.replaceAll("Ë","E");
    mMessageText=mMessageText.replaceAll("Ė","E");
    mMessageText=mMessageText.replaceAll("Ę","E");	
    mMessageText=mMessageText.replaceAll("Ē","E");

    mMessageText=mMessageText.replaceAll("î","i");
    mMessageText=mMessageText.replaceAll("ï","i");
    mMessageText=mMessageText.replaceAll("ī","i");
    mMessageText=mMessageText.replaceAll("į","i");
    mMessageText=mMessageText.replaceAll("í","i");

    mMessageText=mMessageText.replaceAll("Ï","I");
    mMessageText=mMessageText.replaceAll("Î","I");
    mMessageText=mMessageText.replaceAll("Ī","I");
    mMessageText=mMessageText.replaceAll("Į","I");
    mMessageText=mMessageText.replaceAll("Ì","I");
    mMessageText=mMessageText.replaceAll("Í","I");

    mMessageText=mMessageText.replaceAll("ô","o");
    mMessageText=mMessageText.replaceAll("õ","o");
    mMessageText=mMessageText.replaceAll("ó","o");
    mMessageText=mMessageText.replaceAll("ō","o");

    mMessageText=mMessageText.replaceAll("Ô","O");
    mMessageText=mMessageText.replaceAll("Õ","O");
    mMessageText=mMessageText.replaceAll("Ò","O");
    mMessageText=mMessageText.replaceAll("Ó","O");
    mMessageText=mMessageText.replaceAll("Ō","O");

    mMessageText=mMessageText.replaceAll("û","u");
    mMessageText=mMessageText.replaceAll("ū","u");
    mMessageText=mMessageText.replaceAll("ú","u");

    mMessageText=mMessageText.replaceAll("Û","U");
    mMessageText=mMessageText.replaceAll("Ù","U");
    mMessageText=mMessageText.replaceAll("Ū","U");
    mMessageText=mMessageText.replaceAll("Ú","U");

    mMessageText=mMessageText.replaceAll("Ń","N");
    mMessageText=mMessageText.replaceAll("ń","n");

    mMessageText=mMessageText.replaceAll("Ÿ","Y");
    mMessageText=mMessageText.replaceAll("ÿ","y");

    mMessageText=mMessageText.replaceAll("Œ","OE");

    mMessageText=mMessageText.replaceAll("œ","oe");

    mMessageText=mMessageText.replaceAll("ž","z");
    mMessageText=mMessageText.replaceAll("ż","z");
    mMessageText=mMessageText.replaceAll("ź","z");
    mMessageText=mMessageText.replaceAll("Ž","Z");
    mMessageText=mMessageText.replaceAll("Ż","Z");
    mMessageText=mMessageText.replaceAll("Ź","Z");

    mMessageText=mMessageText.replaceAll("š","s");
    mMessageText=mMessageText.replaceAll("ś","s");
    mMessageText=mMessageText.replaceAll("Š","S");
    mMessageText=mMessageText.replaceAll("Ś","S");

    mMessageText=mMessageText.replaceAll("Ł","L");
    mMessageText=mMessageText.replaceAll("ł","l");
}
int codingType;
if ("GSM alphabet".equals(inputString)) {
    codingType = SmsMessage.ENCODING_7BIT;
}else{
    codingType = SmsMessage.ENCODING_UNKNOWN;
}
```

## 64位系统环境下，在eng版本中预置32位apk可以运行，在user版本中预置的32位apk运行报错？

```
原因：
1、User版本的32位apk在64位系统环境下编译时，默认被编译解析为64位路径。当运行时找不到其32位的默认路径，报错。在Android.mk文件中加入LOCAL_MULTILIB := 32，可以编译解析为32位路径，运行不报错。
2、Eng版本没有32位和64位区分，运行不报错
```

## [默认值]默认时间修改

```
72L：
alps/vendor/mediatek/proprietary/frameworks/base/res/res/values/config.xml  修改default_restore_year值

alps/frameworks/base/services/core/java/com/android/server/NetworkTimeUpdateService.java
//today.set(1, 8, mDefaultYear);
修改日月，第一位是日，从1开始，第二位是月，从0开始，即1，8代表9月1日，1月1日需要使用//today.set(1, 0, mDefaultYear);

alps/kernel-3.10/arch/arm/mach-mt6572/sr6572_wet_l/rtc/rtc-mt.h
alps/bootable/bootloader/lk/target/sr6572_wet_l/include/target/cust_rtc.h
alps/bootable/bootloader/preloader/custom/sr6572_wet_l/inc/cust_rtc.h
修改年月日，都是从1开始计数

其他平台稍微有点变化，目前设定为2016-01-01会出现夏令时变为2015-12-31的情况；
但是有些客户就是希望2016-01-01，因此出现夏令时情况的再单独与客户launcher沟通修改成其他时间；

53L:alps/vendor/mediatek/proprietary/frameworks/base/res/res/values/config.xml  修改default_restore_year值
alps/frameworks/base/services/core/java/com/android/server/NetworkTimeUpdateService.java
//today.set(1, 8, mDefaultYear);
修改日月，第一位是日，从1开始，第二位是月，从0开始，即1，8代表9月1日，1月1日需要使用//today.set(1, 0, mDefaultYear);

/kernel-3.10/drivers/misc/mediatek/mach/mt6735/sr6735_65c_l1/rtc/rtc-mt.h 
/bootable/bootloader/preloader/custom/sr6735_65c_l1/inc/cust_rtc.h

kk：
alps/vendor/mediatek/proprietary/frameworks/base/res/res/values/config.xml  修改default_restore_year值

alps/frameworks/base/services/core/java/com/android/server/NetworkTimeUpdateService.java
//today.set(1, 8, mDefaultYear);
修改日月，第一位是日，从1开始，第二位是月，从0开始，即1，8代表9月1日，1月1日需要使用//today.set(1, 0, mDefaultYear);
M:mediatek/custom/up40_h405f_sfr/kernel/rtc/rtc/rtc-mt.h
M:mediatek/custom/up40_h405f_sfr/kernel/rtc/rtc/rtc-mt6575.h
M:mediatek/custom/up40_h405f_sfr/preloader/inc/cust_rtc.h
在以上三个文件中修改即可
```

## [shell]aapt解析apk文件

```
拷贝一个alps/out/host/linux-x86/bin/aapt文件到apk同目录下
进入apk同目录打开终端，
1、chmod 777 aapt
2、./aaptdump badging DeskClock.apk  > log.txt，然后就可以在log.txt文件中看到很多该apk的数据，只是看部分apk信息建议用这个方法
./aapt l -a DeskClockGoogle.apk > log.txt  ，解析了所有的apk信息
./aapt dump resources DeskClockGoogle.apk > log_res.txt，解析了该apk的资源文件信息

aapt d permissions example.apk //显示这个apk所添加的权限
aapt d xmltree example.apk AndroidManifest.xml //查看apk压缩文件中AndroidManifest.xml内容
```

## 新建联系人时，把某些特殊的字母写入作为联系人的名字，保存后名字会变成保存的号码，即名字不会保存（redmine 62148）

```
[FAQ08018]系统语言为英语时，Contacts联系人名字含有特殊前缀后缀(Dr. Mr. Lt等)时的相关问题处理
```

## SIM卡相关问题

```
1、[FAQ02891][SIM]什么情况下显示Invalid SIM     Invalid SIM 表示注册网络，被网络reject.
2、[FAQ17655]SIM卡联系人无法收藏
3、[FAQ18208][SAT]如何不显示开机SIM卡欢迎语
4、[FAQ14489]Android L SIM卡更新语言问题
```

## 修改分区

```
如何在L、M、GO/O项目中修改分区
L、M：先进入projectConfig.mk文件中搜索sagereal_fat_config，如果后面有值就修改../sagereal/custom/fatconfig/SYSTEM2000M（sagereal_fat_config对应值命名）/partition_table_MT6580.xls；如果没有值就修改/device/mediatek/build/build/tools/ptgen/MT6580/partition_table_MT6580.xls

GO/O：alps/device/mediatekprojects/$project/BoardConfig.mk中设定：
BOARD_MTK_SYSTEM_SIZE_KB := 1024000
BOARD_MTK_VENDOR_SIZE_KB := 307200
BOARD_MTK_CACHE_SIZE_KB := 114688
```

## Tethering IPV4/IPV6相关

```
[FAQ08793]"Hotspot & tethering settings"的预设值IPv4,如何将它的預設值改為"IPv4 & IPv6"
[FAQ08603][Dialup]测试IPv6拨号失败
[FAQ15542]IPv6 tethering feature项介绍及通用配置
[FAQ13289][PAN][KK]网络共享与便携式热点设置”设为“IPv4&IPv6”，无法共享网络
[FAQ11563]请问平台是否支持IPv6？请帮忙确认IPv6相关需求是否支持?
[FAQ15292]IPv4 or IPv6 Prefer       如果同时拥有IPv4和IPv6的地址，是会默认优先上报IPv6的地址，若需要修改为IPv4 prefer，可以按如下方式修改
```

## [FAQ11564]长按Home键唤起Google Now

```
1. 修改 frameworks/base/core/res/res/values/config.xml
<integer name="config_longPressOnHomeBehavior">2</integer>
注：这里的值可以设置三个
1代表唤起recent app界面；
2代表唤起搜索界面（Google Now)；
3代表Nothing
```

## 通过fota升级一些nvram，必须修改lid的值

```
1、锁网的lid是在modem端的interface/service/nvram/nvram_editor_data_item.h文件中的NVRAM_EF_SML_LID_VERNO
2、音频参数的lid是在mediatek/custom/up16_h502s_meo/cgen/inc/Custom_NvRam_LID.h文件中的AP_CFG_RDCL_FILE_AUDIO_LID_VERNO值(kk)
vendor/mediatek/proprietary/custom/sr6580_weg_l/cgen/inc/Custom_NvRam_LID.h文件中的AP_CFG_RDCL_FILE_AUDIO_LID_VERNO值(L)
PS:[FAQ14500][Audio Common] OTA升级音频参数后如果不恢复工厂设置也能生效
3、小区广播的lid是在interface/service/nvram/nvram_editor_data_item.h文件中的NVRAM_EF_CB_CH_INFO_LID_VERNO
4、IMEISV的lid是在interface/service/nvram/nvram_editor_data_item.h文件中的NVRAM_EF_IMEI_IMEISV_LID_VERNO
```

## 通过IMEI算解锁码

``` Java
String imeiCode = "354648020000251";
for (int i = 0;i<8;i++) {
    int sum = 0;
    for (int k = 0 ; k < 8; k++) {
	    sum+=Integer.parseInt(imeiCode.charAt(i+k)+"");
    }
    System.out.print(sum%10);
}
```

## 开机向导引起灭屏时间问题

```
文档位置/home/jiangcunbin/Desktop/sagereal资料/自己总结/GMS认证/GMS包引起问题分析_new/开机向导引起灭屏时间问题.txt
开机向导正常整个过程就是 60000->121000->60000，在开机向导界面拔掉电池，这个行为是第二次时把121000->60000这个过程破坏了。导致开机向导没能把这个值修改回来。
而我们的修改方式就是把60000->121000这个过程就不让走。这样自然就不会把这个时间给修改了。修改文件在frameworks/base/packages/settingsprovider/src/com/android/providers/settings/SettingsProvider.java文件中的isRedundantSetValue方法中加上
if (name.equals("screen_off_timeout")&&value.equals("121000")) {
    return true;
}
```

## [adb]更新数据库命令

```
update secure set value = 1 where name="device_provisioned";
```

## 如何让user的也默认打开mtklog

```
L：alps/vendor/mediatek/proprietary/external/xlog/tools/mtklog-config-user.prop
M/N：alps/device/mediatek/common/mtklog/mtklog-config-bsp-user.prop
把这两个文件中的值都改为true
```

## 开机向导wifi skip置灰

```
sagereal资料/自己总结/GMS认证/GMS包引起问题分析_new/FAQ18056.pdf
5.1_r3版本,按钮置灰一段时间后可以恢复,点击即可跳过  -->  主要因为GmsCore的3个dex文件做dex2oat时间太长导致,由于手机防盗功能,开机向导在wifi设置界面需要判断FRP的状态来决定是否一定需要网络来登录Google账户验证,FRP状态需要通过GmsCore的FrpService获取,而FrpService需要等待GmsCore的3个插件dex文件做dex2oat完成后才能启动.如果在开机向导的wifi设置界面,FrpService还没有启动起来,那么这个时候skip按钮就是置灰的;需要一直等待FrpService启动后获取到正确的FRP状态后skip按钮才可以点击
6.0_r2版本,按钮置灰不能恢复,则此次开机一直不能跳过  -->   M版本GmsCore第一次运行时并不需要再做dex2oat,可是SetupWizard的机制有所变化,即:SetupWizard通过asyncTask调用GmsCore获取FRP Status,如果10s未返回结果则cancel掉此asyncTask(通过中断线程执行直接cancel,同时抛出InterruptedException异常),且设置必须要网络连接才可以进行下一步
对于性能不够好的机器,10s有可能线程未能及时finished,则会导致开机向导状态错误

ps：当打开数据流量的时候，不会按照上面描述的去走，会去连接google的服务器；当没有打开数据流量的时候，会通过上面的描述去走
```

## Play Store 无法连接 log 分析

```
10-08 14:00:04.374197: E/CheckinTask(1063): Checkin failed: https://android.clients.google.com/checkin (request #0): java.io.IOException: Rejected response from server: invalid hardware identifier: "Andy5.5EI" is not a valid device
从log中可以明确的知道Andy5.5EI这个名字是不被play store认可的，所以ro.product.device以及ro.product.name两个值是不能带有空格或“.”这样的字符
```

## 手机可以发送flac格式的音频文件，但不能接收（redmine57636）

```
packages/apps/Bluetooth/src/com/android/bluetooth/opp/Constants.java 文件中 ACCEPTABLE_SHARE_INBOUND_TYPES 中加上 application/x-flac
```

## 如何把window里面的txt文件转换为linux系统下的文件（不转换会显示乱码）

``` bash
iconv -f gb18030 -t utf8 file1 -o file2
```

## [默认值][bug](名称)WIFI直连名称显示错误

```
kk：frameworks/base/wifi/java/android/net/wifi/p2p/WifiP2pService.java文件中的getPersistedDeviceName()方法
L：frameworks/opt/net/wifi/service/java/com/android/server/wifi/p2p/WifiP2pServiceImpl.java文件中的
```

## [默认值][FAQ04794]如何修改默认数据连接开关(前提是数据库的默认值loadSetting(stmt, Settings.Global.MOBILE_DATA要修改好)

```
L(单卡)：frameworks/opt/telephony/src/java/com/mediatek/internal/telephony/dataconnection/DataSubSelector.java文件subSelectorForOm(Intent intent)方法中
turnOffNewSimData(intent);  -->运行后关闭，不运行就是打开

L(双卡)：把上面的修改后在修改后面的
frameworks/opt/telephony/src/java/com/android/internal/telephony/dataconnection/DcTrackerBase.java文件handleMobileDataSettingNotFound()方法中
Settings.Global.putInt(mResolver, Settings.Global.MOBILE_DATA + phoneSubId, 0);-->关闭
Settings.Global.putInt(mResolver, Settings.Global.MOBILE_DATA + phoneSubId, 1);-->打开
```

## [默认值]修改蓝牙显示名称

```
mediatek/config/up39_h455_coppel/custom.conf 文件中 bluetooth.HostName 中
```

## 如何让每个apk里面的menu通过三个点显示出来

```
frameworks/base/core/res/res/values/config.xml 文件中的 <integer name="config_overrideHasPermanentMenuKey">0</integer> 值改为2
```

## [FAQ04312][默认值]如何修改默认字体大小 Settings-->Display-->Font size

```
L:frameworks/base/core/java/android/content/res/Configuration.java 中的 setToDefaults() 方法中的 fontScale 值，1.0f 为 normal，0.9f 是 small
Android系统中在Settings->Display->Font Size设置系统字体大小，默认的系统字体大小为普通(Normal)，如果修改默认值，可以在下面这个文件中进行修改：
在alps/frameworks/base/core/java/android/content/res/Configuration.java文件中如下
public void setToDefaults() 这个方法中进行修改，
如:把默认字体要改为超大，把fontScale值改为1.15f，然后重新build framework.jar这个模块即可；
public void setToDefaults() {
fontScale = 1.15f;  //normal value is 1
mcc = mnc = 0;

注意：Settings中系统的字体大小，在/packages/apps/Settings/res/values/arrays.xml文件中的”entryvalues_font_size”这个tag中定义
Small:0.9
Normal:1.0
Large:1.1
Extra Large:1.15

fontScale值必须是上述中的一个。

N版本上默认字体大小修改如下：
（1）将/frameworks/base/core/java/android/provider/Settings.java文件中的DEFAULT_FONT_SCALE修改为所需要设置的值。
（2）将/frameworks/base/packages/SettingsProvider/src/com/android/providers/settings/SettingsHelper.java文件中如下位置的1.0f，修改为所需要的值。
case Settings.System.FONT_SCALE:
return Settings.System.getFloat(mContext.getContentResolver(), name, 1.0f) != 1.0f;

字体大小值 entryvalues_font_size 的定义，在N版本上 packages/apps/Settings/res/values/arrays.xml 文件中定义如下：
<string-array name="entryvalues_font_size" translatable="false">
    <item>0.85</item>
    <item>1.0</item>
    <item>1.15</item>
    <item>1.30</item>
</string-array>

在设置所需的字体大小时请参考 entryvalues_font_size 的定义。
```

## [FAQ12292]浏览器下载文件无法打开

```
浏览器下载文件时，有时会遇到下载后文件无法打开，比如ogg，3gp等格式，或者下载的apk无法安装等问题。这类问题一般是sever返回的mimetype有问题，导致打开时，发往其他app的Intent不能被正常处理。例如无法安装apk文件，一般通过搜索关键字"DownloadManager",会搜到类似如下的log:

06-27 14:20:15.364   919   919 W DownloadManager: Failed to start Intent { act=android.intent.action.VIEW dat=content://downloads/all_downloads/9 typ=application/octet-stream flg=0x3 }: android.content.ActivityNotFoundException: No Activity found to handle Intent { act=android.intent.action.VIEW dat=content://downloads/all_downloads/9 typ=application/octet-stream flg=0x3 }

从log信息可以看出：mime typ=application/octet-stream 不能被处理。
主要原因是：下载apk时，server返回application/octet-stream,不是标准的mimetype: application/vnd.android.package-archive,
导致htmlviewer无法打开该inent. 这类一般是server issue，若server返回的是标准的：application/vnd.android.package-archive就不会有
这样的问题.

[SOLUTION]
先确认无法打开文件的正确mime type，然后在DownloadHandler.java中的DownloadStartNoStream()作特殊处理。将sever返回错误的mime强
制修正成正确的mime type即可。下面给出以无法打开apk为例的修改方案，同理，其他格式的文件也是类似的。
修改文件：\packages\apps\Browser\src\com\android\browser\DownloadHandler.java
修改方法：onDownloadStartNoStream()

具体修改：
public static void onDownloadStartNoStream(Activity activity, String url, String userAgent, String contentDisposition, String mimetype, String referer, boolean privateBrowsing, long contentLength) {
    String filename = URLUtil.guessFileName(url, contentDisposition, mimetype); 
    Xlog.d(XLOGTAG, "Guess file name is: " + filename + " mimetype is: " + mimetype);

    // modify start:   change Mime for apk
    if (filename.endsWith(".apk") && mimetype.equal("application/octet-stream")) {
        mimetype = "application/vnd.android.package-archive";
    }
    // modify end
}
```

## M或者L项目的init.rc文件路径

```
alps/device/mediatek/mt6580/init.mt6580.rc
```

## 如果开机向导结束后到launcher起来之间有黑屏出现该怎么办？

```
去除Provision这个apk，sagereal_remove_apps=Provision
```

## 3G/2G preferred 和 3G/2G auto 的区别

```
3g/2g preferred这个模式是指3g优先，就是说只要有3g的网络，哪怕3g的信号很差，手机也会挂载到3g的，如非3g的信号一点都没有了，才会跳转到2g的；3g/2g auto这个模式是指当3g的网络信号差的时候，会自动的切换到2g去
```

## [adb]显示所有apk的包名等信息的adb命令

``` bash
adb shell pm list packages -f  ---> 显示所有apk的包名
adb shell pm list packages laun ---->显示包含“laun”的包名
-f：查看关联文件，即应用apk的位置跟对应的包名（如：package:/system/app /MusicPlayer.apk=com.sec.android.app.music）
-d：查看disabled packages
-e：查看enable package
-s：查看系统package
-3：查看第三方package
-i：查看package的对应安装者（如：1、 package:com.tencent.qqmusic installer=null 2、package:com.tencent.qqpim installer=com.android.vending）
-u：查看曾被卸载过的package。（卸载后又重新安装依然会被列 入）
```

## 如何把apk预置到system/priv-app?
 
```
Android.mk 中把 LOCAL_PRIVILEGED_MODULE := true，不写即为false，默认会预置到system/app下面
```

## [ICU][翻译]ICU相关

```
很多字符串翻译的都在icu资源中，在external/icu/icu4c
[FAQ04011]如何编译ICU资源，按照编译出来后，可以直接进入adb shell --> cd system/usr/icu中，用external/icu/icu4c/source/data/out/tmp/icudt55l.dat把替换掉
```

## 有些项目工厂测试中imei和imsi都为null

```
把TelephonyManagerEx tm = TelephonyManagerEx.getDefault();修改为 TelephonyManager tm1 = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
```

## [FAQ05658]手机解锁后，如果用户未处理未读信息/未接电话等notification，如何使指示灯继续闪烁。

```
当M平台上时，除了要注释掉文档里面的那句话以外，如果要求亮屏的时候也会闪烁的话，要在frameworks/base/services/core/java/com/android/server/notification/NotificationManagerService.java文件中的updateLightsLocked()方法中注释掉mScreenOn的判断
```

## [FAQ07381][Aduio Common]APP层如何控制loopback开启或关闭

```
AudioManager audiomanager = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
audiomanager.setParameters("SET_LOOPBACK_TYPE=1,3");
其中中传入的两个参数意义如下：
第一个参数表示input device，1，2，3分别代码main mic，耳机mic，sub mic(dual mic项目才有效)
第二个参数表示output device，1，2，3分别表示听筒，耳机，喇叭
根据需要进行组合即可
closeMic = "SET_LOOPBACK_TYPE=0"  --> 代表关闭对应的通路
```

## 如何让紧急拨号后显示在call history(通话记录)里面

```
M：packages/services/Telecomm/res/values/config.xml文件中修改allow_emergency_numbers_in_call_log即可
N：frameworks/base/telephony/java/android/telephony/CarrierConfigManager.java文件中把sDefaults.putBoolean(KEY_ALLOW_EMERGENCY_NUMBERS_IN_CALL_LOG_BOOL, false)修改为sDefaults.putBoolean(KEY_ALLOW_EMERGENCY_NUMBERS_IN_CALL_LOG_BOOL, true)。
```

## 如何修改开机过程中的黑屏问题

```
eservice：ALPS02795990
[FAQ18016]L/M版本开机黑屏问题区分

1、L版本开机时，kernel logo与开机动画之间闪一帧黑屏，这个现在在kernel logo与开机动画相同并且开机动画是静态的时候表现的尤其明显,目前主要体现在455 digicel和5012 digicel项目上！-------> [FAQ14488]kernel logo到开机动画之间闪现黑屏（L）----> 这个现象是因为，在BootAnimation开始绘图之前，会先做一次clear screen的动作，避免出现前面的图干扰到BootAnimation的显示。这是Google default design，虽然不可避免，但是可以优化。
ps：在该FAQ上有很多修改的点，但是 目前我们基本上是使用的bool BootAnimation::movie()函数，之后如需修改可修改在bool BootAnimation::movie()中。

2、N项目上，（1）开机动画结束后，概率性闪现灰屏  （2）刷机后开机到语言界面时，有灰屏出现，这些在N上的项目是正常的，原因如下：   redmine86991
Google在N上新增了Direct boot（file base encryption）feature，为了配合这个feature，定义了开机过程中的一个状态：user_unlocked, 指用户设置了锁屏，重启/开机第一次解锁（即使没有设置锁屏，也会经过user_unlocked的状态）。在user unlocked之前，只有定义了 encryption-aware=true的组件能被叫起，Launcher没有定义这个flag，所以无法被PMS查询到，AMS无法先启动Launcher；Fallbackhome有定义这个flag，即使优先级是-1000，但是PMS只能找到这个activity响应HOME intent，所以会先启动Fallbackhome。
Google设计Fallbackhome的主要原因就是在user unlocked之前，必须至少要有个activity响应HOME intent，比如Launcher没有定义encryption aware，那么就需要Fallbackhome先起来。目前平台还没有找到比较根本的解决办法，google在MR1上也有增加一个patch来改善，但是也是治标不治本，用一个processing的dialog来缓解黑屏的体验，但是仍然会有黑屏。
```

## [VOLTE]如何配置VOLTE

```
首先要向mtk申请相应的patch，然后要对其进行配置，那么如何配置呢？
1、进入online，然后 MediaTek On-Line> Quick Start> IMS功能专区(VoLTE/VoWifi/ViLTE)，在该功能专区可知，（1）如果你只要弄一个运营商的话，可以看里面的IMS Configuration,对应的可以SBP ID在可在[FAQ17597]各运营商IMS feature参数配置查看；（2）如果你要配置多个运营商能自由切换的话，可以看Dynamic SBP(D-SBP),在该项最下面有如何配置的分析
How to Enable DSBP

Under device/mediatek path
[Project_Name]/ProjectConfig.mk, e.g. k55v1_64_om_lwg_volte_ss/ProjectConfig.mk
Set MTK_IMS_SUPPORT = yes             --->37M上默认打开
Set MTK_VOLTE_SUPPORT = yes           --->37M上默认打开
Set MTK_DYNAMIC_SBP_SUPPORT = yes
Set MTK_MD_SBP_CUSTOM_VALUE = 0
Set OPTR_SPEC_SEG_DEF = NONE       -----> 同时要检查persist.operator.optr也要为空

Under kernel-3.xx/arch/arm64/configs path
[Project_Name]_defconfig, e.g. k55v1_64_om_lwg_volte_ss_defconfig
Set CONFIG_MTK_MD_SBP_CUSTOM_VALUE = "0"

[Project_Name]_debug_defconfig, e.g. k55v1_64_om_lwg_volte_ss_debug _defconfig
Set CONFIG_MTK_MD_SBP_CUSTOM_VALUE = "0"

ps:SBP ID在M平台上用16进制，在N平台上要转化为10进制

VOWIFI 如何配置
1、 MTK_MD_SBP_CUSTOM_VALUE = 0	
2、MTK_MULTIPLE_IMS_SUPPORT = 2（双卡配置为2,单卡配置为1）
3、MTK_WFC_SUPPORT = yes

注意点：
doro 智能机项目 客户反馈，在插卡情况下，拨打紧急号码，并快速挂断，多次后会出现挂不断现象，MTK 回复是由于打开了跟volte相关的两个宏：
MTK_VOLTE_SUPPORT=YES
MTK_IMS_SUPPORT=YES
MTK原始代码对volte是没有配置的的，但是却开着这两个宏，如果当地网络支持IMS功能，手机就会出现挂不断现象。
为了防止再次出现这个问题，请各位以后带项目的时候，检查一下这两个宏，如果项目没有配置volte，请将
MTK_VOLTE_SUPPORT =no，
MTK_IMS_SUPPORT=no

问题：客户场测发现，插入当地卡，无法显示VOLTE
原因：OPTR_SPEC_SEG_DEF = NONE，但是persist.operator.optr设置成CUST，才出现这个问题！只要persist.operator.optr变为空就行
```

## [小区广播]SAE（紧急小区广播）

```
具体可看redmine39255
文件在 alps/vendor/mediatek/proprietary/packages/apps/CMASReceiver
```

## [小区广播]国内使用8960模拟小区广播功能

```
因为中国大陆地区的运营商不支持小区广播，所以只能通过使用仪器的方式模拟测试小区广播。以下文档说明如何使用Agilent 8960仪器测试GSM 小区广播

测试需要用到以下设备材料，请提前准备好：
1，一台支持小区信令测试的射频综测仪：Agilent 8960/R&S CMW500等（下面的SOP以Agilent  8960为例）
2，测试仪器对应的白卡（一张和仪器配套的SIM卡），以及用于连接手机和仪器的射频线
3，一台支持小区广播功能的测试手机

Step-by-step guide
1，手机插入白卡，然后开机，确保小区广播开关处于开启状态
2，按开关按钮启动8960仪器
3，仪器启动完成之后点击仪器面板上的System Config按钮进入系统配置界面
4，在配置界面查看当前运行的Application，确认当前运行的是“GSM/GPRS Lab App”,如果不是该应用请通过UI上的“Application Switch”切换到该应用（切换应用会自动重启仪器）。
5，按操作面板上的“Call SETUP”按钮，进入Call Setup Screen，然后按“Active Cell”按钮，选择Operation Mode为"Active Cell(GSM)"
6, 完整以上配置之后，再将手机和仪器通过射频线连接（注意当前测试的是GSM，请连接到手机上的GSM的射频口）
7，等待手机注册到仪器，注册上之后在手机的状态栏可以看到信号图标。
     如果长时间没有注册上网络，可以在手机上通过开启飞行模式再关闭的方式触发手机端的驻网流程
8，确认注册上网络之后在Call Setup 界面按“1 of 4” 按钮翻到下一页，选中“Short Message Service”
9，进入"Short Message Service"界面，选中“CellBroadcast”
10，进入“Cell Broadcast”界面，可以通过Message Setup设定CB信息的“Geographical Scope”/"Message Code"/"Message Identifier"/DCS/content等信息.
11, 按“Start Cell Broadcast”按钮仪器就会下发设定的CB Message给手机。
```

## [adb]如何切换selinux的模式

```
adb shell setenforce 0(宽容模式，permissive);
adb shell getenforce可以获取当前的selinux的模式
```

## 如何设置省电模式/[Bug](显示)更换电池，原先低电量保护显示机制不会消失(redmine76107)

```
后面的这个问题是由于没有默认设置低电量level值的原因（数据库已经存在，只是没有默认值），frameworks/base/packages/SettingsProvider/src/com/android/providers/settings/DatabaseHelper.java中加入loadIntegerSetting(stmt, Settings.Global.LOW_POWER_MODE_TRIGGER_LEVEL,
R.integer.def_low_battery_level);即可
其次，设置最低电量等级的是Settings.Global.LOW_POWER_MODE_TRIGGER_LEVEL这个数据库，直接去设置数据库即可

如何在settings-->battery-->menu-->battery saver中低电量level的值，首先在packages/apps/Settings/res/values/arrays.xml中battery_saver_trigger_values值，可以去新加或者去修改，然后在packages/apps/Settings/src/com/android/settings/fuelgauge/BatterySaverSettings.java文件中onActivityCreated(Bundle savedInstanceState)方法中的new SettingPref中的默认值参数（这个去设置的时候必须是battery_saver_trigger_values中的其中一个才有效，因为他会去遍历这个battery_saver_trigger_values数组），也就是说哪怕没有设置默认值，当进入这个文件也会去设置上面数据库的值，所以我们在刚刷机后去进行默认值的设置的时候最好跟你settings中去重新设置的是一样的，这样就可以保持一致性。
```

## git 清空环境

``` bash
git reset --hard HEAD && git clean -xdf && git pull && git status
```

## 如何在静音模式下也有截图以及拍照声音

```
1、frameworks/base/core/res/res/values-mcc404/config.xml中的config_camera_sound_forced 的值设置为true，强制使用拍照声音
如果设为false的话，会跟着情景模式走，当静音模式的时候就不会出现截图和拍照声音，如果是户外模式的时候就会出现截图和拍照声音
2、也可以audioservice.java里的 readCameraSoundForced()， 返回结果强制返回一个false。
```

## OMACP

```
Omacp是一个功能，相当于是运营商给你发一个ota指令或者一条短信，你点击短信后会自动去更新运营商要求你更新的apn
1、现有的状态：接收到Omacp后作为新的APN直接添加到数据库中，如有你要直接接收到Omacp设置APN信息后,用新的APN替换原有的APN，请参考[FAQ18292]Omacp Apn信息替换原有APN
2、[FAQ09453]Omacp协议版本及可以支持的配置内容
3、如果要有该功能的话，要打开MTK_OMACP_SUPPORT、MTK_OMADRM_SUPPORT、MTK_OMA_DOWNLOAD_SUPPORT的宏
4、在某些国家Email参数SMTP不同，导致在收到Omacp message中含有Email参数的时候，配置无法安装。Omacp出错log如下：
ActivityManager: Broadcast: Intent { act=com.mediatek.omacp.settings.result (has extras) } ordered=false callerApp=ProcessRecord{40b3cbd8 6138:com.android.email/10014}
Omacp/OmacpMessageSettingsDetail: OmacpMessageSettingsDetail result received, appId is : 25 result is : false
可参考[FAQ11680]由于Email参数SMTP_APPID不同，导致Omacp配置email失败的修改方法
5、要接收到omacp的短信，一般都要有自己源生的短信apk，如果用google短信是不行的，如果只有google短信，修改OmacpMessageNotification.java的updateNotification函数,将
otherAppContext = context.createPackageContext("com.android.mms",Context.CONTEXT_IGNORE_SECURITY);修改成otherAppContext = context.createPackageContext	("com.google.android.apps.messaging",Context.CONTEXT_IGNORE_SECURITY);
```

## 如何使<32M,手机内存就不能push或者复制进去东西

```
FAQ14938 关于文件系统空间预留的说明  --->可以修改第一点以及data区那个点即可实现，即kernel-3.18/fs/ext4/super.c文件中把resv_clusters = min_t(ext4_fsblk_t, resv_clusters, 4096)改为resv_clusters = min_t(ext4_fsblk_t, resv_clusters, 8192)，同时device/mediatek/mt6735/init.mt6735.rc文件中把exec /system/bin/tune2fs -O has_journal -u 10010 -r 4096 /dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/userdata修改为exec /system/bin/tune2fs -O has_journal -u 10010 -r 0 /dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/userdata
```

## 如何关闭多用户功能

```
设置为如下：
MTK_2SDCARD_SWAP = yes(这个可能可有可无)
MTK_OWNER_SDCARD_ONLY_SUPPORT=no
sagereal_add_multiuser = no
config_enableMultiUserUI = false
config_multiuserMaximumUsers = 1

[FAQ13688]【Multi-user】如何在L版本上打开Multi-user？
[FAQ18300]如何确认M版本上Multi-user的配置是否ok？
[FAQ13578]Multi-user模式下，user A设置的闹钟，在user B有铃声无画面，无法关闭
[FAQ14403]【multi-user】android 5.1 如何打开 android.software.managed_users 功能
```

## 通话 log 抓取

```
当通话时出现问题，该抓取什么log（一般抓取vm log即可）
通常Speech测试，提供一般通话log即可，如果有通话无声问题在确认为非网络原因导致，则需要按照通话无声重新提供log。
VM log抓取：按*#*#3646633#*#*进入工模/Hardware Testing/Audio/speech logger,勾选上Enable speech log+EPL(Enhanced PCM Log),打开vmlog后每打一通电话便会在mtklog/audio_dump中生成一个*.vm文件，其以通话开始时间命名。
```

## 蓝牙 log 抓取

```
当关于蓝牙的时候的bug，应该抓取什么log ---->hci log
HCI(Host Controller Interface，主机控制接口) HCI,属于蓝牙协议栈的一部分。
蓝牙规范包含了一个符合标准的接口定义(主机控制器接口),它适用于蓝牙通讯模块的硬件部分。此定义描述了位于HCI驱动程序(主机的一部分,也即蓝牙通讯模块的使用者)和主机控制器固件(蓝牙通讯模块本身的一部分)之间的接口
settings->developer options->enable bluetooth snoop hci log->勾选

路径位置：不同平台位置有所不同：
M平台：/sdcard/mtklog/btlog/
L平台：adb命令：/data/@btmtk/
```

## [gps][FAQ05622]GPS问题所需要录制的log及方法

```
对于通常遇到的GPS问题，需要录制什么log，以及如何录制。

[SOLUTION]
对于GPS问题，请提供mobile log和GPS debug log。
log 抓取办法如下：
1. 进到工程模式，打开YGPS。
2. 点击“NMEA Log->Enable dbg2file [Need Restart]”按钮和“NMEA Log->Enable dbg2ddms [Need Restart]”按钮。
3. 退出YGPS，间隔至少3s后，再进入GPS应用程序（如导航软件，YGPS）开始测试，这样才能确保操作生效。
4. log最后会存放在手机的/data/misc/gpsdebug.log.xxx，测试完后请将log提供给我们分析。
5. 附上log的同时也请告知复现问题的操作步骤以及复现问题的时间点，如hh:mm:ss出现什么现象。
note:
1.测试时请选择GPS信号良好的空地（视野范围内无建筑物遮挡）进行测试，以排除环境因素导致无法定位，定位慢，定位漂移等问题。
2.测试前请确保测试机有root 权限，可以访问/data/misc/路径，可以将gps debug log用adb拉出来。
3.测试完成后请注意以下事项
a.请进入YGPS，点击“NMEA Log->disable dbg2file [Need Restart]”按钮，然后退出YGPS，这样才能确保操作生效。否则，只要打开GPS，就会录制debug log，这样会占用更多的存储空间，导致不可预测的问题发生。
b.将/data/misc/gpsdebug.log.xxx删除，因为即使disable dbg2file以后，这笔log仍然会在/data/misc/。
【Mobile log抓取方法】
1. 进入工程模式，找到system logger进行相应设置,打开mobile log、net log、modem log。
2. 测试完成后，请将SD卡中mtklog文件夹中的所有log提供给我们。
```

## 如何快速抓取systrace （Systrace的功能用来debug performance问题）

```
前提条件：下载好android SDK，安装Python
1，终端下，cd切换到SDK目录
2，切换到systrace目录：……../platform-tools/systrace
3,执行命令.
python systrace.py --time=10 -o performanceTrace.html sched gfx view wm
--time=10表示抓取10s的信息
–o performanceTrace.html表示输出文件名
sched gfx view wm 是TAG（python systrace.py -l 可以查看全部标签）
4,在当前路径生成的performanceTrace.html即是报告文件。右键用google浏览器打开，即可查看。
```

## spn系统获取的优先级

```
在frameworks/opt/telephony/src/java/com/android/internal/telephony/uicc/SpnOverride.java文件lookupOperatorName方法中去获取那几个在system/etc下的spn文件，但是在显示过程中会先去判断，如下：
if ((numeric.equals("46000")) || (numeric.equals("46002")) || (numeric.equals("46007")) || (numeric.equals("46008"))) {
        operName = context.getText(com.mediatek.R.string.oper_long_46000).toString();
    } else if ((numeric.equals("46001")) || (numeric.equals("46009"))) {
        operName = context.getText(com.mediatek.R.string.oper_long_46001).toString();
    } else if ((numeric.equals("46003")) || (numeric.equals("46011")) || getFromResource) {
        operName = context.getText(com.mediatek.R.string.oper_long_46003).toString();
    } else if (numeric.equals("46601")) {
        operName = context.getText(com.mediatek.R.string.oper_long_46601).toString();
    } else if (numeric.equals("46692")) {
        operName = context.getText(com.mediatek.R.string.oper_long_46692).toString();
    } else if (numeric.equals("46697")) {
        operName = context.getText(com.mediatek.R.string.oper_long_46697).toString();
    } else if (numeric.equals("99998")) {
        operName = context.getText(com.mediatek.R.string.oper_long_99998).toString();
    } else if (numeric.equals("99999")) {
        operName = context.getText(com.mediatek.R.string.oper_long_99999).toString();
    } else {
        // If can't found corresspoding operator in string resource, lookup from spn_conf.xml
        if (containsCarrier(numeric)) {
            operName = getSpn(numeric);
        } else {
            Rlog.w(LOG_TAG, "Can't find long operator name for " + numeric);
        }
所以，有些比如说显示的CMCC、CU都是在这里判断显示的，并不是在spn文件中去写的
ps：在这个方法中可以看到，获取显示名字的优先级为getSpnByEfSpn(etc/virtual-spn-conf-by-efspn.xml) 》 getSpnByImsi(etc/virtual-spn-conf-by-imsi.xml) 》 getSpnByEfPnn(etc/virtual-spn-conf-by-efpnn.xml) 》 getSpnByEfGid(etc/virtual-spn-conf-by-efgid1.xml) 》  etc/spn-conf.xml

virtual-spn-conf-by-efspn.xml文件中的efspn一般是在log中去抓取的，其实就是写在sim卡中的，所以优先级相当于sim卡最高，至于为什么要出现这几个xml文件，就是为了区别网络运营商和运营商，因为这两个的mnc和mcc是一样的，所以就用网络运营商中的efspn等值来区别开来
```

## google包对应名称

```
Velvet ---> google search
Phonesky ----> Google Play Store
```

## tac code是imei的前8位 （早期是6位） ？？？

```
TAC code 是什么鬼？？
```

## 单双卡配置，修改该宏的值：

```
MTK_MULTI_SIM_SUPPORT
path:ALPS-MP-N0.MP2-V1_SR6580_WE_N/sagereal/mk/project**/ProjectConfig.mk
1.ss -单卡
2.dsds/dsda -双卡 （区别：dsds双卡双待，dsda双卡双通，我们公司基本都是dsds)
3.tsts -三卡
4.qsqs -四卡
比如双卡配置：MTK_MULTI_SIM_SUPPORT = dsds
```

## 开机向导中一直会出现Permissions denied: You can change them in Settings > Apps的提醒

```
这是因为有两个日历（calendar）引起的，如果只有一个日历就不会出现这个问题
如果客户一定要两个日历都存在，需要去把mtk日历的权限去默认打开；如果只存在其中一个日历，不会出现该问题
```

## 连上wifi后经常断开再连上

```
1、当碰到这种事情的时候，先去楼下环境（各种wifi或者热点比较少的环境下，可能会相互影响）去测试下，看是否ok
2、如果还是NOK，就需要我们在main_log或者kenerl_log中去搜一下“reason”，一般是能搜到断开wifi的reason的
3、再不行就要提MTK了，问问有没有patch  ALPS02358954
```

## [FAQ11754]KitKat版本如何将camera service修改为强占式

```
实现强占式camera service，当某些应用（如手电筒）在后台打开camera后，当camera app open camera时可以强占被后台应用占有的camera.
```

## [FAQ02941]ro.operator.optr属性问题

```
ro.operator.optr属性是代表工程中运营商的偏好行为，会在ProjectConfig.mk中由OPTR_SPEC_SEG_DEF的值来指定。目前这个属性只有八个值：OP01、OP02、OP03、OP06、OP07、OP08、OP09、OP10。
OP01表示中国移动（CMCC）
OP02表示中国联通（CU）
OP03表示Orange
OP06表示Vodafone
OP07表示AT&T
OP08表示TMO-US
OP09表示中国电信（CT）
OP10表示Tier-2 operator
且这个属性值目前无法增加其他的值。
```

## 如何让camera在拍录像的同时能拍照

```
在camera的配置文件中，搜索KEY_VIDEO_SNAPSHOT_SUPPORTED，
#if 1
//  Video Snapshot
FTABLE_CONFIG_AS_TYPE_OF_USER(
KEY_AS_(MtkCameraParameters::KEY_VIDEO_SNAPSHOT_SUPPORTED), 
    SCENE_AS_DEFAULT_SCENE(
        ITEM_AS_DEFAULT_(MtkCameraParameters::TRUE),             ---->TRUE为支持，FALSE为不支持
    ), 
)
#endif
```

## 如何跳转到某个apk的detail界面，即加权限界面

``` Java
Intent in = new Intent().setAction(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
    .setData(Uri.fromParts("package", "com.android.mms", null))
    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
mContext.startActivity(in);

如何通过 adb 的方式？？？
```

## *res/raw和assets的相同点和不同点

```
*res/raw和assets的相同点：
1.两者目录下的文件在打包后会原封不动的保存在apk包中，不会被编译成二进制。

*res/raw和assets的不同点：
1.res/raw中的文件会被映射到R.java文件中，访问的时候直接使用资源ID即R.id.filename；assets文件夹下的文件不会被映射到R.java中，访问的时候需要AssetManager类。
2.res/raw不可以有目录结构，而assets则可以有目录结构，也就是assets目录下可以再建立文件夹
*读取文件资源：
InputStream is =getResources().openRawResource(R.id.filename);
2.读取assets下的文件资源，通过以下方式获取输入流来进行写操作
AssetManager am = null;
am = getAssets();
InputStream is = am.open("filename"); 
注意1：Google的Android系统处理Assert有个bug，在AssertManager中不能处理单个超过1MB的文件，不然会报异常，raw没这个限制可以放个4MB的Mp3文件没问题。
注意2：assets 文件夹是存放不进行编译加工的原生文件，即该文件夹里面的文件不会像 xml， java 文件被预编译，可以存放一些图片，html，js, css 等文件。
```

```

## 如果在非launcher界面，短信会以toast的形式显示出来  （一般都是直接在状态栏提醒下）

```
可以搜索enqueueToast，然后发现如下log，可以发现pkg是什么，也就是是因为哪个apk才出现该toast
./mobilelog/APLog_2017_0306_212156/sys_log:03-06 21:22:21.511677   788  9291 I NotificationService: enqueueToast pkg=com.beyond.cineplanet callback=android.app.ITransientNotification$Stub$Proxy@83465a6 duration=0
```

## SeLinux相关

```
如何加selinux权限
log：
01-01 09:05:45.210000  8349  8349 W Thread-235: type=1400 audit(0.0:124): avc: denied { write } for name="brightness" dev="sysfs" ino=10091 scontext=u:r:system_app:s0 tcontext=u:object_r:sysfs:s0 tclass=file permissive=0
01-01 09:05:45.220918  1630  8346 D NuPlayerRenderer: renderer set speed = 1
01-01 09:05:45.221295  1630  8346 E NuPlayer: onScanSources
01-01 09:05:45.221736  1630  8346 D Utils   : kKeyEndian in utils is 2
01-01 09:05:45.221830  3024  8349 W System.err: java.io.FileNotFoundException: /sys/class/leds/green/brightness: open failed: EACCES (Permission denied)

内置到system/priv-app/下的第三方apk，因selinux 权限问题，无法点亮LED

解析：
audit2allow -i 111.txt

#============= system_app ==============
allow system_app sysfs:file write;

如果直接加在system_app.te中，会与externel下文件冲突，导致编译报错，可以重新定义类型：

添加：
------＞file.te
#liangshuang add for green led 2016-12-28
type sys_green_brightness_file, fs_type,sysfs_type;

file_contexts
#liangshuang add for green led 2016-12-28
/sys/class/leds/green/brightness u:object_r:sys_green_brightness_file:s0

system_app.te
#liangshuang add for green led 2016-12-28
allow system_app sys_green_brightness_file:file write;

system_server.te
#liangshuang add for green led 2016-12-28
allow system_server sys_green_brightness_file:file write;

快速编译验证
mmm external/sepolicy
make -j24 ramdisk-nodeps
make -j24 bootimage-nodeps
然后再重新刷bootimage 测试.

ps：[FAQ13324] SELinux 常见问题汇总
[FAQ13820] Android L APP 如何获取proc file system 中节点的写权限
[FAQ13635] Android L APP 如何获取sys file system 中节点的写权限
[FAQ11486] [SELinux Policy] 如何设置SELinux 策略规则 ? 在Kernel Log 中出现"avc: denied" 要如何处理？

新加冲突的selinux权限方法：
(1)、先在file.te/property.te/device.te等文件中定义
(2)、在file_contexts/gen_contexts等对应文件中绑定第(1)步定义的label
(3)、在对应的.te文件中申请权限，即allow system_server sys_green_brightness_file:file write;样式，如果用audit2allow跑出来的.te文件不存在，则可以重新新建一个
```

## sr6750_35g_n软件包中每个代表的信息

```
下图是6755 N的make文件，前4个数字代表平台（说明6750 & 6755都是用这套代码）；
第5个数字，是3或6，3代表32位系统，6代表64位系统。64位系统的CTS测试case要比32位多很多
第6个数字，是5或者6，5代表5模，6代表6模
g代表GMO版本，GMO的特点是MTK裁剪了某些feature，用于节省ram，以便512M内存也可以用
n代表android版本为N
```

## 有些4+512的项目安装大型第三方apk会出现安装时间长，在安装过程中去操作系统会出现卡顿的现象  ----->5012_LP的项目（M）

```
在L、M版本上：art/dex2oat/dex2oat.cc文件中最上面定义如下代码：
#define IS_APP(appname) ((!oat_filename_.empty() && (oat_filename_.find(appname) != std::string::npos)) ||  \
    (!zip_location_.empty() && (zip_location_.find(appname) != std::string::npos)) ||  \
    (!oat_location_.empty() && (oat_location_.find(appname) != std::string::npos)))
然后在compiler_options_.reset(new CompilerOptions这句话前面加上如下代码：
if( IS_APP("facebook") || IS_APP("youtube") || IS_APP("skype") || IS_APP("twitter") ) {
    compiler_filter = CompilerOptions::kInterpretOnly;
    LOG(INFO) <<" This apk is in whitelist, so set interpret-only ";
}
```

## [FAQ06165][NVRAM][SIM_ME_LOCK]protect_f和protect_s分区的作用是什么？

```
[Description]
protect_f和protect_s分区的作用是什么？

[Solution]
在没有Protect_s和Protect_f分区之前，SIM ME LOCK数据存在USER DATA分区内，详细路径为/data/nvram/md/NVRAM/IMPORTANT。
当恢复出厂设置时，会将/data/nvram/md/下的文件全部清除，其后开机时会将NVRAM BIN Region中备份的数据recovery到/data/nvram/md/下。

如NVRAM BIN REGION中数据为空，则会按照默认值生成SIM ME LOCK数据。
如NVRAM BIN REGION中数据不为空，则会将SIM ME LOCK数据恢复为NVRAM BIN REGION保存的状态。

针对case 2，由于NVRAM BIN REGION中保存的状态并不总是同恢复出厂之前/data/nvram/md/NVRAM/IMPORTANT下的SIM ME LOCK数据状态一致，因此可能无法满足SML 的更新一致性要求。

为了对SML数据进行持久化保存以及更新一致性的目的，我们将SML数据移入Protect_s和Protect_f分区。

Protect_s和Protect_f分区的特点有：
Download的时候若要format USERDATA分区时，不会format Protect_s和Protect_f。
恢复出厂设置时，也不会清除 Protect_s和Protect_f。但若此时BIN Region中无内容，开机时会判断出USERDATA分区中/data/nvram/md不存在且BIN Region中无内容，进而断定是第一次开机从而根据默认值生成SIM ME LOCK。

[FAQ04454][NVRAM]modem内的哪些NVRAM会被备份到BIN Region?
Protect_s和Protect_f分区数据是不会被备份到bin区的。
把数据放入到product_info就能实现该数据在回恢复出厂设置的时候不丢失
```

## gps默认关闭

```
当把gps默认关闭后，开机向导会把gps去打开（此时打开的是network，即battery saving），此时要关闭的话，必须在开机向导结束后去修改数据库
1.首先需要将def_location_providers_allowed置为空，即系统认为的默认关闭  2.默认关闭后仍然开启，则抓取第一次开机log，搜索gps字段的关键字location_providers_allowed
3.在sys log中搜索到call_put(secure:location_providers_allowed=+network) for 0   4.同样定位到SettingsProvider.java的call方法，我们也可以在这里做处理
继续查看redmine对应提交记录，我们最终是在Settings.java的putStringForUser方法中修改的，我们可以看到putStringForUser中，最后调用了cp.call(cr.getPackageName(), mCallSetCommand, name, arg);
这句代码最终调用的就是SettingsProvider.java里面的call方法
在Settings.java的putStringForUser方法中加上如下代码
if (Secure.getInt(cr,Secure.USER_SETUP_COMPLETE,0) == 0 && name.equals(Secure.LOCATION_PROVIDERS_ALLOWED)) {
    if(!android.util.FeatureOption.SAGEREAL_GPS_WORKON_WIZARD){
        return true;
    }
}
具体可参考如下文档：/home/jiangcunbin/Desktop/sagereal资料/自己总结/GMS认证/GMS包引起问题分析_new/GMS包引起问题分析.ppt
```

## 多用户相关

```
FAQ13688 【Multi-user】如何在L版本上打开Multi-user？
FAQ14403 【multi-user】android 5.1 如何打开 android.software.managed_users 功能
1. 在sagereal/mk/Project_name/ProjectConfig.mk文件中开以下宏
config_enableMultiUserUI = true
config_multiuserMaximumUsers = 8  //此宏值不小于2,
/*
以上两个宏也可以在alps/frameworks/base/core/res/resalues/config.xml文件中直接设置默认值
<bool name="config_enableMultiUserUI">true</bool>
<integer name="config_multiuserMaximumUsers">8</integer>
*/
MTK_2SDCARD_SWAP = no
MTK_OWNER_SDCARD_ONLY_SUPPORT = yes
MTK_SHARED_SDCARD = yes
2. 在alps/devicegetel/sr6572_wet_l/system.prop文件中ro值
ro.config.low_ram=false
若上面文件中没有该值，可以去alps/devicegetel/sr6572_wet_l/device.mk文件中找到ro.config.low_ram，并设置为false
3. 在alps/frameworks/native/data/etc/handheld_core_hardware.xml文件中打开手机多功能系统服务
<feature name="android.software.managed_users" />
<feature name="android.software.device_admin" />
4. AndroidForWork.apk is mandatory to preload on all GMS devices.  //Google App中必须包含该APK
注意：若要添加多用户功能，必须配置好以上4点，否则CTS测试会有15项测试不通过。

1，Check managered_users configuration:
adb shell pm list features
看是否有android.software.managed_users
2，check multi-user number
adb shell pm  get-max-users
获取到的个数应该大于1
3，check multi-user UI
adb shell getprop fw.show_multiuserui
这个值应该是true。
```

## [术语]VOLTE、VILTE、VOWIFI、VOIP、SDN、FDN

```
VOLTE 基于LTE的语音通话(VO = voice)，用流量打电话，用LTE承载，但是用分钟数收钱，优点是用数据流量传输数据，音质更好，电话接通更快
VILTE 基于LTE的视频通话（VI = video）
VOWIFI 基于wifi的语音通话(VO = voice) ，用wifi打电话，用wifi承载，这三个都是基于运营商的功能
VOIP 是互联网通话，跟运营商应该没啥关系，需要第三方的apk去实现
SDN 预制默认联系人
FDN 固定联系人
```

## 如何添加widevine 

```
http://172.16.78.132:8002/gitweb/?p=repositories/ALPS-MP-N0.MP2-V1_SR6580_WE_N.git;a=commitdiff;h=b942425cc932e1cdfb716cda72a37183ed87c995;hp=a9460b27dce8bb4163bf92522aae534af9ade5bf
修改方法：
(1)、alps/device/mediatek/common/device.mk
ifeq (yes, $(strip $(SAGEREAL_WIDEVINE_SUPPORT)))
$(shell cp $(TOPDIR)device/mediatek/common/widevine_on/SECRO_GMP.ini  $(TOPDIR)vendor/mediatek/proprietary/custom/common/secro/SECRO_GMP.ini)
else
$(shell cp $(TOPDIR)device/mediatek/common/widevine_off/SECRO_GMP.ini  $(TOPDIR)vendor/mediatek/proprietary/custom/common/secro/SECRO_GMP.ini)
endif	
(2)、alps/device/mediatek/common/widevine_off/SECRO_GMP.ini 	新建的文件
(3)、alps/device/mediatek/common/widevine_on/SECRO_GMP.ini 	新建的文件
(4)、sagereal/mk/VP40_H4007/ProjectConfig.mk   ---->  SAGEREAL_WIDEVINE_SUPPORT = yes
(5)、sagereal/script/makesagerealAction.sh
把make -j8 sign-image 2>&1 | tee sign-image_build.log修改为make -j8 sign-image-nodeps 2>&1 | tee sign-image_build.log
```

## [默认值][FAQ20101]增加National data roaming 菜单定制

```
这里的漫游，是指手机使用一个运营商的SIM卡，注册上另一个运营商的网络。
International Roaming: Operator A的sim卡注册到了和Operator A不同国家的其他Operator的plmn上；
National Roaming: Operator A的sim卡注册到了和Operator A相同国家的其他Operator的plmn上；
ps:[FAQ09599]如何默认勾选DATA ROAMING
```

## 如何修改默认camera插值

```
默认的插值都是默认插值为最后一个，有时候客户需要默认插值为某个值，可以按照下面这个FAQ进行修改。
[FAQ14380]L版本上如何修改默认picture size
```

## Android 手机上的 USB MIDI 是做什么用的?怎么用? 

```
goole 从 M 平台开始就有这一功能，这个功能是USB可以插入MIDI 键盘，手机就会成为音源，弹奏键盘，手机就能发出声音
```

## DuraSpeed（快霸）功能   ----> [FAQ19932]快霸(DuraSpeed)功能介绍

```
DuraSpeed 是 MTK 开发的进程管理软件, 目的是“缓解手机长时间使用后的性能下降”.
DuraSpeed 在 APP 启动时开始执行, 在后台限制“被保护之外”的进程. 从而为前台进程提供更多的系统资源.
DuraSpeed 有一套进程保护规则, 并提供 APP List 允许使用者编辑应用保护列表.
快霸透过抑制后台应用的活动来加速前台应用的速度，但可能导致部分通知无法正常接收
ps：这是一个apk，无源码，路径在alps/vendor/mediatek/proprietary/packages/apps/RunningBooster
```

## widevive和secureboot

```
数字版权管理 Digital Rights Management----简称DRM，这个google的默认都有，而且打开了，但是怎么保护这个DRM，这时候就需要使用widevine技术了。
DRM 是一系列访问控制技术的集合，它不仅用来控制对作品或设备的拷贝。而且也控制使用、查看、打印及修改等内容。最简单的话说对那些音乐，视频，电子书，游戏等很容易被复制的内容进行控制，防止盗版。MTK平台，实现DRM保护使用的就是widevine技术。
因此widevine与secure boot的关系是：其实两者是两个不同的东西。widevine只是一家提供了相应DRM解决方案的公司，我们提到widevine，是指该公司提供的解决方案，它实现了Android平台的版权保护，它针对数字媒体提供了与格式无关的加密解密方式来保护版权。而secure boot是mtk的在刷机，启动，升级等过程中的安全机制，只是两者绑定了。我们要想启用widevine，必须enable serure boot。

ps：widevine的机制本身就存在，但是必须打开serure boot才能启用。

当终端产品enable了该功能，相关的安全机制如下。
1）：Secure Download Check:编译时期，image会被客户的key签名。而Flashtool在下载时，会检查签名。
2）：Secure Boot Check：终端在启动时，image也会被检查key签名。如果检查失败， 那终端启动会失败。
3）：Secure Version Check：image会配置security version number和custom name，下载的时候，会被检查。（可以高，不能低）。
```

## [术语]CSFB

```
电路回落 Call Service Fall Back
```

## 如何加默认权限

```
frameworks/base/services/core/java/com/android/server/pm/DefaultPermissionGrantPolicy.java文件，如果要加某个package的权限，可以使用PackageParser.Package coppelPackage = getPackageLPr("com.esoft.movil.coppel")方法，“com.esoft.movil.coppel”为包名
```

## [adb]查看cpu信息

``` bash
adb shell cat /proc/cpuinfo
```

## [术语][RDS]FM中的RDS功能  ----> 目前MTK的chip都是支持RDS功能的。

```
一、支持RDS功能的FM收音机就是指具有“无线数据广播系统”功能的收音机。
二、所谓RDS是英国BBC广播公司开发的一种特殊无线电广播。即“无线数据广播系统”（Radio Data System). 它是在调频广播发射信号中利用副载波把电台名称，节目类型，节目内容及其它信息以数字形式发送出去。通过具有RDS功能的调谐器就可以识别这些数字信号，并做响应处理，RDS广播精髓在于其AF和TA功能，AF既自动频率调整，当信号低于某个水平时，AF功能会自动搜索当前电台的其他发射频率串。
三、RDS收音系统还独有“交流信息”功能（TA功能，也称交通公告），若有紧急事件，电台就会发送特殊信号，令收音机强行播放，另外，还有时间基准发射，自动调准收音机时间等功能，RDS在汽车，手机等移动设备上使用很方便。
四、目前国内支持RDS的电台已知的有：
上海 FM91.4 中央人民广播电台经济之声
北京 FM88.7 中国国际广播电台 HIT FM
上海 FM87.9 中国国际广播电台 HIT FM
广州 FM88.5 中国国际广播电台 HIT FM
```

## 如何把四个cpu同时打开，提高速度

```
echo 0 > /proc/hps/enabled
echo 1 > /sys/devices/system/cpu/cpu0/online
echo 1 > /sys/devices/system/cpu/cpu1/online
echo 1 > /sys/devices/system/cpu/cpu2/online
echo 1 > /sys/devices/system/cpu/cpu3/online
```

## 省晶体软件 （GPS）  ----> gps需要校准

```
1、Coclock是会节省一颗TCXO物料。
2、通过check log中CO、C1的值是否为0，为0表示校准失败 ，否则校准成功。
mnl_linux: linux_gps_init: init_cfg.C0 = 0
mnl_linux: linux_gps_init: init_cfg.C1 = 0
3、关于GPS校准，针对的是采用coclock 方案的项目:
1.涉及到的宏及路径：
MTK_GPS_CO_CLOCK_DATA_IN_MD
 
M版本在project.mak中
 
N版本在
/vendor/mediatek/proprietary/hardware/connectivity/gps/mtk_mnld/Android.mak
 
2.开关宏的标准：
看平台是否support LTE，若平台support LTE，則C0/C1是從MD NVRAM讀取，则
要打开这个宏控；若平台not support LTE，則C0/C1是從AP NVRAM讀取(如6580)，则
要关闭这个宏控。
4、备份GPS参数具体有哪些？
[GPS COClock Coefficients]
C0=0
C1=-0.224999994039536
initU=0
lastU=0
如果C0/C1是從MD NVRAM讀取，则可以直接用用meta工具（modem版本）去备份出这些参数。如果C0/C1是從AP NVRAM讀取(如6580)，则需要用张迪最新开发的apk
```

## RTC 有其自己的供电系统,所以在手机处于关机状态时,RTC仍然可以正常工作，关机闹钟的时候就是通过RTC的自己的供电系统去检测

## calendar日历中有个pop-up notification

```
M/N：该功能实现就是出悬挂式的notification，悬挂式Notification是android5.0新增加的方式，和前两种显示方式不同的是，前两种需要下拉通知栏才能看到通知，而 悬挂式Notification不需要下拉通知栏就直接显示出来悬挂在屏幕上方并且焦点不变仍在用户操作的界面因此不会打断用户的操作，过几秒就会自动消失。
和前两种Notification不同的是，他需要调用setFullScreenIntent来将Notification变为悬挂式Notification
notificationBuilder.setFullScreenIntent(pendingIntent1, false);// 横幅，悬挂式
```

## PAI

```
如果一个apk是在system区的，另一个apk是在data区的，当两个apk的包名都相同且版本号不一样的时候，在data区的apk也算是在system区且会直接覆盖system区里面的apk
ps：详细见PAI原理
```

## TEE

```
关于tee
如何查看tee.bin的版本？
	---> 在终端中执行如下密令：strings tee.bin | grep "gp" （其中tee.bin就是客户提供的tee.bin文件）,出来的结果就是tee的版本
如何查看preloader是否升级上去?
	---> 可以抓取升级前后的串口log，在log中搜索[TZ_INIT] TEE start entry即可，看看起始地址是否相同
```

## 如何将默认滑动解锁改为 pin/password 解锁

```
[DESCRIPTION]
目前 google 采用默认滑动解锁的方式
如果想改成默认其它的解锁方式, 必设定一个初始密码
请参考如下 solution:

[SOLUTION]
在 KeyguardViewMediator.java 的 onSystemReady 方法中的开始位置
判断是否为首次开机, 如果是就加入下面这段 code 去设置密码

public void onSystemReady(){
       ...
+       if(mUpdateMonitor.isDeviceProvisioned()){//判断是否首次开机
+             mLockPatternUtils.saveLockPassword("password",DevicePolicyManager.PASSWORD_QUALITY_ALPHABETIC);    //设置password为默认解锁类型
+       }
       doKeyguardLocked(null);
       ...
}

如要修改成PIN, 用如下部分替换上述红色代码
mLockPatternUtils.saveLockPassword("1234",DevicePolicyManager.PASSWORD_QUALITY_NUMERIC);

请自行修改上述参数达到设置不同解锁方式及密码的效果
```

## 当长时间播放视频或者播放音乐出现无声音现象

```
可以搜下no more track availble这块log，然后是否有如下类似的log
Dear customer,
06-07 12:55:30.413251 299 6231 E AudioFlinger_Threads: no more track availble
06-07 12:55:30.413311 299 6231 E AudioFlinger_Threads: track name: 4104, ID 10097
06-07 12:55:30.413362 299 6231 E AudioFlinger_Threads: track name: 4101, ID 10097
06-07 12:55:30.413411 299 6231 E AudioFlinger_Threads: track name: 4117, ID 10097
06-07 12:55:30.413459 299 6231 E AudioFlinger_Threads: track name: 4120, ID 10097
06-07 12:55:30.413507 299 6231 E AudioFlinger_Threads: track name: 4123, ID 10097
06-07 12:55:30.413558 299 6231 E AudioFlinger_Threads: track name: 4106, ID 10097
06-07 12:55:30.413610 299 6231 E AudioFlinger_Threads: track name: 4108, ID 10097
06-07 12:55:30.413658 299 6231 E AudioFlinger_Threads: track name: 4111, ID 10097
06-07 12:55:30.413710 299 6231 E AudioFlinger_Threads: track name: 4114, ID 10097
06-07 12:55:30.413764 299 6231 E AudioFlinger_Threads: track name: 4126, ID 10097
06-07 12:55:30.413812 299 6231 E AudioFlinger_Threads: track name: 4113, ID 10097
06-07 12:55:30.413895 299 6231 E AudioFlinger_Threads: track name: 4110, ID 10097
06-07 12:55:30.413950 299 6231 E AudioFlinger_Threads: track name: 4103, ID 10097
06-07 12:55:30.414009 299 6231 E AudioFlinger_Threads: track name: 4119, ID 10097
06-07 12:55:30.414062 299 6231 E AudioFlinger_Threads: track name: 4107, ID 10097
06-07 12:55:30.414113 299 6231 E AudioFlinger_Threads: track name: 4100, ID 10097
06-07 12:55:30.414165 299 6231 E AudioFlinger_Threads: track name: 4098, ID 10097
06-07 12:55:30.414214 299 6231 E AudioFlinger_Threads: track name: 4099, ID 10097
06-07 12:55:30.414282 299 6231 E AudioFlinger_Threads: track name: 4102, ID 10097
06-07 12:55:30.414363 299 6231 E AudioFlinger_Threads: track name: 4105, ID 10097
06-07 12:55:30.414412 299 6231 E AudioFlinger_Threads: track name: 4109, ID 10097
06-07 12:55:30.414465 299 6231 E AudioFlinger_Threads: track name: 4112, ID 10097
06-07 12:55:30.414518 299 6231 E AudioFlinger_Threads: track name: 4115, ID 10097
06-07 12:55:30.414572 299 6231 E AudioFlinger_Threads: track name: 4118, ID 10097

根据google设计，track最多只能有32个。
出现audiotrack报错，是因为track被占满了，如上LOG。
在events log可以看到10097是水果忍者进程：
06-07 12:48:56.314997 940 3309 I am_proc_start: [0,4207,10097,com.halfbrick.fruitninjahd,activity,com.halfbrick.fruitninjahd/com.halfbrick.fruitninja.FruitNinjaActivity]
通话没有问题是因为通话不需要audio track，数据不经AP，直接走MODEM。
综上，这个应该是属于水果忍者第三方APK的问题，使用了以后没有释放track导致的。
请知，谢谢！
```

## Android O以后版本内置第三方APK可卸载可恢复的方法变更

```
由于Android O以后使用了vendor分区在编译时会生成 vendor.img，使用之前内置第三方APK可卸载可恢复的方法时在编译时会报错无法生成 vendor.img。
O版以后内置可卸载可恢复的第三方APK时可将该语句

LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/operator/app

修改为：

LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/operator/app

P平台预置可卸载可恢复APK
1.预置方式和O平台一样：
预置路径：LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/operator/app
2.有些APK（eg:facebook）中会包含动态、或者静态库文件，预置后点击会因找不到库报错，一般是缺少SELinux权限，可以抓取LOG，生成权限后加入即可。
（一般需要该权限：allow untrusted_app_27 system_data_file:file {open execute r_file_perms};）
3，对于可卸载可恢复的APK注意：
P版本的vendor/operator/app将不再直接具有uninstall的功能，需要在可删除系统的list文件中加入对应的package name才可以。
alps/vendor/mediatek/proprieta
```

## 如何编译userdebug版本

```
/home/jiangcunbin/project/80M/WM05_GMO/ALPS-MP-M0.MP1-V2.34_SR6580_WE_M/sagereal/script/makesagerealAction.sh文件中把
if [ $1 == "yes" ]; then
	lunch full_${sagereal_target_project}-user
else
	lunch full_${sagereal_target_project}-eng
fi
把对应的修改为lunch full_${sagereal_target_project}-userdebug即可

或

source build/envsetup.sh
lunch full_${sagereal_target_project}-userdebug
```

## [mtklog]关于抓取mtklog

```
1、eng版本在抓取log的时候，可以把mtklog中的taglog关闭，taglog的作用：当系统有exception(如NE，ANR)发生时会弹出这个Tag Log的框，作用是把当前exception的log保存到SD card的，做记录Log之用，当ANR等情况下会把log压缩至mtklog/taglog/文件下；如果关闭该功能的话，按照正常的log抓取，具体可参考[FAQ03748] TagLog功能简述
2、userdebug版本有时候会出现无法抓取到aee_exp文件的情况，这是因为Android M/N, 因受security 限制, aee 如果mode 开到3, 权限太大, 会导致安全问题， 后续user/userdebug build 默认设置成了mode 4 , 并且mobile log 无法  直接切成mode 3. 导致开了mtklogger 后也只能抓到fatal db （见下表），而不能抓到普通exception db;具体修改
如果需要在user load 中打开mobilelogd 后，能够切换到aee mode3 抓到普通exception db ，可以参考以下修改：关闭强制性约束.
/vendor/mediatek/proprietary/external/aee/config_external/init.aee.customer.rc 文件中添加
on init
setprop ro.aee.enforcing no
（在出货版本中，切记把此行 注释掉）
具体可以参考[FAQ20159] Android M/N user load，在打了aee security enhance patch 后，如何抓到普通aee db？
```

## [adb]adb相关命令

```
adb shell ls -aal dev/pm ---> 会把dev/pm文件的权限路径等显示出来
adb shell find system -name "*app*" ----> 会把system下名字中有app的都显示出来，需要会使用*
adb logcat | egrep -i "nfc|nxp|AEE_AEDV|ERR"   ---> 抓取log时可以查找多个关键字
依次执行如下两个指令打开mobilelog及taglog
adb shell am broadcast -a com.mediatek.mtklogger.ADB_CMD -e cmd_name switch_taglog --ei cmd_target 1
adb shell am broadcast -a com.mediatek.mtklogger.ADB_CMD -e cmd_name start --ei cmd_target 1
```

## [recovery][ota]升级modem

```
FAQ18188 [Recovery][Common]Android M 版本如何升级logo等rawdata分区方法？  ---> 比如说modem端的MD1IMG等分区的升级
同时要参考FAQ17441 [Recovery] [Common] Android M 版本如何升级lk 、preloader
```

## 如何让apk只能当签了某个特定的key后才能安装？

```
http://192.168.3.76:8007/gitweb/?p=MT6572_JB3_LCA_MP3.git;a=commitdiff;h=8c9ab90ee555e59a1f518dfb938c7851bc073cd3;hp=2a633d6df3a3f83d41826376e31fdd9db1321f36
原理：在 PackageInstallerActivity.java 文件中去获取安装的apk的签名信息（2进制），然后和某个特定的key去对比是否相同，如果相同的话，就直接正常安装（安装apk的方法一直存在），如果不同的话，就是跳出一个对话框而已，不去走安装的方法，原理上platform还是正常的平台签名，key只是某个客户提供的普通key而已，不能认为把platform改成了某个key了，只是当你只签平台签名的时候，不可安装而已，但是当你只安装特定key的时候，该apk不会有平台签名的权限！
```

## [术语]subid和slotid区别

```
slotid或者phoneid是指卡槽，双卡机器卡槽一值为0，卡槽2为1，依次类推，不过国内也就双卡和单卡机器了，三卡机器只听说在遥远的印度有。

subid用过数据库的同学比较好理解，subid就是主键递增项，值从1开始，机器每插入一个新卡（iccid是没有见的，值就会加1，iccid每个sim卡是唯一的）。插入双卡后数据库中就会有subid值为1和2的两个数据条目，拔卡插卡交换卡槽数据库并不会增加新项，只有插入一张新的sim卡才会增加一条id为3的数据条目

subid是跟卡走的，slotid是跟卡槽走的。一般来说slotid比较好理解，subid不好理解。

Android5.0之后google终于加入了多sim卡的代码，5.0之前的多卡（一般也就是双卡）机制是各写各的，mtk和高通的代码各有千秋，但是基本上用slotid较多，subid只有mtk在用也很少。Google一统千秋后subid反而用的比slotid多了，

三方app获取slot和subId
这个小节是针对文章下面的评论加的。

frameworks/base/telephony/java/android/telephony/SubscriptionManager.java

public int getDefaultDataPhoneId() 　默认数据slotId
public static int getDefaultDataSubscriptionId()　默认数据subId

public int getDefaultSmsPhoneId() 　默认短信slotId 

public static int getDefaultSmsSubscriptionId() 默认短信subId

public static int getDefaultVoicePhoneId() 　默认通话slotId
public static int getDefaultVoiceSubscriptionId() 默认通话subId

public static int getDefaultSubscriptionId()　获取默认subId，上述三个都返回-1的话使用这个
双卡设置中短信和通话的设置只是设置SettingsProvider中的一个字段，而设置数据业务卡槽除了设置数据库字段外还会导致modem的重启、网络类型切换（数据业务卡能上4G，而另一张卡只能用2G）等一系列操作。所以手机开发厂商一般说主卡就是数据业务卡。
```

## 手机重启数次进入recovery模式，log分析

```
您好！从贵司的log中有看到大量JE如下：
01-04 03:15:30.424174  1994  2030 E AndroidRuntime: FATAL EXCEPTION: pool-3-thread-1
01-04 03:15:30.424174  1994  2030 E AndroidRuntime: Process: ru.appspress.android.eguarantee.bq, PID: 1994
01-04 03:15:30.424174  1994  2030 E AndroidRuntime: java.lang.IllegalStateException: Apps may not schedule more than 100 distinct jobs
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at android.os.Parcel.readException(Parcel.java:2013)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at android.os.Parcel.readException(Parcel.java:1951)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at android.app.job.IJobScheduler$Stub$Proxy.schedule(IJobScheduler.java:180)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at android.app.JobSchedulerImpl.schedule(JobSchedulerImpl.java:44)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at androidx.work.impl.background.systemjob.SystemJobScheduler.scheduleInternal(SystemJobScheduler.java:85)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at androidx.work.impl.background.systemjob.SystemJobScheduler.schedule(SystemJobScheduler.java:64)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at androidx.work.impl.Schedulers.scheduleInternal(Schedulers.java:98)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at androidx.work.impl.Schedulers.schedule(Schedulers.java:69)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at androidx.work.impl.WorkManagerImpl.rescheduleEligibleWork(WorkManagerImpl.java:398)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at androidx.work.impl.utils.ForceStopRunnable.run(ForceStopRunnable.java:66)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1162)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:636)
01-04 03:15:30.424174  1994  2030 E AndroidRuntime:     at java.lang.Thread.run(Thread.java:764)

java.lang.IllegalStateException: Apps may not schedule more than 100 distinct jobs
看起来是某些app使用job过多，属于APK issue。
贵司可以pull出data/system/job/jobs.xml ，查看到底是哪个APP使用job过多。

目前 job service 这边没有保护机制，之前的类似issue只是将jobs.xml 删除掉之后，暂时解决问题。 

如果某些app 恶意使用大量 job，目前看起来没好的方式避免。 
```

## 如何打开zsd

```
go:vendor/mediatek/proprietary/custom/mt6580/hal/sendepfeature/gc2385_mipi_raw/config.ftbl.gc2385_mipi_raw.h
#if 1
//  Zsd
FTABLE_CONFIG_AS_TYPE_OF_DEFAULT_VALUES(
    KEY_AS_(MtkCameraParameters::KEY_ZSD_MODE),
    SCENE_AS_DEFAULT_SCENE(
        ITEM_AS_DEFAULT_(MtkCameraParameters::ON),    ----> 这一条是是否打开ZSD
        ITEM_AS_VALUES_(
            MtkCameraParameters::OFF,
            MtkCameraParameters::ON
        )
    ),
)

MtkCameraParameters::OFF,
MtkCameraParameters::ON同时存在的时候，camera的界面中会出现这个选项，如果只有一个的话，camera的界面中不会出现这个问题
```

## 如何确认生成的某个so文件从哪里代码拷贝过去的？

```
1、source build/envsetup.sh    --> 导入环境
2、godir fingerprint.default.so   --> 搜索这个文件的具体代码路径
3、md5sum fingerprint.default.so   --> 获取唯一值
5656a7e732354b53d1e3b1b67b12a67a  fingerprint.default.so
因为步骤2会搜索出好几个结果，那么如何确认是哪个路径拷贝的呢？首先先在out中找到对应的文件，然后用md5sum fingerprint.default.so 获取出唯一值，然后在把步骤2搜索出来的路径每个都用md5sum的命令去获取唯一值，然后相同的就是对应的文件路径
```

## 反编译.vdex文件

```
O版本，vdex文件直接通过vdexExtractor 直接生成dex文件
./vdexExtractor  -i xxxx.vdex  -o . --deps -f

P版本，会生成中间.cdex文件，需要使用compact_dex_converters临时转换成dex文
件, 生成的boot-framework_classes.cdex.new其实就是.dex文件，重命名成.dex后
缀，直接jadx解开即可看到java文件

工具同步更新到如下目录：smb://192.168.3.127/02_sw/127文件目录/02_工具dTOOL/02%20智能机/10_Tools/Extra-vdex/
```

## 拍照速度慢、美颜状态下拍照速度慢

```
1、美颜拍照的原图可以从capbufMgr中取图，即参考zsd的方法（不使用normalshot的取图），这样可以直接从内存取图，缩小取图的时间。
2、开启postview功能，并在app中是用postview做小图的显示，这样显示小图的时间可以加快约800ms（即美颜算法处理时间）。
3、调整美颜算法所在线程的优先级，减少算法处理时间。
4、打开ZSD功能
```

## 如何修改wqhl导致的usb连接模式在重启后会不停变化

``` Java
frameworks/base/services/usb/java/com/android/server/usb/UsbDeviceManager.java 文件中 
trySetEnabledFunctions(String functions, boolean forceRestart) 方法内增加如下方法
if (functions.equals("adb")){
    functions = "mtp,adb";
}
```

## android 无法休眠查看，查看哪個wakelock擋到系統進入suspend的步驟

```
1：检查userspace wakelock状态
dumpsys power
cat /sys/power/wake_lock

2：检查kernel wakelock状态
cat /sys/kernel/debug/wakeup_sources
查看actvie_since列，大于0的会导致无法suspend

cat /proc/wakelocks

#查看哪個wakelock擋到系統進入suspend的步驟

當測試者認為現在系統可以進入suspend(如暗屏+無接usb/ac充電)，系統卻還一直打印uart log。
su (讓uart console變成root權限)
每一秒執行cat /sys/kernel/debug/wakeup_sources一次，共5次左右，若有某個wakelock的active_since值一直在增加(如下表)，就是此wakelock擋到系統進入suspend。
若碰到是PowerManagerService.WakeLocks的active_since值一直在增加，則需要更進一步執行"dumpsys power"，查看是哪個PARTIAL_WAKE_LOCK擋到系統進入suspend。

#查看系統內有多少個wakelock - 範例

Command: cat /sys/kernel/debug/wakeup_sources

name active_count event_count wakeup_count expire_count active_since total_time max_time last_change prevent_suspend_time
PowerManagerService.Broadcasts	3	3	0	0	0	12408	10881	282326	0
PowerManagerService.WakeLocks	91	91	7	0	57415	177029	70793	269483	0
 
#查看PowerManagerService.WakeLocks裡哪個PARTIAL_WAKE_LOCK在使用，因此擋到系統進入suspend - 範例

Command: dumpsys power

Wake Locks: size=6 (PowerManagerService.WakeLocks裡有6個PARTIAL_WAKE_LOCK在使用，所以PowerManagerService.WakeLocks不能釋放，進而擋到系統進入suspend)
PARTIAL_WAKE_LOCK 'GnssLocationProvider' (uid=1000, pid=1100, ws=null)
PARTIAL_WAKE_LOCK 'CMWakeLock' (uid=10012, pid=1926, ws=WorkSource{10012 com.google.android.gms})
PARTIAL_WAKE_LOCK 'Checkin Service' (uid=10012, pid=2311, ws=WorkSource{10012 com.google.android.gms})
PARTIAL_WAKE_LOCK '*net_scheduler*' (uid=10012, pid=1926, ws=WorkSource{10083 com.google.android.youtube})
PARTIAL_WAKE_LOCK 'NetworkTimeUpdateService' (uid=1000, pid=1100, ws=null)
PARTIAL_WAKE_LOCK '*net_scheduler*' (uid=10012, pid=1926, ws=WorkSource{10012 com.google.android.gms})
```

## [FAQ20290]modem NvRAM 四个分区的基本知识

```
nvdata：手机运行过程中，使用(读写)的NVRAM(除了存在protect_f和protect_s中的NVRAM)都是该分区的nvram文件。存储着普通NVRAM数据、 IMEI、barcode、Calibration数据等。对应的modem path是Z:\NVRAM。NVRAM目录下有CALIBRAT、NVD_DATA、NVD_CORE和NVD_IMEI四个目录，后续第三点会对这四个目录进行介绍。

protect_1、protect_2 ：一般我们也称为protect_f和protect_s分区，protect_s是对protect_f中部分NVRAM的复制。
主要存储着SIM Lock数据。具有NVRAM_CATEGORY_IMPORTANT_L4属性的NVRAM LID会存在protect_f分区(这个叫A file)，如果还具有NVRAM_ATTR_MULTIPLE属性(锁卡LID都有MULTIPLE属性)，会存一个B文件到protect_s中。正常情况下protect_f中的A文件和protect_s中的B文件是相同的，因为写的时候都会去写两只nvram文件。（同时这两个分区的两只文件是互为备份的[即如果A file损坏,可以使用B file的来还原、 B file损坏,使用A file来还原;但如果两只文件都被被异常破坏或者删除, nvram将让modem assert）.

nvram：一般我们也称为binregion分区，是一个备份分区，备份具有NVRAM_CATEGORY_IMPORTANT和NVRAM_CATEGORY_CALIBRAT属性的NVRAM LID，备份的也就是CALIBRAT和NVD_IMEI两个目录，具体有IMEI、 barcode、Calibration数据和4G RF driver参数这些NVRAM。备份可以由META Tool触发 ，ATE校准完会自动触发备份，SN Writer tool写完号后也会自动触发备份。
```

## 升级方式对各个NVRAM分区的影响

```
Format All+Download
会擦除所有分区，所有NVRAM LID都会用code中的默认值重新生成。全擦后只有触发备份过，binregion中才会有备份内容，否则binregion是空的(Flash默认的全0 or 全f)。

Firmware Upgrade 、Factory Reset(恢复出厂设置)
只会擦除nvdata分区，开机时AP会将binregion中备份的CALIBRAT和NVD_IMEI两个目录还原到nvdata分区。具体NVRAM LID是IMEI、 barcode、Calibration数据和4G RF driver参数。
protect_f和protect_s分区不会被擦除，所以SIM Lock保持不变。
其他NVRAM LID恢复为code中的默认值。
如果binregion是空的，那么IMEI、 barcode、Calibration数据和4G RF driver参数也会用code中的默认值重新生成。

Download Only、OTA、SD upgrade 、Push modem
不会擦除任何分区。这种升级方式下，如果有修改code中的default值，那么需要将相应NVRAM LID的VERNO+1，才会生效，即将会利用code中的默认值重新生成新文件。

注意：这里所说的所有分区和任何分区均指Modem NVRAM的四个分区：nvdata分区、 protect_f分区、protect_s分区和binregion分区。
```

## 如何设置MTKlogger是否开机自启动

```
1. 第一次开机MTKlogger是否开启
1) 配置prop文件:   true则开启，false则关闭 
com.mediatek.log.mobile.enabled = true/false
com.mediatek.log.modem.enabled = true/false
com.mediatek.log.net.enabled = true/false
com.mediatek.log.gps.enabled = true/false

2) prop文件路径
KK版本: alps/mediatek/external/xlog/tools/mtklog-config-eng.prop或mtklog-config-user.prop
L 版本:  alps/vendor/mediatek/proprietary/external/xlog/tools/mtklog-config-eng.prop或mtklog-config-user.prop
M/N/O/P版本:  alps/device/mediatek/common/mtklog/mtklog-config-bsp-eng.prop或mtklog-config-bsp-user.prop

2. 非第一次开机是否开启的配置方法有如下两种
1) 勾选Start Automatically进行设置
MTKlogger UI——》Settings——》MobileLog/ModemLog/NetworkLog/GPSLog——》Start Automatically

2) 通过adb发送广播设置
adb shell am broadcast -a com.mediatek.mtklogger.ADB_CMD -e cmd_name set_auto_start_1/set_auto_start_0 --ei   cmd_target 23
set_auto_start_1表示开启开机自启动, set_auto_start_0表示关闭开机自启动
cmd_target is a combination or just a single of each Log type
MobileLog: 1 ModemLog: 2 NetworkLog: 4 GPSLog: 16
```

## [mtklog]mlog

```
mlog 为内存debug机制，会不停的记录系统内存使用情况，可以用来查看系统运行过程各类型各进程内存变化等
JE , swt , NE , 等exception db 解开后可以从 SYS_MEMORY_LOG得到mlog讯息
（SYS_MEMORY_LOG   是从  /d/dmlog  抓取而来） 
 
由于/d/dmlog 为ring buffer ， 有固定的buffer size , 
发生exception 后打包db时间如果间隔过久有可能把前面mlog讯息冲掉而获取不到问题时间点的mlog讯息
此时可以加大mlog buffer size 
修改方式如下
/kernel-xx/drivers/misc/mediatek/mlog/mlog_logger.c
#define CONFIG_MLOG_BUF_SHIFT   16  /* 64KB for 32bit, 128kB for 64bit */
修改成
#define CONFIG_MLOG_BUF_SHIFT   17
即为buffer size    128KB -> 256KB  for 64bit   ， 也可以更大， 不过由于会占用固定系统内存， 建议适量修改

修改后adb pull /d/dmlog 可以明显看到文件变大

抓取mlog的几种方法
adb shell cat /sys/kernel/debug/mlog > mlog
adb shell cat /d/mlog        (持续每秒记录mlog讯息)
adb shell cat /d/dmlog       (一次性打印 mlog buffer 所有讯息)

使用 adb shell cat /sys/kernel/debug/mlog 的方式查看内存的Log，可以查看当时状态的整体状况，同时包含当前程序内存使用情况
该信息是每1秒钟打印1条，从而可以看到连续的内存状况。

/sys/module/mlog/parameters/timer_intval
mlog记录默认为每秒更新，通过修改此参数可以减小(或加大)记录时间间隔

swfree  空间逐渐变为0 , 代表那个时间需要大量的使用内存，同时这个时间点数据压到内存比较积极

FAQ21497 mlog 信息查看及其初步的分析
FAQ21888 mlog 信息抓取时间间隔以及其它有用的调整参数
FAQ21889 mlog (SYS_MEMORY_LOG) 的 buffer size 如何修改
```

## 抓取开机trace

```
1). Enables tracing during boot-up

     Android O: In frameworks/native/atrace/atrace.rc, change:
        write /sys/kernel/debug/tracing/tracing_on 0
        To:
        #write /sys/kernel/debug/tracing/tracing_on 0
        This enables tracing (which is disabled by default).

     Android P0: In frameworks/native/cmds/atrace/atrace.rc
        # Tracing disabled by default
        write /sys/kernel/debug/tracing/tracing_on 0
        To:
        # write /sys/kernel/debug/tracing/tracing_on 0


2). Set systrace tags
     In the device/mediatek/mt67××/device.mk file, add the following line:
        PRODUCT_PROPERTY_OVERRIDES += debug.atrace.tags.enableflags=0x1fe9fe
     For enableflags's bit, please refer to "system/core/include/cutils/trace.h"


3). Add ftrace tags which you wanted
     In the project's BoardConfig.mk file, add the following:
        BOARD_KERNEL_CMDLINE := ... trace_buf_size=64M trace_event=sched_wakeup,sched_switch,sched_blocked_reason,sched_wakeup_new,sched_waking,cpu_frequency,cpufreq_interactive,cpu_frequency_limits,cpu_idle
     For detailed I/O analysis, also add "block android_fs ext4..." trace tags
     If you want catch more trace log, you can increase trace_buf_size. But if the phone memory size is less then 1GB, you need reduce trace_buf_size, such as "trace_buf_size=32M" for 512MB devices.

4). Disable tracing after boot-up completed
     In the device-specific init.mt67**.rc file, make the following changes, such as:
        on property:sys.boot_completed=1 (this stops tracing on boot complete)
        write /sys/kernel/debug/tracing/tracing_on 0
        write /sys/kernel/debug/tracing/events/ext4/enable 0
        write /sys/kernel/debug/tracing/events/block/enable 0
        write /sys/kernel/debug/tracing/events/android_fs/enable 0

5). After boot up, fetch trace
     adb root && adb shell "cat /d/tracing/trace" > boot_trace 

6). Open trace
     Use chrome://tracing can open boot_trace
```

## 从 Q0 开始 mtklog 改名了

```
用户手册 http://dms.mediatek.inc/Explorer/index/238136/2
```

## [FAQ21836]Skia软件绘制基础知识介绍

```
Android apk 里面的画图分为2D和3D两种：
2D是由Skia 来实现的，也就是我们在框架图上看到的SGL，SGL也会调用部分opengl 的内容来实现简单的3D效果；
3D部分是由OpenGL|ES实现的，OpenGL|ES是Opengl的嵌入式版本。具体请参考blog:https://blog.csdn.net/yili_xie/article/details/4803565
Skia绘制分三种，分别是：
skia软件绘制、skia硬件绘制和PDF绘制；
1)skia软件绘制执行的是SkbitmapDevice
2)Skia硬件绘制执行的是SkGpuDevice，SkiaGpuDevice实际上就是之前的openGL/HWUI绘制，从Android P开始，Android 取消OpenGL，改为Skia GL，走如下框图中的SkGpuDevice，SkGpuDevice下面同以前的OpenGL，不是今天的重点
3)PDF绘制执行的是SkPDFDevice，目前只遇到一个APK使用这种绘制方式
```

## 通过OTA升级 SVNumber

```
通过OTA升级时，data分区的NVRAM文件并不会被清除，因此升级后SVN和data分区下的其他nvram数据前后都没有变化。
如果需要确保OTA升级后SVN值或某一nvram file更新为新版本默认值，那么有如下方法：

1. 对于非IMPORTANT data(IMEI\SIM ME LOCK属于IMPORTANT data), 可以通过更新NVRAM LID VERNO，确保前后版本的NVRAM LID VERNO不一样即可。
例如更新SVN值， SVN默认保存在NVRAM_EF_SYS_CACHE_OCTET_LID，因此需要做如下修改：
File: Nvram_editor_data_item.h(mcu\interface\service\nvram)
#define NVRAM_EF_SYS_CACHE_OCTET_LID_VERNO "004"
修订为:
#define NVRAM_EF_SYS_CACHE_OCTET_LID_VERNO "005"

2. 由于SVN值保存在NVRAM_EF_SYS_CACHE_OCTET_LID，该NVRAM LID中保存了其他system information（FLIGHTMODE_STATE，SIM_PLUS_SETTING，SVN，USB_BOOT_MODE，USB_TETHERING_MODE等），那么升级后这些值也会更新为新版本的默认值。
因此做到OTA升级后只更新SVN值，那么我们需要采取另外一种方法来实现。

在nvram init完成后进行客制化来写入新版本的SVN值，例如下：
FILE: custom_nvram_int_config.c(mcu\custom\service\nvram\) 
Function:custom_nvram_config(void) 

在custom_nvram_config接口内部添加写入SVN操作，demo code可以参考如下： 
kal_uint8 data[] = {0x87, 0x00, 0x00,0x00, 0x00, 0x00, 0x00, 0x00}; 
nvram_external_write_data (NVRAM_EF_SYS_CACHE_OCTET_LID, NVRAM_SYS_SVN, data, NVRAM_EF_SYS_CACHE_OCTET_SIZE); 

其中配置的0x87就是SVN，从nvram读取出来为'78',需要参考BCD编码方式来配置。
举例说明： 如果写入NV中的值为0x17,那么读取出来值为'71';如果写入NV中的值为0x35，那么读取出来的值为'53'.


也可以通过发送AT命令的方式更新
发送AT命令： AT+EGMR=1,9,"78"   //78即为需要设置的SVN
```

## [FAQ21709]Camera HAL3 内存优化

```
内存用量大头（Graphics部分）分解：adb shell cat /sys/kernel/debug/ion/ion_mm_heap > ion_1
查看优化效果，对比优化前后meminfo中的total即可.
那么会有哪些省内存办法呢？请看下文.

1.拍照后buffer立即释放
优点：拍照过程中产生的buffer使用完毕后即释放，不影响拍照后的内存用量；
缺点：内存存量不高的情况下，拍照速度会受影响;
优化量：与拍照实际feature有关，拍照feature越多占用内存越大，优化量越大;

/vendor/mediatek/proprietary/hardware/mtkcam3/feature/core/featurePipe/capture/buffer/CaptureBufferPool.cpp

mpTuningBufferPool->setAutoFree(0); //拍照后release tuning buffer
pImagePool->setAutoFree(0);//拍照后release image buffer

【重要提醒】如果使用此优化，务必保证YUVNode.cpp中有如下修改，如无，请申请patch ALPS04338041.
mtkcam3\feature\core\featurePipe\capture\nodes\YUVNode.cpp

1090:     pPlgRequest->mIBufferFull  = (iBufferFullHandle == NULL) ? PluginHelper::CreateBuffer(pNodeReq, TID_MAN_FULL_YUV, INPUT) : std::move(iBufferFullHandle);

1091:     pPlgRequest->mIBufferClean = PluginHelper::CreateBuffer(pNodeReq, TID_MAN_FULL_PURE_YUV, INPUT);

1092:     pPlgRequest->mIBufferDepth = PluginHelper::CreateBuffer(pNodeReq, TID_MAN_DEPTH, INPUT);

1093:     pPlgRequest->mOBufferFull  = (oBufferFullHandle == NULL) ? PluginHelper::CreateBuffer(pNodeReq, TID_MAN_FULL_YUV, OUTPUT) : std::move(oBufferFullHandle);
 
2.减少ZSL buffer number
优点：优化整个camera使用期间的内存用量
缺点：如果设定值过小，重载时会影响preview帧率.
优化量：实际减少的buffer数据有关，也与sensor大小有关.

/vendor/mediatek/proprietary/hardware/mtkcam3/pipeline/model/zsl/hbc/HistoryBufferContainerImp.cpp

mMaxBufNum = (pInfo->getMaxBufNum()>mMaxBufNum)? pInfo->getMaxBufNum() : mMaxBufNum;//此值即是
基于MAX_HISTORY_DEPTH 和app设定的streaminfo信息

3.修改P1Node buffer格式（需满足条件）
使用条件：Raw格式在一次configure后不会发生改变. 举例，4-cell功能以及Raw HDR功能均会在使用期间切换Raw格式.则不可使用此优化;
优点：P1Node输出buffer格式由BloB改为Bayer10;
缺点:无法实时做格式转换;
优化量：与sensor实际大小有关.

/vendor/mediatek/proprietary/hardware/mtkcam3/pipeline/policy/config/P1HwSettingPolicy.cpp

bool isLowMem = ::property_get_bool("ro.config.low_ram", false); //强制将isLowMem置为True.

如果平台支持UFO，也可使用UFO格式，P1输出可以有多种格式，格式选择的逻辑判断均在P1HwSettingPolicy.cpp中，而各值的对应列表可查阅：
/vendor/mediatek/proprietary/hardware/mtkcam/include/mtkcam/def/ImageFormat.h

4.提高MFNR的门限，尽量避免使用MFNR，减少mfnr张数
优点：极大的改善内存以及cpu 资源的消耗，提升拍照速度，提升系统流畅度；
缺点：高光感下的图像噪点略高，影响图片质量，有些可以通过tuning 其他nr参数弥补回来;

/vendor/mediatek/proprietary/custom/mtXXXX/hal/inc/camera_custom_nvram.h

MUINT16 mfll_iso_th // tunning 参数 各家不同 ，默认800;
MUINT8 capture_frame_number; //mfnr张数，最低3张，默认4张;

对应的参数tunning的同事会较清楚，或者在/vendor/mediatek/proprietary/custom/mtxxxx/hal/imgsensor/ver1/sensorname 下全搜mfll_iso_th即可.
 
5.关闭ZSL
优点：拍照的buffer不再受preview处理效率的影响，同时节省buffer;
缺点：与Hal1上关闭zsd不同的是，关闭zsl仅拍照瞬间画面略有停顿.而Hal1上关闭zsd是整个拍照未完成期间均停顿.
优化量：节省zsl buffer pool的大小，一般会达到100M以上.

Control.capture.default.zsl.mode 设为off
Control.capture.zsl.mode configure和request时，均需设定为off，否则会出现re-configuresesion的问题，影响启动时间;
 
6.拍照相关限制
原理：限制同时在hal层处理的capture 数目，变相的优化内存峰峰值.
缺点：对内存存量要求高，则容易影响shot2shot的实际效果.

Shot2shot：

/vendor/mediatek/proprietary/hardware/mtkcam3/pipeline/model/capture/

#define MIN_FREE_MEM (300000000) // 300M，只有内存可用量大于300M时，才会告知app可以拍下一张.

最大request size：

maxAppJpegStreamNum //变相限制max request size
 
以上是通用法则.还有些可能会用得上的优化点：

8.streaming场景的优化

a)确认P1Node输出的size，等于preview size值. 如若不是，请查看P1Node输出的size来源.逻辑判断来源
/vendor/mediatek/proprietary/hardware/mtkcam3/pipeline/policy/config/P1HwSettingPolicy.cpp

需要注意的是：P1Node输出size大于preview size有助于减轻锯齿问题，客户需自行斟酌是否优化此项;

b )确认streaming的三方算法要求的size<=preview size. 三方算法所需size可通过下述API设定：

if( mUseSize ) sel.mIBufferMain1.setSpecifiedSize(mSize)

此修改，除了可优化内存外，同样可提升三方算法处理效率，但是需要看三方是否都支持；

总的来说，内存相关的优化，与手机状态强相关，所有的参数均需实验后方可得出，即使同一个hw，但不同的OS系统，不同的feature，都无法使用同一套优化参数，以上仅仅是提供优化思路与相关参数，具体的数值，请大家多多实验，在性能与内存之前找到项目的平衡点，做到最优.
 
Good Luck！
```

## Android 5.0及以上版本如何编译user+root版本？

```
source build/envsetup.sh && lunch full_k82v12-user && source ./mbldenv.sh && make MTK_BUILD_ROOT=yes -j24 2>&1 | tee build.log
备注：
1.&& source ./mbldenv.sh  这个是MTK内部员工才需要带的build option，客户不需要带这个options
2.红色字体的k82v12是指project name，build之前请务必改为自己的project name
3.-j24后面的24是指编译系统核心数，请根据自己的编译环境进行设置
```

## [Browser]如何客制化Android内置浏览器，使用其它应用打开某些特定的URL?

``` 
请修改DefaultBrowserUrlExt.java或OpxxBrowserUrlExt.java(仅对对应的运营商生效)的
public boolean redirectCustomerUrl(SharedPreference mPrefs)，
在这个函数中添加对特定URL特征的判断和处理并返回true，浏览器将不再处理该URL；
如果不是特定的URL则返回false，由浏览器处理。
```

## [Browser]webview的相关问题

```
1.Mtk Webview的作用:
敝司内部load都是双webview配置。其中mtk webview主要是给mtk browser使用。里面主要是对browser一些必须功能的
支持，此外还有一些webview的bug fix

2.设置webview:
可以从settings选择默认使用的webview，通常设置为Android/Google webview。即其他APP使用webview时，会使
用默认配置

3.Mtk webview与chrome差别：
首先，chromium版本不同。Mtk webview基于chromium 58。
另外，chrome为google app，内部没有source，无法得知google的相关修改

4.双webview的使用:
双webview并不会引起其他问题，APP使用时会去拿默认配置，敝司并没有针对双webview的专门测项。
对于webview功能，可采用单webview的测试即可。
简单来说，内部采用双webview架构主要是支持Mtk browser的一些特殊测试需求。
对于mtk browser而言，无需设置mtk webview为默认项，启动时会优先使用mtk webview。
而其他APP只会使用默认配置的webview。即使手机中有两个webview，也不会造成其他APP同时加载两个
webview或者引起其他相关问题。

5.cts测试时webview的选择:
CTS应该没有对webview做要求。但是建议使用Google webview做CTS测试。
Google webview会不断升级，CTS case也可能会做针对性调整。
而MTK webview版本比较老，且无法同步升级。 CTS测试时，可以有两个webview。
会使用settings中设置的默认值,除mtk webview。

6.卸载mtk webview:
若有使用mtk browser,建议不要卸载mtk webview,MtkBrowser.apk搭配MtkWebView.apk，有些feature的改动会同
时涉及2个module
卸载方法:删除掉/vendor/mediatek/proprietary/apps/MtkWebView/Android.mk 及之前build出的apk再
full build,避免把之前的apk烧进去 
```

## [Dialer]如何客制化长按"*","#"显示"P"，"W"

```
M及之后的版本 DialpadFragment.java

1 在DialpadFragment.java的onLongClick()中添加如下代码：

case R.id.star: {
    removePreviousDigitIfPossible();
    keyPressed(KeyEvent.KEYCODE_P);
    mPressedDialpadKeys.remove(view);
    return true;
}

case R.id.pound: {
    removePreviousDigitIfPossible();
    keyPressed(KeyEvent.KEYCODE_W);
    stopTone();
    mPressedDialpadKeys.remove(view);
    return true;
}

2 (frameworks\base\telephon\java\android\telephony\PhoneNumberUtils.java)修改如下函数：

public static String convertKeypadLettersToDigits(String input) {
    if (input == null) {
        return input;
    }
    int len = input.length();
    if (len == 0) {
        return input;
    }
    char[] out = input.toCharArray();
    for (int i = 0; i < len; i++) {
        char c = out[i];
        // If this char isn't in KEYPAD_MAP at all, just leave it alone.
        if(c=="P"||c=="W"||c==("p"||c=="w") {
            out[i] = c;
        } else {
            out[i] = (char) KEYPAD_MAP.get(c, c);
        }
    }
    return new String(out);
}
3.
public static String normalizeNumber(String phoneNumber) {
    if (phoneNumber == null) {
        return null;
    }
    StringBuilder sb = new StringBuilder();
    int len = phoneNumber.length();
    for (int i = 0; i < len; i++) {
        char c = phoneNumber.charAt(i);
        // Character.digit() supports ASCII and Unicode digits (fullwidth, Arabic-Indic, etc.)
        int digit = Character.digit(c, 10);
        if (digit != -1) {
            sb.append(digit);
        } else if (i == 0 && c == '+') {
           sb.append(c);
        } else if (c == 'p' || c == 'w' || c == 'P' || c == 'W') {
            Rlog.d(LOG_TAG,"normalizeNumber() remove letter (p w P W)");
        } else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
            return normalizeNumber(PhoneNumberUtils.convertKeypadLettersToDigits(phoneNumber));
        }
    }
}
```

## android P UserDebug 软件 adb remount 失败的原因和解决方案

```
在android P版本上如果按照“FAQ18076 android 6.0 M userdebug版本执行adb remount失败”的做法在userdebug版本上执行adb remount会提示以下错误：
remount of the / superblock failed: Permission denied
remount failed
原因是android P版本后google启用avb(Android Verified Boot)2.0，verified boot and DM-verity默认启用策略发生了变化。详情如下：
DM-Verity behavior changes from vboot1.0 to avb2.0.
On vboot1.0, dm-verity is turned off on eng build and is enabled on userdebug/user build.
DM-verity could be disabled with adb (not fastboot) on userdebug build without unlocking device first.
DM-Verity could not be disabled on user build.
On avb2.0, dm-verity behavior are the same on all build variants.
It's turned on by default and could only be disabled after device is unlocked.
dm-verity disable flag is moved from system image dm-verity metadata(vboot1.0) to vbmeta image(avb2.0), and you have two ways to disable it: adb and fastboot.

[SOLUTION]
* Android P + kernel-4.4 or kernel-3.18
- download preloader with verified boot disabled which location is the same as scatter file //preloader_<PROJECT>_SBOOT_DIS.bin
- adb root
- adb disable-verity
- adb reboot
- adb root
- adb remount

* Android P + kernel-4.9 or after 
- download preloader with verified boot disabled which location is the same as scatter file. //preloader_<PROJECT>_SBOOT_DIS.bin
- boot to Home Screen
- go to setting -> system -> Developer options -> OEM unlocking
- adb reboot bootloader
- fastboot flashing unlock
- press volume up key
- fastboot reboot
- adb root
- adb disable-verity
- adb reboot
- adb root
- adb remount
 
After Android P, preloader_<PROJECT>_SBOOT_DIS.bin will be generated automatically after building preloader.
 
* 请注意下载最新的adb/fastboot tool
Windows
https://dl.google.com/android/repository/platform-tools-latest-windows.zip
Mac
https://dl.google.com/android/repository/platform-tools-latest-darwin.zip
Linux
https://dl.google.com/android/repository/platform-tools-latest-linux.zip
```

## [FAQ20989] How to make built-in APK compile filter with speed mode 开启应用加速

```
./target/product/core.mk

# The set of packages we want to force 'speed' compilation on.
- PRODUCT_DEXPREOPT_SPEED_APPS += \
+ PRODUCT_DEXPREOPT_SPEED_APPS += MtkTeleService

查看是否生效
adb shell "dumpsys package com.**.** | grep compila -A1"

Dexopt state:[com.android.camera]
path: /system/priv-app/Camera/Camera.apk
status: /system/priv-app/Camera/oat/arm64/Camera.odex [compilation_filter=speed, status=kOatUpToDate]   //compilation_filter=speed 表示已加速
```

## 应用加固厂商

```
1、加固厂商：加固宝360、娜迦nagapt、梆梆bangcle、爱加密ijm、阿里、百度，盛大，腾讯，网秦通付盾
2、加固厂商对应的特征：
娜迦libchaosvmp.so,libddog.so,libfdog.co
爱加密libexec.so，libexemain.so
梆梆libsecexe.so,libsecmain.so,libDexHelper.so,libSecShell.so 
360libprotectClass.so,libjiagu.so
通付盾libegis.so
网秦libnqshield.so
百度libbaiduprotect.so
```

## [adb]adb 无法连接问题排查

```
 确认usb debugging有开启;

确认PC adb driver有安装;
可能出现VID/PID未添加导致PC不识别： 
文件： android_winusb.inf：
可能用到如下的写法：
%CompositeAdbInterface% = USB_Install, USB\VID_0E8D&PID_201D
上面这种可能出现driver无法正常安装的情况，必须把最后的MI_XXX也加上(MI_00从设备管理器硬件ID确认)：
%CompositeAdbInterface% = USB_Install, USB\VID_0E8D&PID_201D&MI_00

adb kill-server/start-server重启PC adb server.

排除第三方软件干扰adb server: 比如豌豆荚等.
因为豌豆荚会强占某端口，比如5037端口，导致包括GAT和adb client都没法正常连接到adb server. 可以尝试卸载豌豆荚.

确认adb version是新版本：
如果版本较旧，请更新GAT或者单独下载adb包，并加入adb.exe所在路径到环境变量中(建议加到最开始避免其他位置的adb.exe被混用).

交叉测试： Device1 + PC1 ,  Device1 + PC2,   PC1 + Device1, PC1 + Device2  确认可能是PC还是Device的问题.

确认adb版本没被混用：
不同的三方软件或者包括GAT等都会单独包含一份adb.exe(及相关dll)， 所以很可能出现这个进程用的xxxx1/adb.exe, 另外进程使用的是xxxx2/adb.exe, 造成不预期的问题.
可能出现系统路径  XXX:\Windows\System32 存在adb.exe,  恰好在此路径下执行adb, 会优先执行此路径的adb.exe, 而不会执行上面环境变量adb.exe第一个所在路径.
windows系统通过PATH寻找可执行文件的方式与类unix系统不同，比如linux完全从环境变量PATH中找，而windows会优先从当前目录找, 所以需要注意.
windows系统可执行文件一般有扩展名，即环境变量：PATHEXT. 
一般会是.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC.
所以如果存在adb.com, 会优先于adb.exe执行.  如果根本没有跑adb.exe, 尝试从这个方向去查.
如果想确认adb.exe进程对应的可执行文件的准确路径，可通过任务管理器查看: 映像路径名称/命令行.

更换USB线测试.
usb cable质量偏差和连接不良.


PC主机前面的USB Port可能出现供电问题，后面的USB Port供电更稳定：
如出现某个Port始终无法识别，可能是因为之前使用的设备抽电过多导致PC disable此端口，此时建议切换到主机后面的另外一个USB Port.


如果是fastboot模式不能识别:
请尝试用最新google fastboot 工具包;
已有实例确认旧版本fastboot只能识别某些特定的VID/PID, 新版本已修正. 在linux系统可以更新新版本的fastboot.
设备管理器VID/PID如果是0BBD/0C01, 请尝试在android_winusb.inf中增加再更新driver.


排除PC端安装不同来源/不同版本的usb driver导致问题.
请使用干净的PC环境安装MTK SP Driver确认是否可以识别到.


某些usb组合模式，如rndis,adb出现问题:
已查明rndis PC端驱动版本过旧可能导致识别问题：

请卸载rndis驱动，重新更新最新驱动.
重新安装MTK SP Driver.
重启PC.
```

## [FAQ21073] [Android 7.0]切换阿拉伯语，QuickSetting界面图标左右翻转。

```
切换手机语言为阿拉伯语，下拉状态栏到Quicksetting界面，快捷图标左右翻转。

如果不想要这个左右翻转效果，修改方法如下：

frameworks/base/packages/SystemUI/src/com/android/systemui/qs/QSTile.java
-public boolean autoMirrorDrawable = true;
+public boolean autoMirrorDrawable = false;
```

## 无法同步正常的时区

```
TimeUtils.getTimeZone() 返回NULL,导致无法得到正确的时区，导致调整时区失败。
vendor/mediatek/proprietary/frameworks/opt/telephony/src/java/com/mediatek/internal/telephony/MtkServiceStateTracker.java
中传给getTimeZone的参数中，
 zOffset=7200000 是以毫秒为单位传进去的参数，但是TimeUtils.java里面调用lookupTimeZoneByCountryAndOffset
时，需要以秒为单位来算时区的offset，这样就会导致返回NULL的TIMEZONE, 可以按下面的修改解决该问题
xref: /frameworks/base/core/java/android/util/TimeUtils.java
修改
private static android.icu.util.TimeZone getIcuTimeZone(int offset, boolean dst, long when, String country) {
    if (country == null) {
        return null;
    }
    android.icu.util.TimeZone bias = android.icu.util.TimeZone.getDefault();
    // 修改一下，这里需要传的单位是秒，而以前版本传给getIcuTimeZone是 offset都是以毫秒为单位的，而google 这里没有除1000,故返回NULL
    return TimeZoneFinder.getInstance().lookupTimeZoneByCountryAndOffset(country, offset/1000, dst, when, bias);
}
```

## [FAQ15121]Ubuntu 下 QT Flashtool 不能使用

```
1, ubuntu shell cmd:  sudo apt-get purge modemmanager
2, Double confirm if the ModemManager is under the root directory /bin, if yes, remove it or rename the software.
3, Using configuration in udev to avoid USB device to be recognized as modem device.
    -- add the file "99-ttyacms.rules" in the path "/etc/udev/rules.d"
    -- add the following content in the file "99-ttyacms.rules"
    ATTRS{idVendor}=="0e8d", ENV{ID_MM_DEVICE_IGNORE}="1"

Note: If after that the QT flashtool still can not flash, there are some notics need to be checked also while download under ubuntu OS,
the detail please refer to [FAQ09734] [FlashTool]Qt FlashTool在Linux下不能下载，提示S_COM_PROT_OPEN_FAIL
```

## [FAQ11483]修改SeLinux policy之后快速验证

```
在Android KK 4.4 版本后，Google 有正式有限制的启用SELinux, 来增强android 的安全保护。
KK 版本: 在MTK Solution 中，我们将SELinux Policy 文件存放在三个目录中。
1). Google 原生目录 alps/external/sepolicy
2). MTK 配置目录 alps/mediatek/custom/common/sepolicy
3). 客户配置目录 alps/mediatek/custom/{Project}/sepolicy (默认没有配置)
在编译时，系统会以文件为单位整合替换，优先级: 客户配置目录 》MTK 配置目录 》 Google 原生目录.

L/M版本: 将SELinux Policy 文件存放在下面目录。
1). Google 原生目录 alps/external/sepolicy
2). MTK 配置目录 alps/device/mediatek/common/sepolicy
3). MTK 配置目录 alps/device/mediatek/{platform}/sepolicy (M版本后才添加使用，主要是针对平台客制化)
在编译时, 系统会以合并的方式(union), 将MTK 配置目录下的policy 附加到Google 原生的policy 上，而非替换.
如果在alps/device/mediatek/common/sepolicy 下面新增SELinux Policy file, 在L 版本需要更新alps/device/mediatek/common/BoardConfig.mk 中的BROAD_SEPOLICY_UNION 增加对应的xxxx.te, M 版本已经取消了这个宏，无需再操作.

N 版本: 将SELinux Policy 文件存放在下面目录
1). Google 原生目录 alps/system/sepolicy
2). MTK 配置目录 alps/device/mediatek/common/sepolicy/  注意的是里面有basic, bsp, full 目录. 其中basic 目录所有的版本都会吃到; bsp 目录则是bsp 版本 + Turnkey 版本都会吃到;  full 目录则是只有Turnkey 版本会吃到。

O 版本: 将SELinux Policy 文件存放在下面目录
1). Google 原生目录 alps/system/sepolicy
2).  MTK 配置目录 alps/device/mediatek/sepolicy 这个的设定已经大改, 需要大家参考MOL 上的 sepolicy O 版本更新.

1). 确认问题是否与SELinux 相关，可以参考FAQ: [SELinux] 如何设置确认selinux 模式?

2). 快速编译验证

在已经编译过的版本上,  首先编译出新的selinux policy, 然后打包boot image.
KK:  ./mk project_name mm external/sepolicy
./mk project_name bootimage

L/M:
mmm external/sepolicy
make -j24 ramdisk-nodeps
make -j24 bootimage-nodeps

N:
mmm system/sepolicy
make -j24 ramdisk-nodeps
make -j24 bootimage-nodeps

然后再重新刷bootimage 测试.

O:
mmm system/sepolicy
然后再根据对应的sepolicy 是存放在system image, 还是 vendor image 对 system, vendor image 分别打包.


[相关FAQ]
[FAQ11414] android KK 4.4 版本后，user 版本su 权限严重被限制问题说明
[FAQ11486] 在Kernel Log 中出现"avc: denied" 要如何处理？
[FAQ11485] 权限(Permission denied)问题如何确认是Selinux 约束引起
[FAQ11484] 如何设置确认selinux 模式
```

## [FAQ20658] [Shutdown]如何初步定位异常关机问题

## [FAQ18208] [SAT]如何不显示开机SIM卡欢迎语

## [FAQ20994] Android O版本发送广播受限问题

## [FAQ20745] Launcher无Notification Dots feature

```
/vendor/mediatek/proprietary/packages/apps/Launcher3/src/com/android/launcher3/badge/BadgeRenderer.java
private static final boolean DOTS_ONLY = true;
修改为：
private static final boolean DOTS_ONLY = false;
```

## [FAQ20215] 如何动态关闭fast starting window？？？？？？fast starting window是什么东西？？？

```
关闭方法如下,ENG版本有效
adb shell setprop debug.disable_fast_start_win 1
adb shell stop
adb shell start
```

## [FAQ20862] 介绍framework-res__auto_generated_rro.apk

```
在Android O上面 Google增加了一个enforced RRO的方法，可以把之前的build time overlay强制转换成runtime resource overlay.
如果overlay的是framework-res的资源包，那么会自动生成一个file在/vendor/overlay/framework-res__auto_generated_rro.apk. 里面会包含overlay的资源.
这个framework-res__auto_generated_rro.apk.不要删除，请保留。
```

## [FAQ19034] 数据库权限问题分析

```
应用报数据库相关错误，强制关闭
以01-01 08:05:07.572 E/SQLiteLog( 2276): (14) os_unix.c:30090: (13) open(/data/user/0/com.android.providers.calendar/databases/calendar.db)为例；

首先根据[FAQ11485][SELinux Debug]权限(Permission denied)问题如何确认是Selinux 约束引起？
如是selinux引起，则请使用QAAT工具进行扫描log获取分析结果和解决方案；

如果不是selinux引起，则对比正常机器和异常机器的如下信息，看下差异点，
如有差异，则把正常机器修改为异常机器的内容；如果复现，则找到问题点； 

adb shell ls -aZl /data > 1.txt
adb shell ls -aZl /data/user > 2.txt
adb shell ls -aZl /data/user/0 > 3.txt
adb shell ls -aZl /data/user/0/com.android.providers.contacts > 4.txt
adb shell ls -aZl /data/user/0/com.android.providers.contacts/databases > 5.txt
adb shell ls -aZl /data/data > 6.txt
adb shell ls -aZl /data/data/com.android.providers.contacts > 7.txt
adb shell ls -aZl /data/data/com.android.providers.contacts/databases > 8.txt
adb shell mount > 9.txt
adb shell ps > 10.txt

对于问题点，如果没有复现问题的完整log，通常较难分析根本原因；
不过可以尝试recovery下的root-check，看下手机是否有被root或者image被破坏的可能；

对于案例的原因为：data下面的user文件夹权限被修改为：drwx------ root root （正常是：drwx--x--x system system），即访问A/B/C.txt，需要拥有A、B、C.txt三个权限。

对应的workaround为：
/system/core/rootdir/init.rc

on post-fs-data

mkdir /data/system/heapdump 0700 system system

mkdir /data/user 0711 system system //添加此行

对于其他DB的分析方法类似。。。
```

## [FAQ20741] [FM APP]如何做到可以在客户端卸载内置的FM

```
如何做到可以在客户端卸载内置的FM？ 

1.  O版本之前，需要 patch，可提eService 申请。
2.  patch之后(O后不需要)，需要按如下修改：

/vendor/mediatek/proprietary/frameworks/base/data/etc/pms_sysapp_removable_vendor_list.txt
添加： com.android.fmradio

/system/core/rootdir/etc/public.libraries.android.txt
添加 libfmjni.so

Add in /device/mediatek//device.mk
PRODUCT_PROPERTY_OVERRIDES += persist.sys.pms_sys_removable=1
```

## [FAQ20491] [Android O] AEE 在android o上的变化 以及 提交log需要注意的问题

```
在android o 中， systemimg 和vendorimg 中的daemon 不能直接通信，aee 为此在android O 上做出了一些变化；
导致在提case时，不能在第一时间提供全面的log信息；
 
一， AEE 的变化：
 1. 架构的改变。
Before：
AEE只存在与system/bin/下，daemon的名字叫debuggerd(debuggerd64)
After:
AEE在system/bin和vendor/bin下各有一套，daemon名字改为：aee_aed(aee_aed64)---system/bin下；aee_aedv(aee_aedv64)---vendor/bin/下

2.不同异常类型DB存放路径
Before：
/data/aee_exp;
/sdcard/mtklog/aee_exp;
After:
JE/ANR/SWT                           db存放在data/aee_exp
KE/HWT/HW_REBOOT/EE/NE   db存放在data/vendor/mtklog/aee_exp

3. 注意 注意：不能手动删除/data/aee_exp, /data/vendor/mtklog/aee_exp 目录：
aee db 存放路径 /data/aee_exp, /data/vendor/mtklog/aee_exp 的selinux标签如下， 这个标签是在init 创建目录的时候打下去的：
/data/aee_exp(/.*)? u:object_r:aee_exp_data_file:s0
/data/vendor/mtklog/aee_exp(/.*)? u:object_r:aee_exp_data_file:s0
如果删除aee db 的存放目录， 再创建的时候会沿用父目录的selinux 标签（ system_data_file），导致aee 没有selinux 权限不能正确产生db（重新开机后，init不会强制更新标签，还是会使用 system_data_file 的签名）；
solution：有root权限的手机有可能误删，会影响抓DB。解决办法，执行restorecon -R xxx/aee_exp命令即可

4. Android user load，如何抓到所有异常的aee db？
FAQ20159   Android user/userdebug load，如何抓到所有异常的aee db？

5. aee 对三方app exception handle的过滤
public void handle(String type, String info, String pid) {
    Log.w(TAG, "Exception Log handling...");
    if (type.startsWith("data_app") && !info.contains("com.android.development")
            && (SystemProperties.getInt("persist.mtk.aee.filter", 1) == 1)) {
        Log.w(TAG, "Skipped - do not care third party apk");
        return;
    }
aee 有对上层三方app 进行过滤， 如需抓三方app 的exception， 可以设置属性：setprop persist.mtk.aee.filter  0

6. user load ：三方app 默认不做ANR dump
1608    /**
1609     * Reduce the 3rd party's anr dump info in user load for performance
1610     */
1611    private boolean needReduceAnrDump(ApplicationInfo appInfo) {
1612        return IS_USER_LOAD && !isBuiltinApp(appInfo) && !(SystemProperties.getInt(
1613                "persist.anr.dumpthr",NORMAL_ANR_FLOW) == ENABLE_ANR_DUMP_FOR_3RD_APP);
1614    }
如需抓三方app 的ANR exception， 可以设置属性：setprop persist.anr.dumpthr  1

二， 提交log需要注意的问题
Android O ,mtklog 和db 不在同一个目录，提交log 时需要同时导出来：
1, adb pull /sdcard/mtklog
2, adb pull /data/aee_exp
3, adb pull /data/vendor/mtklog/aee_exp
```

## [FAQ20659] How to kill a native process and remake it re-launch

```
user load开启android malloc debug机制，在设置property之后，需要将该进程kill并且重新re-launch

[SOLUTION]

请在user load设置property之后，按以下步骤进行：

1.kill -9 pid(该进程的pid)
2.ps | grep processname(该进程的name)
如果该进程存在，则该进程在kill 掉之后自动re-launch了
3.如果该进程不存在，则setprop ctl.start processname(该进程的name)
4.ps | grep processname(该进程的name)
如果该进程存在，则重新re-launch了
```

## [FAQ20594] 如何定位分析不开机及开机时间长问题

```
1、客退机问题：请先参考DCC文档《RMA_SOP.pptx》进行初步定位，厘清软件问题还是硬件问题。
2、非客退机问题：
a、不能正常开机并且会自动重启：
请在eService的title和description中标注“重启”的信息，保留问题复现版本codebase及问题现场，提交eService处理；
b、开机卡住，不能进入HomeScreen，不发生重启：
请下载DCC文档《[SOP]Bootup_Issue_Checking_SOP_V1.0.rar》进行初步分析定位，如仍未解决还请填写文档中相关信息后提交eService处理（同步上传文档）；
c、开机时间长：
请下载DCC文档《[SOP]Bootup_Issue_Checking_SOP_V1.0.rar》进行初步分析定位，如仍未解决还请填写文档中相关信息后提交eService处理（同步上传文档）；
```

## [VPN][FAQ19293] [Framework-VPN]使用VPN 之前为何要设定lock screen PIN or password

```
第一次使用vpn，在添加profile 的时候，系统会提示“You need to set a lock screen PIN or password before you can use credential storage”,有什么作用？可否去掉？
 
vpn 的信息都是需要加密的，在目前的设计里面，这个密码是用来加密要保存的账号信息的。如果去掉，账号信息很容易泄露，不建议去掉。

Android Default就只支持IPSec，这个可以通过Settings中的VPN查看，不支持 TLS 和 SSHv2。

Android VPN支持以下几种协议：
PPTP
L2TP/IPSec PSK
L2TP/IPSec RSA
IPSec Xauth PSK
IPSec Xauth RSA
IPSec Hybrid PSK
```

## [mtklog]MTKlog 常见问题汇总

```
1) Quick Start
1 .深入了解Logging Tools
http://online.mediatek.com/_layouts/15/mol/topic/ext/Topic.aspx?mappingId=844fde79-3e58-4f1f-bba7-cf0be27cee45

2 .深入了解MTKLogger
http://online.mediatek.com/_layouts/15/mol/topic/ext/Topic.aspx?MappingId=4116ea3e-1d44-4f6c-a150-19c57118bd11

2) FAQ 系列
NEW- 1 FAQ19560 user版本开启mtklog
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ19560

NEW- 2 FAQ20491 [Android O] AEE 在android o上的变化 以及 提交log需要注意的问题
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ19560

3 .FAQ19362 如何设置mobilelog modemlog networklog size大小
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ19362

4 .FAQ15308 FactoryMode下用SD卡抓取mobilelog及modemlog
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ15308

5 .FAQ14184 Factory Mode下USB抓取modem log的方法
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ14184

6 .FAQ14339 MTK各boot up mode下 log的抓取方法
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ14339

7 .FAQ06944 Meta mode以及其他模式如何抓取mobilelog 
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ06944

8 .FAQ20071 KERN_DEBUG 等级log打印 & MTK Logd Filter Mechanism
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ20071

9 .FAQ15320 不同模式下如何保持uart log一直打开
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ15320

10.FAQ03891如何在User版本开启串口(Uart),抓取上层Log,开启输入控制台
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ03891

11 FAQ19689 kernel_log.boot从时间0s开始抓取(加大kernel log buffer)的修改方法
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ19689

12 FAQ20108 How to enable kernel dynamic debug log?
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ20108

13 FAQ20241 第一次开机加解密，开机解密过程中log 抓不到/丢失问题
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ20241

14 FAQ18335 Modem Exception提交eservice要提供哪些文件
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ18335

15 FAQ17814 如何设置MTKlogger是否开机自启动
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ17814

16 FAQ06939 如何用adb控制MTKLogger
http://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ06939
```

## [FAQ20599] 单机高概率问题处理方法

```
这里针对的是死机重启类问题
单机------是指出现问题的机器只有一两台
高概率-------是指这一两台问题机很容易出现死机重启
 
一旦机器符合"单机高概率" 这个特征都可以判定为硬件问题！
原因是：如果是软件问题，如此高的概率必然会导致其他机器大规模复现！！因为机器的软硬件环境都是一样的
 
对于单机高概率问题的处理流程：
1、回读pl lk bootimg systemimg与下载前的对比，看是否OK，如果不一样要么说明被用户刷机，要么说明emmc有问题------此时客户可以重刷来验证emmc是否损坏
 
2、如果步骤1 ok,请接下来做flash tool 的DDR test ,此步骤的目的是验证DDR是不是有明显的损坏
 
3、如果上面2个步骤都OK，其他器件的排查请贵司硬件先排查，然后在求助弊司硬件
```

## [FAQ20589] 修改Camera拍照音效

```
frameworks/av/services/camera/libcameraservice/CameraService.cpp

2096void CameraService::loadSoundImp() {
2097    LOG1("[CameraService::loadSoundImp] E");
2098    mSoundPlayer[SOUND_SHUTTER] = newMediaPlayer("/system/media/audio/ui/camera_click.ogg");
2099    mSoundPlayer[SOUND_RECORDING_START] = newMediaPlayer("/system/media/audio/ui/VideoRecord.ogg");
2100    mSoundPlayer[SOUND_RECORDING_STOP] = newMediaPlayer("/system/media/audio/ui/VideoStop.ogg");
2101    LOG1("[CameraService::loadSoundImp] X");
2102}
```

## [FAQ02918] [AT]如何在java层直接下发at cmd

```
目前AP端在PhoneBase.java中有方法invokeOemRilRequestStrings可以向modem透传AT，如果您想在modem 客制化自己的AT在ap端使用，可以用此方法；
Tips: 必须是run在phone进程中的代码才可以如此，第三方apk是不可以的。如果允许第3方apk调telephony中的接口向modem下AT命令的话，对于手机，这个安全隐患太大！

需要注意的地方：
（1）modem端的客制化需要最后return OK，否则RILD收到response后不会handle
（2）ap侧使用时需要定义长度为2的string数组；
<1>第一个成员存放需要下的AT string
<2>第二个成员存放这个AT的名字，用来处理modem上报response时区分的tag；他不会被下到modem侧
例如需要读IMEI，那么可以定义如下：

String imeiString = new String[2]; //第一个string是你要下的AT command的完整string
imeiString[0] = "AT+EGMR=0,7";
imeiString[1] = “+EGMR”;  //第二个string必须有，且名字是此AT名字，主要给rild用，不会下给modem；否则不会通过此channel返回上来

////////////详细的例子如下//////////////////////////////////////////////////////////////////////////////////////////
GPRS.java
onClick
String imeiString = new String[2]; //第一个string是你要下的AT command的完整string
if(FeatureOption.MTK_GEMINI_SUPPORT){
    int simId = phone.getMySimId();
    if(simId == Phone.GEMINI_SIM_1){
        imeiString[0] = "AT+EGMR=0,7";
    }else if(simId == Phone.GEMINI_SIM_2){
        imeiString[0] = "AT+EGMR=0,10";
    }
}else{
    imeiString[0] = "AT+EGMR=0,7";
}
imeiString[1] = “+EGMR”;  //第二个string必须有，且名字是此AT名字，主要给rild用，不会下给modem；否则不会通过此channel返回上来
Log.v(LOG_TAG, "IMEI String:" + imeiString[0]+imeiString[1]);
phone.invokeOemRilRequestStrings(imeiString, mResponseHander.obtainMessage(EVENT_READ_IMEI));

以上是common的处理，上述的phone对象如果获取的是卡1的GSMPhone对象，那么这个命令是发送给SIM1，同理，如果是卡2的GSMPhone对象，那么这个命令是发送给SIM2。

【KK版本及以前】
如果获取的是GeminiPhone对象，那么可以通过GeminiPhone中invokeOemRilRequestStringsGemini方法来发送，即public void invokeOemRilRequestStringsGemini(String[] strings, Message response, int simid)。
卡1为PhoneConstants.GEMINI_SIM_1，卡2为PhoneConstants.GEMINI_SIM_2。

【L版本】
L版的C2K双卡项目上
1'当主卡为C2K卡时
要下AT至C2K Modem，可通过PhoneFactory.getDefaultPhone().getNLtePhone().invokeOemRilRequestStrings(,);方法实现；(其中getDefaultPhone()也可用getPhone(phoneId)来替换，下同)
要下AT至GSM Modem 4/3/2G protocol，可通过PhoneFactory.getDefaultPhone().getLtePhone().invokeOemRilRequestStrings(,);方法实现；
要下AT至GSM Modem 2G protocol，可通过
PhoneFactory.getPhone(phoneId).getLtePhone().invokeOemRilRequestStrings(,);方法实现；
2'当主卡为GSM卡时
要下AT至GSM Modem 4/3/2G protocol，可通过PhoneFactory.getDefaultPhone().getLtePhone().invokeOemRilRequestStrings(,);方法实现；
要下AT至C2K Modem，可通过PhoneFactory.getPhone(phoneId).getNLtePhone().invokeOemRilRequestStrings(,);方法实现；
要下AT至GSM Modem 2G protocol，可通过
PhoneFactory.getPhone(phoneId).getLtePhone().invokeOemRilRequestStrings(,);方法实现；
L版的非C2K的其他项目上，直接通过PhoneFactory.getPhone(phoneId).invokeOemRilRequestStrings(,);方法下AT命令至相应卡槽对应的Modem。

【M版本】
M0.MP1仍保持L版本的写法，其他M版本如下：
在之前的版本上，
ap侧使用时需要定义长度为2的string数组；
<1>第一个成员存放需要下的AT string
<2>第二个成员存放这个AT的名字，用来处理modem上报
在M上，因架构有所调整，如果要将AT命令发往C2K modem需在此添加第三个成员变量
<3>第三个成员存放这个AT希望发向哪个modem，DESTRILD:C2K指定发向C2K MD，DESTRILD:GSM指定发向GSM MD。
（第三个成员不设定的话，默认发向GSM MD）

【N版本】
参数<1> 和<2>处理与M上相同。
参数<3> 在 N1.MP16(MT6763) 版本 和 N1.MP18(MT6739) 版本 由于C2K和GSM在同一个modem，所以不用添加。其他版本与M上相同。

【O版本】
参数<1> 和<2>处理与M上相同。
参数<3> 在 搭配MT6763平台 和 MT6739平台的版本，由于C2K和GSM在同一个modem，所以不用添加。
```

## [FAQ19648] 如何发送AT命令

## [FAQ20503] 如何查找某个语言在Setting语言列表中是哪项

```
举例说明：若需要找到语言列表下的孟加拉语，可以通过如下方式进行找到孟加拉语显示的字串是怎么样的？
（1）通过https://zh.wikipedia.org/wiki/ISO_639-1这个网站可以查到某个语言的language code，如要找孟加拉语，在这个网站上查到孟加拉语的language code是bn；
（2）进入 /external/icu/icu4c/source/data/lang/目录，根据要查看语言的language code，找到对应这个语言icu中字串的定义文件，如孟加拉语对应的文件bn.txt；
（3）打开这支文件查看languages下bn的定义，就是孟加拉语在settings中语言列表的显示；
（4）拖动Settings的语言列表即可查看到孟加拉语对应的名字，其他语言的查找方式类似。
```

## [FAQ20453] flash tool抓取串口log

```
flash tool下载或者做memory test时的一些log需要通过串口来打印，典型的是DDR模块相关的信息；但抓串口log常要飞uart 线，带来诸多不便

使用device.cfg.xml来让USB抓取串口log，不需要飞UART线。
device.cfg.xml放在flash tool目录的根目录，
文件内容如下：
<?xml version="1.0" encoding="utf-8"?>
<config>
    <!--log_level: trace, debug, info, warning, error, fatal -->
    <log_level>info</log_level>
    <!--log_channel: none, uart, usb, uart_usb -->
    <log_channel>usb</log_channel>
    <!--end_stage: 1stDA, 2ndDA-->
    <end_stage>2ndDA</end_stage>
</config>

说明：log_channel选择usb代表使用usb抓取串口log，抓到的串口log和flash tool原有的log在相同目录，C:\ProgramData\SP_FT_Logs\SP_FT_Dump_**-**-20**-**-**-**\DA_20******-******_0.log，选择uart代表需要硬件飞uart线抓取。
end_stage：1stDA代表是memory test时抓取，2ndDA代表是下载时抓取 
USB抓串口log相比飞线抓串口log会增加一点时间，1G大小的bin全擦下载大概多15S；
```

## [FAQ20309] 在N版本上如何编译SDK

```
首先，要编译SDK，需要向MTK申请banyan sdk的代码
其次，编译分两种，一种是Android SDk包，一种是Mediatek SDk包
Android SDK包
source build/envsetup.sh
lunch full_banyan_x86-eng
make BUILD_MTK_SDK=sdk -j24 -k sdk  2>&1 | tee android.log

Output: out/host/linux-x86/sdk/full_banyan_x86

note: The out does not contains system.img part.

Mediatek SDK包

source build/envsetup.sh
lunch full_banyan_x86-eng
make BUILD_MTK_SDK=sdk -j24 -k banyan_sdk_addon  2>&1 | tee android.log

Output: out/host/linux-x86/sdk_addon

note: The out does not contains system.img part.
```

## [FAQ20263] 设置中选择时区列表新增时区的显示如何随语言变化

```
在Settings->Date & time->Select time zone中增加某个时区后，如何使这个时区的显示，跟随语言变化。如：在系统语言为英语时时区名字显示英语，为俄语时显示俄语，等等。
若需要切换到某个语言下，新增时区在这个语言下显示的字串变成当前语言，那么需要对这个语言下新增时区的字串定义进行修改，如，添加了新时区Europe/Astrakhan，但是当切换到俄语的时候这个时区的显示没有变成俄语，具体修改方法如下：
（1）找到俄语下时区信息的定义文件，/external/icu/icu4c/source/data/zone/ru.txt
（2）在ru.txt中的zoneStrings域中添加新增时区的定义

zoneStrings{
    "Europe:Astrakhan"{
        ec{"xxx"}  //xxx为这个时区在当前语言下需要显示的字串
    }
}
Europe:Astrakhan添加的位置需要按照字母顺序进行排序，所以需要添加在Europe:Athens之前。
（3）修改之后重新编译icu，并重新编译版本即可生效。
其他语言修改方式一样，找到这个语言/external/icu/icu4c/source/data/zone/下对应的xxx.txt文件，并添加新增时区的定义即可。
```

## [FAQ19857] 采用Signature Scheme v2签名方式的APK预置失败

```
Google在N上引入了一项新的应用签名方案Signature Scheme v2，它能提供更快的应用安装时间和更多针对APK文件更改的保护
在N上预置APK时，如果APK是采用的Signature Scheme v2签名，采用原有的预置应用方式预置APK会失败：

Failure [INSTALL_PARSE_FAILED_NO_CERTIFICATES: Failed to collect certificates fr
om /data/app/vmdl1483607312.tmp/base.apk: META-INF/CERT.SF indicates /data/app/v
mdl1483607312.tmp/base.apk is signed using APK Signature Scheme v2, but no such
signature was found. Signature stripped?]

经过BUILD_PREBUILT后的apk与原apk是有差异的，因为v2是对apk整体签名，所以这个差异导致签名失效。
1、app预置到到工程中，用android.mk编译之后的APK是有区别的，android编译系统会用zipalign对APK进行字节对齐等操作
2、APK Signature Scheme v2这个是Google在N上新引入的签名方式。v2 签名将验证归档中每个文件的已压缩文件内容，如有任何自定义任务篡改 APK 文件或对其进行后处理（无论以任何方式），那么v2 签名会有作废的风险

在预置APK build进系统时候不让其走编译流程，在其他模块的 android.mk 加入下面的cp脚本：
$(shell cp $(LOCAL_PATH)/***/*.apk     $(TARGET_OUT)/vendor/operator/app)

APK能通过PMS扫描安装成功，可能还会报so找不到的问题，可以参考：
ID: FAQ19894  N上预置APK失败提示找不到so文件


如何知道APK是不是采用Signature Scheme v2签名？可参考：
FAQ20235	如何知道APK是不是采用Signature Scheme v2签名？

使用apksigner.jar工具的verify命令。这个工具位于SDK目录的build-tools目录下。打开cmd，把目录切到SDK\build-tools\版本号\lib下。
注：v2签名方式时在Android7.0后才推出的，所以只有版本>25的 SDK\build-tools\ 中才能找到apksigner.jar

java -jar /home/zq/Android/Sdk/build-tools/27.0.3/lib/apksigner.jar verify -v xxx.apk

Verifies
Verified using v1 scheme (JAR signing): true
Verified using v2 scheme (APK Signature Scheme v2): false
Number of signers

具体可以参考：https://developer.android.com/studio/command-line/apksigner.html#usage
```

## [FAQ20246] [EM]N版本User-Load工模中没有以往的功能项

```
从M1.MP3 branch开始（包含N0 N1 branch），对于User Load，出于系统安全或功能必要性的考虑，有些测试功能在工模UI上已移除入口。如确实有需要，可以按照SOLUTION的流程打开。
以打开User Load工模中Hardware Testing页面的Power项为例：

1.根据工模UI上显示的英文字符串，在以下文件中找到对应的name.
/vendor/mediatek/proprietary/packages/apps/EngineerMode/res/values/strings.xml
例如： <string name="power">Power</string>

2.根据1中找到的name，在以下文件找到对应Preference的key.
/vendor/mediatek/proprietary/packages/apps/EngineerMode/res/xml/telephony.xml
/vendor/mediatek/proprietary/packages/apps/EngineerMode/res/xml/connectivity.xml
/vendor/mediatek/proprietary/packages/apps/EngineerMode/res/xml/hardware_testing.xml
/vendor/mediatek/proprietary/packages/apps/EngineerMode/res/xml/location.xml
/vendor/mediatek/proprietary/packages/apps/EngineerMode/res/xml/log_and_debugging.xml
/vendor/mediatek/proprietary/packages/apps/EngineerMode/res/xml/others.xml
例如：Hardware Testing页面对应hardware_testing.xml文件，在该文件可以找到：
<Preference android:key="power" android:title="@string/power"

3.根据2的key，在以下文件的 removeUnsupportedItems()函数的if ( FeatureSupport.isUserLoad())代码块中，注释对应的removePreference即可.
/vendor/mediatek/proprietary/packages/apps/EngineerMode/src/com/mediatek/engineermode/PrefsFragment.java
例如：removePreference(screen, "power"); 改成 //removePreference(screen, "power");

PS:更加快捷的做法是，由于Preference的key值一般和工模UI显示的字串相像，于是一般可以跳到第三步直接注释代码。
但是按照1.2.3步走下来必不会出错。
```

## [FAQ20255] [Recovery mode][Android N1]Recovery mode不进行任何操作，无法pull cache/recovery/last_log

```
遇到以下场景：

1、按键进入recovery mode；不做任何操作。
2、adb reboot recovery；不做任何操作。
3、其他显示调用reboot recovery mode，但没有实质性的操作需求。

如果再次reboot 到normal mode，执行如下操作会报错：

adb shell pull cache/recovery/last_log
/system/bin/sh: pull: not found

/cache/recovery # ls -al
total 32
drwxrwx--- 2 system cache 4096 2010-01-04 03:44 .
drwxrwx--- 7 system cache 4096 2010-01-01 00:04 ..
-rw------- 1 root root 5 2010-01-04 03:47 last_locale
No last_log
[SOLUTION]
这是Google原生的做法，如果比较介意，可以通过修改如下code:
/bootable/recovery/recovery.cpp
bool modified_flash = false; // 改成 true
```

## [FAQ20213] how to find which progress switch on/off the wifi

```
Many times ,we will meet this problem ,the wifi was disabled or enabled  without the user swith the switcher ;
so next ,i will introduce the way which will be used to  find the  real "operator"?
from log ,
main_log ,search the key log :setwifistate
Line 25438: 04-25 14:35:26.382642 892 954 D WifiStateMachine: setWifiState: disabling
Line 26117: 04-25 14:35:26.793326 892 954 D WifiStateMachine: setWifiState: disabled
Line 26650: 04-25 14:35:29.152201 892 954 D WifiStateMachine: setWifiState: enabling
Line 26854: 04-25 14:35:29.432136 892 954 D WifiStateMachine: setWifiState: enabled
sys_log,search the key log :setwifienabled
Line 22510: 04-25 14:35:26.312304 892 906 D WifiService: setWifiEnabled: false pid=6102, uid=10081
Line 23459: 04-25 14:35:27.253092 892 1572 D WifiService: setWifiEnabled: true pid=6102, uid=10081
ok,next step is to find the pid = 6102 uid = 10081 maps who?

event_log ,search the key log :6102;
04-25 11:25:08.720815   892   907 I am_pss  : [6102,10081,com.cshare.transfer,132882432,109949952]

it means is the app whose packect name is com.cshare.transfer turn on/off the wifi ;

ps:
a progress only has one UID ,but a UID maybe correspond to many progress ;
PID is the progress ID,every progress's pid is different;
TID is the thread ID ,a progress include many thread;

so if only want to find the progress ,we can use PID;
if we need find the TID ,we need conbine the PID with TID;
if we want to find the user group,we can use UID;
```

## [FAQ20206] 如何使用adb command来设置cpu频率和核数

```
透過ADB Shell設定CPU開核與freq的command與用法如下:
# Disable PPM
echo 0 > /proc/ppm/enabled
# Enable PPM (Default)
echo 1 > /proc/ppm/enabled
echo 0 > /proc/ppm/enabled
Fixed # Core for each cluster
echo X Y > /proc/ppm/policy/ut_fix_core_num Where,
X = -1, 0 ~ 4. Core# for cluster 0
Y = -1, 0 ~ 4. Core# fot cluster 1
echo 4 4 > /proc/ppm/policy/ut_fix_core_num

Fixed OPP for each cluster
echo X Y > /proc/ppm/policy/ut_fix_freq_idx Where,
X = -1, 0 ~ 15. OPP for cluster 0
Y = -1, 0 ~ 15. OPP for cluster 1
echo 1 2 > /proc/ppm/policy/ut_fix_freq_idx
範例:
echo 1 > /proc/ppm/enabled
echo 4 4 2 > /proc/ppm/policy/ut_fix_core_num   <= 開4小核 4大核 2最大核
echo 0 0 0 > /proc/ppm/policy/ut_fix_freq_idx    <小核用最高頻，大核用最高頻，最大核用最高頻

可以先從CPU最高效能全開來測試，然後逐步調降適當的設定
建議可以安裝附件的PerMon的APK，可以即時顯示CPU 的核數與freq在畫面上
可以用來確認CPU設定是否生效
若有確定較好的設定，就可以修改custom folder的設定
```

## [FAQ20189] 如何关闭手机防盗

```

PPL（手机防盗）是我司为满足出货中国大陆的手机pass CTA安全等级能力测试开发的。
出货海外的项目不需要这个apk的，可以直接拿掉。

拿掉方法：
1. 关闭MTK_PRIVACY_PROTECTION_LOCK
2. init.rc中拿掉ppl_agent的启动

service PPLAgent /vendor/bin/ppl_agent
    class main
    user root
    group system cache
```

## N平台预置apk,无法打开

```
aaltool apk 点击打开失败；打印类似log；

01-01 02:20:55.889 3100 3100 D DropBoxReport: java.lang.UnsatisfiedLinkError: dlopen failed: library "libaal.so" not found

且在/system/vendor/lib/以及/system/vendor/lib64/下都有libaal.so

[SOLUTION]
Android N 之后, third party app 会被限定不能使用非AOSP library (ex: libaal)
需用 eng load, push license file暫時打開權限

1、build aaltool 时，build出来的libaaltool_jni.so push到手机/system/vendor/lib 和 /system/vendor/lib64 下；

2、新建public.libraries.txt，内容如下：
libc++.so
libaal.so
libaaltool_jni.so
libbinder.so
libutils.so
libdpframework.so
libandroid_runtime.so

3、push public.libraries.txt到手机 /vendor/etc/目录，重启之后就可以正常使用；
adb push public.libraries.txt /vendor/etc/
```

## [monkey] [FAQ20170] MTBF或monkey test中ArrayList/CopyOnWriteArrayList发生ArrayIndexOutOfBoundsException如何解决？

```
发生ArrayIndexOutOfBoundsException是直接使用了get()的原因。
CopyOnWriteArrayList是ArrayList的一个线程安全变体，但CopyOnWriteArrayList的写操作是安全的，而读操作是不安全的，很可能在其他线程中已经将某个index值读走或者删除了。

针对此问题的解法：
解法一：可将该问题反馈至google，请google帮忙修改此问题
解法二：使用迭代器来进行遍历来规避此问题

下面是推荐的修改方法：
// change begin
// NOTE: because of the use of CopyOnWriteArrayList, we *must* use an iterator to
// perform the dispatching. The iterator is a safe guard against listeners that
// could mutate the list by calling the various add/remove methods. This prevents
// the array from being modified while we iterate it.
[SOLUTION]
private void handleScreenTurnedOn() {
    final int count = mCallbacks.size();
    for (int i = 0 ; i < count; i++) {
        KeyguardUpdateMonitorCallback cb = mCallback.get().get();
        if (cb != null) {
            cb.onScreenTurnedOn();
        }
    }
}

上面的用法可以改为如下用iterator遍历的方式

private void handleScreenTurnedOn() {
    if (mCallbacks != null && mCallbacks.size() > 0) {
        for (WeakReference<KeyguardUpdateMonitorCallback> cb : mCallbacks) {
            if (cb != null && cb.get() != null) {
                cb.get().onScreenTurnedOn();
            }
        }
    }
}

上面只是列举了一个Keyguard的例子，android整个代码范围还有很多这种case
因为这些都是google design，而且涉及到的面很广，所以不便于在代码里面一个一个这样的做修改。
目前采取的措施是：在遇到这种数组访问越界的地方，按照上述的修改思想做改动，平台代码这边不会release正式patch
```

## [FAQ20175] MTBF或monkey test中发生java.lang.IllegalArgumentException: pointerIndex out of range如何解决？

```
在test过程中，经常会碰到如下Java Exception：java.lang.IllegalArgumentException: pointerIndex out of range
这是因为在多点触控操作下，在获取底层的pointer index的时候发生了异常导致返回值为-1
详细log如下所示
 
 
这是google code没有考虑到获取到的index为非法值导致的JE，因此在java层做法是加上一个判断，避免发生JE
 
[SOLUTION]
解法办法是：找到发生JE的文件，在处理touch event的地方，加上判断
```

## 如何关闭SIM热插拔功能

```
关闭SIM热插拔功能需在ap和modem端操作如下：
1. AP端：在projectConfig.mk中将MTK_SIM_HOT_SWAP设置为no即可.
2. modem端：makefile中设置SIM_HOT_SWAP = NONE
```

## [SIM ME lock][FAQ09894] [SIM_ME_LOCK]在锁卡时如何只锁MCC(移动国家码)

```
根据 MNC 的情况，有两种处理方式：
【方法一】
一个国家一般只有有限几个MCCMNC，比如国内中国移动，中国联通与中国电信三家运营商一共有：46000，46001，46002，46003，46005，46006，46007
我们在锁卡配置时将以上7个MCCMNC 全部配置，就相当于我们锁了MCC 460 的卡。
所以如果客户有这种要求，请要求他们提供该国家MCC下所有MNC，然后全部配置即可。注意，在smart phone 上默认最多锁 10 组MCCMNC，如果超出此个数，请参考： [FAQ14236]
锁卡配置完成后，请一定 new 编译并全擦下载测试，否则可能会导致死机或者配置不生效。

【方法二】
如果只有 MCC，不确定MNC,  可以只配置MCC，并修改 sml_Check 比较部分的代码；只要比较3位，代码修改为下面即可；
1） 在 sml_Check 中修改只比较前3 位；
修改后(添加红色部分代码)：
for (idx = 0; idx < meta->num; idx++) {
    offset = idx * size_of_cat;
    code_len = sml_GetCode(cat, imsi, gid1, gid2, sim_mnc_len, (pdata+offset), code);
    kal_prompt_trace(MOD_SMU, "[LOCK MCC]: code[0]=%x,code[1]=%x, (*(pdata+offset))=%x, (*(pdata+offset+1))=%x", code[0],code[1],(*(pdata+offset)),(*(pdata+offset+1)));
    if (size_of_cat == code_len) {
        /* Just lock MCC, e.g.  MCC:460,  MCCMNC=0x46, 0x0F,0xFF */
        /* if ((source == 1) && (cat == SML_CAT_N) && (((*(pdata+offset+1)) & 0x0F) == 0x0F))  */ /*If have slot 0 and slot 1, just lock slot 1*/

        if ((cat == SML_CAT_N) && (((*(pdata+offset+1)) & 0x0F) == 0x0F)) { 
            /*code is from SIM, pdata is from NVRAM, just compare 3 number */
            if ((code[0]==(*(pdata+offset))) && ((code[1]& 0xF0)==((*(pdata+offset+1))& 0xF0))) {
                kal_prompt_trace(MOD_SMU, "[LOCK MCC]: return true.");
                result = KAL_TRUE;
                break;
            }
        } else if (kal_mem_cmp(code, (pdata+offset), code_len)==0) {
               kal_prompt_trace(MOD_SMU, "[LOCK common]: return true.");
               result = KAL_TRUE;
               break;
        }
    }
}

修改前：
for (idx = 0; idx < meta->num; idx++) {
    offset = idx * size_of_cat;
    code_len = sml_GetCode(cat, imsi, gid1, gid2, sim_mnc_len, (pdata+offset), code);
    if (size_of_cat == code_len) {
        if (kal_mem_cmp(code, (pdata+offset), code_len)==0) {
            result = KAL_TRUE;
            break;
        }
    }
}

2）NVRAM_EF_SML_DEFAULT 中按照正常锁卡参数步骤配置
2.1 set lock state
要配置 SML_CAT_N；
2.2 set lock key
2.3 set lock code
对于只锁 MCC的code，MNC需要设置为 FFF
下面是code 部分举例：
/* Category N code */
{0x71,0x6F,0xFF, /*716*/
0x46,0x00,0x2F, /*46002*/ 
如果验证有任何疑问，需要在修改的代码前后各分支都加trace，同时把 code[0], code[1], (*(pdata+offset))), (*(pdata+offset+1)))  的值都打印出来，分析执行情况与预期的差异。
```

## [FAQ13063] [Bluetooth] [AT Command]如何在手机端显示蓝牙耳机电量

```
在 HeadsetStateMachine.java 文件中 processUnknownAt 方法中添加对此AT命令的处理函数
实现此AT命令的处理函数 processAtIphoneaccev(),并在此函数中对此AT命令的参数做解析，并按照电池电量的参数来发出Notification更新状态栏的电量图片信息即可。UI显示部分需自己实现。
在此AT命令处理函数中发出Notification即可在状态栏显示蓝牙耳机电量
```

## [FAQ14885] 在文件管理器中无法分享rar压缩包

```
在default情况下，Android无法通过蓝牙发送、接收rar文件。(可能是因为没有自带解压工具的原因)
如果需要实现收发rar文件，可依据下面方法进行修改 。

1.
packages/apps/Bluetooth/AndroidManifest.xml 的 activity android:name=".opp.BluetoothOppLauncherActivity"
的android.intent.action.SEND以及android.intent.action.SEND_MULTIPLE中分别加入了
<data android:mimeType="application/rar" />

2.
packages/apps/Bluetooth/src/com/android/bluetooth/opp/Constants.java
public static final String[] ACCEPTABLE_SHARE_INBOUND_TYPES = new String[]里
添加了"application/rar"
```

## [FAQ12229] [Bluetooth][Settings]已配对蓝牙设备重命名，重新配对名字不更新

```
测试机蓝牙名称A5QP,辅助机蓝牙名称T650w，第一次配对成功后，再取消配对，修改辅助机的蓝牙名称为12345，此时再次配对，发现测试机显示配对T650W成功，而不是配对12345成功。
修改\packages\apps\Bluetooth\src\com\android\bluetooth\btservice\RemoteDevices.java文件：
添加1条语句，位置如下：
void devicePropertyChangedCallback(byte[] address, int[] types, byte[][] values) {
    switch (type) {
        case AbstractionLayer.BT_PROPERTY_BDNAME:
            device.mName = new String(val);
            device.mAlias = device.mName;        //added MTK
            intent = new Intent(BluetoothDevice.ACTION_NAME_CHANGED);
            ......
            break;
        case AbstractionLayer.BT_PROPERTY_REMOTE_FRIENDLY_NAME:
            break;
    ｝
｝
```

## [FAQ17562] 调用图片或视频文件时没有缩略图显示的原因和解决办法

```
设置墙纸、编辑邮件或者信息时调用图片或视频文件，最近显示的图片或视频没有缩略图显示，
在选择界面按右上角的选项设置成网格视图，也没有缩略图显示，如下面两幅图所示：

DocumentsUI中没有显示缩略图的原因，需要checkro.config.low_ram这个属性是否为true？
 
用adb shell getprop ro.config.low_ram 即可查看
相关代码在如下位置：
/frameworks/base/packages/DocumentsUI/src/com/android/documentsui/dirlist/DirectoryFragment.java
boolean svelte = am.isLowRamDevice() && (mType == TYPE_RECENT_OPEN);
mIconHelper.setThumbnailsEnabled(!svelte);

am.isLowRamDevice()最终是调用到下面的方法去做做判断
frameworks/base/core/java/android/app/ActivityManager.java
public static boolean isLowRamDeviceStatic() {
    return "true".equals(SystemProperties.get("ro.config.low_ram", "false"));
}
 
如果项目开启了GMO feature，则low_ram的property会被设为true
如何check是否有打开GMO feature？
=>请参考ID: FAQ15139  如何确认项目是否打开GMO feature(LCA)？

若GMO enable，则不显示缩略图为正常现象，这是GMO为了节省memory使用而做的调整，不是一个显示异常的问题。

若GMO disable，却还是不显示缩略图，则需先排查需要通过DocumentsUI来打开图片或视频文件的那个app给这些文件所带的类型，是否有缩略图；
若app(如Gallery)那边就没有，则需app那边先排查，若app里面显示缩略图正常，则需DocumentsUI这边去分析为何不显示缩略图的原因。

何为GMO？要enable还是disable GMO？
关于GMO feature要enable还是disable，是根据项目的RAM/ROM等配置来定，在项目开案的时候，CPM就会宣导GMO feature相关的信息。
若不确定是否要enable或disale GMO feature，以及如何enable和disable的设置方法，都可以咨询CPM，他们会有文档指导如何操作。
```

## [FAQ20133] VoWifi连接之后，通知栏显示名称客制化

```
需要将com.mediatek.ims修改为运营商名称。 
 
通知里面这个地方的值是由字段"android.substName"来决定，如果没有的话，就使用发送通知的Package的名称。
另外要注意的是，如果设置这个字段，要求发送该通知的应用拥有对应的权限（android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME）。
 
如下修改方法验证可行：
 1. ImsNotificationController.java中所有发送通知的地方，都需要加入extras的参数，也就是下面添加了注释的地方，参考如下：
/vendor/mediatek/proprietary/packages/services/Ims/src/com/mediatek/ims/ImsNotificationController.java
final Bundle extras = new Bundle();//mtk add
extras.putString("android.substName", "运营商名称");//mtk add
Notification noti = new Notification.Builder(mContext)
.setContentTitle(wfcText)
.setContentText(mContext.getResources()
.getString(R.string.wfc_notification_summary))
.setSmallIcon(wfcIcon)
.setTicker(wfcText)
.setOngoing(true)
.addExtras(extras)//mtk add
.build();

2. 添加权限：
/vendor/mediatek/proprietary/packages/services/Ims/AndroidManifest.xml添加如下权限：
<uses-permission android:name="android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME" />
```

## [FAQ20153] 当下载数量多于3个，状态栏下载图标会合并成一个显示

```
1. 打开Chrome/Browser
2.下载任意图片，视频或 apk
3. 点击Link下载文件,连续下载3个文件后，在下载第4个文件时，状态栏下载图标会合并成一个显示
 
这个就是google的design
在N上google有新增notification group，第三方APP可以用setGroup去将notification设定到一个group；如果第三方APP没有设定group，那么google design会自动将4个相同的notification设定为一个group，所以会发生此问题

如果这题要修改，那么可以尝试修改frameworks/base/packages/ExtServices/src/android/ext/services/notification/Ranker.java
这个source code file里的private static final int AUTOBUNDLE_AT_COUNT = 4;就是自动group的number

具体的做判断的地方是在public void onNotificationPosted(StatusBarNotification sbn) 方法中：
if (notificationsForPackage.size() >= AUTOBUNDLE_AT_COUNT) {
    for (String key : notificationsForPackage) {
        notificationsToBundle.add(key);
    }
}
建议不修改这个design，因为这个design会直接影响到所有第三方APP
```

## [FAQ20045] 设置中的添加语言列表多出XA和XB两种语言

```
如果不希望在添加语言列表中看到这两种语言可以使用如下方式进行修改：
方法一：
（1）将/frameworks/base/core/res/res/values/locale_config.xml中的：
<item>ar-XB</item> <!-- Right-to-left pseudolocale -->
和
<item>en-XA</item> <!-- Left-to-right pseudolocale -->
移除掉。
（2） /frameworks/base/core/java/com/android/internal/app/LocaleStore.java文件中，
public static void fillCache(Context context)   函数的如下代码都去掉：
/* for (String localeId : LocalePicker.getPseudoLocales()) {
    LocaleInfo li = getLocaleInfo(Locale.forLanguageTag(localeId));
    if (isInDeveloperMode) {
        li.setTranslated(true);
        li.mIsPseudo = true;
        li.mSuggestionFlags |= LocaleInfo.SUGGESTION_TYPE_SIM;
    } else {
        sLocaleCache.remove(li.getId());
    }
}*/
 
方法二：
不需要修改locale_config.xml文件，只需按照如下方式修改代码。
/frameworks/base/core/java/com/android/internal/app/LocaleStore.java文件中，
public static void fillCache(Context context)函数按照如下方式对代码进行屏蔽：
for (String localeId : LocalePicker.getPseudoLocales()) {
LocaleInfo li = getLocaleInfo(Locale.forLanguageTag(localeId));
/* if (isInDeveloperMode) {
li.setTranslated(true);
li.mIsPseudo = true;
li.mSuggestionFlags |= LocaleInfo.SUGGESTION_TYPE_SIM;
} else {*/
sLocaleCache.remove(li.getId());
// }
}
```

## [FAQ19971] SystemUI的数据类型图标定制

```
客户需求：
PS注册某一种类型的网络时，插入不同的SIM卡，激活数据连接，显示不同的图标类型。
如，PS注册LTE网络的时候，插入一些运营商的SIM，状态栏和下拉快速设置栏显示“4G”,插入另一些运营商的SIM时，显示为“LTE”。

以"PS注册LTE类型,插入SIM：73211,显示“4G” "举例：

方案一：根据不同的mccmnc配置不同的config文件
framework/base/packages/SystemUI/res/values-mcc732-mnc111/config.xml 里面配置“config_show4GForLTE”为true
缺点：由于config配置文件是否被执行到，涉及到编译框架的问题，一旦不生效，很难排查

方案二：
/frameworks/base/packages/SystemUI/src/com/android/systemui/statusbar/policy/MobileSignalController.java mapIconSets()方法：获取SIM卡的mccmnc, 使用mccmnc进行定制
if (mConfig.show4gForLte) {
    mNetworkToIconLookup.put(TelephonyManager.NETWORK_TYPE_LTE, TelephonyIcons.FOUR_G);//显示成“4G”
} else {
    mNetworkToIconLookup.put(TelephonyManager.NETWORK_TYPE_LTE, TelephonyIcons.LTE);//显示成“LTE”
}

注意:以上两种方案适用于M & N 平台
```

## [FAQ17869] 某些应用发送粉色背景的通知

```
有时用户能在手机上看到下图中粉色背景的通知。这种粉色背景的通知很少见，个别应用才会有。
这种通知背景色是google default design.
以下图为例，这是一条stk notification，在StkAppService.java中launchIdleText(int slotId)中调用NotificationManager.notify()发送。

应用发送的通知其layout最终是引用framework模板：alps\frameworks\base\core\res\res\layout\status_bar_latest_event_content.xml 
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
     android:id="@+id/status_bar_latest_event_content"
     android:layout_width="match_parent"
     android:layout_height="wrap_content"
     android:background="#FFFF00FF"
     ......
这里默认的notification layout背景色FFFF00FF就是图中粉红色。
如果App最终调用该模板且没有重新定制background颜色，通知就是粉红色背景。
 
如果希望修改，不建议直接修改status_bar_latest_event_content.xml.
可以找到发送粉色背景通知的应用，在发送时设置通知背景色：
mPublicNotificationBuilder = new Notification.Builder(context).setColor(r.getColor(com.android.internal.R.color.system_notification_accent_color));
```

## [FAQ12707] 如何修改navigationbar上按键的显示顺序

```
N上的方案：
在N上，由NavigationBarInflaterView负责NavigationBar的view生成。而下方按钮顺序是由config_navBarLayout来决定。
默认顺序，从左往右为：back,home,recent。对应的配置值为：
<string name="config_navBarLayout">space,back;home;recent,menu_ime</string>

可以按照需求，修改这个顺序，比如下面的顺序就是home，back，recent
<string name="config_navBarLayout">space,home;back;recent,menu_ime</string>

M、L、K上的方案：
Navigation bar的layout定义在Navigation_bar.xml (frameworks\base\packages\systemui\res\layout)下。
三个虚拟按键被包含在android:orientation="horizontal"的LinearLayout中，按照定义顺序默认从左至右依次显示BACK, HOME, RECENT。如需改变三个按钮的排列顺序，只需调整他们在LinearLayout中的定义位置即可。
```

## [FAQ13787] [WallPaper]如何去掉系统所有的动态壁纸？

```
1、请将alps/device/mediatek/$project/ProjectConfig.mk中的
MTK_LIVEWALLPAPER_APP = yes
MTK_LIVE_PHOTO_SUPPORT = yes
修改为
MTK_LIVEWALLPAPER_APP = no
MTK_LIVE_PHOTO_SUPPORT = no
2、请查看：
alps/device/mediatek/common/device.mk 
alps/device/mediatek/$platform/device.mk 
alps/device/mediatek/$project/device.mk
alps/build/target/product/full_base.mk
这四只文件中是否有以下code：
PRODUCT_PACKAGES += LiveWallpapers
PRODUCT_PACKAGES += LiveWallpapersPicker
PRODUCT_PACKAGES += MagicSmokeWallpapers
PRODUCT_PACKAGES += VisualizationWallpapers
PRODUCT_PACKAGES += Galaxy4
PRODUCT_PACKAGES += HoloSpiralWallpaper
PRODUCT_PACKAGES += NoiseField
PRODUCT_PACKAGES += PhaseBeam
如果有的话，请全部删除。
 
修改后，请先执行make clean ，然后再重新new整个project 。
```

## [FAQ13630] [WallPaper]如何替换系统的默认静态壁纸？

```
请用目标壁纸替换掉
alps/frameworks/base/core/res/res目录下
drawable-nodpi
drawable-xhpi
drawable-xxhdpi
drawable-xxxhdpi
这四个folder下面的 default_wallpaper。
```

## [FAQ19575] [WallPaper]第一次开机只设置主屏幕壁纸，锁屏壁纸也变成桌面壁纸

```
这是Android N的默认设计，具体请参考WallpaperManagerService的setWallpaper方法，如下：

if (which == FLAG_SYSTEM && mLockWallpaperMap.get(userId) == null) {
    migrateSystemToLockWallpaperLocked(userId);
}
```

## [FAQ17634] 哪些类型的DRM文件可以设置为壁纸？

```
DRM文件中，只有FL类型的可以设置为壁纸
```

## [FAQ17560] [WallPaper]当前Storage Low时设置壁纸失败

```
这个是正常现象，WallpaperManagerService.java在设置壁纸时，会先去判断当前是否Storage Low，如果是就return，不会再去设置壁纸。
```

## [FAQ12506] [WallPaper]如何实现壁纸不随着workspace的滑动而滑动

```
在Workspace.java中把调用updateOffset的地方全部注释掉。
```

## [FAQ08968] [WallPaper]设置动态壁纸后，手机使用过程中恢复为默认静态壁纸

## [FAQ10982] [WallPaper]如何内置多张静态壁纸（图片）到系统中

## [FAQ10958] [WallPaper]系统WallPaper图片可以设置成屏幕大小的图吗？

```
系统默认的Wallpaper图片都是两倍屏宽，主要有2个目的：
1. 壁纸可以随着Launcher Workspace的滑动而滑动；
2. 屏幕横屏时，设置了show wallpaper flag的应用背景可以正常显示。
 
如果将Wallpaper宽高修改为与屏幕宽高相同，就会造成如下隐患：
1. Launcher Workspace的背景会被拉伸，表现不美观；
2. 设置了show wallpaper flag的应用背景在横屏时显示不全（右边会显示黑屏，例如recent界面)。
 
隐患1可以通过修改代码解决（下面的代码就是为了解决隐患1），隐患2也是存在的。因此不建议这样修改。
N/M： 
1. 请在WallpaperUtils.java的getDefaultWallpaperSize方法中，请找到如下代码：
if (res.getConfiguration().smallestScreenWidthDp >= 720) {
   defaultWidth = (int) (maxDim * wallpaperTravelToScreenWidthRatio(maxDim, minDim));
   defaultHeight = maxDim;
} else {
   defaultWidth = Math.max((int) (minDim * WALLPAPER_SCREENS_SPAN), maxDim);
   defaultHeight = maxDim;
}
请先确认代码走哪个分支（这与手机分辨率有关），然后把defaultWidth 和defaultHeight 改为屏幕宽高。修改方法如下（以else分支示例）：
Point realSize = new Point();
windowManager.getDefaultDisplay().getRealSize(realSize);
if (isScreenLarge(res)) {
    defaultWidth = (int) (maxDim * wallpaperTravelToScreenWidthRatio(maxDim, minDim));
    defaultHeight = maxDim;
} else {
    defaultWidth = realSize.x;
    defaultHeight = realSize.y;
}
KK/L：
1. 请在WallpaperCropActivity.java的getDefaultWallpaperSize方法中，请找到如下代码：
if (isScreenLarge(res)) {
    defaultWidth = (int) (maxDim * wallpaperTravelToScreenWidthRatio(maxDim, minDim));
    defaultHeight = maxDim;
} else {
    defaultWidth = Math.max((int) (minDim * WALLPAPER_SCREENS_SPAN), maxDim);
    defaultHeight = maxDim;
}
请先确认代码走哪个分支（这与手机分辨率有关），然后把defaultWidth 和defaultHeight 改为屏幕宽高。修改方法如下（以else分支示例）：
Point realSize = new Point();
windowManager.getDefaultDisplay().getRealSize(realSize);
if (isScreenLarge(res)) {
    defaultWidth = (int) (maxDim * wallpaperTravelToScreenWidthRatio(maxDim, minDim));
    defaultHeight = maxDim;
} else {
    defaultWidth = realSize.x;
    defaultHeight = realSize.y;
}

2. 请找到WallpaperManagerService.java的loadSettingLocked方法，去掉如下代码

if (wallpaper.width < baseSize) {
    wallpaper.width == baseSize;
}
```

## [FAQ04295] 如何客制化Launcher的主菜单图标？

```
在Launcher上，为了保持手机UI风格的统一，希望把用户自己安装的第三方apk图标或者系统预置的应用图标用特定的图标来显示，如何修改？
1. 请修改AppInfo.java的构造函数，如下：
public AppInfo(Context context, LauncherActivityInfoCompat info, UserHandleCompat user, IconCache iconCache) {
    this.componentName = info.getComponentName();
    this.container = ItemInfo.NO_ID;
    flags = initFlags(info);
    firstInstallTime = info.getFirstInstallTime();
    iconCache.getTitleAndIcon(this, info, true /* useLowResIcon */);
    //mtk add
    if ( (info.getApplicationInfo().flags & android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0) {
        this.iconBitmap=Bitmap.createBitmap(72, 72, Bitmap.Config.ARGB_8888);  // 具体方法可以自行决定，这里只是例子
    }
    //mtk add 
    intent = makeLaunchIntent(context, info, user);
    this.user = user;
}

2. 如果是用户安装的第三方app，请修改AllAppsList.java，修改updatePackage方法如下：

AppInfo applicationInfo = findApplicationInfoLocked( info.getComponentName().getPackageName(), user, info.getComponentName().getClassName());
if (applicationInfo == null) {
    add(new AppInfo(context, info, user, mIconCache));
} else {
    mIconCache.getTitleAndIcon(applicationInfo, info, true /* useLowResIcon */);
    //mtk add
    在此处添加修改applicationInfo.iconBitmap的代码（同上）
    //mtk add 
    modified.add(applicationInfo);
}

3. 如果是系统预置的某个应用，请修改IconCache.java文件的cacheLocked方法，将

entry.icon = Utilities.createBadgedIconBitmap(info.getIcon(mIconDpi), info.getUser(), mContext);
修改为客制化的图标
举例如下：
if ("com.android.contacts".equals(componentName.getPackageName())) {
    Drawable drawable = getFullResIcon(mContext.getResources(), R.drawable.ic_hw_allbackup);
    entry.icon = Utilities.createBadgedIconBitmap(drawable, info.getUser(), mContext);
} else {
    entry.icon = Utilities.createBadgedIconBitmap(info.getIcon(mIconDpi), info.getUser(), mContext);
}
PS：72/72表示主菜单Icon的图标大小，color format是ARGB8888。这个设置默认把用户自己安装的apk Icon刷成黑色。createBitmap这个方法有多种重载方式，用户可以根据实际需求，通过方法参数（颜色/bitmap/图片资源id等）来构造自己的主菜单Icon风格。
```

## [FAQ19916] 状态栏显示条纹

```
这是google default的行为，google 原生机也可以复现
有两个问题导致现在的问题，一是异常情况下MinimizedSockShoadow 被异常画出，而DividerHandleView未被画出，刚好与正常情况相反，二是因为转屏原有DividerView 动画并没有被执行
同时fix这两个问题 都需要在google 原本flow修改比较多的地方。 涉及到google drag multi window divider控制multi window 大小以及DividerView 出现/消失动画流程。
无法做简单修改就可以完成，之前类似的问题我们也尝试过修改，但是有遇到过修改后验证通过了，但是给到客户后，又出现其他比较隐蔽且难fix的问题。导致客户花费更多时间去理清后来的问题。
对于比较复杂的修改，我们综合考虑建议不要去修改这部分的代码，主要是担心出现side effect，反而让客户遇到更多的麻烦
```

## [FAQ12143][DeskClock][RTL] 从LTR的系统语言切换为RTL的语言，时钟的Tab和内容不对应

```
操作步骤：
1.  当前系统语言为中文(LTR),进时钟界面查看
2.  更改系统语言为阿拉伯语(RTL)，进时钟界面查看
实际结果：
时钟tab和内容不对应，如tab显示的是闹钟，页面内容显示的是秒表
 
请贵司找到DeskClock.java文件，将用到getRtlPosition(int position)这个方法的地方，全部替换成直接使用position即可解决问题。
也就是说不需要调用 isRtl() 和 getRtlPosition()方法，直接用position就可以。
```

## [FAQ12998] Alarm Group功能介绍

```
这个功能主要是考虑到，在日常生活中，手机大部分处于灭屏的suspend状态，有一些应用会通过设置定时时钟的方式唤醒系统(screen仍然保持off)，这些app大多在灭屏状态下对唤醒的时间并不敏感。
为了减少background application透过设置(非)周期性的alarm 来trigger手机wake-up(screen off的状态下)，将这些alarm重新排队到同一个时间发生，减少手机wakup的次数，延长app被唤醒的时间间隔，以达到省电的效果。
目前该feature是binary release的，仅对第三方apk才会起效，而且需要在灭屏后手机sleep后的一段时间后才会起作用。
测试条件：
1、打开MTK_BG_POWER_SAVING_SUPPORT这个feature option
2、打开 设置->电池->后台智能省电 选项。
3、安装第三方apk情况下
4、不连接USB/Charger
5、灭屏后一段时间后才可以起效。

测试时可以通过勾选和不勾选的情况下对比测试电流情况，看看是否有省电效果。
请注意测试时不能连接usb/Charger，而且需要观察的是灭屏后一段时间后的电流效果。

本功能在KK2之后的版本会有支持。
```

## [FAQ11651] 闹钟响铃时拔电池，重启手机后，闹钟再次提醒

```
这是正常现象。
闹钟到时后，会设置为fired 状态，如果由于未知原因而stop了（如拔掉电池），会在下一次系统启动的时候判断自己是不是fired 状态，如果是，那么会再判断是不是已经timeout了（正常情况下，一个闹钟响一定时间后会自动missed掉），如果没有timeout ，那么就启动自己，如果已经timeout了，那么就不会再起了。
如果贵司觉得上述行为不是很好的话，可以自行修改AlarmStateManager.java文件中的 registerInstance 这个方法里面最前面的第二个 if 判断，将
 if(instance.mAlarmState == AlarmInstance.FIRED_STATE) 这个判断以及里面的内容注释掉。
鉴于目前设计有更好的用户体验，我司建议保持原始设计。
```

## [FAQ14939] 情景模式设置为静音模式，如何修改让闹钟仍然有声音

```
我司遵循google default design,当情景模式里的打扰为“禁止打扰”时，闹钟响铃不会有铃声和震动；当情景模式为静音时，打扰功能就是设置为“禁止打扰”的，因此闹钟是静音。
若贵司一定要改，可以参考以下解法：
DefaultZenModeHelperExt.java
@PluginImpl(interfaceName = "com.mediatek.common.notification.IZenModeHelperExt")
public class DefaultZenModeHelperExt implements IZenModeHelperExt {
   private static final String TAG = "DefaultZenModeHelperExt";
   @Override
   public boolean customizeMuteAlarm(boolean muteAlarm) {
       Log.d(TAG, "customizeMuteAlarm, muteAlarm = " + muteAlarm);
       muteAlarm = false; //add
       Log.d(TAG, "customizeMuteAlarm, muteAlarm = " + muteAlarm);
       return muteAlarm;
   }
}
```

## [FAQ14094] 进入deskclock，background颜色发生变化

```
这个是google L之后的新design，会根据当前的时间来显示不同的background，可以提升用户体验。
例如很晚的时候就是深色（从蓝色->暗色），比较中午的时候蓝色和进入的颜色一样.

具体的代码：
DeskClock.java # mBackgroundColorChanger # setBackgroundColor().

会对24小时配置24种色彩，然后设置一个起始颜色，设置一个渐变动画切换到对应时间点的。
如果要修改BACKGROUND_SPECTRUM[hourOfDay]可以采用一种配色。
```

## [FAQ10862] 如何抓取关机闹钟（Poweroff Alarm）相关log?

## [FAQ04293] 如何预置桌面上的应用程序图标、快捷方式图标、窗口小部件或者文件夹？

## [FAQ18449] Launcher主菜单图标从模糊变清晰

```
Launcher开机启动或者因为某些原因重启时，进入主菜单，主菜单图标会从模糊变清晰。 

这是Launcher的默认设计，第一次加载主菜单图标时，会先去decode一张low resource icon，然后再解析清晰的图片。
如果不想要这个效果，请按照以下修改：
1、修改AllAppsList.java的updatePackage方法为如下：
// Find enabled activities and add them to the adapter
// Also updates existing activities with new labels/icons
for (final LauncherActivityInfoCompat info : matches) {
    AppInfo applicationInfo = findApplicationInfoLocked(
        info.getComponentName().getPackageName(), user,
        info.getComponentName().getClassName());
    if (applicationInfo == null) {
        add(new AppInfo(context, info, user, mIconCache));
    } else {
        mIconCache.getTitleAndIcon(applicationInfo, info, false /* useLowResIcon */);//mtk modify
        modified.add(applicationInfo);
    }
}

2、修改AppInfo.java：
public AppInfo(Context context, LauncherActivityInfoCompat info, UserHandleCompat user, IconCache iconCache) {
    this.componentName = info.getComponentName();
    this.container = ItemInfo.NO_ID;
    flags = initFlags(info);
    firstInstallTime = info.getFirstInstallTime();
    iconCache.getTitleAndIcon(this, info, false /* useLowResIcon */);//mtk modify
    intent = makeLaunchIntent(context, info, user);
    this.user = user;
}
```

## [FAQ18346] 如何减小桌面的空白区域？

```
参考“FAQ04350 如何去除Launcher默认的google search bar？”去掉google search bar后，发现桌面上面的空白区域比较大（即下图红框框出来的区域）。要如何修改才能减少空白区域？

请调整DeviceProfile.java的layout(Launcher launcher)方法中Workspace的位置，尽量往上调，即修改如下的代码：
 
// Layout the workspace
PagedView workspace = (PagedView) launcher.findViewById(R.id.workspace);
lp = (FrameLayout.LayoutParams) workspace.getLayoutParams();
lp.gravity = Gravity.CENTER;
Rect padding = getWorkspacePadding(isLayoutRtl);
workspace.setLayoutParams(lp);
workspace.setPadding(padding.left, padding.top, padding.right, padding.bottom);
workspace.setPageSpacing(getWorkspacePageSpacing(isLayoutRtl));
```

## [FAQ13194] 如何去掉Home Sample？

```
用户要求去掉Launcher3，只使用第三方桌面。但是在去掉Launcher3后系统会多出Home Sample的桌面,请问如何去掉 Home Sample？ 
请将alps/build/target/product/core_base.mk中PRODUCT_PACKAGES 这个tag下面的Home项去掉即可。
```

## [FAQ19430] Launcher是否支持unread feature？

```
M之前，Launcher支持unread feature。默认只支持电话、短信、邮件、日历，三方App无法支持。
N之后，Unread Feature phase out。
如果您需要此Feature，请自行从M版Merge这个feature，MTK不再支持。因为此feature不仅要Launcher支持，还要Settings/Apps的支持。
```

## [FAQ14512] Launcher3如何让快捷方式默认创建在第一屏？

```
Launcher3在收到广播:com.android.launcher.action.INSTALL_SHORTCUT后，会自动在桌面上创建快捷方式，默认会创建在第二屏。如果让快捷方式默认创建在第一屏？ 
N/M:
请修改LauncherModel.java的findSpaceForItem方法，将如下代码：
int preferredScreenIndex = workspaceScreens.isEmpty() ? 0 : 1;

修改为：
int preferredScreenIndex=0;

L:
请修改LauncherModel.java的addAndBindAddedWorkspaceApps方法，将如下代码：
int startSearchPageIndex = workspaceScreens.isEmpty() ? 0 : 1;

修改为：
int startSearchPageIndex = 0;
```

## [FAQ11441] Launcher3中主菜单的布局如何调整(譬如从5*4调整为4*4)?

```
Launcher3中主菜单的布局如何调整(譬如从5*4调整为4*4)?
N/M:
M版本以后主菜单使用的是RecyclerView，类似于ListView的控件，不支持调整布局。
L:
Launcher3主菜单布局的行数和列数，都是在DynamicGrid.java中动态计算的，xml中无法配置。
如果想修改主菜单的布局，调整行数和列数，请修改DynamicGrid.java中allAppsNumRows和allAppsNumCols的值。
```

## [FAQ08349] 如果Launcher支持横屏显示，如何避免Launcher重新创建？

```
如果Launcher可以横屏显示，开机时有时会创建两次。有时用户从横屏应用退出回到Launcher时，Launcher也会重新创建。如何避免Launcher重新创建？
[SOLUTION]
请修改Launcher的AndroidManifest.xml，对Launcher这个Activity添加android:configChanges属性，在这个属性中设置Launcher感兴趣的config变化(例如orientation)。

关于android:configChanges，请参考：
http://developer.android.com/guide/topics/manifest/activity-element.html#config
```

## [FAQ19891] 软件包对于32位和64位的支持情况

```
请打开软件包对应的ReleaseNote_for_MT6***_alps-mp-**.mp*.xlsx，找到Project_Package_Set_M6***这个sheet，查看右上角的Naming rule change。
Project Naming rule: [MTKomer name][chip]_number1number2_M
*Number is meaning in project name
First number means 64 bit SW
Second number means 6M / 5M / 4M / 3M SW
*In 6/5M package set
T means CMCC/TDD(OP01) project
U means CU    /FDD (OP02) project
*Bring "C" to identify that it's C2k/CT(OP09) project
*Bring "G" to identify that it's GMO project
*Bring "WW" to identify that it's WWOP project
/device/mediatek/k35v1_64_tee_vdo/即代表是64bit
64位和32位project不能自行切换，需要和敝司申请对应的project。
```

## [FAQ19897] how to modify the maximum connections of hotspot from frameworks?

```
In general,hotspot's maximam connection is limited by hardware,so if you want to modify the number,must to make sure the performance of hardware is enough;

packages/apps/Settings/res_ext/values/mtk_arrays.xml
<string-array name="wifi_ap_max_connection_entries">
    <item>1 user</item>
    <item>2 users</item>
    <item>3 users</item>
    <item>4 users</item>
    <item>5 users</item>
    <item>6 users</item>
    <item>7 users</item>
    <item>8 users</item>
    //add to ten 
    <item>9 users</item>
    <item>10 users</item>
    //add
</string-array>
so you can choose "10 users " when you setup hotspot;
```

## [FAQ11383] [others]手动关闭factory mode

```
为了防止end users在使用手机的过程中由于误操作进入factory mode,需要关闭factory mode.但是在产线流程中factory mode test又是必须存在的，这种情况下，就需要有一个打开或者关闭factory mode的“开关”存在，能够自由的控制factory mode。以72为例，介绍用pro_info来存储这个“开关”标记，这样既可以在LK/Uboot中访问这个标记，同时在上层APK中可以通过nvram的接口来读写设置这个标记。

1.客制化一个nvram item，请参考《customization inNvRAM.ppt》
注意事项_1：
a) 如平台使用的是【eMMC】，新LID对应struct的size必须是512 byte的倍数；
b) 如平台使用的是【NAND】，新LID对应struct的size必须是page size对齐（即4K或2K）。

2.客制化pro_info，请参考《Customization in NvRAM Product Info feature.pptx》
注意事项_2：
a) 如平台使用的是【eMMC】，g_new_nvram_lid[]里面新LID的size必须要128K对齐；
b) 如平台使用的是【NAND】， g_new_nvram_lid[]里面新LID的size必须要blocksize对齐（4K pagesize对应的是256K，2K pagesize对应的是128K）。

3.上层APK读写设置factory mode关闭的标记,请参考FAQ ：FAQ04542
4.lk中读取factory mode设置的标记.
1）-in alps\mediatek\platform\mt6572\lk\factory.c  factory_detection()中判断factory_check_key_trigger()之前添加一个if判断，读取flag为1，返回false
```

## [FAQ11384] [SW相关]设置3个组合键进入factory mode

```
为了减少end users在使用手机的过程中由于误操作进入factory mode的几率，增加了1个键，让客户进入factory mode需要同时按下3个组合键（Power Key+VolumDown+物理按键）。

1.在apls\mediatek\platform\mt65xx\lk\factory.c中的factory_check_key_trigger函数中修改
if(mtk_detect_key(MT65XX_FACTORY_KEY)&&mtk_detect_key(MT65XX_FACTORY_KEY2))
2.在cust_key.h中加入#define MTK65XX_FACTORY_KEY2 XX（参照MTK65XX_FACTORY_KEY定义对应的key）
3.第2步添加的MTK65XX_FACTORY_KEY2的值必须是在Cust_kpd.h中KPD_INIT_KEYMAP中已定义的物理按键的数值。
```

## [FAQ18526] [SAT]使用过程中，欢迎语突然又弹出来，是否正常？

```
在Flight mode/掉卡/SIM Switch/World Mode/World Phone切换都有可能会导致欢迎语弹出两次，
因为有重新给卡初始化的动作，
除了掉卡问题，需要driver同仁解决，
其他都是正常的，
因为这些情况下都会导致SIM卡重新上电，重新上电的话，手机就一定要再发一次terminal profile给卡，告知卡手机支持哪些SAT命令，从而会触发卡新上报欢迎语。
 
有些客户可能会考虑在界面上屏蔽这次欢迎语的上报，这样是不妥当的，因为有些卡是不会上报欢迎语的，第一条上报的display text是一些关键的信息。如果贸然屏蔽掉第一条上报的display text命令，会导致有些卡的关键信息看不到。
 
在radio log里的关键log:
掉卡的关键log:ESIMS:0,13；
SIM SWITCH关键log:AT+ES3G=* 或者AT+ESIMMAP=*；
World Mode切换：AT+ECSRA=2,*,*,*；
World Phone切换：Switching to *DD CSFB modem,其中这个*有可能是F，也有可能是T,就是说FDD和TDD之间的切换；
 
还有一些卡,是更新注册网络信息，或者没有任何原因的就会主动上报欢迎语,客户可以先自行在其他对比机插入同一张卡做对比测试，如在对比机上未发现类似情况，再提交eservice.
```

## [FAQ14370] 如何让返回键具有删除编辑内容功能

```
在编辑界面，如果正在编辑，就删除编辑的内容。如果编辑的内容为空，按下返回键就返回上一界面，请问该如何实现？

修改 Activity.java 中 onKeyUp 为如下：
public boolean onKeyUp(int keyCode, KeyEvent event) {
    if (getApplicationInfo().targetSdkVersion >= Build.VERSION_CODES.ECLAIR) {
        if (keyCode == KeyEvent.KEYCODE_BACK && event.isTracking() && !event.isCanceled()) {
            if (isResumed()) { 
                View decorView = this.getWindow().getDecorView();//MTK modifyBegin
                if (decorView != null) {
                    View focus = decorView.findFocus();
                    if (focus!=null&&focus instanceof EditText) {
                        EditText editText = (EditText)focus;
                        CharSequence text = editText.getText();
                        if (text!=null && text.length()>0) {
                            editText.setText("");
                            return true;
                        }
                    }
                }
                onBackPressed(); //MTK modify END
                return true;
            } else {
                Log.v(TAG, "Tracking Key Up, activity is resumed: " + isResumed());
                // Fix sub activity of tab activity which isn't in resumed state
                // Return false means didn't handle this key event
                return false;
            }
            /// @}
        }
    }
    return false;
}
```

## [FAQ19537] [Recovery][Common]recovery模式中选择Apply update from adb升级失败，电脑端提示“无法识别USB设备” 或"device not found"

```
建议参考下面的修改
1、alps/bootable/recovery/etc/init.rc
on property:cus.recoveryadb.prop=1
write /sys/class/android_usb/android0/enable 0
write /sys/class/android_usb/android0/idVendor 0E8D
write /sys/class/android_usb/android0/idProduct 201C
write /sys/class/android_usb/android0/f_ffs/aliases adb
write /sys/class/android_usb/android0/functions adb
write /sys/class/android_usb/android0/enable 1
write /sys/devices/platform/mt_usb/cmode 1

2、adb_install.cpp
set_usb_driver(bool enabled)函数中
添加property_set("cus.recoveryadb.prop", "1");

3、device/mediatek/common/sepolicy/property.te
添加type cus_recoveryadb_prop, property_type;
device/mediatek/common/sepolicy/property_contexts
添加cus.recoveryadb.prop u:object_r:cus_recoveryadb_prop:s0
device/mediatek/common/sepolicy/recovery.te
allow recovery cus_recoveryadb_prop:property_service set;
 
adb sideload 使用方法可参考  "FAQ04559 [Recovery][Common]从JB版本开始支持adb sideload命令"
```

## [FAQ06239] [new feature]通话录音时如何播放提示音给对方？

```
因为涉及到通话隐私问题，部分客户要求在通话录音时播放提示音给对方
下面这个修改同时会将本地的背景播放音乐等声音播放给对方

BGS UL gain默认为0，所以本方播放的声音对方不会听到
修改BGS UL gain，可以将本地播放的声音传给对方 
 
在点击通话录音之后
1.将BGS UL gain 设为最大
2.播放声音
3.播放完后将BGS UL gain还原为0

packages/apps/Dialer/InCallUI/src/com/android/incallui/CallButtonPresenter.java 
public void voiceRecordClicked() {
    //1.set the mBGSUlGain to 0xFF in hal
    AudioSystem.setParameters("SET_BGS_UL_GAIN=1");
    //2.play the warning tone here
    //3.set the mBGSUlGain to 0x0 in hal
    AudioSystem.setParameters("SET_BGS_UL_GAIN=0");

    TelecomAdapter.getInstance().startVoiceRecording();
    ......
}
  
AudioALSAHardware.cpp
//add this
static String8 keySET_BGS_UL_GAIN= String8("SET_BGS_UL_GAIN");
 
status_t AudioALSAHardware::setParameters(const String8 &keyValuePairs)
{
......
//add this start
if (param.getInt(keySET_BGS_UL_GAIN, value) == NO_ERROR) { 
param.remove(keySET_BGS_UL_GAIN); 
ALOGD("+%s(): %s", __FUNCTION__, "SET_BGS_UL_GAIN");
if(value==1){
    mStreamManager -> mBGSUlGain = 0xFF; 
}else{
    mStreamManager -> mBGSUlGain = 0x0; 
}
//add this end
}
}
```

## [FAQ17344] [SIM]怎样判别是否为“白卡”（测试卡）

```
怎样判别一张卡是否为“白卡”（测试卡）

[AP]
AP端可以获取对应SIM卡的属性值进行判断，0表示普通SIM卡，1表示测试卡。
"gsm.sim.ril.testsim",    --- 卡1
"gsm.sim.ril.testsim.2", --- 卡2
"gsm.sim.ril.testsim.3", --- 卡3
"gsm.sim.ril.testsim.4", --- 卡4

[Modem]

“白卡”中有些文件内容会有一些特殊规定用于标识“白卡”的身份:
A：MCC-MNC = 001-01 
B：EF_AD文件中的 ms_operation 的值为0x80/0x81/0x02/0x04
我们在读取EF_AD的时候会将之前读出的MCC/MNC满足情况一并做“白卡”判断，判断条件的关系有A&&B和A||B两种，判断条件的关系在test_sim_relation()中定义，若需要修改判断关系（&&或者||）直接修改此函数的return值即可，返回0对应||、返回1对应&&；
判断结果存放在SIM的全局context中（this_sim->is_test_sim），客户可调用is_test_sim()接口获得判断结果，参数为想获得信息的SIM编号：0x00/0x01/0x02/0x03分别对应SIM1、SIM2、SIM3、SIM4。
```

## [FAQ19583] [Audio App]android N 版本铃声设置显示“更多铃声”选项

```
默认在android M版本铃声设置对话框里面包含“更多铃声”选项。实际上在N版本里面也包含这项功能，只是未让它显示。铃声
设置对话框代码在 packages/providers/MediaProvider/src/com/android/providers/media/RingtonePickerActivity.java。
在 RingtonePickerActivity.java 的 onCreate 函数我们发现如下:

/// M: Get whether to show the 'More Ringtones' item
mHasMoreRingtonesItem = intent.getBooleanExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_MORE_RINGTONES, false);

因此我们只要在启动 RingtonePickerActivity 的时候把 RingtoneManager.EXTRA_RINGTONE_SHOW_MORE_RINGTONES
设置成true就好了。在 packages/apps/Settings/src/com/android/settings/RingtonePreference.java 文件的
onPrepareRingtonePickerIntent 函数添加代码如下:

ringtonePickerIntent.putExtra(RingtoneManager.EXTRA_RINGTONE_SHOW_MORE_RINGTONES, true);
```

## [FAQ10495] [SEC]如何修改SIM ME LOCK校验界面上的输入密码次数

```
在AP端默认给SIM ME LOCK的输入密码次数是5次，
如果想修改显示次数或屏蔽掉显示次数，请参考以下步骤。

在收到卡被SIM ME LOCK住时才会去获取对应Category的retry count, 并记录在数组mSimMeLeftRetryCount中。
Path: alps\frameworks\base\policy\src\com\android\internal\policy\impl\keyguard\KeyguardUpdateMonitor.java

AP端显示界面处理:
L版本上(M版本与L版本相同)，
Path：alps\frameworks\base\packages\Keyguard\src\com\mediatek\keyguard\Telephony\ KeyguardSimPinPukMeView.java
getRetryMeString () 这个方法就是来控制次数显示的。
如果想屏蔽显示次数，这个方法return null。

在KK版本上，
Path: alps\frameworks\base\policy\src\com\android\internal\policy\impl\keyguard\KeyguardSIMPinPukView.java
getRetryMe() 这个方法就是来控制次数显示的。
如果想屏蔽显示次数，这个方法return null。

如果想修改显示次数，
不能直接修改方法 meRetryCount 为指定的值；而需要修改 modem 端。
custom_nvram_sec.h(\custom\service\nvram), 修改对应category 的 SML_RETRY_COUNT_xxx_CAT 值。
下面截图是修改前的状态，默认是 5.
```

## [FAQ03989] [Notification]如何让通知不被清除或者点击后不消失？

```
APP发送通知后，点击clear按钮，如何让通知不被清除？或者点击通知后，通知不消失？

APP发送通知时，通知需要添加flag：
notification.flags |= Notification.FLAG_ONGOING_EVENT;
或者
notification.flags |= Notification.FLAG_NO_CLEAR;
```

## [FAQ19254] [Recents]更改系统时间后，按recent键无法进入最近应用列表界面

```
在设置中将系统时间修改为早于当前系统的时间，recent键点击无效，无法正常叫出最近应用列表界面。
这是google default design，用google 6.0对比机来测试也是这样的。
建议维持google原有设计，对于google原生的设计，我们不做修改
原因是：
RecentApp通过AMS的getRunningTasks() API取得目前正在执行中的task记录.
而通过最近一次使用的APP是否为RecentApp, 來判断按下HOME key时是否退出.
AMS会将最近使用的时间资讯(系统时间)记录起来并排序, 但在调整系统时间后造成先后顺序错乱,
导致RecentApp误判目前状态，进而无法退出。
涉及的模块是AMS和RecentApp.
如果AMS仿照RecentApp的修改, 將记录系统时间改为开机时间可能可以解决该问题，但会接影响AMS开放出去的API行为。Framework內部也会根据task时间资讯来做些判断(如Activity決定是否在开机时reset),得将这部分相关逻辑一并修正.
目前敝司经过全面评估，修改该问题后风险依然存在，因此建议维持
```

## [FAQ19361] 如何预置一个WIFI热点

```
JB版本：
请在  alps/external/wpa_supplicant_8/mtk-wpa_supplicant.conf  这个文件中增加 networt={} 即可。
network需要字段的含义可以查看wpa_supplicant_8/wpa_supplicant.conf文件中的注释“network block fields:”后的说明即可。

KK&L版本：
请在/hardware/mediatek/wlan/config/mtk-wpa_supplicant-overlay.conf文件中增加networ={} 即可。

M 版本路径：
/vendor/mediatek/proprietary/hardware/connectivity/wlan/config/mtk-wpa_supplicant-overlay.conf

如下面的例子，预置一个OPEN 和WPA2-PSK的网络：
ctrl_interface=/data/misc/wpa_supplicant
update_config=1
device_name=rk30sdk
manufacturer=rockchip
model_name=ONE TOUCH EVO8HD
model_number=ONE TOUCH EVO8HD
serial_number=0123456789
device_type=10-0050F204-5
config_methods=physical_display virtual_push_button keypad

network={
     ssid="aaaa"
     scan_ssid=1
     key_mgmt=NONE
}

network={
     ssid="bbbbb"
     scan_ssid=1
     psk="12345678"
     key_mgmt=WPA-PSK
}
```

## [FAQ19495] 调整开关机铃声音量大小

```
Android N:
alps/frameworks/av/services/audioflinger/Threads.cpp
AudioFlinger::PlaybackThread::mixer_state AudioFlinger::MixerThread::prepareTracks_l(Vector< sp<Track> > *tracksToRemove) {
    .....
#ifdef MTK_AUDIO
    // Do not change the volume, when boot sound open
    if (track->mFlags & IAudioFlinger::TRACK_BOOT) {
        vlf = 0.25f; // 
        vrf = 0.25f; // 改变vlf和vrf的值，取值范围0~1
    }
#endif
    ......
}


Android M & L：
alps/vendor/mediatek/proprietary/custom/(project)/hal/audioflinger/audio/Audio_Customization_Common.h 
#define BOOT_ANIMATION_VOLUME (0.25)
改变BOOT_ANIMATION_VOLUME的值，取值范围0~1
```

## [FAQ19357] N版本中，三方应用引用某些系统库导致无法运行

```
在N版本中为了增强安全性,三方应用也不能随意加载系统没有暴露出来的库，从而会导致三方应用无法运行。
详细内容参考google 官方说明：https://source.android.com/devices/tech/config/namespaces_libraries.html
 
如下图所示，系统的应用，可以调用系统库，而三方应用，只能调用或者加载NDK 暴露出来的一些库，如libc.so。。。之类的和他自身的一些库。
但是如果某些应用有调用到系统 native库就会报出形如下面的Log：
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: java.lang.UnsatisfiedLinkError: dlopen failed: library "/system/lib64/libfmjni.so" needed or dlopened by "/system/lib64/libnativeloader.so" is not accessible for the namespace "classloader-namespace"
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at java.lang.Runtime.loadLibrary0(Runtime.java:977)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at java.lang.System.loadLibrary(System.java:1530)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at com.android.fmradio.FmNative.(FmNative.java:45)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at com.android.fmradio.FmNative.openDev(Native Method)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at com.szwj.autoats.fmradio.FMRadioService.openDevice(FMRadioService.java:576)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at com.szwj.autoats.fmradio.FMRadioService.onCreate(FMRadioService.java:1361)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at android.app.ActivityThread.handleCreateService(ActivityThread.java:3253)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at android.app.ActivityThread.-wrap5(ActivityThread.java)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1617)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at android.os.Handler.dispatchMessage(Handler.java:110)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at android.os.Looper.loop(Looper.java:203)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at android.app.ActivityThread.main(ActivityThread.java:6251)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at java.lang.reflect.Method.invoke(Native Method)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:1063)
01-06 20:34:05.255959 4629 4629 E AndroidRuntime: at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:924)

如果被依赖的库评估安全性可以开放出来的，则可以将其添加到/device/mediatek/common/public.libraries.vendor.txt名单列表当中。
如果不可以开放到，则此问题属于和N版本不兼容的，需要APP开发者自行处理。
```

## [FAQ15571] [SELinux] Android N 版本进程无法直接访问data目录的说明

```
Google 在android M 版本后, 通过SELinux 的neverallow 语法强制性限制了普通进程访问data 目录的权限. 严禁除init system_server installd system_app 之外的其他进程直接操作/data 目录比如在data 目录下面创建文件，写文件，重命名文件等等.

有很多客户都会在data 目录下创建文件, 保存资讯, 在M 版本上这个操作会被SELinux 直接拦截下来，并且没法直接添加访问system_data_file 的权限，N版本上更加严格, system_app也会被拦截下来.
 
N版本:
neverallow appdomain system_data_file:dir_file_class_set { create write setattr relabelfrom relabelto append unlink link rename };
 
M版本对system_app有是开放权限：
neverallow { appdomain -system_app } system_data_file:dir_file_class_set { create write setattr relabelfrom relabelto append unlink link rename };
 
需要按下面的流程操作：
(1).  在init.rc 或者 其他的init.xxx.rc 的on post-fs-data 段 添加:
mkdir /data/xxxx 0770 root system

(2). 在/device/mediatek/common/sepolicy/file.te 里面添加：
type xxxx_data_file, file_type, data_file_type;

(3). /device/mediatek/common/sepolicy/file_contexts 里面添加：
/data/xxxx(/.*)? u:object_r:xxxx_data_file:s0

(4). 给你的进程添加权限, 比如你的进程的SELinux domain 是 yyyy
allow yyyy xxxx_data_file:dir create_dir_perms;
allow yyyy xxxx_data_file:file create_file_perms;

这样你才能绕过Google 的设置. 这个xxxx 目录随你定义.
```

## [FAQ19362] 如何设置mobilelog modemlog networklog size大小

```
第一次开机之前就需配置
配置路径：
M\N 版本：\device\mediatek\common\mtklog
mtklog-config-bsp-eng.prop
mtklog-config-bsp-user.prop
mtklog-config-basic-eng.prop
mtklog-config-basic-user.prop

默认存储大小：
com.mediatek.log.mobile.maxsize = 500
com.mediatek.log.mobile.total.maxsize = 1000
com.mediatek.log.modem.maxsize = 2000
com.mediatek.log.net.maxsize = 600
按照需要修改对应选项即可, 需要注意com.mediatek.log.mobile.maxsize要小于com.mediatek.log.mobile.total.maxsize

2. 其他情况：
1）UI界面设置
mtklogger UI---->Settings---->mobilelog---->Limit Current Log Size
mtklogger UI---->Settings---->mobilelog---->Limit Total Log Size
mtklogger UI---->Settings---->modemlog---->Limit Log Size
mtklogger UI---->Settings---->networklog---->Limit Log Size

2）adb shell command设置,请参考FAQ06939 如何用adb 控制MTKLogger

注意：mobilelog涉及两个size大小设置，需要保证Limit Current Log Size < Limit Total Log Size
```

## [FAQ19217] wifi连接获取IP失败

```
连接WiFi获取ip失败，首先可查看MSG_ID_MMI_ABM_IPADDR_CHANGE_REQ中use_dhcp中是否有被设置为KAL_TRUE,具体log信息参考如下：

请在以下函数中添加代码默认使用DHCP。
void srv_dtcnt_wlan_ipaddr_change_req(MMI_BOOL use_dhcp, srv_dtcnt_wlan_ipaddr_update_struct *ipaddr_info) {
/*----------------------------------------------------------------*/
/* Local Variables */
/*----------------------------------------------------------------*/
      mmi_abm_ipaddr_change_req_struct *p;
      srv_dtcnt_prof_wlan_struct *profile = NULL;

/*----------------------------------------------------------------*/
/* Code Body */
/*----------------------------------------------------------------*/
      MMI_TRACE(MMI_CONN_TRC_G6_DTCNT, SRV_DTCNT_WLAN_IPADDR_CHANGE_REQ, use_dhcp, g_srv_dtcnt_wlan_ctx.state);
      if (g_srv_dtcnt_wlan_ctx.state != SRV_DTCNT_WLAN_STATE_CONNECTED) {
           return;
      }

     p = OslAllocDataPtr(mmi_abm_ipaddr_change_req_struct);
     DTCNT_SRV_ILM_MEMSET(p);

     if (g_srv_dtcnt_wlan_ctx.connected_wlan_profile != NULL) {

          kal_prompt_trace(MOD_MMI,"mtk_debug g_srv_dtcnt_wlan_ctx.connected_wlan_profile != NULL ");//添加trace跟踪
          profile = g_srv_dtcnt_wlan_ctx.connected_wlan_profile;
          p->use_dhcp = g_srv_dtcnt_wlan_ctx.connected_wlan_profile->use_dhcp;
      } else {
          use_dhcp = 1;//添加Code；
          p->use_dhcp = use_dhcp;
          if (!use_dhcp)
          {
                    MMI_ASSERT(ipaddr_info);
           }
       }
       ...
}
```

## [FAQ14131] 在预编译阶段提取apk的odex文件以加快开机速度

```
1 预编译提取apk的odex文件，请在BoardConfig.mk中定义：
WITH_DEXPREOPT := true

打开这个宏之后，无论是有源码还是无源码的预置apk预编译时都会提取odex文件。
（如有发现user版本未提取odex，请检查device.mk文件配置：
   ifeq ($(TARGET_BUILD_VARIANT),user)
       WITH_DEXPREOPT := true
       DONT_DEXPREOPT_PREBUILTS := true  //此句注释掉
   endif 
）

对于64bit的芯片,若apk只有32bit的lib或者只能作为32bit运行，请在预置apk时在android.mk中添加下边的TAG标记此apk为32bit：

LOCAL_MULTILIB :=32
 

2 若需要在预编译时跳过一些apk的odex提取，可以使用下边的方法：
\build\core\dex_preopt_odex_install.mk中添加：
ifeq ($(LOCAL_MODULE),helloworld)
LOCAL_DEX_PREOPT:=
endif
build_odex:=
installed_odex:=
....
Ifeq包起来的部分为需要添加的,helloworld可替换为需要跳过提取odex的apk的LOCAL_MODULE名字
 
注意：
打开WITH_DEXPREOPT 的后，预置太多apk，会导致system.img 过大，而编译不过。遇到这种情况请调大system.img的大小限制。
-------------------  more in   Android N   ----------------------
N版本当中如果预置了GMS包，则对无源码的APK不做预编译处理。如果需要都做，需要在如下代码做修改：
路径：/device/mediatek/common/BoardConfig.mk
......
ifeq ($(BUILD_GMS),yes)
DONT_DEXPREOPT_PREBUILTS := true   ------------------>请把此处关掉，即赋值false。
else
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
DEX_PREOPT_DEFAULT := nostripping
endif
endif
......
 
修改完后，dex2oat操作即在编译时完成，不会影响开机时间。
 
补充说明：Android N中平台添加该特性，是因为WITH_DEXPREOPT := true打开这个之后，就会将有源码以及无源码的所有预置APK在host上做预编译并且塞到system partition中。

但由于內部project storage size的限制，这些预置APK做完dexpreopt之后会超过system partition的size. 因此选择一个折中方案，即加上限制，
对于无源码的APK(ex: GMS)不做dexpreopt的行为。如果客户的system partition足够大塞的下这些预编译完的内容，可以把这段代码拿掉也不会有什么影响。
```

## [FAQ19348] [Audio volume]如何修改第三方来电提示音音量

```
第三方来电提示音 嘟嘟声 过小
InCallTonePlayer.java
private static final int RELATIVE_VOLUME_HIPRI = 80;
修改RELATIVE_VOLUME_HIPRI的值
范围0~100
```

## [FAQ12380] [Audio APP]如何在Google Play Music中播放Drm歌曲？

```
1、请使用adb shell ps，查看com.google.android.music的process的名称。Play Music应该会有两个process：
com.google.android.music:ui
com.google.android.music:main
2、请在mediatek\frameworks\av\drm\mtkwhitelist\DrmMtkDef.cpp中的数组TRUSTED_APP和TRUSTED_PROC中添加com.google.android.music的process，并相应地修改mediatek\frameworks\av\include\drm\DrmMtkDef.h中TRUSTED_APP_CNT和TRUSTED_PROC_CNT的数值。
3、请在packages\providers\MediaProvider\src\com\android\providers\media\DrmHelper.java的setDefaultProcessNames()内的数组permitedProcessNames中添加com.google.android.music的process。

如果是 L 或 L 之后的版本, 上述文件(DrmMtkDef.cpp / DrmMtkDef.h )路径为:
/vendor/mediatek/proprietary/frameworks/av/drm/mtkwhitelist/DrmMtkDef.cpp
/vendor/mediatek/proprietary/frameworks/av/include/drm/DrmMtkDef.h

M版本：
vendor/mediatek/proprietary/frameworks/av/drm/mtkwhitelist/DrmMtkDef.cpp
中向TRUSTED_APP和TRUSTED_PROC中添加com.google.android.music的process

2，/packages/providers/MediaProvider/src/com/android/providers/media/DrmHelper.java
中initDrmPermistProcessList中添加process。
如果不生效，请查看log,如：

MediaPlayerService: setDataSource with fd: untrusted client [10462][com.google.android.music:ui], denied to access drm fd [19]
可知Google music的process的名称是：com.google.android.music:ui，将process的名称修改。
```

## [FAQ17975] Android M 首次开机不随sim卡自适应语言修改方案

```
不能更新的原因是在update config时Android M上去掉了对locale改变的update, 按如下方法改成与Android L上一致即可。如果修改之后仍不能自适应语言，请在修改之后再参考FAQ14489 Android L sim卡自适应语言问题 的修改方法。
 
/frameworks/opt/telephony/src/java/com/android/internal/telephony/MccTable.java
public static void updateMccMncConfiguration(Context context, String mccmnc,
boolean fromServiceState) {
Slog.d(LOG_TAG, "updateMccMncConfiguration mccmnc='" + mccmnc + "' fromServiceState=" + fromServiceState);

if (Build.IS_DEBUGGABLE) {
String overrideMcc = SystemProperties.get("persist.sys.override_mcc");
if (!TextUtils.isEmpty(overrideMcc)) {
mccmnc = overrideMcc;
Slog.d(LOG_TAG, "updateMccMncConfiguration overriding mccmnc='" + mccmnc + "'");
}
}

if (!TextUtils.isEmpty(mccmnc)) {
int mcc, mnc;

String defaultMccMnc = TelephonyManager.getDefault().getSimOperatorNumeric();
Slog.d(LOG_TAG, "updateMccMncConfiguration defaultMccMnc=" + defaultMccMnc);
//Update mccmnc only for default subscription in case of MultiSim.
// if (!defaultMccMnc.equals(mccmnc)) {
// Slog.d(LOG_TAG, "Not a Default subscription, ignoring mccmnc config update.");
// return;
// }

try {
mcc = Integer.parseInt(mccmnc.substring(0,3));
mnc = Integer.parseInt(mccmnc.substring(3));
} catch (NumberFormatException e) {
Slog.e(LOG_TAG, "Error parsing IMSI: " + mccmnc);
return;
}

Slog.d(LOG_TAG, "updateMccMncConfiguration: mcc=" + mcc + ", mnc=" + mnc);
Locale locale = null; //添加这行
if (mcc != 0) {
setTimezoneFromMccIfNeeded(context, mcc);
locale = getLocaleFromMcc(context, mcc); //添加这行
}
if (fromServiceState) {
setWifiCountryCodeFromMcc(context, mcc);
} else {
// from SIM
try {
Configuration config = new Configuration();
boolean updateConfig = false;
if (mcc != 0) {
config.mcc = mcc;
config.mnc = mnc == 0 ? Configuration.MNC_ZERO : mnc;
updateConfig = true;
}
if (locale != null) { //添加这行
config.setLocale(locale); //添加这行
updateConfig = true; //添加这行
} //添加这行

if (updateConfig) {
Slog.d(LOG_TAG, "updateMccMncConfiguration updateConfig config=" + config);
ActivityManagerNative.getDefault().updateConfiguration(config);
} else {
Slog.d(LOG_TAG, "updateMccMncConfiguration nothing to update");
}
} catch (RemoteException e) {
Slog.e(LOG_TAG, "Can't update configuration", e);
}
}
} else {
if (fromServiceState) {
// an empty mccmnc means no signal - tell wifi we don't know
setWifiCountryCodeFromMcc(context, 0);
}
}
}
```

## [FAQ16264] [Audio APP]首次进入收音机(FM) app，播放的频率不一定是代码中默认的频率，为什么？如何修改为代码中的频率？

```
烧机之后首次进入收音机，播放的频率不一定是代码中默认的频率，为什么？如何修改为播放的频率为代码中的频率？
1、首次进入FM，播放的频率不一定是代码中写入的频率原因是：
烧机之后首次进入FM，频率会使用DEFAULT_STATION，但使用时会判断DEFAULT_STATION是否是valid的station，若不是，则自动跳转到下一station。若是，则使用DEFAULT_STATION。
 
2、修改方法是：不进行判断是否是valid Station，直接播放
在FmService.java文件中firstPlaying修改如下：
private boolean firstPlaying(float frequency) {
Log.d(TAG, "firstPlaying, freq: " + frequency);
if (mPowerStatus != POWER_UP) {
Log.w(TAG, "firstPlaying, FM is not powered up");
return false;
}
//delete below
boolean isSeekTune = false;
float seekStation = FmNative.seek(frequency, false);
int station = FmUtils.computeStation(seekStation);
if (FmUtils.isValidStation(station)) {
isSeekTune = FmNative.tune(seekStation);
if (isSeekTune) {
playFrequency(seekStation);
}
}
// if tune fail, pass current station to update ui
if (!isSeekTune) {
seekStation = FmUtils.computeFrequency(mCurrentStation);
}
//delete above

//add below
boolean isSeekTune =true; 
playFrequency(frequency);
//add above

return isSeekTune;
} 
```

## [FAQ15188] 通过NITZ获取时区出错

```
获取时区步骤分析： 
1：有些基站发送NITZ的信息是没有包含时区信息的，
2：需要通过国家码在ICU中获取时区，获取到的时区可能是多个时区，同时返回第一个时区。
3：ICU返回的时区很可能与客户需求不匹配，因此我司定义了一个数组让客户可以自定义国家码与之对应的时区（一个国家码只能对应唯一的一个时区）
我司原本定义与国家码对应的时区可能不符合贵司需求，或是没有定义就会引起这个问题

可以通过LOG判定问题
如果在radio_log 中出现下面的LOG则确定是此问题引起：
uses TimeZone of Capital City:

需要在GsmServiceStateTracker文件中mTimeZoneIdOfCapitalCity 这个数组加入或是修改对应的国家码以及时区；

举例
如获取到的是New_York时区而贵司需求是Los_Angeles时区
请搜索LOG如果出现
GsmSST  : [GsmSST0] uses TimeZone of Capital City:America/New_York
确定是此问题
修改如下
private String[][] mTimeZoneIdOfCapitalCity = {
{"us", "America/New_York"}，
修改为
{"us", "America/Los_Angeles"}， 
};
```

## [FAQ14476] 手机时间最多只能选到2037年12月30日

```
这个是GOOGLE默认设计的。
因为时间选择最后一天时候，切换时区会有问题.
如在西八区,选最后一天的时间为2037年12月31日23:59分，此时切换到东八区，这时无法显示东八区的正确时间。
因此建议接受这个设计。 
```

## [FAQ12388] 如何修改某种语言的默认时间格式(12小时制，24小时制)

```
如果没有设置默认系统的时间显示格式（12小时制或者24小时制），系统切换不同语言显示时间格式是不同的，
比如波斯语是24小时制，中文是12小时制，这是在哪里控制的呢？
[SOLUTION]
这是icu的时间格式觉定的“H”代表24小时制，“h”代表12小时制，如波斯语如下
android kk external\icu4c\data\locales\fa.txt
android L   external\icu\icu4c\source\data\locales\fa.txt 
gregorian{
DateTimePatterns{
"H:mm:ss (zzzz)",
"H:mm:ss (z)",
"H:mm:ss",
"H:mm",
"EEEE d MMMM y",
"d MMMM y",
"d MMM y",
"y/M/d",
}
如果改成12小时制的话，只需把上面红色部分改成下面就行
"H:mm:ss (zzzz)",
"h:mm:ss (z)",
"h:mm:ss",
"h:mm",
注意修改完后请先编译icu资源（ FAQ04011 ），在new工程，否则不会起效果。
```

## [FAQ03998] “日期和时间->自动确定日期和时间->使用网络提供时间”功能是怎样实现的？

```
现在android通过网络同步时间有两种方式：NITZ和NTP，它们使用的条件不同，可以获取的信息也不一样；勾选这个功能后，手机首先会尝试NITZ方式，若获取时间失败，则使用NTP方式

1.NITZ(network identity and time zone)同步时间
NITZ是一种GSM/WCDMA基地台方式，必须插入SIM卡，且需要operator支持；可以提供时间和时区信息

中国大陆运营商基本是不支持的

2.NTP(network time protocol)同步时间
NTP在无SIM卡或operator不支持NITZ时使用，单纯通过网络（GPRS/WIFI）获取时间，只提供时间信息，没有时区信息（因此在不支持NITZ的地区，自动获取时区功能实际上是无效的）

NTP还有一种缓存机制：当前成功获取的时间会保存下来，当用户下次开启自动更新时间功能时会结合手机clock来进行时间更新。这也是没有任何网络时手机却能自动更新时间的原因。

此外，因为NTP是通过对时的server获取时间，当同步时间失败时，可以检查一下对时的server是否有效，并替换为其他server试一下。

3.如何判断手机通过哪种方式更新时间
设置一个错误的时区，查看时区是否有被更新正确，若时间和时区都有更新正确，那么就是GSM网路有送NITZ消息上来；

若只有时间更新，而时区没有变化，就是NTP方式，即它通过网络（GPRS/WIFI）连接到server去获取时间。
```

## [FAQ06450] 【DatePicker】如何修改DatePicker月份显示

```
问题描述：在设置日期时会用到DatePicker这个控件，控件中分为年月日3个部分显示，在某些语言下（比如俄语），月份名称比较长，会超出控件范围。

修改方法：以俄语为例，将月份改短。

ICS版本：
修改 frameworks\base\core\res\res\values-ru-rRU\donottranslate-cldr.xml文件

下面的这几行：
<string name="month_medium_january">1 月</string>
<string name="month_medium_february">2 月</string>
<string name="month_medium_march">3 月</string>
<string name="month_medium_april">4 月</string>
 
其他（GB，JB，KK）版本：
修改external\icu4c\data\locales\ru.txt的monthNames。
（L，M）版本：
修改external\icu\icu4c\data\locales\ru.txt的monthNames。
修改后需要重新编译ICU资源，可以参考另一个FAQ： FAQ04011
```

## [FAQ06455] 【Zone】如何在设置中添加时区

```
解决方案：以加入Nigeria时区为例，应该如下修改：
1.找到该国家在zoneinfo中的时区信息。
时区信息的文件可以从 ftp://munnari.oz.au/pub/ 下载到最新的，解压 tzdata201x*.tar.gz 后，在每个地区的txt文件中有城市的时区信息，搜索是否有您要添加的城市，则该时区可以添加；如果没有搜索到相关的国家或城市，则需要考虑使用别的城市的时区。
比如在 africa.txt 中搜索 Nigeria，可以找到下面的内容：
# Nigeria
# Zone NAME  GMTOFF RULES FORMAT [UNTIL]
Zone Africa/Lagos 0:13:36 - LMT 1919 Sep
1:00 - WAT
这样可以看到，尼日利亚只有一个城市可以作为时区ID，这个ID就是Africa/Lagos。

2.修改 packages/apps/Settings/res/xml-xx-rYY/timezones.xml 或 packages/apps/Settings/res_ext/xml-xx-rYY/timezones.xml （xx-rYY表示不同的语言和区域）,添加下面的内容（notice:如果只在xml-en-rUS下加那只在设置为en_US时才会有该时区，需要在每种语言下都添加）：
<!-- timezones.xml 用于在setting中增加一个时区设置项 -->
<timezone id="Africa/Lagos">Lagos</timezone>
( Android M )
时区ID的定义是放在 frameworks/base/packages/SettingsLib/res/xml/timezones.xml 文件中的，在这里面添加时区需要从新编译frameworks.

3.修改 framework/base/core/res/res/xml/time_zones_by_country.xml ，添加下面的内容
<!--time_zones_by_country.xml 这个用于自动匹配时区时使用，通过country code找一个时区 -->
<!-- Nigeria, 1:00 -->
<timezone code="ng">Africa/Lagos</timezone>
<!-- 这里的code="ri"表示国家代码，比如中国对应cn，美国对应us，不清楚可以维基百科查询ISO_3166-1-->

4.重新编译Setting
```

## [FAQ04318] 如何修改出厂默认日期和默认时区

```
一、修改默认时间
1、修改RTC默认日期：
Android L之前：
\alps\mediatek\custom\[project]\preloader\ inc\cust_rtc.h
\alps\mediatek\custom\[project]\kernel\rtc\rtc\rtc-mt65XX.h
Android L或M：
bootable\bootloader\preloader\custom\[project]\inc\cust_rtc.h
#define RTC_DEFAULT_YEA         2012
#define RTC_DEFAULT_MTH        2
#define RTC_DEFAULT_DOM        1

2、修改默认日期：
framework\services\java\com\android\server\NetworkTimeUpdateService.java
systemReady()
if(isFirstBoot){
Time today = new Time(Time.getCurrentTimezone());
today.setToNow();   // 将时间恢复到RTC时间
today.set(1, 0, mDefaultYear ); //设立出厂默认日期，mDefaultYear是默认年份
如果想恢复出厂设置后，系统时间不变，可使用today.setToNow();
如果想恢复出厂设置后，系统时间也恢复成出厂时间，可使用today.set(1, 0, mDefaultYear );
这个today.set方法有6个参数的重载，可以精确到秒，具体使用方法请自行查询API，所以在这里设置系统默认时间就可以了。

如果要設置出廠默認年份需要修改
1)   mediatek\frameworks\base\res\res\values\config.xml将default_restore_year 修改成 2013
（Android L：vendor\mediatek\proprietary\frameworks\base\res\res\values）
<!-- default year for first power on-->
<integer name="default_restore_year">2013</integer>

2)   frameworks\base\services\java\com\android\server\NetworkTimeUpdateService.java
if(today.year <= 2010){ //删除此行判断条件
    today.set(today.monthDay, today.month, 2013);
    Log.d(TAG, "Set the year to 2013");
    SystemProperties.set(BOOT_SYS_PROPERTY, "false");
    SystemClock.setCurrentTimeMillis(today.toMillis(false));
}

修改后的表现可通过Setting菜单->时间日期设置):

3、修改默认时区：
在系统属性中增加下面字段(假设改为Moscow)
Android L之前：
mediatek\config\[project]\system.prop
Android L:
device\mediatek\[project]\system.prop
persist.sys.timezone = Europe/Moscow注意：默认时区的修改会影响默认时间的值，会根据与格林尼治标准时间差来更新时间，这是正常现象。如当前设置为中国标准时间GMT+8:00，则手机的出厂时间会变为8:00。
```

## [FAQ11211] 使用一些字库后，字符整体偏上

```
有些字库字形设计不是很标准，字形高度偏小，这样导致使用字库后，字符相对icon整体上移，如下藏语显示问题：

解决这个问题可以使用其他字库来解决，对于JB3、JB5、JB9也可以通过修改代码解决，如下
修改文件：TextPaint.java(alps\frameworks\base\core\java\android\text)

1、新增如下函数
/**
 * @hide
 */
public int getFontMetricsInt(String text, int start, int end, FontMetricsInt fm) {
    Rect bounds = new Rect();
    if (start < 0) {
        start = 0;
    }
    if (end < 0) {
        end = 0;
    }
    if (text == null) {
        start = end = 0;
    } else if (text.length() < end) {
        end = text.length();
    }
    super.getTextBounds(text, start, end, bounds);
    super.getFontMetricsInt(fm);
    if (bounds.top < fm.top) {
        fm.top = bounds.top;
        fm.ascent = bounds.top;
    }
    if (bounds.bottom > fm.bottom) {
        fm.bottom = bounds.bottom;
        fm.descent = bounds.bottom;
    }
    return fm.descent - fm.ascent + fm.leading;
}

2、修改如下函数
/**
 * @hide
 */
public int getFontMetricsInt(char[] text, FontMetricsInt fm, int pos, int len) {
    if (text == null || text.length == 0) {
        return super.getFontMetricsInt(fm);
    }
    return getFontMetricsInt(String.valueOf(text) , 0, text.length, fm);
}
```

## [FAQ10881] 数字、日期、时间客制化问题

```
世界各地的风俗和语言习惯不同，其数字、货币、时间、日期、国家名称显示形式也是不尽相同。
Android引入了ICU4C(External)解决了这些国际化的问题，下面列出了常见的客制化的问题。

1、数字、货币
各个国家数字以及数值表示方式不同，如英文2.46，阿拉伯语为٢‎,٤‎٦‎，而俄文却是2，46。如果系统语言为俄文，想要把数字显示成英语格式，按照如下：
NumberFormat inf = NumberFormat. getInstance(new Locale(“en”));
String str = nf.format(2.46);
有关货币、int、percent等类型格式化具体可参考NumberFormat.java

2、时间、日期
关于时间格式化和数字差不多，具体例子如下：
SimpleDateFormat sdf = new SimpleDateFormat(“hh:mm”，new Locale(“en”));
String result = sdf.format(mCalendar.getTime());
SimpleDateFormat sdf = new SimpleDateFormat(“EEEE, MMMM d”，new Locale(“en”));
String result = sdf.format(mCalendar.getTime());

3、其他ICU资源
一些ICU字串，如日期、语言、时区、国家等的翻译在External/icu4c/data/下各个子目录下，常见如：
lang：各种语言对其他语言的翻译,常见地方为Setting的语言列表。
locale：月份、星期、日期、AM/PM等日期相关的翻译。
zone：时区名称定义。
region：地区、国家名称。

如果修改了ICU资源，必须重新编译ICU资源，在Remake工程，否则不会起效果。具体编译方法可以参考：FAQ04011
```

## [FAQ17708] 时区列表中名称无法修改

```
参考  FAQ08718【TimeZone】如何修改时区的显示名称。
修改时区名字后时区列表某些时区没又效果,不过设置中的时区显示已经修改OK.

请将timepicker.java中的
private void addTimeZone(String olsonId) {

//            if (mLocalZones.contains(olsonId)) {
//                mZoneNameFormatter.setTimeZone(tz);
//                displayName = mZoneNameFormatter.format(mNow);
//                Log.d(TAG,"lijinhai addTimeZone  mLocalZones1 displayName="+displayName);
//            } else {
//              }

将IF这个分支全部去掉，直接跑else里面的内容就OK了。
```

## [FAQ17514] [Recovery]Recovery mode FAQ搜寻指南

```
Recovery mode 依据不同问题归类为几个属性标签如下

[Debug/Log]   :debug log , adb 相关问题
[OTAError]      :升级过程报错相关问题
[UI/Key]         : UI 界面与 custom key 配置相关问题
[Otapackage]  : 制作升级包相关问题
[SecureOTA]   : secure boot project 升级相关问题
[FactoryReset]: 恢复出厂设置， 预置资源问题
[Common]      : 典型问题
[升级lk、Preloader]:lk、Preloader升级问题
[Others]         : 其他未分类问题

1.大版本升级相关问题
FAQ18202 [Recovery][Common]Android L ->M版本OTA/T卡升级注意事项
FAQ13472 [Recovery][Common]从KK(4.4)版本通过OTA升级到L(5.0)版本的问题集锦
FAQ11465 [Recovery][OTAError]JB升级到KK在升级界面出现一个警告提示“Warning ,No file_contexts”
FAQ11447 [Recovery][Common]从JB(4.2)版本通过FOTA升级到KK(4.4)版本的注意事项

2.UI 界面与 custom key 配置相关问题
FAQ14484 [Recovery][UI/Key]如何修改L版本recovery mode 小机器人界面进入菜单，由volume up&power改为直接按power(如同KK以前版本)
FAQ13766 [Recovery][UI/Key]L 版本进入recovery mode的方式有改变
FAQ09061 [Recovery][UI/Key]recovery相关按键的配置与客制化
FAQ08110 [Recovery][UI/Key]如何修改recovery mode下字体的大小
FAQ06386 [Recovery][UI/Key]JB2版本关机状态按PowerOn+VolUp键进入RecoveryMode直接显示菜单
FAQ04463 [Recovery][UI/Key]android 4.1版本（Jelly Bean ）后的平台Recovery Mode下直接进入menu 
FAQ03439 [Recovery][UI/Key]如何进入recovery mode立即显示menu菜单

3.升级报错
FAQ18367 [Driver - Recovery] Android M error: Invalid OTA package,missing scatter Installation aborted
FAQ18250 [recovery][common]Android M upgrade occurs “Error: Invalid OTA package, missing scatter”
FAQ14973 [Recovery][OTAError]Adb sideload OTA升级失败报错："E: unknown volume for path [/sideload/pakage.zip]”
FAQ14782 [Recovery][OTAError]L版本开启MTK_SHARED_SDCARD 后OTA包放入内卡如何MOTA升级成功？
FAQ14769 [Recovery][OTAError]L版本OTA升级遇到error："system has been remounted R/W; reflash device to reenable OTA updates"
FAQ11475 [Recovery][OTAError]升级报错"Error: System property does not match"怎么办？
FAQ11106 [Recovery][OTAError]SECURE OTA 升级包里面缺少SEC_VER.txt导致升级失败
FAQ11048 [Recovery][OTAError]从外置SD卡升级过程断电，再升级，无法看到"apply sdcard2:update.zip"提示！
FAQ04471 [Recovery][OTAError]MOTA/FOTA升级失败，怎么办？
 
 
4.升级包制作与签名相关
FAQ12479 [Recovery][Otapackage]为什么制作差分包时未使用-k 选项有时可以升级成功、有时却失败？
FAQ11470 [Recovery][Otapackage]如何制作差分包且正确签名？
FAQ11464 [Recovery][Otapackage]JB升级到KK如何正确编译差分升级包update.zip？
FAQ03534 [Recovery][Otapackage]如何给OTA升级包重新签章
FAQ03441 [Recovery][Otapackage]如何制作和使用OTA（sdcard）升级包
FAQ03440 [Recovery][Otapackage]如何制作user版本的T卡升级包
FAQ02507 [Recovery][Otapackage]如何编译完整升级包
 
5.编译与编译报错问题
FAQ14456 [Recovery][Otapackage]system.img>2G导致编译otapackage时报错如何处理
FAQ14455 [Recovery][Otapackage]打开MTK_CIP_SUPPORT=yes后make otapackage报错KeyError:"/custom"
FAQ10545 [Recovery][Otapackage]The "brom_lite" is not found in the SD card upgrade package for JB9？
FAQ10544 [Recovery][Otapackage]MT6572+ UBIF文件系统build出来的OTA包不含system.img该怎么办？
FAQ07599 [Recovery][Otapackage]./mk otapackage报错总结
FAQ03436 [Recovery][Debug/Log]如何单独 build recovery image
 
6.MTK_SHARED_SDCARD 宏相关问题
FAQ12478 [Recovery][Common]关于打开MTK_SDCARD_SWAP 宏后MTK目前升级方案
FAQ12477 [Recovery][Common]关于打开MTK_SHARED_SDCARD宏后MTK目前升级方案
 
7.恢复出厂设置，预置资源问题
FAQ17418 [Recovery][Build] 预置资源（如apk）到userdata，otapackage之后的userdata.img没有此资源 
FAQ13434 [Recovery][FactoryReset]L 开启MTK_SHARED_SDCARD，恢复出厂设置还能实现keep_list功能吗？
FAQ12384 [Recovery][FactoryReset]不打开Shared sdcard功能，内置SD卡中预制资源，删除资源，恢复出厂设置恢复
FAQ11954 [Recovery][Others]如何实现恢复出厂后不重新启动手机？FAQ10734 [Recovery][FactoryReset]开启了MTK_SHARED_SDCARD之后；恢复出厂设置如何保留预置资源？
FAQ06388 [Recovery][FactoryReset]89 JB2平台上factory reset从LK进入Recovery Mode画面切换有黄条
FAQ05341 [Recovery][FactoryReset]如何避免data分区的.keep_list和.restore_list被意外损坏导致special factory reset不成功
FAQ03437 [Recovery][FactoryReset]special factory reset preserve or restore apk to /data/app
FAQ03434 [Recovery][Others]恢复出厂设置之后如何将时间变为初始值
 
8.Secure boot project 的升级问题
FAQ14751 [Recovery][SecureOTA]L 版本Security OTA升级方法
FAQ11106 [Recovery][OTAError]SECURE OTA 升级包里面缺少SEC_VER.txt导致升级失败
FAQ05739 [Recovery][SecureOTA]OTA升级secutiry device的注意点
FAQ17784 [Recovery][Common]Android M OTA build (Include Security OTA)
 
9.Debug log ,adb 功能相关
FAQ15046 [Recovery][Debug/Log]L版本Recovery Mode打开adb功能
FAQ12130 [Recovery][Common]如何通过adb command 完成自动SD卡升级？
FAQ10547 [Recovery]adb shell df 命令显示的系统分区Size不准确 ？
FAQ09814 [Recovery][Debug/Log]如何在recovery mode下抓取coredump
FAQ08726 [Recovery][Debug/Log]How to enable adb in Recovery Mode
FAQ04559 [recovery][Common]从JB版本开始支持adb sideload命令
FAQ03442 [Recovery][Debug/Log]如何在recovery mode下抓取LOG
 
10.升级包保存或删除问题
FAQ12492 [Recovery][Others]SD卡升级包升级后，如何删除升级包文件？
FAQ10759 [Recovery][Others]MOTA升级成功后想保留OTA升级包该怎么办？
 
11.内外卡,data路径相关问题
FAQ18251 [Recovery][common] Android M Adoptable SD卡无法在recovery mode识别和使用
FAQ17442 [Recovery][Common]Android L和M 版本data加密后升级包放入/data分区如何升级？
FAQ12491 [Recovery][Common]Recovery mode 选择"apply update from sdcard"直接进入data/目录是否正常？
FAQ08109 [Recovery][Common]在recovery mode下同时挂载内置T卡和外置T卡
FAQ05443 [Recovery][Others]从data区读取状态来确定升级用内外置卡导致升级不成功
FAQ04366 [Recovery][Common]JB版本的recovery mode下使用外置T卡升级修改方法
FAQ03432 [Recovery][Common]Recovery mode下mount外置T卡的方法(emmc)

12.重启相关问题
FAQ12481 [Recovery][Others]Recovery mode在cache/recovery目录下新建一支文件，重启后，新建文件消失了
FAQ11015 [Recovery][Others]通过组合键进入recovery模式选择sdcard菜单升级，升级完如何自动重启？
FAQ03431 [Recovery][Others]OTA升级在recovery mode下无法返回normal mode

13.lk、Preloader等分区升级相关问题
FAQ18188 [Recovery][Common]Android M 版本如何升级logo等rawdata分区方法？
FAQ17441 [Recovery][Common]Android M 版本如何升级lk 、preloader ？ 
FAQ12947 [Recovery]Update LOGO&LK&PRELOADER via OTA upgrade

14.其他升级问题
FAQ18467 add selinux policy in OTA
FAQ14482 [Recovery][Others]如何在recovery mode下单独关闭selinux 而不影响normal mode
FAQ04813 [Recovery]使手机设置菜单里的序列号为手机的barcode值
FAQ03435 [Recovery][Common]如何查看手机上的build时间戳
```

## [FAQ12127] 插入俄罗斯SIM卡获取时区不对

```
手机插入俄罗斯SIM卡，发现根据MCC获取的时区不是Moscow，
如KK版本插入俄罗斯卡，发现当前时区是Europe/Kaliningrad，L版本则是Europe/Andorra
[SOLUTION]
这是因为系统在通过MCC获取时区时是先获取sim卡所属国家所有的时区列表，然后把列表的第一个作为返回值。
因为Moscow不是第一位，因此出现上面这种情况，
一般从log中会有这样的下面的关键字打出，
KK版本：
06-03 10:05:27.069   864   864 D GSM     : [GsmSST0] pollStateDone: try to fixTimeZone mcc:250 mccTz:Europe/Kaliningrad
06-03 10:05:27.069   864   864 D GSM     : [GsmSST0] pollStateDone: using default TimeZone
06-03 10:05:27.069   864   864 D GSM     : [GsmSST0] pollStateDone: zone != null zone.getID=Europe/Kaliningrad
Android L：
04-14 05:21:51.436  3596  3596 D GSM     : [GsmSST1] pollStateDone: try to fixTimeZone mcc:250 mccTz:Europe/Andorra zone.getID=Europe/Andorra
04-14 05:21:51.436  3596  3596 D GSM     : [GsmSST1] pollStateDone: using default TimeZone
04-14 05:21:51.436  3596  3596 D GSM     : [GsmSST1] pollStateDone: zone != null zone.getID=Europe/Andorra
这个问题可以修改defaultTimeZoneForMcc返回值解决如下：
MccTable.java alps\frameworks\opt\telephony\src\java\com\android\internal\telephony 
public static String defaultTimeZoneForMcc(int mcc) {
    MccEntry entry;
    entry = entryForMcc(mcc);
    if (entry == null || entry.mIso == null) {
        return null;
    } else {
        Locale locale;
        if (entry.mLanguage == null) {
            locale = new Locale("", entry.mIso);
            Slog.d(LOG_TAG, "defaultTimeZoneForMcc: mcc=" + mcc + ", mIso=" + entry.mIso);
        } else {
            locale = new Locale(entry.mLanguage, entry.mIso);
            Slog.d(LOG_TAG, "updateMccMncConfiguration: mcc=" + mcc +
                                    ", mLanguage=" + entry.mLanguage +
                                    ", mIso=" + entry.mIso);
        }
        String[] tz = TimeZoneNames.forLocale(locale);
        if (tz.length == 0) return null;  
         if(mcc==250) return "Europe/Moscow"；////add this line
        return tz[0];
    }
}
 
Android M: 
/frameworks/opt/telephony/src/java/com/android/internal/telephony/MccTable.java
public static String defaultTimeZoneForMcc(int mcc) {
    MccEntry entry = entryForMcc(mcc);
    if (entry == null) {
        return null;
    }
    Locale locale = new Locale("", entry.mIso);
    String[] tz = TimeZoneNames.forLocale(locale);
    if (tz.length == 0) return null;
    if(mcc==250) return "Europe/Moscow"；////add this line
    return tz[0];
}
```

## [FAQ17902] 如何关闭灭屏时colorFade渐变动画

```
在displayPowerController.java文件updatePowerState函数，将performScreenOffTransition的赋值修改为false
```

## [FAQ19228] [Audio APP] android 7.0 充电提示音无效

```
其实是需要无线充电的时候才会发出声音
 
代码逻辑如下：
这个设定是更改 setting 里面的 Settings.Global.CHARGING_SOUNDS_ENABLED
最后会被 frameworks/base/services/core/java/com/android/server/power/Notifier.java 去检测
private void playWirelessChargingStartedSound() {
    final boolean enabled = Settings.Global.getInt(mContext.getContentResolver(),
    Settings.Global.CHARGING_SOUNDS_ENABLED, 1) != 0; //更改的是 Settings.Global.CHARGING_SOUNDS_ENABLED
    final String soundPath = Settings.Global.getString(mContext.getContentResolver(),
    Settings.Global.WIRELESS_CHARGING_STARTED_SOUND);
    if (enabled && soundPath != null) {
        final Uri soundUri = Uri.parse("file://" + soundPath);
        if (soundUri != null) {
            final Ringtone sfx = RingtoneManager.getRingtone(mContext, soundUri);
            if (sfx != null) {
                sfx.setStreamType(AudioManager.STREAM_SYSTEM);
                sfx.play();
            }
        }
    }
    mSuspendBlocker.release();
}


而这个检测方法是在 PowerManagerService 中被调用的
看逻辑是只在无线充电的时候才会有声音

PowerManagerService.java中updateIsPoweredLocked函数中，
if (dockedOnWirelessCharger) {
    mNotifier.onWirelessChargingStarted();
}
```

## [FAQ19277] [Audio APP] android 7.0 FMRadio 的正确更新方式

```
有客户遇到原生的 FMRadio app 用 install 的方式安装后打开会出现 force close, 查看 log 是加载 library 出错
01-01 04:35:22.406100 12311 12311 E AndroidRuntime: FATAL EXCEPTION: main
01-01 04:35:22.406100 12311 12311 E AndroidRuntime: Process: com.android.fmradio, PID: 12311
01-01 04:35:22.406100 12311 12311 E AndroidRuntime: java.lang.UnsatisfiedLinkError: dlopen failed: library "/system/lib64/libfmjni.so" needed or dlopened by "/system/lib64/libnativeloader.so" is not accessible for the namespace "classloader-namespace"
01-01 04:35:22.406100 12311 12311 E AndroidRuntime: at java.lang.Runtime.loadLibrary0(Runtime.java:977)
01-01 04:35:22.406100 12311 12311 E AndroidRuntime: at java.lang.System.loadLibrary(System.java:1530) 

这是因为安装方式不正确，android 7.0 开始，FMRadio 默认是安装在 system/priv-app/FMRadio/下面，所以如果有开发过程中有验证需求，需要把 FMRadio.apk push 到 system/priv-app/FMRadio/ 下面，然后重启验证。

如果是用 adb install 的方式，会安装到 data/app/ 下面, 不具有加载 system library 的权限
```

## [FAQ19280] 开机后，首次图案解锁失败

```
请如下修改：
/system/gatekeeper/gatekeeper.cpp
uint32_t GateKeeper::ComputeRetryTimeout(const failure_record_t *record) {
    if (record->failure_counter > 0 && record->failure_counter <= 10) {
        if (record->failure_counter % 5 == 0) {
            return 30000;
        }
    } else {
        return 30000;
    }
    return 0;
}
修改成如下：
uint32_t GateKeeper::ComputeRetryTimeout(const failure_record_t *record) {
    if (record->failure_counter > 0 && record->failure_counter <= 10) {
        if (record->failure_counter % 5 == 0) {
            return 30000;
        }
    } else if(record->failure_counter == 0){ //增加了fail次数为0的判断
        return 0;
    } else{
        return 30000;
    }
    return 0;
}
```

## [FAQ19296] 将歌曲设为闹钟铃声，删除该歌曲后，来闹钟后，铃声只响一声，如何修改为正常响很多声？

```
1，问题原因是当mRingtone == null时，未setloop，所以不会循环播放。
2， 修改如下：
AsyncRingtonePlayer.java (packages\apps\deskclock\src\com\android\deskclock)

private static class RingtonePlaybackDelegate implements PlaybackDelegate {

public void play(Context context, Uri ringtoneUri, boolean inCall) {

LogUtils.d(TAG, "lll RingtonePlaybackDelegate Play ringtoneUri="+ringtoneUri,new Exception("callstack"));
if (Looper.getMainLooper() == Looper.myLooper()) {
LogUtils.e(TAG, "Must not be on the main thread!", new IllegalStateException());
}

LogUtils.i(TAG, "Play ringtone via android.media.Ringtone.");

if (mAudioManager == null) {
mAudioManager = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
}

final boolean inTelephoneCall = inCall; //isInTelephoneCall(context);
if (inTelephoneCall) {
ringtoneUri = getInCallRingtoneUri(context);
}

// attempt to fetch the specified ringtone
mRingtone = RingtoneManager.getRingtone(context, ringtoneUri);
// Attempt to enable looping the ringtone.
/// M: if the alarm's uri exists but the real file is missing
if (mRingtone == null
|| !AlarmClockFragment.isRingtoneExisted(context, ringtoneUri.toString())) {
// fall back to the default ringtone
final Uri defaultUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_ALARM);
mRingtone = RingtoneManager.getRingtone(context, defaultUri);
}

//该段代码移动如下
try {
mSetLoopingMethod.invoke(mRingtone, true);
} catch (Exception e) {
LogUtils.e(TAG, "Unable to turn looping on for android.media.Ringtone", e); 
// Fall back to the default ringtone if looping could not be enabled.
// (Default alarm ringtone most likely has looping tags set within the .ogg file)
mRingtone = null;
}
//该段代码移动如上

// if we don't have a ringtone at this point there isn't much recourse
if (mRingtone == null) {
LogUtils.i(TAG, "Unable to locate alarm ringtone.");
return;
}
if (Utils.isLOrLater()) {
mRingtone.setAudioAttributes(new AudioAttributes.Builder()
.setUsage(AudioAttributes.USAGE_ALARM)
.setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
.build());
}
// Attempt to adjust the ringtone volume if the user is in a telephone call.
if (inTelephoneCall) {
LogUtils.v("Using the in-call alarm");
try {
mSetVolumeMethod.invoke(mRingtone, IN_CALL_VOLUME);
} catch (Exception e) {
LogUtils.e(TAG, "Unable to set in-call volume for android.media.Ringtone", e);
}
}
mAudioManager.requestAudioFocus(null, AudioManager.STREAM_ALARM,
AudioManager.AUDIOFOCUS_GAIN_TRANSIENT);
mRingtone.play();
}
```

## [FAQ19290] 如何查看TCP Buffer size大小

```
查看:
情况1:log中包含数据连接的过程
A.查看radio_log,搜索关键字setup_data_call,确定default PDP建立连接的时间点.
B.查看sys_log,搜索关键字Setting tx/rx TCP buffers,查看测试时间点或建立数据连接时间点设置的值
 
情况2:netlog中含有dump-networking log,搜索关键字tcp_rmem及tcp_wmem,查看readBuffer及writeBuffer.
提示:只有手动停止mtklog,netlog中才会包含dump-networking log.
 
修改:
文件:DataConnection.java
方法:搜索关键字 TCP_BUFFER_SIZES,会看到根据网络环境设置的各种buffer size,可以根据需要进行修改.
如: private static final String TCP_BUFFER_SIZES_LTE="524288,1048576,2097152,262144,524288,1048576";
表示4G环境下,设置的tcp buffer sizes的值,其中前三个值是readBuffer,后三个值是writeBuffer.
```

## [FAQ19263] 查看热点支持连接数

```
用 grok 在代码中搜索 max_num_sta 即可

alps/kernel-4.9/drivers/staging/wilc1000/host_interface.h	19 #define MAX_NUM_STA	9 macro 

1. find out the file( /data/misc/wifi/hostapd.conf ), in hotspot device;

P:/data/misc/wifi/softap.conf

2. find out the key (max_num_sta), the valuse of the key is the hotspot's capability.

forexample:
if the max_num_sta equal 8, so the hotspot's capability can support 8 stations at the same time.
```

## [FAQ11035] 如何通过USB接口抓UART log

```
M版本以及以后的版本不再支持此Feature！
 
目前6572和6582 之后平台可以使用USB线抓取UART log，具体的操作方法如下

[SOLUTION]
L 版本：
步骤1.请打开如下两个宏：

preloader：
alps/bootable/bootloader/preloader/platform/$platform/default.mk
CFG_USB_UART_SWITCH

kernel:
alps/kernel-3.10/arch/arm/configs/xxx_defconfig
CONFIG_MTK_UART_USB_SWITCH

步骤2. enable from engineer mode
输入*#*#3646633#*#*
Hardware -> UART/USB Switch ->进去可以切换mode

注意：
1.切换前不能插入cable
2.DP ->TX ; DM -> RX
3. 连线需要连UART线，不能连USB线

L以前版本：
6572 6571平台：
在 Mediatek/custom/<proj>/preloader/inc/cust_bldr.h 里将 CFG_USB_UART_SWITCH 宏打开
6582 6592平台：
Mediatek/custom/<proj>/preloader/cust_bldr.mak里将 CFG_USB_UART_SWITCH 宏打开，

具体代码您可以参考alps/mediatek/platform/mt6582/preloader/src/drivers/Platform.c的platform_pre_init（）函数~
```

## [FAQ08879] [SIM]如何获取卡对应的plmn

```
获取卡对应的plmn 

plmn 由MCC MNC组成
MCC全称是Mobile Country Code，3位数组成，用户不同国家的一个识别码；
MNC全称是Mobile Network Code，不同运营商的MNC有区别(MNVO除外)，2位或者3位，这个长度是存放在IccCard的EF_AD当中。

MCC/MNC是从IccCard中读取出来的.以sim卡为例，SIMRecords.java读取，属于Phone 进程的模块。
除了Phone进程，其他应用要获取MCC/MNC不能直接到SIMRecords.java中拿。
所以有考虑到这一点，在读取出mcc/mnc时将其保存，PhoneInterfaceManager.java有提供接口给其他进程呼叫。
L & M & N 版本:
TelephonyManager.java           public String getSimOperator(long subId);

L之前的版本:
TelephonyManager.java           public String getSimOperator(int simId);

使用方法:
try{
    ITelephony tel = ITelePhone.Stub.asInterface(ServiceManager.getService(Context.TELEPHONY_SERVICE));
    String MccMnc = null;
    if(tele != null) {
        //L & M & N 版本
        MccMnc = tel.getSimOperator(subId);
        //L 之前的 版本
        MccMnc = tel.getSimOperator(simId);
    }
}catch (RemoteException ex){
}
PS: 如果只取Mcc的话，MccMnc.subString(0,3)即可
```

## [FAQ19143] Android N common版本上中文英文字串网址识别错误

```
Android N上，接收短信时，如果收到的内容有中文和网址时，网址匹配不正确。例如：带有网址和中文时，中文和网址全部带有下划线，中文www.baidu.com中文，整个都会有下划线，需要改成只有www.baidu.com有下划线。Google原生的WEB_URL Pattern都是follow RFC spec定义的，建议不要修改，如果必须要改，可参照下面的solution. 此修改不影响CTS测项，但可能对其它Unicode URL的匹配有影响(如果是Android N之前的版本请参考FAQ13616)。

vendor/mediatek/proprietary/frameworks/base/packages/FwkPlugin/src/com/mediatek/op/util/DefaultPatterns.java

package com.mediatek.op.util;

import android.util.Patterns;
import android.util.Log;

import com.mediatek.common.PluginImpl;
import com.mediatek.common.util.IPatterns;
import com.mediatek.common.util.IPatterns.UrlData;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
* Customize the web URL parsing.
*
*/
@PluginImpl(interfaceName = "com.mediatek.common.util.IPatterns")
public class DefaultPatterns implements IPatterns {
    private static final String TAG = "DefaultPatterns";

    // The regular expressions for filtering out bad url starting and ending
    private static final String mValidCharRegex = "a-zA-Z0-9\\-_";
    // First group: Find the invalid url characters before "xxxx:// or xxx.".
    // Second group: "xxxx:// or xxx."
    private static final String mBadFrontRemovingRegex = String.format(
            "(^[^.]*[^%s.://#&=]+)(?:[a-zA-Z]+://|[%s]+.)", mValidCharRegex, mValidCharRegex);
    // First group: Find the top level domain, ex:".xxx".
    // The ending ")" is for google map url, which may end with a coordinate,
    // ex:"(32.012345, 118.54321)"
    // Second group: The rest characters after the TLD to the end of the string,
    // except some special character may appear in url, ex: "./?=&%"
    private static final String mBadEndRemovingRegex = String.format(
            "([\\.\\:][%s)]+[/%s]*)([\\.\\:]?[^%s\\.\\:\\s/]+[^\\.=&%%/]*$)",
            mValidCharRegex, mValidCharRegex, mValidCharRegex);

    // Helper function for exgular expression group replacing.
    private static final String replaceGroup(String regex, String source, int groupToReplace,
             String replacement) {
             return replaceGroup(regex, source, groupToReplace, 1, replacement);
    }

    // Helper function for exgular expression group replacing.
    private static final String replaceGroup(String regex, String source, int groupToReplace,
             int groupOccurrence, String replacement) {
             Matcher m = Pattern.compile(regex).matcher(source);
             for (int i = 0; i < groupOccurrence; i++) {
                      if (!m.find()) {
                               return source;
                      }
              }
             return new StringBuilder(source).replace(m.start(groupToReplace), m.end(groupToReplace),
                       replacement).toString();
    }

    @Override
    public UrlData getWebUrl(String urlStr, int start, int end) {
              Log.d("@M_" + TAG, "getWebUrl, " + urlStr + " start=" + start + " end=" + end);
              if (urlStr != null) {
                       /// Filter out invalid characters at the begin of the url
                       Pattern p1 = Pattern.compile(mBadFrontRemovingRegex);
                       Matcher m1 = p1.matcher(urlStr);
                       if (m1.find()) {
                                 urlStr = replaceGroup(mBadFrontRemovingRegex, urlStr, 1, "");
                                 start = end - urlStr.length();
                        }

                       /// Filter out invalid characters at the end of the url
                       Pattern p2 = Pattern.compile(mBadEndRemovingRegex);
                       Matcher m2 = p2.matcher(urlStr);
                       if (m2.find()) {
                                  urlStr = replaceGroup(mBadEndRemovingRegex, urlStr, 2, "");
                                  end = start + urlStr.length();
                        }
               }
               Log.d("@M_" + TAG, "getWebUrl, return: " + urlStr + " start=" + start + " end=" + end);
               return new UrlData(urlStr, start, end);
    }

    @Override
    public int getPatternType() {
               return PATTERN_CHINA;
    }
}
```

## [FAQ19188] 3G常用feature支持情况在log中查看方法

## [FAQ19211] [Android5.1]开机动画desc.txt描述文件分析

```
1、desc.txt文件格式分析
desc.txt文件由若干行组成，每一行代表一种描述。下面以一个具体的例子为例，具体说明

480 640 20 
p   1   0    folder1 
p   2   20  folder2 
c   0   0    folder3 
c   1   0    folder4 

  1行用来描述开机动画在屏幕显示的大小及速度。具体为：开机动画的宽度为480个像素，高度为640个像素，显示频率为每秒20帧，即每帧显示1/20秒。
  下面的每一行代表一个片段，显示的时候会按照顺序从上到下依次显示。第1个字符为片段类型，有'c'和'p'两种，两者的区别后面会结合代码说明。
  2个数字为该片段重复显示的次数，如果为‘0’，表示会无限重复显示；第3个数字为两次显示之间的间隔，单位为第一行中定义的每帧显示的时间；第4个字符串为该片段所在的文件夹，一个片段可以由多个png图片组成，都存放在folder文件夹中。
“p 1 0 folder1”-------代表该片段显示1次，与下一个片段间隔0s，该片段的显示图片路径为bootanimation.zip/folder1。
“p 2 20 folder2”--------代表该片段显示2次，且两次之间显示的间隔为20*(1/20)=1s，与下一个片段间隔20*(1/20)=1s，该片段的显示图片路径为bootanimation.zip/folder2。
“c 0 0 folder3”-------代表该片段无限循环显示，且两次显示的间隔为0s，与下一个片段间隔0s，该片段的显示图路径为bootanimation.zip/folder3。
“c 1 10 folder4”--------代表该片段显示1次，显示后暂停10*(1/20)=0.5s，该片段的显示图路径为bootanimation.zip/folder4。


2、"p"片段和“c”片段的区别
  在早期Android版本中只有“p”片段，且movie()中的显示代码如下：
for (int i=0 ; i<pcount && !exitPending() ; i++) { 
  const Animation::Part& part(animation.parts[i]); 
  const size_t fcount = part.frames.size(); 
  glBindTexture(GL_TEXTURE_2D, 0); 

  for (int r=0 ; !part.count || r<part.count ; r++) { 
       for (int j=0 ; j<fcount && !exitPending(); j++) { 
            const Animation::Frame& frame(part.frames[j]); 
            ....... 

} 

  里面的主要参数和函数说吗如下：
pcount---显示片段的数量，比如上面的例子，pcount=4
p.count---该片段的重复显示次数。
fcount---该片段中png图片的数量
exitPending()---如果SurfaceFlinger服务通知bootanimation停止显示动画，则该函数返回值为true，否则为false。
  第一个for循环用于顺序显示所有片段，第二个for循环用于重复显示该片段，第三个for循环用于顺序显示该片段中所有的png图片。
  分析代码，可知：若exitPending()返回值为true，即SurfaceFlinger服务要求bootanimation停止显示动画，则不管当前显示到哪个片段或png图片，都会导致退出for循环，从而停止开机动画的显示。
  在Android5.1中，加入了“c”片段。对与以"c"标识的片段，即使exitPending()返回值为true，也会继续显示。
我们分析一下源码，首先看一下movie()中解析desc.txt的代码：

// Parse the description file 
for (;;) { 
...... 
if (sscanf(l, "%d %d %d %d", &width, &height, &fps, &flg) >= 3) { 
  animation.width = width; 
  animation.height = height; 
  animation.fps = fps; 
} 
else if (sscanf(l, " %c %d %d %s #%6s", &pathType, &count, &pause, path, color) >= 4) { 
  Animation::Part part; 
  part.playUntilComplete = pathType == 'c'; 
  part.count = count; 
  part.pause = pause; 
  part.path = path; 
  part.audioFile = NULL; 
  if (!parseColor(color, part.backgroundColor)) { 
        ALOGE("> invalid color '#%s'", color); 
        part.backgroundColor[0] = 0.0f; 
        part.backgroundColor[1] = 0.0f; 
        part.backgroundColor[2] = 0.0f; 
  } 
  animation.parts.add(part); 
} 
  s = ++endl; 
} 
  可以看到，如果pathType==‘c’，part.playUntilComplete等于true，否则为false。接着，看一下显示代码：
for (size_t i=0 ; i<pcount ; i++) { 
  const Animation::Part& part(animation.parts[i]); 
  const size_t fcount = part.frames.size(); 
  glBindTexture(GL_TEXTURE_2D, 0); 

  for (int r=0 ; !part.count || r<part.count ; r++) { 
        // Exit any non playuntil complete parts immediately 
        if(exitPending() && !part.playUntilComplete) 
              break; 
  ...... 

        for (size_t j=0 ; j<fcount && (!exitPending() || part.playUntilComplete) ; j++) { 
        ...... 
        checkExit(); 
  } 
  usleep(part.pause * ns2us(frameDuration)); 
  // For infinite parts, we've now played them at least once, so perhaps exit 
  if(exitPending() && !part.count) 
        break; 
  } 
  ...... 
} 
  可以看到，如果exitPending()返回值为true且part.playUntilComplete=false，则会break。即：当SurfaceFlinger服务要求bootanimation停止显示动画时，以‘p’标识的片段会停止，而以'c'标识的片段会继续显示。这就是两者之间的主要区别。
  这里有个问题：重复循环显示的'c'标识片段，会不受任何约束的一直显示下去，这显然是不合适的。
于是在第二个for循环体最后，有如下代码：

// For infinite parts, we've now played them at least once, so perhaps exit 
if(exitPending() && !part.count) 
  break; 
意思是，如果检测到SurfaceFlinger服务要求bootanimation停止显示，且该片段的显示次数为'0'，即重复循环显示，则会break停止显示。

  估计"c"标识的意思是continue，即：即使SurfaceFlinger要求bootanimation停止动画，bootanimation也不会立刻停止动画，它会等c标识片段都显示完毕后，再停止。
这样，我们可以利用'c'和'p'片段的区别，设计出更灵活的开关机动画。
```

## [FAQ17334] [SIM_ME_LOCK]MCCMNC锁卡失败

```
如果锁卡的目标合法MCC-MNC是:738002,可是锁卡后目标卡(即738002的卡)进不到待机界面。(提示:Enter NP/SP等等Code，输入正确密码后才能进入)。但是使用中国移动(46000)或是中国联通(46001)等MCC-MNC是5位的卡测试，锁网功能正常。 

这个现象是这些特殊卡的EF_AD中没有指定MNC的长度造成的。

  
[SOLUTION]
MCC-MNC 长度 = mcc_length + mnc_length;
mcc_length : 固定是3。
Mnc_length : 与SIM卡有关，2 或 3，初始值为0，mnc_length 是在SIM卡初始化时从 EF_AD 第四个字节获取，有效值是2 或 3;

当 EF_AD 第四个字节无效时，mnc_length = 0；匹配失败，导致锁卡失败。

所以，当SIM 卡 EF_AD 第四个字节无效，没有写 mnc_length 时，确保锁卡MCC-MNC为5位或6位都有效的方法：

确保 SML_MNC_LENGTH_NEST 的值为 1，并修改 sml_GetCode 为如下：

kal_uint8 sml_GetCode( sml_cat_enum cat, 

kal_uint8 * imsi, 

kal_uint8 * gid1, 

kal_uint8 * gid2, 

kal_uint8 sim_mnc_len,

kal_uint8 * pdata,

kal_uint8 * code) 
{ 
     kal_uint8 mnc_len=0;

     if (SML_MNC_LENGTH_NEST == 1)     //Get mnc length from SIM 
     {
         if ((sim_mnc_len == 2) || (sim_mnc_len == 3)) 
         { 
            mnc_len = sim_mnc_len; 
         } 
         else
         { 
            if(((*(pdata+2)) & 0x0F) == 0x0F) 
            { 
                 mnc_len = 2; 
            } 
            else
            { 
                 mnc_len = 3; 
            } 
         } 
     } 
     else      //Get mnc length from NVRAM 
     { 
         if(((*(pdata+2)) & 0x0F) == 0x0F) 
         { 
             mnc_len = 2; 
         } 
         else
         { 
             mnc_len = 3; 
         } 
     } 
     return sml_Catcode(cat, imsi, gid1, gid2, mnc_len, code); . 
} 
```

## [FAQ12867] [SIM]如何读取SIM卡的EFspn

```
获取SPN值有两种方法：
第一种：通过保存开机时上报的spn值。
因为MMI operator string 显示的时候会用到，所以默认已经会在开机时报给MMI 了
PRT_MSG_ID_MMI_CPHS_MMI_INFO_IND
srv_nw_name_cphs_mmi_info_ind_hdlr
srv_nw_name_cphs_mmi_info_ind_hdlr_int
msg->spn 里有带SPN 的值，直接保存这个值。
第二种：用SIM access 的API 去获得SPN。
1）MMI_BOOL srv_sim_get_file_info(
        U16 file_index,
        U8 *file_path,
        mmi_sim_enum sim_id,
        SrvSimCallbackFunc callback,
        void *user_data)
获取SIM file 大小等信息 ，file_index ：FILE_SPN_IDX  callback 函数 是获得了SIM file info之后会被call 到
参数 的structure(srv_sim_file_info_struct *)param->data
然后实现call back 函数：主要去做的是 根据获得了file size ，再去读具体的SIM file 的内容。
2）MMI_BOOL srv_sim_read_binary(
        U16 file_index,
        U8 *file_path,
        U16 offset,
        U16 length,
        mmi_sim_enum sim_id,
        SrvSimCallbackFunc callback,
        void *user_data)
调用这个去读SIM file 的内容 ，其中file_index FILE_SPN_IDX   ，length ：用之前第一步获得的file size

注意：
srv_sim_read_record  ： 用于读取SIM file 类型是 linear fixed 或者 cyclic  的sim 文件 ，即 文件的存储内容是一条一条的record 的，每条record 大小一样。例如EFsms 存sms 的sim file
srv_sim_read_binary ：用于读取SIM file 类型是 transparent 的sim 文件即 文件的存储内容 没有record ，只是连续的一串data 。 像SPN就是transparent 的type
SIM file 的类型 ，及数据内容各个byte 的含义 都可以在Spec 里找到，可以在网上down到ETSI 51.011
```

## [FAQ10433] [SEC]修改SIM ME lock解锁码与IMEI号保持对应关系

```
有运营商需求，SIM ME LOCK的解锁码由手机的IMEI根据一个算法动态计算而来.

默认SIM ME LOCK的解锁码是由modem 配置固定的，无法根据IMEI来动态设置modem的密码，那么这个部分就需要客制化。

建议客制化的做法如下:

Modem 端原始密码继续按照文档doc进行锁网配置；
AP 端用户密码需要用IMEI 经过一个算法计算后得到一个新密码；
AP 端用户输入这个新密码后，再通过算法解密，判断密码是否有效，有效则用原始密码发给Modem进行解锁；
这种方案相当于AP 端解锁密码界面处理多了一步算法处理。

AP端处理密码的部分:
1. 这个和IMEI 有关系的解密部分，还是要贵司自行完成
a. 如何获取对应卡槽的IMEI，请参考FAQ02913 如何获取IMEI号

解密的code可以添加在如下位置

L 版本:

alps\frameworks\base\packages\keyguard\src\com\mediatek\keyguard\telephony\KeyguardSimPinPukMeView.java

//CheckSimMe.run()
mResult = ITelephonyEx.Stub.asInterface(ServiceManager.getService("phoneEx"))

.supplyNetworkDepersonalization(subId, mPasswd);

//其中的mPasswd 就是从界面上输入的数字

KK版本alps\frameworks\base\policy\src\com\android\internal\policy\impl\keyguard\KeyguardSimPinPukView.java 
//CheckSimMe.run()
mResult = ITelephonyEx.Stub.asInterface(ServiceManager.checkService("phoneEx")).supplyNetworkDepersonalization(mPasswd, mSimId);

//其中的mPasswd 就是从界面上输入的数字

解密的code 请在执行supplyNetworkDepersonalization() 之前进行

解密完之后确认密码正确，则将原始密码作为参数mPasswd 传入

另外对输入的数字有一个判断函数，目前只允许输入8个，而贵司输入IMEI计算后的密码如果超过8个数字则不符合spec要求，
请参考FAQ12171 [SEC]锁网密码允许输入超过8个数字
```

## [FAQ03693] [AT Command][SIM]如何用AT命令修改PIN

```
如何用AT命令修改PIN

1. 请用AT+CPWD修改PIN,要在enable PIN的情况下，才能修改PIN，所以要先用AT+CLCK enable PIN。
参考以下步骤：
AT+CLCK="SC",1,"1234"                //enable PIN，此操作需要PIN
AT+CPWD="SC","1234","1111"       //修改PIN

2. 如果需要disable PIN，那么需要先下AT+CPIN verify，再进行disable。
参考如下步骤：
AT+CPIN="1111"
AT+CLCK="SC",0,"1111"                     //disable PIN
```

## [FAQ19185] android N 后无法读取个别 system property 说明.

```
某个system property 明明已经写入成功, 但是通过adb 无法读取到, 或者某个程序无法读取到.

其原因是android N 版本上, Google 对System Property 的流程做了大的调整, 其中最大的影响就是对读取 system property 也做了限制, 统一由SELinux 来操作控制. 根据SELinux Context 分割成多个互不关联的buffer trie/binary tree structure. 这些buffer 统一采用mmap 的搭建, 而对应mmap 的file 都放在 /dev/__properties__. 通常SELinux Context 都是按照system property 前缀划分的, 可以审查property_contexts 来查看. 
因为system property 太多, Google 并且这样的改动, 导致原本get prop 没有权限限制而都有了权限限制, 为了使得影响尽可能减小, Google 又对原本的system property 进行了划分. 除ctl.* 的控制属性之外, 常见的有:

Google 默认:

property_type : 是property 最基本的attribute, 定义时都必须包含.

core_property_type: 系统基本property, 每个进程都可以访问的property.  //domain.te get_prop(domain, core_property_type)

log_property_type: Log 类型的property, 每个进程都可以访问的property. //get_prop(domain, log_property_type)

MTK 新增:

mtk_core_property_type: mtk 系统基本property, 每个进程都可以访问的property. //get_prop(domain, mtk_core_property_type)

特别注意的是, get prop 访问失败时, 不会有SELinux 提示, 因为Google 在domain.te 里面添

dontaudit domain property_type:file audit_access;

为了大家好统一撰写SELinux Policy, Google 定义了两个macro.  即get_prop 和 set_prop 


[SOLUTION]

如果你的system property 不涉及什么私密信息, 你就直接在定义你的prop 的SELinux type 时, 加一个core_property_type, 这样每个进程都可以看到. 如果比较私密, 那么对应要查看的process , 则要使用get_prop 宏添加SELinux 权限.

然后最后提醒一点, get prop 读取不出来, 没有任何的异常的SELinux 打印.
```

## [FAQ02917] [SEC]SIM ME LOCK(锁网/锁卡)功能介绍和使用

```
做SIM-ME Lock 相关feature开发，请先参考DCC文档《SIM-ME Lock For Customer》 和《SIM_ME_Lock宝典》。
```

## [FAQ12103] [SEC]AP端怎样实现锁卡功能可无限次输入错误密码

```
实现这个功能需要在AP和modem同时做修改。
一、Modem端:
将sml_verify()函数中的如下代码注释掉之后make new重新编译：
meta->retry_count--;

二、AP 端:
除了modem端的修改，还需要在AP的UI显示做修改。

L 版本上:
Path: alps\frameworks\base\packages\keyguard\src\com\android\keyguard\KeyguardUpdateMonitor.java
public void minusSimMeLeftRetryCountOfPhoneId(int phoneId) {
    int simMeRetryCount = mSimMeLeftRetryCount.get(phoneId) ;
    if (simMeRetryCount > 0) {
        //mSimMeLeftRetryCount.put(phoneId, simMeRetryCount - 1);  //去掉减1动作， 改为:
        mSimMeLeftRetryCount.put(phoneId, simMeRetryCount);
    }
}

KK版本:
收到卡被SIM ME LOCK住时才会去获取对应Category的retry count, 并记录在数组mSimMeLeftRetryCount中。
每输入一次错误密码，都会调用minusSimMeLeftRetryCount()来减少次数。
修改如下：
Path: alps\frameworks\base\packages\keyguard\src\com\android\keyguard\KeyguardUpdateMonitor.java
public void minusSimMeLeftRetryCount(int simId) {
    if (mSimMeLeftRetryCount[simId] > 0 ) {
      //注释 mSimMeLeftRetryCount[simId]--;
    }
}
关于界面上次数的显示如果也要同步修改
请参考FAQ10495 [SEC]如何在AP端修改SIM ME LOCK输入密码次数
```

## [FAQ19165] [SEC]初次进入PIN/PUK校验界面显示PIN/PUK Retry剩余次数

```
需要修改文件位于
/frameworks/base/packages/Keyguard/src/com/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView.java
修改代码如下：
public void resetState(boolean forceReload) {
    ......
    if (simState == IccCardConstants.State.PIN_REQUIRED) {
        msg = rez.getString(R.string.kg_sim_pin_instructions_multi, displayName);

        //for PIN
        msg += "Remaining Attemps: " + getRetryPinString(mPhoneId);
        mUnlockEnterState = STATE_ENTER_PIN;
    } else if (simState == IccCardConstants.State.PUK_REQUIRED) {
        msg = rez.getString(R.string.kg_puk_enter_puk_hint_multi, displayName);

        //for PUK
        msg += "Remaining Attemps: " + getRetryPuk(mPhoneId);
        mUnlockEnterState = STATE_ENTER_PUK;
    }
    ......
}
```

## [FAQ02916] [Common]如何判断sim卡是否有插入

```
M版本：
PhoneInterfaceManager.java里面有提供hasIccCardUsingSlotId 方法；

使用方法如下：
import com.android.internal.telephony.ITelephony;

final ITelephony iTel=ITelephony.Stub.asInterface(ServiceManager.getService(“phone”));
boolean isSimInsert = false;
try {
    if (iTel != null) {
        isSimInsert = iTel.hasIccCardUsingSlotId(slotId);
    }
} catch (RemoteException e) {
    e.printStackTrace();
    isSimInsert = false;
}

L版本：
PhoneInterfaceManagerEx.java里面有提供hasIccCard方法；
使用方法如下：
import com.mediatek.internal.telephony.ITelephonyEx;

final ITelephonyEx phoneEx=ITelephony.Stub.asInterace(ServiceManager.checkSetvice(“phoneEx”));
if(phoneEx!=null){
// slotId: PhoneConstants.SIM_ID_1, PhoneConstants.SIM_ID_2
long subId=getSubIdBySlot(slotId);
boolean isInsert= phoneEx. hasIccCard (subId);
}

KK版本：
PhoneInterfaceManagerEx.java里面有提供hasIccCard方法；
使用方法如下：
import com.mediatek.common.telephony.ITelephonyEx;

final ITelephonyEx phoneEx=ITelephony.Stub.asInterace(ServiceManager.checkSetvice(“phoneEx”));
if(phoneEx!=null){
boolean isInsert= phoneEx. hasIccCard (slotId);
}

KK之前的版本：
PhoneInterfaceManager.java里面有提供isSimInsert方法；
使用方法如下：
import com.android.internal.telephony.ITelephony;

final ITelephony phone=ITelephony.Stub.asInterace(ServiceManager.checkSetvice(“phone”));
if(phone!=null){
boolean isInsert=phone.isSimInsert(slotId);
}
```

## [FAQ02914] [Common]如何获取IMSI号

```
IMSI（International Mobile SubscriberIdentification Number）国际移动用户识别码
是区别移动用户的标志，储存在SIM卡中。
请参看 TelephonyManagerEx.java 里面的方法getSubscriberId().
例如：
L版本、以及以后版本：
TelephonyManagerEx mTelephonyMgr = (TelephonyManager)context.getSystemService(Context.TELEPHONY_SERVICE_EX);
if (mTelephonyMgr != null) {
    String sim1IMSI = mTelephonyMgr.getSubscriberId(PhoneConstants.SIM_ID_1);
    String sim2IMSI = mTelephonyMgr.getSubscriberId(PhoneConstants.SIM_ID_2);
}

KK及之前版本：
String imsi = "";
TelephonyManagerEx mTelephonyMgr = (TelephonyManager)context.getSystemService(Context.TELEPHONY_SERVICE_EX);
if (mTelephonyMgr != null) {
    String sim1IMSI = mTelephonyMgr.getSubscriberId(PhoneConstants.GEMINI_SIM_1);
    String sim2IMSI = mTelephonyMgr.getSubscriberId(PhoneConstants.GEMINI_SIM_2);
}
```

## [FAQ02913] [Common]如何获取IMEI号和MEID号

```
IMEI号是GSM的概念，CDMA对应的是MEID号。

IMEI（International Mobile Equipment Identity）是国际移动设备身份码，目前GSM/WCDMA/LTE手机终端需要使用IMEI号码。在单卡工程中一个手机对应一个IMEI号；双卡工程中一张卡对应一个IMEI号，双卡共有两个IMEI号。

MEID (Mobile Equipment Identifier) 移动设备识别码，是CDMA手机的唯一身份识别码。

 

通过GSMPhone对象来调用getDeviceId()函数，获取到的就是IMEI号。

通过CDMAPhone对象来调用getDeviceId()函数，获取到的就是MEID号。

 

一、如何获取IMEI号

M0.mp7/M0.mp9版本（包含C2K和非C2K项目）、

M0.mp1版本非C2K项目、

L版本非C2K项目上：

GSMPhone.java中的getDeviceId()

L上面已经没有GeminiPhone；

使用方法如下：

Phone mPhone1=PhoneFactory.getPhone(PhoneConstants.SIM_ID_1);

Phone mPhone2=PhoneFactory.getPhone(PhoneConstants.SIM_ID_2);

 

if (mPhone1 != null) {

    String imei_sim1 =  mPhone1.getDeviceId();

}

if (mPhone2 != null) {

    String imei_sim2 =  mPhone2.getDeviceId();

}

 

M0.mp1版本C2K项目、

L版本C2K项目上：

L版本C2K项目上，一张卡同时对应一个CDMAPhone和一个GSMPhone，要获取对应卡的IMEI号，需要先获取到对应的GSMPhone对象，具体可以通过下面的方法来获取：

    SIM1-> CDMAPhone = PhoneFactory.getPhone(0).getNLtePhone()

    SIM1-> GSMPhone = PhoneFactory.getPhone(0).getLtePhone()

    SIM2->  CDMAPhone = PhoneFactory.getPhone(1).getNLtePhone()

    SIM2->  GSMPhone = PhoneFactory.getPhone(1).getLtePhone()

 

获取到GSMPhone对象后，通过该对象来调用getDeviceId()函数。

 

KK版本上：

GSMPhone.java    中getDeviceId()

GeminiPhone.java 其中getDeviceIdGemini()已经没有了，而getDeviceId()获取的是default phone的IMEI；

所以直接使用GSMPhone.java中getDeviceId()方法； 

Demo code:

GeminiPhone mGeminiPhone;

String imei_sim1=mGeminiPhone.getPhonebyId(PhoneConstants.GEMINI_SIM_1).getDeviceId();

String imei_sim2=mGeminiPhone.getPhonebyId(PhoneConstants.GEMINI_SIM_2).getDeviceId();

 

KK之前的版本：

下面是获得IMEI号的接口和demo code

API：

GSMPhone.java     中getDeviceId()

GeminiPhone.java  中getDeviceId() 和 getDeviceIdGemini()

 

Demo code:

import com.android.internal.telephony.Phone;

import com.android.internal.telephony.gemini.GeminiPhone;

import com.android.internal.telephony.PhoneFactory;

Phone phone;

phone = PhoneFactory.getDefaultPhone();

String  imei=(GeminiPhone)phone.getDeviceId();

 

GeminiPhone mGeminiPhone;

String imei_sim1 = mGeminiPhone.getDeviceIdGemini(PhoneConstants.GEMINI_SIM_1);

String imei_sim2 = mGeminiPhone.getDeviceIdGemini(PhoneConstants.GEMINI_SIM_2);

 

二、如何获取MEID号

M0.mp7/M0.mp9版本C2K项目：

通过CDMAPhone.java的getDeviceId()函数来获取。

请在插入电信卡的情况下调用，避免插入非电信卡没有创建CDMAPhone对象，会获取不到。

 

M0.mp1版本C2K项目、

L版本C2K项目上：

参考上面的说明，要获取MEID号，需要先获取对应卡的CDMAPhone对象，具体可以通过下面的方法来获取：

    SIM1-> CDMAPhone = PhoneFactory.getPhone(0).getNLtePhone()

    SIM1-> GSMPhone = PhoneFactory.getPhone(0).getLtePhone()

    SIM2->  CDMAPhone = PhoneFactory.getPhone(1).getNLtePhone()

    SIM2->  GSMPhone = PhoneFactory.getPhone(1).getLtePhone()

 

获取到CDMAPhone对象后，通过该对象来调用getDeviceId()函数。

 

如果电信卡插在卡1上，则使用上面SIM1的方法来获取卡1的CDMAPhone对象。

如果电信卡插在卡2上，则使用上面 SIM2 的方式来获取卡2的CDMAPhone对象。

 

如果同时插入两张电信卡，由于同一时刻只支持一张电信卡，则只有主卡可以获取到MEID号，可以通过PhoneFactory.getDefaultPhone().getNLtePhone() 来获取主卡的CDMAPhone对象。
```

## [FAQ19109] [Audio Framework] Soundpool java 类的使用说明

```
app 层在使用 soundpool java 类时，通常会用到以下几个方法：
Soundpool sp = new SoundPool(x,x,x); //new 一个实例
sp.load(x,x,x,x);//加载对应的音源
sp.play(x,x,x,x,x,x); //播放对应的音源
 
然而当上述方法调用之后，在 native 层其实会有一些 memory 被 native 的 soundpool 类所 cache 住
如果 app 在使用上述三个方法之后，不调用相关的释放 native 资源的方法
就会造成 native 的 memory leak.
 
所以 app 在使用完 soundpool 之后，一定要记得调用 soundpool 的 release 接口
sp.release();
release 接口调用的次数要等同于new soundpool 的次数，这样才不会造成内存泄漏
像其它 MediaPlayer, AudioTrack,ToneGenator java 类的使用也是一样的，在用完后必须调用其 release 接口
 
FAQ:
soundpool 在调用 release 之前是否需要调用 unload 接口去 unload 前面所 load 的资源呢？
==》答案是否定的，在 release 接口被调用的时候会统一做 unload 资源的动作，因此release 之前无须逐一去 unload 所加载的资源
```

## [FAQ02911] [Common]如何判断是usim卡还是sim卡

```
L版本、及以后版本：
参见PhoneInterfaceManagerEx.java中的getIccCardType()方法；

import com.mediatek.internal.telephony.ITelephonyEx;

final ITelephonyEx mTelEx = ITelephonyEx.Stub.asInterface(ServiceManager.getService("phoneEx"));
// slotId: PhoneConstants.SIM_ID_1, PhoneConstants.SIM_ID_2
long subId=getSubIdBySlot(slotId);
if(mTelEx!=null)String Type = mTelEx.getIccCardType(subId);

KK版本：
参见PhoneInterfaceManagerEx.java中的getIccCardType()方法；

import com.mediatek.common.telephony.ITelephonyEx;
final ITelephonyEx mTelEx = ITelephonyEx.Stub.asInterface(ServiceManager.getService("phoneEx"));
//slotId: PhoneConstants.GEMINI_SIM_1, PhoneConstants.GEMINI_SIM_2
if(mTelEx!=null)String Type = mTelEx.getIccCardType(slotId);

KK之前的版本：
PhoneInterfaceManager.java中API: getIccCardTypeGemini

import com.android.internal.telephony.ITelephony;
final ITelephony iTel = ITelephony.Stub.asInterface(ServiceManager
                                     .getService(Context.TELEPHONY_SERVICE));
try {
         if (FeatureOption.MTK_GEMINI_SUPPORT) {
                if ("USIM".equals(iTel.getIccCardTypeGemini(slotId)))
                   //do something
         } else {
                   if ("USIM".equals(iTel.getIccCardType()))
                       //do something
         }
} catch (Exception e) {
         Log.d(TAG, "catched exception.");
         e.printStackTrace();
}
```

## [FAQ18923] [Audio framework] 开启开机安全校验后，首次开机铃声播放不全

```
开启开机安全校验后，首次开机铃声播放不全，播到中途被截断掉
其原因是：
开启了开机安全校验后
首次开机安全校验完毕后
会重新启动 framework，此时会将 mediaserver 等一系列注册过的 service 都 kill 掉
再重新启动
因为音乐的播放需要依赖于 mediaserver
当 mediaserver 被 kill 时，铃声便会随着中止
 
此为正常现象，没有规避方法
```

## [FAQ18327] Android M 首次开机随sim卡自适应语言错误原因及修改方案

```
Android M上默认不会随sim卡去自适应语言。
对于M上有些首次开机不是系统默认配置的语言问题，是因为安装了GMS包，M上虽然没有去自适应语言，但是有从sim卡的EF中去读取语言并保存起来（只是默认没有使用它去更新语言而已），GMS包中有使用这个保存的语言用它去更新语言，所以安装了GMS包后会自适应为EF文件中读取到的语言。 EF文件中读取到的语言一般是这个sim卡所属国家的语言，但有些坏的sim中EF文件存储的是其它国家的语言，所以自适应语言时也会自适应为其它国家的语言。

对于有GMS包的情况如果想修改成不随卡中EF文件自适应的情况，可如下修改：
packages/services/Telephony/src/com/android/phone/PhoneInterfaceManager.java
@Override
public String getLocaleFromDefaultSim() {
    return null;//直接return null
}

如果想修改Ｍ的默认设计希望能随sim卡自适应，但不根据EF文件读取的语言自适应（根据sim卡mcc自适应）可去参考　FAQ17975　Android M 首次开机不随sim卡自适应语言修改方案。
```

## 支持OTA升级及OTA升级的相应资料、OTA升级与FOTA的区别

```
支持情况：目前MT6573/75/77都支持OTA升级
相关资料：有关OTA升级的参考资料请参考DMS的以下路径：
/3G Phone Data/Smart Phone/Software_Customer/Standard Package/MT6577 SW Doc Package/Application/OTA Update
客户端的代码请参考：alps/mediatek/source/packages/GoogleOta*三支文件

DM/fota和mota的区别：是两种软件版本升级的方式，只需采用其中之一即可。
fota: 是需要拿到三方RedBend的license，升级包的发布与管理是由运行商控制的，在实现过程中需要从运行商那申请开通DM（增强售后服务）功能，在升级过程中需要收费；
mota: 是敝司自行实现的一套升级方式，其中server端和客户端都已经实现，且免费提供给客户，是不需要三方介入。
```

## [FAQ09094] RTL语言下电话号码显示问题

```
1、一些复杂语言字符显示以及layout是从右向左的，比如阿拉伯语、波斯、乌尔都语、希伯来语。因此经常会遇到一些情况是，其他非RTL字符串(比如英文、数字等)在和这些语言字符组合时，当系统语言如果是RTL语言，那么非RTL字符串也会变成从右向左显示；还有就是一些ap，比如Phone、联系人等，在ap设置了一些属性之后电话号码会变成从右向左显示，例如：135 4567 4562 会变成4562 4567 135 如果要实现系统语言为阿拉伯语等RTL语言时，一些非RTL字串按照自己显示顺序(LTR)显示，可以按照如下方法修改,
(A)    如果这些字串是在string.xml中定义，可以把相关字串加上控制符使其从左向右显示，如下
<string name="lockpassword_pin_too_long"> RTL字串\u202D <xliff:g id="number" example="17">%d</xliff:g>\u202C RTL字串</string>

也可以使用 '\u202A ，'\u202C';

(B)    如果是在代码中动态生成可以新增如下函数，进行处理
///M: to fix number display order problem in Dialpad in Arabic/Hebrew/Urdu
private String numberLeftToRight(String origin) {
    return TextUtils.isEmpty(origin) ? origin : '\u202D' + origin + '\u202C';// 也可以使用'\u202A ，'\u202C';
}

例如：通话界面拨打一个没有姓名的电话，如果在AndroidManifest.xml(JB2及以后版本) 声明文件的<application>元素中，添加了   android:supportsRtl=true这个属  性，电话号码就会出现如下情况

解决方法就是修改CallCard.java(alps\packages\apps\Phone\src\com\android\phone)的函数如下红色部分

private void updateDisplayForPerson(CallerInfo info,int presentation,boolean isTemporary,Call call,Connection conn)
……
// Promote the phone number up to the "name" slot:
// displayName = number;
displayName = numberLeftToRight(number);

2、 对于RTL语言下TextView或者EditText“+18545784578”显示成“18545784578+”，这是google默认的问题，对比机也有类似的问题
目前没有比较好的解决方法，如果确实要修改，可以在TexView地方加上特殊处理，如下对“+86”号码的处理。

TextView.java  alps\frameworks\base\core\java\android\widget

private void setText(CharSequence text, BufferType type,
boolean notifyBefore, int oldlen) {
if (text == null) {
    text = "";
}

///add this code
Configuration con = mContext.getResources().getConfiguration();
String l = con.locale.getLanguage();
if(l.equals("ar")||l.equals("fa")||l.equals("iw")){///RTL language

Pattern pattern
= Pattern.compile(                      // sdd = space, dot, or dash
"(\\+[0-9]+[\\- \\.]*)?"        // +<digits><sdd>*
+ "(\\([0-9]+\\)[\\- \\.]*)?"   // (<digits>)<sdd>*
+ "([0-9][0-9\\- \\.]+[0-9])"); // <digit><digit|sdd>+<digit>
Matcher matcher = pattern.matcher(text);
while(matcher.find()){
String subnumber = match.group(0);
int index = text.toString().indexOf(subnumber);
String newnumber = '\u202D' + subnumber + '\u202C';
text = text.toString().replace(subnumber, newnumber);
}

}

///add this code

// If suggestions are not enabled, remove the suggestion spans from the text
```

## [FAQ04153] 如何内置/预置/预编译文件(执行程序，应用程序，apk, jar, lib 等任意文件)到系统中

```
方法一.
假设要内置的软件名称为iperf.exe
1. 将iperf.exe放到Codebase的任意一个目录下(该目录必须能够在搜索Android.mk时被搜索到)，比如system/iperf/iperf.exe
2. 在system/iperf目录下添加一个Android.mk文件，内容如下：
LOCAL_PATH:= $(call my-dir)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/iperf.exe:system/iperf/iperf.exe
重新编译Codebase即可，该文件将被内置到手机的system/iperf目录下
PS：这种方法禁止复制APK文件
 
方法二.
可采用prebuilt的方法，但是对文件格式有要求
具体请参考DCC上如下文档：Android_Build_System_for_customer_4.1.pptx
请参见“Build host/target prebuilt” 一节
```

## [FAQ10299] 如何加速./mk snod打包

```
mm命令快速编译一个模块之后，一般用adb push到手机看效果，如果环境不允许用adb push或模块不经常改，希望直接放到image里，则可以用./mk snod，这个命令仅仅将system目录打包成system.img，然后方便直接下载，但是这个命令还是很慢（慢在搜索所有的Android.mk），有一种方法可以加速该编译到1分钟以内

./mk snod

修改alps/build/core/main.mk：
subdir_makefiles :=\
    $(shell build/tools/findleaves.py --prune=out --prune=.repo --prune=.git $(subdirs) Android.mk)
修改为：
ifneq ($(MAKECMDGOALS),snod)
subdir_makefiles :=\
    $(shell build/tools/findleaves.py --prune=out --prune=.repo --prune=.git $(subdirs) Android.mk)
endif

以上避免了不必要的耗时操作，加速./mk snod编译
```

## [FAQ09811] [NW]如何区分MNO和MVNO

```
MVNO(Mobile Virtaul Network Operator)虚拟网络运营商，没有自己的实体网络，通过租用MNO(Mobile Network Operator)的网络来提供网络服务。
我们知道Spec规定operator之间是通过MCC/MNC （Mobile Country Code/Mobile Network Code）来区分的；而MVNO和对应MNO的MCC/MNC是相同的，那就需要MVNO定义额外的栏位（通常都是SIM卡中某支文件）来和对应MNO做区分；具体这个额外的栏位是什么是每个MVNO自己定义的，需要向MVNO确认。
 
[SOLUTION]
 
目前MTK支持区分MVNO的方式有四种（KK以前没有EF_GID1方式），每种包含运营商名称Spn显示和APN两个方面的需求；Spn显示方面每种区分方式对应一个xml的配置表：
1. EF_SPN方式，对应MVNO配置到Virtual-spn-conf-by-efspn.xml中
2. EF_IMSI方式，对应MVNO配置到Virtual-spn-conf-by-imsi.xml中
3. EF_PNN方式，对应MVNO配置到Virtual-spn-conf-by-efpnn.xml中
4. EF_GID1方式，对应MVNO配置到Virtual-spn-conf-by-efgid1.xml中
 
需要向MVNO确认的信息如下：
1. 区分方式是以上哪种，从而决定相关信息需要配置到哪个xml中
2. MVNO的MCC/MNC是什么
3. MVNO的区分栏位的值是什么
4. MVNO需要显示成什么
5. MVNO是否有自己的APN需要配置（还是直接使用对应MNO的），如果需要，值是什么
 
KK以前（JB*.MP）:
一 SPN的设定：
 
(1)通过EF_SPN区分
这中方式是读取SIM中的文件EF_SPN，结合SIM的mccmnc+spn,在virtual-spn-conf-by-efspn.xml 中查找有没有对应的记录，如果有这表示这个SIM是MVNO的卡，同时取name字段的内容当作运营商名称。
如果知道MVNO的SIM卡中的SPN是“abc”，MNO的MCC/MNC是10000，期望显示运营商名是”MVNO“，那就这样加记录(在Virtual-spn-conf-by-efspn.xml中)
<virtualSpnOverride mccmncspn="10000abc“ name="MVNO">
 
(2)通过EF_IMSI区分
这中方式是imsi中有一段特殊的数字标识用于和MNO区分
例如MNO的MCC/MNC是46692，MVNO的IMSI是466923302848289，IMSI的第9位(注意：是0 base, 所以index要填08)起连续2个数字为特殊标识(28)，期望显示的运营商名称是“MVNO”，那就这样加记录(Virtual-spn-conf-by-imsi.xml中)
<virtualSpnOverride mccmnc="46692" index="08" length="02" pattern="28" name=“MVNO”>
 
(3)通过EF_PNN区分
EF_PNN是SIM中的一个option的文件，里面存放一组网络运营商名称(PLMN Network Name)。这种方式即是读取EF_PNN中的第一个pnn来匹配。如果MNO的MCC/MNC是10000，MVNO中EF_PNN的第一个pnn是“abc”，期望显示的运营商名称是“MVNO”，那就这样加记录(Virtual-spn-conf-by-efpnn.xml中)
<virtualSpnOverride mccmncpnn="10000abc“ name="MVNO">
 
 
二 APN的设定
其对应的文件是apns-conf.xml，和spn-conf.xml相同的目录。对比SPN，APN就简单许多，APN填写和SPN区分选择有联系。 这里举例说明，原MNO的APN的设定
 <apn carrier="Orange Entreprise"
      mcc="100"
      mnc="00"
      apn="MNO的apn"
      user="MNO的user"
      password="MNO的password"
      type="default,supl"
  />
 
(1)通过EF_SPN区分
区分是通过spn字段，和spn记录中的spn字段相同
假如spn中MVNO对应记录是<virtualSpnOverride mccmncspn="10000abc“ name="MVNO">;
 <apn carrier="Orange Entreprise"  <<设定中显示的名称
      mcc="100"
      mnc="00"
      spn="abc" <<增加这个字段
      apn="MVNO的apn"
      user="MVNO的user"
      password="MVNO的password"
      type="default,supl"
  />
 
(2)通过EF_IMSI区分
通过imsi的pattern区分，和spn中的pattern相同。
假如spn中的MVNO记录是<virtualSpnOverride mccmnc="46692" index="08" length="02" pattern="28" name=“MVNO”>
那这个对应的MVNO的AP是
 <apn carrier="Orange Entreprise"  <<设定中显示的名称
      mcc="100"
      mnc="00"
      imsi="28" <<增加这个字段
      apn="MVNO的apn"
      user="MVNO的user"
      password="MVNO的password"
      type="default,supl"
  />
 
(3)通过EF_PNN区分
区分是通过pnn字段，和spn记录中的pnn字段相同
假如spn中MVNO对应记录是<virtualSpnOverride mccmncpnn="10000abc“ name="MVNO">;
 <apn carrier="Orange Entreprise"  <<设定中显示的名称
      mcc="100"
      mnc="00"
      pnn="abc" <<增加这个字段
      apn="MVNO的apn"
      user="MVNO的user"
      password="MVNO的password"
      type="default,supl"
  />
 
KK以后（包含KK）：
一 SPN的设定：
所有MVNO区分方式的virtual xml的构成都应该是mccmnc+pattern
 
(1)通过EF_SPN区分
这中方式是读取SIM中的文件EF_SPN，结合SIM的mccmnc+spn,在virtual-spn-conf-by-efspn.xml 中查找有没有对应的记录，如果有这表示这个SIM是MVNO的卡，同时取name字段的内容当作运营商名称。
如果知道MVNO的SIM卡中的SPN是“abc”，MNO的MCC/MNC是10000，期望显示运营商名是”MVNO“，那就这样加记录(在Virtual-spn-conf-by-efspn.xml中)
<virtualSpnOverride mccmncspn="10000abc“ name="MVNO">
 
(2)通过EF_IMSI区分
这中方式是imsi中有一段特殊的数字标识用于和MNO区分
例如MNO的MCC/MNC是46692，MVNO的IMSI是466923302848289，IMSI的第9位起连续2个数字为特殊标识(28)，期望显示的运营商名称是“MVNO”，那就这样加记录(Virtual-spn-conf-by-imsi.xml中)
<virtualSpnOverride imsipattern="4669246692×××28×××××" name=“MVNO”>
 
(3)通过EF_PNN区分
EF_PNN是SIM中的一个option的文件，里面存放一组网络运营商名称(PLMN Network Name)。这种方式即是读取EF_PNN中的第一个pnn来匹配。如果MNO的MCC/MNC是10000，MVNO中EF_PNN的第一个pnn是“abc”，期望显示的运营商名称是“MVNO”，那就这样加记录(Virtual-spn-conf-by-efpnn.xml中)
<virtualSpnOverride mccmncpnn="10000abc“ name="MVNO">
 
(4)通过EF_GID1区分
EF_GID1是SIM中的一个option的文件，里面存放了n个byte的数据；如果MNO的MCC/MNC是10000，MVNO的EF_GID1的内容是"11"，期望显示的运营商名称是"MVNO"，那就这样加记录(Virtual-spn-conf-by-efgid1.xml中)
<virtualSpnOverride mccmncgid1="1000011" name="MVNO">
 
二 APN的设定
其对应的文件是apns-conf.xml，和spn-conf.xml相同的目录。对比SPN，APN就简单许多，APN填写和SPN区分选择有联系。 这里举例说明，原MNO的APN的设定
 <apn carrier="Orange Entreprise"
      mcc="100"
      mnc="00"
      apn="MNO的apn" 
      user="MNO的user"
      password="MNO的password"
      type="default,supl"
  />
 
(1)通过EF_SPN区分
区分是通过spn字段，和spn记录中的spn字段相同
假如spn中MVNO对应记录是<virtualSpnOverride mccmncspn="10000abc“ name="MVNO">;
 <apn carrier="Orange Entreprise"  <<设定中显示的名称
      mcc="100"
      mnc="00"
      apn="MVNO的apn"
      user="MVNO的user"
      password="MVNO的password"
      type="default,supl"
      mvno_type="spn"                  <<增加这两个字段
      mvno_match_data="abc"
  />
 
(2)通过EF_IMSI区分
通过imsi的pattern区分，和spn中的pattern相同。
假如spn中的MVNO记录是<virtualSpnOverride imsipattern="4669246692×××28×××××" name=“MVNO”>
那这个对应的MVNO的APN是
 <apn carrier="Orange Entreprise"  <<设定中显示的名称
      mcc="100"
      mnc="00"
      apn="MVNO的apn"
      user="MVNO的user"
      password="MVNO的password"
      type="default,supl"
      mvno_type="imsi"                  <<增加这两个字段
      mvno_match_data="46692×××28×××××"
  />
 
(3)通过EF_PNN区分
区分是通过pnn字段，和spn记录中的pnn字段相同
假如spn中MVNO对应记录是<virtualSpnOverride mccmncpnn="10000abc“ name="MVNO">;
 <apn carrier="Orange Entreprise"  <<设定中显示的名称
      mcc="100"
      mnc="00"
      apn="MVNO的apn"
      user="MVNO的user"
      password="MVNO的password"
      type="default,supl"
      mvno_type="pnn"                  <<增加这两个字段
      mvno_match_data="abc"
  />
 
(4)通过EF_GID1区分
区分是通过gid1字段，和spn记录中的gid1字段相同
假如spn中MVNO对应记录是<virtualSpnOverride mccmncgid1="1000011" name="MVNO">;
 <apn carrier="Orange Entreprise"  <<设定中显示的名称
      mcc="100"
      mnc="00"
      apn="MVNO的apn"
      user="MVNO的user"
      password="MVNO的password"
      type="default,supl"
      mvno_type="gid"                  <<增加这两个字段, 注意是gid而不是gid1
      mvno_match_data="11"
  />
 
 
 
有些地区的MVNO要求忽略国内漫游（national roaming），如果有此需求可以参考：
ID: FAQ11783
[NW]MVNO忽略国内漫游（ignore national roaming）
 
如果按照上述配置后，锁屏界面/下拉列表界面 显示的名字和配置的不同，可能按照spec显示了更高优先级的名字，比如NITZ/EONS…

遇到这类问题属于网络运营商名称显示，可以同时参考如下FAQ：

ID: FAQ08919
[NW]网络运营商名称显示规则（锁屏界面，下拉列表）---网络名称 客制化方法 和 问题处理flow
```

## [FAQ13635] Android L APP 如何获取sys file system 中节点的写权限

```
Google 默认禁止app , 包括system app, radio app 等直接写/sys 下面的文件, 认为这个是有安全风险的。如果直接放开SELinux 权限, 会导致CTS 无法通过.

通常遇到此类情况，你有两种做法:
(1). 通过system server service 或者 init 启动的service 读写, 然后app 通过binder/socket 等方式连接APP 访问. 此类安全可靠, 并且可以在service 中做相关的安全审查, 推崇这种方法.

(2). 修改对应节点的SELinux Security Label, 为特定的APP, 如system app, radio, bluetooth 等内置APP开启权限, 但严禁为untrsted app 开启权限. 具体的做法下面以 system app 控制/sys/class/leds/lcd-backlight/brightness 来说明.

1. 在device/mediatek/common/sepolicy/file.te 定义brightness SELinux type
type sys_lcd_brightness_file, fs_type,sysfs_type;

2. 在device/mediatek/common/sepolicy/file_contexts 绑定 brightness 对应的label, 注意对应的节点是实际节点，而不是链接.以及整个目录路径中也绝不能包含链接(无数同仁有犯这个错误，特意提醒)
/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness u:object_r:sys_lcd_brightness_file:s0

3. 在device/mediatek/common/sepolicy/system_app.te 中申请权限.
allow system_app sys_lcd_brightness_file:file rw_file_perms;

4. 为其它的process 申请相关的权限，如system_server, 在device/mediatek/common/sepolicy/system_server.te
allow system_server sys_lcd_brightness_file:file rw_file_perms;

原则上我们都推崇使用第一种方式处理.
```

## [FAQ03718] 如何解包和打包boot.img/recovery.img/system.img/userdata.img

## [FAQ13697] L 版本如何将第三方so库打包到apk

## [FAQ03127] 当修改一些代码时,使用什么编译命令可以最有效率

## [FAQ08775] 如何客制化IPO开机动画，使IPO开机动画播放完整

## [FAQ04542] [NvRAM] APK（应用层）读写NvRAM

## [FAQ19126] [Audio framework]车载蓝牙停止播放, 手机music UI 显示停止但车载端音乐继续播放

## [FAQ10781] 如何开启与关闭adb 的认证机制(google adb secure) (adb RSA 指纹认证)

## [FAQ19141] After M version,how to dump heap profile automatically

## [FAQ12739] [CB] 如何设置小区广播的默认语言

## [FAQ18246] M版本上如何实现恢复出厂设置不丢失数据 (nvram,proinfo 分区注意事项)

## [FAQ17349] [SIM_ME_LOCK]SIM_ME_Lock_User_Guide文档中的枚举量的意思

## [FAQ12953] [AT Command][SIM] 如何使用AT+CRSM读取SIM卡文件

## [FAQ02097] [SIM]客制化"SIM卡已更改"提示

## [FAQ09816] [SP FlashTool] FlashTool Console Mode使用说明

```
FlashTool 终端模式的使用方法
```

## [FAQ17416] SIM卡设置内的卡名称及运营商名称的语言类别随系统语言切换而改变

## [FAQ06172] [AT Command][SIM_ME_LOCK]锁卡相关的AT+ESMLCK命令的用法

## [FAQ19162] Android N 设置中语言列表介绍

## [FAQ19202] 【Encryption】遇到加密问题，如何抓取log？

## [FAQ17485] SP Flashtool和SP Multiport Download Tool的Checksum功能介绍

## [FAQ13989] 【Phone Call】L版本上关于通话时间显示异常的处理

## [FAQ11506] [SIM]如何客制化SIM默认颜色

## [FAQ18298] 小区广播不要在短信列表里显示，只显示在notification

## [FAQ18140] [Gallery]Gallery不能打开隐藏文件夹中的图片

## [FAQ19618] 如何在ap获取拍照的yuv数据

## [FAQ19621] 开关机时根据SIM卡动态适配开关机动画

## [FAQ19779] Android N resource加载逻辑介绍（语言切换不成功等问题）

## [FAQ15097] OTA升级后Home键失灵

## [FAQ06210] 如何让主菜单的背景显示为壁纸?

## [FAQ03858] 滑动锁屏状态下如何禁止下拉状态栏？

## [FAQ12135] [SAT]怎么实现SAT icon一直显示在launcher菜单中

## [FAQ10107] [SAT]STK icon name动态修改成STK一级菜单的title

## [FAQ18531] [SAT]插入某种特定卡开机，点击STK Icon,显示STK未安装

## [FAQ18919] [SAT]正常使用中toast提示“发送短信”

## [FAQ09351] [Others]如何使用超级终端发送AT Command以及抓取Uart Log

## [FAQ04013] 如何开启或关闭VOIP(sip call)功能

## [FAQ19894] N上预置APK失败提示找不到so文件

## [FAQ10023] [SP Meta][META MODE]恢复出厂设置API????在哪里写？？如何开发

## [FAQ09795] [FastBoot]使用fastboot 下载image的方法

## [FAQ19877] 如何使用GDB分析KE问题

## [FAQ19917] [Android N] N版本 bluedroid蓝牙问题Log抓取

## [FAQ10400] 如何在小部件列表中隐藏某个widget或者shortcut？

## [FAQ18166] 从Play Store下载的App安装后，App在Launcher3的桌面自动生成的快捷方式图标为小机器人

## [FAQ11476] Launcher3如何设置桌面的行数和列数？

## [FAQ19902] 增加PIN/Password的密码最大长度

## [FAQ08916] [ICU][Time]如何修改或精确设置出厂默认时间

## [FAQ06452] [ICU][Time]如何修改时间中的上午/下午显示

## [FAQ04421] [ICU][Time]修改某语言环境下默认日期的格式

## [FAQ19932] 快霸(DuraSpeed)功能介绍

## [FAQ15096] 如何在Navigation Bar上长按recent button弹菜单出来

## [FAQ19780] How to auto update apn database by OTA

## [FAQ08124] 关于状态栏的电量百分比

## [FAQ11908] [FSA]进入图库编辑图片保存后，去掉原有图片被覆盖的方法

## [FAQ09895] [SAT]怎么实现没插卡时launcher中不显示STK icon

## [FAQ11770] [USB] MTK USB问题宝典

## [FAQ20147] how to update wifi firmware?

## [FAQ20366] 使用Android Studio debug Framework代码

## [FAQ04306] 如何通过 Eclipse 远端调试framework和APK？

## [FAQ19267] wifi: 连接网络时提示“已连接无法访问互联网”几秒钟后消失

## [FAQ14409] [SIM]SIM卡默认名称客制化

## [FAQ20546] android O定时开关机说明

## [FAQ20603] [Framework-VPN]设置Always-on VPN 如何保存

## [FAQ20612] [Android O Build]如何正确的添加环境变量

## [FAQ19089] 状态栏时间不更新

## [FAQ20622] [SP FlashTool]SP Flashtool编译环境Qt Creator安装

## [FAQ20644] Android O、N版本修改dex2oat编译选项，减少占用ROM空间或者加快安装速度

## [FAQ20665] O1版本定制长按电源键弹出菜单选项

## [mtklog][FAQ12427] 如何监测MTKLogger的状态改变

## [IME][FAQ14050] 如何删除LatinIME中的特定表情

## [IME][FAQ04327] 如何修改默认输入法

## [IME][FAQ06649] Latin输入法怎么默认勾选几种语言？

## [FAQ20328] 如何减少lowmemory的发生几率

## [FAQ12532] [TimeZone]如何更新时区data文件

## [FAQ19927] [TimeZone]执行生成tzdata脚本时遇到的问题

## [FAQ02484] [BMT]关机充电动画客制化以及错位调整

## [FAQ03426] 当系统存在多个Launcher时，如何设置开机自动进入默认的Launcher？

## [FAQ20670] Android GO版本上 非首次进入应用过程中有从模糊到清晰的过程

## [FAQ18332] 如何修改android log buffer 大小

## 学习使用 QAAT 工具？？？

## efuse????

## WAPI 是什么？？？

## PICS 是什么？？

## ResourceOverlay 怎么用？？？

## 如何读取和修改 SIM 卡里的文件？？

## 如何自定义状态栏上的图标？？就像KIKA输入法那样？？

## 如何自定义AT命令？？？怎么发送？？怎么接收处理？？

## [FAQ20977] 如何配置VoLTE, ViLTE and VoWifi(IMS config for VoLTE, ViLTE and VoWifi)

## webview 是个什么应用？和chromewebview有什么区别？

## system/priv-app 和 system/app 的区别？？

## 如何在 Gedit 中添加 CodeSnippets ???

## [FAQ11012]如何为锁屏设置一张不同于launcher的，固定加载的背景图片

## [FAQ09296]如何将APN设置为不可编辑 ???

## TextView去掉上下边距？？？？

## AndroidManifest中的模板？？？？

## Activity模板？？？？

## Service模板？？？？

## Receiver模板？？？？

## ContentProvider模板？？？？

## Adapter模板(ListView+GridView)？？？

## Adapter模板(RecyclerView)

## startActivity模板

## sendBroadcast模板

## startService模板

## SharedPreference模板

## Bitmap模板

## Http模板

## Notification模板

## File操作模板

## 阿拉伯语相关问题修改？

## SystemProperties的模板类

## 反射模板

## [FAQ14252] MT6735/35M/35P/53/53T软件包使用说明(L1.MP3&L1.MP3.TC7SP&M0.MP1适用)

flashtool 报错 STATUS_DA_HASH_MISMATCH : flash不兼容的问题

FAQ看到了38页
