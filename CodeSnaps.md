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

## 判断是否全屏

``` Java
public boolean isFullScreen(){
    int[] screenParams = new int[2];
    getLocationOnScreen(screenParams);
    return screenParams[0] == 0 && screenParams[1] == 0;
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

## [FAQ06189] 插国外SIM卡，第一次开机语言没有自适应

问题描述：在有些国家进行场测时，插该国SIM卡（比如俄罗斯），首次开机语言自适应结果是英文，应该变成俄语。而使用中国SIM卡测试该功能时正常的。
问题原因：语言自适应需要通过利用SIM卡MCC信息查表来实现，而此表内容对于每个国家并不一样，有些国家没有默认语言，只有较少国家有默认语言。
解决方案：补充该表，使每个国家都有默认语言。
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

## [FAQ13924] Lollipop之后的新版本上，如何使AAPT将最佳匹配资源编译打包

```
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

注意1：PRODUCT_AAPT_PREF_CONFIG只能设置一种dpi。不能设置为PRODUCT_AAPT_PREF_CONFIG := xhdpi  xxhdpi 这种错误形式。
注意2: PRODUCT_AAPT_CONFIG在L1上已经失效.
```

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
新建一个 local.prop 文件，里面填入
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

[FAQ17460] 如何开启database的详细log
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

## [FAQ18280] 如何搭建小区广播环境

```
有些厂商需要搭建小广播环境，使用RACAL 6104
1.仪器设定
Step1. 点选Parameters
Step2. 选CCH/TCM设定
Step3.设定Channel Level/TCH Level（数值设越大，强度越大）
Step4.设定Message ID
    Coding Scheme(1:文字/ 17:乱码 87：空白)
    Repetition Interval/Initial Delay/Transmit Message
Step5. 如果手机已经camp上网路，仪器上的status会显示相关资讯

2.手机设定
Step1. 插入白卡
Step2. Camp on network
Step3. Go to message->settings->Trun on Cell Broadcast
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

## [FAQ18106] 如何将ATF log输出到uart？

```
ATF启动后，只有开始部分log有吐到uart，后面就仅仅放在ATF log buffer里，由mtklogger收集。
有些情况下需要看ATF log，而无法通过mtklogger查看，就需要通过uart查看了，下面给出在ATF打开uart log的方法。
 
修改位置在：
L版本 : vendor/arm/atf-1.0/bl31/bl31_main.c
M版本 : vendor/mediatek/proprietary/trustzone/atf/v1.0/bl31/bl31_main.c
里的bl31_main()里的clear_uart_flag()注释掉即可：
void bl31_main(void) {
    ......
#ifndef SVP3_ENABLE
    bl31_prepare_next_image_entry();
#else
    bl31_prepare_kernel_entry(1); // prepare 64 bits kernel directly
#endif
    printf("[BL31] Final dump!\n\r");
    //clear_uart_flag(); //这行注释掉
    printf("[BL31] SHOULD not dump in UART but in log buffer!\n\r");
}
```

## [FAQ06190] 默认打开自动更新时间

```
Q：进入设置——》日期和时间——》自动确定日期和时间，现自动确定日期和时间默认为关闭，需要改为默认是：使用网络提供时间 。该如何修改？
A：请修改
defaults.xml (alps\frameworks\base\packages\settingsprovider\res\values)
<bool name="def_auto_time">false</bool> //将false改为true (可能默认就是true)

如果是CMCC定制的项目,请修改
defaults.xml(alps\vendor\mediatek\proprietary\operator\OP01\packages\apps\Plugins\res\values)
<bool name="def_auto_time_op01">false</bool> //将false改为true
 
默认打开后,不一定能自动更新时间,因为这个需要网络环境支持NITZ自动更新才能成功.
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

[FAQ03051] 非运营商定制项目如何客制化自己的开关机动画、开关机铃声
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

## [FAQ18956] 如何追踪上层调用GC的位置

```
因为GC会让进程suspend起来，所以某些时候如果java层有调用GC，那么就会对系统的performance有影响。这时候需要找出是哪个位置调用 GC的。找到调用GC的方法如下：

修改代码，如下黄色部分代码所示：

/art/runtime/gc/heap.cc

 2383collector::GcType Heap::CollectGarbageInternal(collector::GcType gc_type, GcCause gc_cause, 
2384                                               bool clear_soft_references) {
2385  Thread* self = Thread::Current();
2386  Runtime* runtime = Runtime::Current();
2387  // If the heap can't run the GC, silently fail and return that no GC was run.
// mtk add begin
{
   ReaderMutexLock mu(self, *Locks::mutator_lock_);
            Thread* self = Thread::Current();
            self->Dump( LOG(WARNING)<<"uncaughtException happend" );
}
// mtk add end
2388  switch (gc_type) {
2389    case collector::kGcTypePartial: {
2390      if (!HasZygoteSpace()) {
2391        return collector::kGcTypeNone;
2392      }
2393      break;
2394    }
2395    default: {
2396      // Other GC types don't have any special cases which makes them not runnable. The main case
2397      // here is full GC.
2398    }
2399  }

2.采用模块化编译，只编译libart.so即可（在art/runtime目录下面有android.mk文件，所以可以进到这个目录里面进行mm操作）

3.将上面的生成的32位libart.so和64位的libart 分别push到/system/lib和system/lib64/目录下面

4.重启手机，并复现问题

然后，提供mtklog，这时候，在mainlog中就会有GC的函数调用栈。
```

## [FAQ13246] GPS问题分类--MTK ALPS GPS的特殊知识

```
1.FULL start、COLD start、WARM start、HOT start这些启动方式是什么意思？
定位过程中最重要的辅助资讯包括时间、位置、星历。

FULL start：没有任何的辅助资讯。相当于end user第一次买到手机后使用定位应用的场景。
COLD start：有时间辅助资讯，end user不会遇到该场景。
WARM start：有时间、位置辅助资讯，end user此次定位距离上次定位超过2～4个小时。
HOT start：有所有的辅助资讯，end user此次定位距离上次定位小于2～4小时。

所以对于end user经常会遇到的场景是WARM/HOT start。

2.各种启动方式的TTFF是多少？
TTFF的结果和测试环境、测试的手法、硬件的GPS 性能强相关。
MTK给出的数据是基于在open sky的环境下，有6颗卫星SNR》40db。
FULL start TTFF：小于50s。
COLD start TTFF：小于40s。
WARM start TTFF：小于35s。
HOT start TTFF：小于5s。
```

## [FAQ18381] [APP]语音控制的语言选项默认是汉语，如何将默认设置为English？

```
进入“设置>语言和输入法> 语音控制”，默认语音控制语言为汉语，如何改为默认语音控制语言为English？

请在vendor/mediatek/proprietary/packages/apps/VoiceCommand/res/xml/voicelanguage.xml文件中进行修改：

<?xml version="1.0" encoding="UTF-8"?>
<Languages>
<Language TypeName="简体中文" ID="1" Code="zh-CN" FileName="keyword/1.xml" />
<Language TypeName="繁體中文" ID="2" Code="zh-TW" FileName="keyword/2.xml" />
<Language TypeName="English" ID="3" Code="en-US" FileName="keyword/3.xml" />
<DefaultLanguage ID="1" />
</Languages>

请修改代码如下：<DefaultLanguage ID="3" />。
```

## [FAQ14027] 如何直接打开aee db文件？

```
当发生异常后，除了有mtklog外，还有aee_exp目录下的db，很多异常分析都是基于db的。db是一个压缩的2进制文件，无法直接打开。
GAT里的logviewer可以直接打开解压，但是操作繁琐，这里提供一个直接双击打开db的方法。

[SOLUTION]
在windows操作系统上，可以将某个文件关联一个应用程序，双击这个文件就可以启动该应用程序打开。比如txt文件，双击后notepad.exe会打开txt文件。
那么db关联的应用程序是什么么？是aee_extract.exe，这个工具在gat-win32-3\prebuilt\spsstools\bin\aee_extract.exe。
请使用最新版本的GAT（版本至少是3.15），将*.dbg文件关联到aee_extract.exe就可以双击打开解压db了。
关联有很多方法：比如双击db，选择应用程序，勾选永久使用该程序打开就可以了。
```

## [FAQ10590] 如何预置规范的动画包？

```
一、保证bootanimation.zip压缩包下的图片Size和格式完全统一

二、请写规范的配置文件desc.txt
desc.txt每个参数的实际意义，以如下的case为例：
480 854 10
p 1 0 part0
p 0 0 part1

1.第一行的参数前两位480和854分别表示要显示动画的width和height. 默认情况下应该与Display的width和height一致，如果设置比Display的size要小，则动画会居中显示，周边将用黑框填充.
2.第一行的第三个参数10是定义动画播放的预订帧率(FPS),这个帧率fps是指：每秒动画播放的帧数。此帧数是一个理想值，并不一定代表动画实际帧率，假设预订帧率为FPS_I，预订每一帧解析的时间t_I,  则t_I=1/FPS_I。实际帧率的规则是：
假设某一帧从解析到渲染耗时为t_r，当t_r<=t_l，则渲染完这一帧后，动画这个thread会sleep(t_l-t_r)的时间，也就说这一帧最后的耗时就t_l；
假设某一帧从解析到渲染耗时为t_r，当t_r>t_l，则渲染完这一帧后，动画这个thread会马上开始下一帧，也就说这一帧最后的耗时就t_r。
所以，desc.txt内设置的这个帧率并不能代表动画的实际帧率，实际的帧率是和系统开机的performance有关，因此不是说在desc.txt设置帧率越大越好，反而容易出现当某一帧耗时较长，就容易给用户某一帧卡顿的体验，目前这个FPS的值一般设置在13左右。
当然，设置FPS为13并不是说系统的performance比较低，本身在开机动画阶段，系统进入Bootup Android阶段，许多进程需要启动，系统的主要工作应该集中与开机启动的进程，因此不建议动画的图片过于复杂，导致系统开机的Performance变差。

3.第二行和第三行情况类似，一般用于分别设置顺序播放和无限循环播放的相关参数.
第一个参数p是google default的设计，请保留以p开头。
第二个参数1表示这一行对应folder所需要循环播放的次数，如果是0则表示是无限循环播放，直到系统ready后通过被动退出。
第三个参数0表示这一行对应folder里面的每一帧图片依次解析渲染完成后，要进入下一个循环，动画这个线程需要pause多久。
第四个参数part0表示对应设置规则的folder的path。

Note1：默认的设计，都是将顺序播放的动画放在一个folder，定义这个folder所需要循环的次数；在无限循环的folder内放置一张图片，保证动画没有收到退出指令的时候，动画可以一直显示.
Note2:由于循环播放的folder中的每帧都是以纹理对象存储在纹理内存中再upload到GPU做渲染的，以便下次循环播放不需要重新解析.如果动画包中的图片太多或者图片的size很大时，则会导致占用较多的memory,因此为保证开机的performance,开机动画不建议太复杂.
```

## [FAQ13768] 功耗问题eservice提交流程

```
因为功耗问题很多情况下会涉及到HW/SW多个模块，
因此在Mediatek内部，功耗问题的处理流程有一定的规则。
 
如果客户在提交eservice的时候能遵循如下的规则，
那么在Mediatek这边问题会处理得更加顺利，对提高问题处理效率会有显著帮助

(1) 飞行模式底电流
A: 如果漏电小于10mA-------->同时提交HW/SW的eservice
B: 如果漏电大于10mA-------->提交SW的eservice
 
(2) 飞行模式平均电流-------->提交SW的eservice
 
(3) 传导待机/通话功耗
*先保证飞行模式功耗正常
A: 如果某些band有问题（比如2g fail，3/4g ok）-------->提交RF的eservice
B: 如果所有的band都有问题-------->提交SW的eservice
 
(4) 实网待机/通话功耗
*先保证传导功耗正常
A: 如果联网/选网/通话功能存在异常（modem不正常）-------->提交RF的eservice
B: 如果正常附着网络各项功能正常-------->提交SW的eservice
 
(5) wireless connecivity相关功耗问题（wifi，BT，GPS，FM，NFC）
A: 如果打开飞行模式，再单独打开其中某个模块功耗异常-------->提交SW的eservice（标题里写明是哪个模块的功耗问题，比如“wifi功耗”）
B: 如果只有在关闭飞行模式的情况下，功耗才会异常（说明跟modem有一定关联）-------->按照(4)的流程处理
C: 如果涉及某个模块的非常专业的测试（其他模块的人可能看不懂）-------->提交SW的eservice (标题里写明测试项，比如“wifi XXX测试”)
```

## [FAQ18817] 【MediaScanner】手机开启加密后，一些内置文件在down完版本后第一次开机搜索不到，重启后正常

```
手机开启加密后，内置的文件在down完版本后第一次开机搜索不到，重启后正常。
修改 MediaScannerReceiver.java
1. 增加定义 
private static final String DECRYPT_STATE = "trigger_restart_framework";
 
2. 修改 getHandler()
private Handler getHandler() {
    if (sHandler == null) {
        sHandler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                Context context = (Context) msg.obj;
                int waitTime = msg.arg1;
                MtkLog.v(TAG, "Check whether all storage mounted, have waited " + waitTime + "ms");
                if (MSG_CHECK_ALL_STORAGE_MOUNTED == msg.what) {
                    /// When all storage mounted or check time out, begin to scan
                    // modify start
                    // if (waitTime > TIMEOUT_VALUE || isAllStorageMounted(context)) {
                    if (DECRYPT_STATE.equals(SystemProperties.get("vold.decrypt"))&& (waitTime > TIMEOUT_VALUE || isAllStorageMounted(context))) {
                        // modify end
                        MtkLog.v(TAG, "All storages have mounted or check time out, begin to scan.");
                        scan(context, MediaProvider.EXTERNAL_VOLUME);
                        removeCallbacksAndMessages(null);
                        sHandler = null;
                    } else {
                        MtkLog.v(TAG, "Some storage has not been mounted, wait it mounted until time out.");
                        Message next = obtainMessage(msg.what, waitTime + CHECK_INTERVAL, -1, msg.obj);
                        sendMessageDelayed(next, CHECK_INTERVAL);
                    }
                    //}
                }
            };
        }
        return sHandler;
    }
    /// @}
}
```

## [FAQ18816] 【AudioProfile】插入印度SIM 卡，相机拍照声音开关控制无效

```
插入印度卡后，关闭camera拍照声的情况下也有声音，使用其他SIM卡不会有问题。

是由于客户印度卡mcc为404,405，所以调用frameworks/base/core/res/res/values-mcc404/config.xml中的config_camera_sound_forced 的值，而这个值为true，从而导致强制使用拍照声音，修改为false就可以了。
当然，在Audioservice.java里readCameraSoundForced()，强制赋值false也是可行的
```

## [FAQ14783] ZZ_INTERNAL每个栏位的含义

```
异常分析是基于exp db的，db的类型多种多样，除了db文件名可以表明粗略的异常类型外，还有ZZ_INTERNAL文件里的内容也做了粗略的分类。
现在有些基于后台收集db的机制，面对大量的db，需要做不同目标的分类，ZZ_INTERNAL是很好的参考源，因此熟悉这个文件的内容格式就很重要了。
 
ZZ_INTERNAL包含10列，每1列用逗号隔开。举例如下：
Hardware Reboot,0,0,99,/data/core/,0,,HW_REBOOT,Tue Aug  4 21:42:18 CST 2015,1
 
以下是各列详解：
第1列：exception class，有KE/NE/JE/EE等。所有类型都定义在：alps/kernel-3.10/include/linux/aee.h
AE_EXP_CLASS
枚举类型里，除了AE_RESMON,AE_MODEM_WARNING是Mediatek内部使用外，其他都有。
System API DUMP是native layer主动报出的问题，对应AE_SYSTEM_NATIVE_DEFECT，
Kernel API Dump是Kernel layer主动报出的问题，对应AE_KERNEL_PROBLEM_REPORT。
Manual Dump是同时按上下音量键5s/10s左右触发的。

第2列：pid，如果没有该信息则为0或者0xAEE00000(-1361051648)
第3列：tid，如果没有该信息则为0或者0xAEE00000(-1361051648)
第4列：固定是99
第5列：固定是/data/core/
第6列：exception level，0: fatal, 1: exception, 2: warning, 3: reminding。定义在：alps/kernel-3.10/include/linux/aee.h
AE_DEFECT_ATTR

第7列：exception type info string
如果是NE，则这个栏位是signal名称，比如：SIGSEGV，KE则为空，SWT则为：system_server_watchdog，等等。

第8列：module name or process name
e.g. KE db可能为KE at <function>

第9列：UTC time
第10列：固定是1
 
aee部分可以到DCC上参考Mediatek Logging SOP.pptx。
```

## [FAQ11598] 如何处理工厂模式(factory mode)崩溃的问题？

```
工厂模式下系统会跑到kernel，并运行factory程序，如果factory发生NE崩溃了，该如何分析处理？此时可没有mtklogger在抓取log的。
 
如果factory发生NE崩溃，kernel会按默认处理，将生成coredump，文件存放在/data/core/目录下，文件名为zcore-xxx.zip，其中xxx为factory的pid
此时提供该zcore-xxx.zip和保留的out/target/product/$proj/symbols/system/bin/factory一起提交到e-service。
 
note:
如果发现/data/core/目录下没有该文件，请在alps/device/mediatek/MT67xx/factory_init.rc文件中添加
import init.aee.rc
```

## [FAQ09747] 对于没有coredump的Native exception，如何抓取coredump

```
关于什么是coredump请参考FAQ (ID: FAQ06108) COREDUMP ；
coredump对于定位应用NE死在代码的什么位置，以及当时的死机现场至关重要；
所以对于NE issue大部分是否都需要帮忙抓取coredump来分析；
所以抓到log发现是NE issue后，请用GAT解开DB，来查看下面的文件mtklog/aee_exp/db.xx/PROCESS_COREDUMP是否存在；
但是有少数情况下会出现抓取不到的现象，针对此情况，请按照下面的方法来抓取； 
 
1.对于GB3/JB3以前的版本
(1)删除手机中system/bin/debuggerd,
(2)重启手机,然后手动设置adb shell
    然后执行:
    echo "|/system/bin/aee_core_forwarder /data/core/ %p %s UID=%u GID=%g"   > /proc/sys/kernel/core_pattern
    (注意如果每次重启手机都要设置一次)
(3)然后复现问题，这样coredump会生成到/data/core/目录下。
(4)复现后，捞出/data/core目录里的文件， coredump就在这里
2.对于GB3/JB3及以后的版本
1. eng build 默认都有coredump 在mtklog/aee_exp 文件夹中db，解压db文件后可以看到
2. 如果需要在user build下抓取coredump，请按以下设置，然后抓取，也会在mtklog/aee_exp 文件夹中db
    adb shell aee -d coreon
    adb shell reboot
```

## [FAQ06108] /data/core/zcore-xxx.zip是什么？有什么用？

```
1. zcore-xxx.zip是压缩的coredump,文件名叫做PROCESS_COREDUMP
2. coredump是linux的概念，在应用层的程序发生崩溃后，linux会将当前的进程空间保存为coredump，以供后续分析(可以用gdb等工具分析)，详细信息可以到网络搜索资料
在android系统中，也会将natvie程序崩溃(native exception，简称NE)而产生的coredump保存到/data/core目录下，原本的保存的文件名一般为core.$pid,其中$pid为崩溃进程的pid
3. 一般coredump文件都很大，因此MTK将其压缩，名字叫zcore-$pid.zip
4. 在JB2之前该文件直接解压就可以拿到PROCESS_COREDUMP，之后则需要GAT解压（目前还没做好）
5. 正常情况下的NE，MTK会生成相应的mtklog/aee_exp/db.xx，会将PROCESS_COREDUMP一起打包进去，而不会生成/data/core/zcore-xxx.zip,除非特殊情况才会生成到/data/core目录下，比如MTK异常处理机制本身异常了
6. user版本即使发生NE也不会生成zcore-xxx.zip，所以不用当心
7. 如果经常发生NE的话，可能导致/data/core目录下存在很多zcore-xxx.zip,把占用大量的data空间。此时应该将发生NE的问题解决，然后在清除zcore-xxx.zip
```

## [FAQ14333] 异常发生后如何将log里对应的地址转换为所在的文件和行号？

```
在发生各种异常时，通常从log看到的是各种地址和数据，这些信息基本无法阅读，分析也很困难。
我们需要将这种人类无法阅读的信息转换成容易理解的信息。比如将函数地址转换成所在的文件和行号。
在log里恰恰含有大量这种地址信息。因此转换为所在文件和行号有助于我们分析问题。
 
[SOLUTION]
这个转换需要借助一个GNU工具：arm-linux-androideabi-addr2line（ARM 32位版本）或aarch64-linux-android-addr2line（ARM 64位版本）
工具位置（具体以实际目录位置为准）：
ARM 32位版本：prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-addr2line
ARM 64位版本：prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-addr2line
使用方法：
arm-linux-androideabi-addr2line -Cfe $symbol_file 0xyyyyyyyy
其中的0xyyyyyyyy是从log提取的地址。$symbol_file为地址所在的符号文件，该文件包含调试信息。
 
该工具需要搭配对应的符号文件才行，那这个符号文件是什么呢？这要看你要查询的地址是属于哪个符号文件的了。
举例：log里的地址是lk的，那lk对应的符号文件是：out/target/product/$proj/obj/bootloader_obj/build-$proj/lk
如果是kernel的，对应的符号文件是：out/target/product/$proj/obj/kernel_obj/vmlinux（老版本的位置在kernel/out/vmlinux）
如果是preloader的，对应的符号文件是：out/target/product/$proj/obj/preloader_obj/bin/preloader_$proj.elf
 
实例1：
有一次在lk里发生了重启，抓取uart log如下：
kedump add: SYS_MINI_RDUMP[0] 1000/1000@a00
[1460] data abort, halting
[1460] r0 0x41e49ec8 r1 0x41e31b03 r2 0x41e49ed7 r3 0x00000000
[1460] r4 0x43ff0000 r5 0x43ff0bae r6 0x41e31b04 r7 0x43ff0bd6
[1460] r8 0x41e31ad4 r9 0x00000014 r10 0x00001a00 r11 0x00000000
[1460] r12 0x00000061 usp 0x00000000 ulr 0x00000000 pc 0x41e1b918
[1460] spsr 0x00000173
/* 之后就重启了 */
我们需要知道在什么地方发生异常了，PC是当时发生异常的地址。拿到对应的lk，用如下命令转换：
arm-linux-androideabi-addr2line -Cfe lk 0x41e1b918
kedump_to_expdb
bootable/bootloader/lk/app/mt_boot/aee_KEDump.c:219
很明显就可以看到是aee_KEDump.c的219行出问题了，赶紧查看代码分析吧。
 
实例2：
在kernel发生了panic，抓取kernel log（db里的SYS_KENREL_LOG）如下：
[17600.585313]<1>-(1)[1602:wpa_supplicant]PC is at sock_rfree+0x20/0x38
[17600.585327]<1>-(1)[1602:wpa_supplicant]LR is at netlink_skb_destructor+0x14/0x1c
......
[17600.590428]<1>-(1)[1602:wpa_supplicant]Call trace:
[17600.590442]<1>-(1)[1602:wpa_supplicant][<ffffffc000832784>] sock_rfree+0x20/0x38
[17600.590458]<1>-(1)[1602:wpa_supplicant][<ffffffc000836cb0>] skb_release_head_state+0x5c/0xe4
异常发生在sock_rfree()函数里，但是不知道哪一行异常了，异常的地址是ffffffc000832784，拿到对应的vmlinux，转换：
aarch64-linux-android-addr2line -Cfe vmlinux 0xffffffc000832784
sk_mem_uncharge
kernel-3.10/include/net/sock.h:1415
问题在sock.h的1415行异常，需要进一步分析。
 
注意：
这个符号文件必须是和烧录的image一起生成的，如果被重新编译过生成的，那么log里的地址和符号文件可能对应的不上，工具可能输出错误的结果。
如果不确定符号文件是32位还是64位，则直接使用64位版本。
```

## [FAQ06047] 如何学习Debug Native Exception?

```
Native Exception，简称NE，是发生于C/C++ code里面最常见的一种异常，对于简单的NE，我们可以根据backtrace印出的调用逻辑来推断产生的原因。但是稍复杂一些的NE，比如memory corruption造成地址访问异常，比如某个变量在多层函数调用之间被异常篡改，比如函数指针未初始化造成的异常跳转等等，仅仅依靠log和backtrace就变得稍显力不从心了。

对于此类case，就需要深入了解architecture相关的知识以及各种相关的工具来进行汇编语言层次的分析。鉴于相关的知识分布比较发散，我们将debug NE需要的相关知识罗列在此供参考学习。
```

## [FAQ10278] DB文件会生成在哪里以及生成的个数是多少？

```
一. DB的路径
DB的路径只有两种路径：/data/aee_exp或者/sdcard/mtklog/aee_exp。其中/sdcard一般是内置sdcard。DB实际存放路径的规则如下：

(1)ENG版本
ENG版本默认是打开MTKLogger，所以一般情况下DB优先放到在/sdcard/mtklog/aee_exp。但是当发生的是KE重启这类异常，此时MTKLogger还没起来，则aee_exp会生成在/data/aee_exp。

(2)USER版本
USER版本默认是关闭MTKLogger，所以此时DB是生成在/data/aee_exp。但是如果在USER版本将MTKLogger打开，则aee_exp是生成在/sdcard/mtklog/aee_exp。

二. aee_exp下的DB个数

USER版本关闭MTKLogger的情况下，只有发生的是Fatal级别的异常才会抓取DB(包含KE，异常reboot，system_server出现异常的JE和NE以及software WatchDog)。且aee_exp最多保存4个DB文件，名称如db.xx.dbg，其中xx为“00”，“01”，“02”，“03”，再发生异常时依次覆盖“01”，“02”，“03”，会一直保留最老的“00”。
除此之外的其它情况下是会抓取包括Exception级别的异常DB，且aee_exp最多会保存20个DB文件(db.00.dbg，db.01.dbg，......db.19.dbg)，再发生异常时依次覆盖“01”，“02”，“03”......"19"，会一直保留最老的“00”。
```

## [FAQ18402] [SAT]SIM Refresh后STK Name更新太慢

```
执行SIM refresh 后，若需要更新 STK name, STK name显示更新太慢。 
 
[SOLUTION]
现象：SIM refresh 后重新初始化 SIM 卡，会上报 set up menu. STK ap 过了很长时间才收到，导致 STK name 更新太慢。 
原因：STK 默认的设计是后台广播，若开机初始化阶段消息太多，导致 STK 广播延时明显。
修改：将stk的广播置为前台广播来规避这个问题，请在catservice.java文件的 broadcastCatCmdIntent 里，在发送广播之前，加上：
intent.addFlags(Intent.FLAG_RECEIVER_FOREGROUND);
    
类似如下情况的问题，若需要较早支持进入 SIM Toolkit, 也可以参考此说明修改：
例如：插入支持 STK SIM，重启手机，当开机弹出运营商提示框后，点击SIM Toolkit应用，提示“App isn't installed”, 过一段时间才能进入。
 
类似问题 log 情况，按时间顺序说明如下：
//开机或 refresh 后，sim 上报的 set up menu 指令，CatService 收到 set up menu.
12-31 18:08:01.844194 1490 1490 D CAT : CatService: handleMessage[10]
12-31 18:08:01.844357 1490 1490 D CAT : CatService: SET_UP_MENU
12-31 18:08:01.845522 1490 1490 D CAT : CAT: mSetUpMenuFromMD: true
12-31 18:08:01.846026 1490 1490 D CAT : CatService: SS-sendTR: command type is 37
12-31 18:08:01.846284 1490 1490 D CAT : CatService: encodeOptionalTags() Unsupported Cmd details=CmdDetails: compRequired=true commandNumber=1 typeOfCommand=37 commandQualifier=0
12-31 18:08:01.846435 1490 1490 D CAT : CatService: TERMINAL RESPONSE: 810301250082028281830100
12-31 18:08:01.849209 1490 1490 D CAT : CatService: Sending CmdMsg: com.android.internal.telephony.cat.CatCmdMessage@bf8cac0 on slotid:0

//catservice 发广播
12-31 18:08:01.851211 846 1664 V ActivityManager: Broadcast: Intent { act=android.intent.action.stk.command flg=0x10 (has extras) } ordered=false userid=0 callerApp=ProcessRecord{bdd92c0 1490:com.android.phone/1001}

//54秒后，STK AP 才收到广播。
12-31 18:08:55.672267 1490 1490 D ActivityThread: BDC-Calling onReceive: intent=Intent { act=android.intent.action.stk.command flg=0x10 cmp=com.android.stk/.StkCmdReceiver (has extras) }, receiver=com.android.stk.StkCmdReceiver@db84bac
12-31 18:08:55.685323 1490 1490 D ActivityThread: BDC-RECEIVER handled : 0 / ReceiverData{intent=Intent { act=android.intent.action.stk.command flg=0x10 cmp=com.android.stk/.StkCmdReceiver (has extras) } packageName=com.android.stk resultCode=-1 resultData=null resultExtras=null}
 
12-31 18:08:55.690877 1490 1490 D CAT : StkAppService: StkAppService onStart sim id: 0, op: 1, Bundle[{SLOT_ID=0, cmd message=com.android.internal.telephony.cat.CatCmdMessage@4dff87b, op=1}]
12-31 18:08:55.690980 1490 1490 D CAT : StkAppService: StkAppService onStart mPhone: Handler (com.android.internal.telephony.PhoneProxy) {41d633d}, mPhoneStateChangeReg: true
12-31 18:08:55.691419 1490 2387 D CAT : StkAppInstaller: Init thread
12-31 18:08:55.691523 1490 2387 D CAT : StkAppService: handleMessage opcode[1], sim id[0]
12-31 18:08:55.691643 1490 2387 D CAT : StkAppService: cmdName[SET_UP_MENU]
```

## [FAQ01799] data分区下产生data/core/core.xxxx文件的时机与用途

```
data分区下产生 data/core/core.xxxx 文件的时机与用途
当发生了 Native Exception 的时候产生的
用于分析 Native Exception 的时候使用
```

## [FAQ09614] 当发生native exception时，需要提供哪些资料或者文件来分析

```
当发生Native exception(以下简称NE)后，一般发生NE的进程会崩溃退出，
但如果发生NE的进程是system server的话，手机会在android层重启；
所以从手机直观的现象就可以初略的判断是否是发生NE；
然后您可以用GAT工具解析，mtklog/aee_exp文件夹下的db文件，EX：db.00；
解析后会生成相应文件夹，EX：db.00.dbg.DEC，该文件夹下的文件就是分析NE所需要的一些文件了；
您可以打开文件__exp_main.txt来查看：Exception Class: Native (NE)
则可以判断为NE，然后您可以按照[solution]中的要求提供咨询给mtk来分析；
 
1.完整的mtklog文件夹，mobilelog和相应的aee_exp db文件不可或缺，所以默认请提供完整mtklog文件夹；
2.在[description]中解析出来db文件目录下，打开文件_exp_detail.txt，参考里面的backtrace，提供backtrace中
所显示的全部库文件，库文件目录为：out/target/product/[project]/symbols/system/lib
PS:必须提供symbols目录下库文件，才会带有debug调试信息；
3.在[description]中解析出来db文件目录下，打开文件PROCESS_MAPS，查看第一行,提供第一行对应的app文件；
ps:因为bin文件一定是system/bin目录下的，如果maps中的第一行不是这个目录，您可以在整个maps文件中查找/system/bin后，请提供这些文件给我们，一般来说，除了linker外，只会有另外一个主体bin文件了，但是具体的codebase中的路径请参考如下路径
路径为：out/target/product/[project]/symbols/system/bin；  也必须是symbols目录下的；
```

## [FAQ11414] android KK 4.4 版本后，user 版本su 权限严重被限制问题说明

```
Google 不遗余力的提高android系统的安全性, 而针对su 这个即令人恨，又令人爱的命令，就痛下杀手。下面我从三个方面说明.
1. 限制user 版本adbd process 的capabilities bound set. 循环CAPBSET_DROP 动作，将Process 的root capabilities 进行了强行限制。仅仅保留了CAP_SETUID, CAP_SETGID 这两项，用于run-as 使用，可参考alps/system/core/adb/adb.c 中的 drop_capabilities_bounding_set_if_need 函数。
这样导致的情况是，在user 版本中usb debug 的su 受到极大的限制，仅仅能够模拟对应的uid/gid, 而无法拿去真正的root 权限.

2. 限制所有app 的capabilities bound set, 在android 4.4 上，zygote fork app 时，特意对所有fork 出来的子进程，进行了CAPBSET_DROP 动作，将Process 的root capabilities 进行了强行限制。 使得即使这些APK 徒有Root 权限，而无真实的capabilites. 在4.4.4 以及L 版本上, 还会使用prctl 下PR_SET_NO_NEW_PRIVS 指令, 限制子进程权限的提升.
这样导致的情况是, app 执行su 时，其权限受到了严格的管控，比如无法逃脱DAC 权限管控。但因为依旧具有root uid/gid, 所以在framework 层的permission 限制上依旧畅通无阻。
详情请参考FAQ: https://online.mediatek.com/Pages/FAQ.aspx?List=SW&FAQID=FAQ11538

3. SElinux 权限限制。 在user 版本上，没有导入有效的SU SElinux policy, 这样一旦本身受SElinux 限制的process 使用su 时，同样会受到SElinux 的限制。

(3.1). 在KK 版本只有4个process 会受到此影响，即zygote, netd, installd, vold.
消除这种限制的手法即是external/sepolicy/android.mk 里面的
ifeq ($(TARGET_BUILD_VARIANT),user)
    BOARD_SEPOLICY_IGNORE+=external/sepolicy/su.te
else
    BOARD_SEPOLICY_IGNORE+=external/sepolicy/su_user.te
endif

更新成:
ifeq ($(TARGET_BUILD_VARIANT),user)
    BOARD_SEPOLICY_IGNORE+=external/sepolicy/su_user.te
else
    BOARD_SEPOLICY_IGNORE+=external/sepolicy/su_user.te
endif

(3.2). 在L 版本则所有的Process 都会受到这样的影响.

sepolicy_policy.conf := $(intermediates)/policy.conf
$(sepolicy_policy.conf): PRIVATE_MLS_SENS := $(MLS_SENS)
$(sepolicy_policy.conf): PRIVATE_MLS_CATS := $(MLS_CATS)
$(sepolicy_policy.conf) : $(call build_policy, $(sepolicy_build_files))
@mkdir -p $(dir $@)
$(hide) m4 -D mls_num_sens=$(PRIVATE_MLS_SENS) -D mls_num_cats=$(PRIVATE_MLS_CATS) \
-D target_build_variant=$(TARGET_BUILD_VARIANT) \
-D force_permissive_to_unconfined=$(FORCE_PERMISSIVE_TO_UNCONFINED) \
-s $^ > $@
$(hide) sed '/dontaudit/d' $@ > $@.dontaudit

将-D target_build_variant=$(TARGET_BUILD_VARIANT) 改成 -D target_build_variant=eng 
```

## [FAQ03827] 如果抓一个正在运行的程序的Native Backtrace？

## [FAQ04310] 如何修改时区data文件

```
Android时区信息是由data文件保存，KK之前的版本是三个文件(zoneinfo.dat, zoneinfo.idx,zoneinfo.version)，KK之后只有一个文件(tzdata)。由于各国的时区信息是会变化的，例如2014年6月13日，俄罗斯宣布从2014年10月26日之后全国时区推后一小时，比如莫斯科之前是GMT+4，修改后是GMT+3；如某个时区去掉2015年永久取消夏令时；但是android中的该文件不会自动更新，所以测试过程中会遇到手机的时区信息显示不正确。这种情况下，就需要更新手机的时区信息文件。
[Solution]
一、下载tztada包
在网址ftp://ftp.iana.org/tz/releases/下载tzdata*.tar.gz，对于KK下载2014f版本，如果是KK之前的版本请下载2013年的版本。解压后拷贝到路径\bionic\libc\tools\zoneinfo下。找到时区所在文件，是按照城市所在洲命名的文件。
 1、夏令时(如Mexico在文件northamerica)
   # Rule NAME FROM TO TYPE IN ON AT SAVE LETTER/S
      Rule Mexico 1939 only - Feb 5 0:00 1:00 D
      Rule Mexico 1939 only - Jun 25 0:00 0 S
      Rule Mexico 1940 only - Dec 9 0:00 1:00 D
      Rule Mexico 1941 only - Apr 1 0:00 0 S
      Rule Mexico 1943 only - Dec 16 0:00 1:00 W # War
      Rule Mexico 1944 only - May 1 0:00 0 S
      Rule Mexico 1950 only - Feb 12 0:00 1:00 D
      Rule Mexico 1950 only - Jul 30 0:00 0 S
      Rule Mexico 1996 2000 - Apr Sun>=1 2:00 1:00 D
      Rule Mexico 1996 2000 - Oct lastSun 2:00 0 S
      Rule Mexico 2001 only - May Sun>=1 2:00 1:00 D
      Rule Mexico 2001 only - Sep lastSun 2:00 0 S
      Rule Mexico 2002 max - Apr Sun>=1 2:00 1:00 D
      Rule Mexico 2002 max - Oct lastSun 2:00 0 S 
      红色字体1:00表示有夏令时，要加一小时；0表示不用加。前面的时间是执行夏令时的时间段。如果要求2014年开始每年4月1日到10月31日执行夏令时，其余时间取消夏令时可以新增如下2句：
      Rule Mexico 2014 max - Apr 1 2:00 1:00 D
      Rule Mexico 2014 max - Oct 31 2:00 0 S
 2、时区(如Moscow在文件europe)
     Zone Europe/Moscow 2:30:17 - LMT 1880
     2:30:17 - MMT 1916 Jul 3 # Moscow Mean Time
     2:31:19 Russia %s 1919 Jul 1 2:00
     3:00 Russia %s 1921 Oct
     3:00 Russia MSK/MSD 1922 Oct
     2:00 - EET 1930 Jun 21
     3:00 Russia MSK/MSD 1991 Mar 31 2:00s
     2:00 Russia EE%sT 1992 Jan 19 2:00s
     3:00 Russia MSK/MSD 2011 Mar 27 2:00s
     4:00 - MSK 2014 Oct 26 2:00s
     3:00 - MSK
  新增2014年10月26日之后执行GMT+3时区

3、KK版本需要修改ICU对应的时区信息，比如Moscow

修改文件external\icu\icu4c\data\misc\zoneinfo64.txt（可以参考FAQ04553下载最新的ICU资源对比修改 ）
把Moscow时区部分使用下面替换掉，然后参考FAQ04011 重新编译icu资源
 /* Europe/Moscow */ :table {
    trans:intvector { -1688265017, -1656819079, -1641353479, -1627965079, -1618716679, -1596429079, -1593829879, -1589860800, -1542427200, -1539493200, -1525323600, -1522728000, -1491188400, -1247536800, 354920400, 370728000, 386456400, 402264000, 417992400, 433800000, 449614800, 465346800, 481071600, 496796400, 512521200, 528246000, 543970800, 559695600, 575420400, 591145200, 606870000, 622594800, 638319600, 654649200, 670374000, 686102400, 695779200, 701812800, 717534000, 733273200, 748998000, 764722800, 780447600, 796172400, 811897200, 828226800, 846370800, 859676400, 877820400, 891126000, 909270000, 922575600, 941324400, 954025200, 972774000, 985474800, 1004223600, 1017529200, 1035673200, 1048978800, 1067122800, 1080428400, 1099177200, 1111878000, 1130626800, 1143327600, 1162076400, 1174777200, 1193526000, 1206831600, 1224975600, 1238281200, 1256425200, 1269730800, 1288479600, 1301180400, 1414274400 }
    typeOffsets:intvector { 9017, 0, 7200, 0, 7200, 3600, 9079, 0, 9079, 3600, 9079, 7200, 10800, 0, 10800, 3600, 10800, 7200, 14400, 0 }
    typeMap:bin { "0304030504050706070807060106070607060706070607060706070607060706070602010607060706070607060706070607060706070607060706070607060706070607060706070607060906" }
    links:intvector { 462, 618 }
  }


二、 修改完成后需要执行脚本生成data文件，具体执行可以参考
   KK之前的版本：FAQ05710 
   KK之后的版本(L,M)：FAQ12532
三、关于俄罗斯时区的问题
请参考：FAQ13442，FAQ13443
```

## [FAQ04857]【USB名称修改系列】第2项-如何修改PTP在PC"我的电脑"中显示的label名称

```
USB PTP功能在pc端 “我的电脑” 盘符卷标字符串客制化

[SOLUTION]
以下两种方式采用其中一种即可：
a) 修改/alps/framework/av/media/mtp/MtpServer.cpp

MtpResponseCode MtpServer::doGetDeviceInfo() {
這裡面有個

property_get("ro.product.model", prop_value, "MTP Device");
//此处添加修改prop_value数组的值的code，值即为要客制化的字符串

string.set(prop_value);//或者直接修改此句code为 string.set(“label name”);

之后rebuild project

b) 修改ro.product.model的值
在alps/build/tools/buildinfo.sh 中查找ro.product.model对应的宏的名称，此处为PRODUCT_MODEL；
在alps/build/target/product/<project>.mk文件中添加或修改该宏的定义,如：
PRODUCT_MODEL  := mylabelname
注意不能有空格。

注意：在JB9上为了WHQL测试的通过，已经在mtpDatabae.java中将相应修改label名称的代码注释，所以JB9如果

要修改名称要注意这一点。另外也可以在alps\mediatek\config\[project_name]\system.prop文件中ro.sys.usb.mtp.whql.enable设置为1，这样也可以避免这个WHQL测试的问题~
```

## [FAQ07081] 【USB名称修改系列】第5项-如何修改MTP在PC设备管理器中制造商的名称

```
修改方法：
1. 修改build/tools/buildinfo.sh中的 ro.product.manufacturer

2. frameworks\av\media\mtp\MtpServer.cpp 的doGetDeviceInfo()
property_get("ro.product.manufacturer", prop_value, "unknown manufacturer");
string.set(prop_value);
修改此处的prop_value
```

## [FAQ03524] 【USB名称修改系列】第3项-如何修改MTP在PC"我的电脑"中显示的label名称

```
MTP功能在PC端盘符名称显示如何修改？
[SOLUTION]
以下两种方式采用其中一种即可：

a) 修改/Alps/frameworks/base/media/java/android/mtp/MtpDatabase.java
private int getDeviceProperty(int property, long[] outIntValue, char[] outStringValue) {
    String deviceName;
    deviceName = SystemProperties.get(“ro.product.name”);
    deviceName = “yournamehere”;
    int lengthDeviceName = deviceName.length();

b) 修改ro.product.name的值
在alps/build/tools/buildinfo.sh 中查找ro.product.name对应的宏的名称，此处为PRODUCT_NAME；
在alps/build/target/product/<project>.mk文件中添加或修改该宏的定义,如：
PRODUCT_NAME    := mylabelname
注意不能有空格
```

## [FAQ17359] [SAT]怎么去掉"Sending text message"的popup提示界面

```
有些运营商的特殊SIM卡会上报SAT命令，定时要求手机向网络发送短信，按照11.14规范，我们是应当让User知道手机当前在发送短信；
但为了不影响User使用感受，客户希望不弹出Popup 框导致按键无响应的情况，那么可以做以下修改(修改方法适用与10A之后的Pluto MMI)：
1>、如果只是希望在STK菜单之外的界面时去除Sending text message的Popup 框，
将以下函数：
void mmi_sat_send_sms_process(srv_sat_proactive_sim_struct *cmd_info)
{
    /*----------------------------------------------------------------*/
    /* Local Variables                                                */
    /*----------------------------------------------------------------*/
    mmi_sat_group_data_struct *group_data = NULL;
    srv_sat_send_sms_struct *send_sms = NULL;
    /*----------------------------------------------------------------*/
    /* Code Body                                                      */
    /*----------------------------------------------------------------*/
    send_sms = (srv_sat_send_sms_struct *)(&cmd_info->cmd_data);
    group_data = mmi_sat_init_group_data(cmd_info->sim_id, cmd_info->cmd_type, send_sms, MMI_FALSE);
    group_data->func_p = (FuncPtr)mmi_sat_send_sms_scrn_entry;
    mmi_sat_instant_cmd_show_by_nmgr(mmi_sat_scrn_pre_entry, group_data);
}
修改为：
void mmi_sat_send_sms_process(srv_sat_proactive_sim_struct *cmd_info)
{
    /*----------------------------------------------------------------*/
    /* Local Variables                                                */
    /*----------------------------------------------------------------*/
    mmi_sat_group_data_struct *group_data = NULL;
    srv_sat_send_sms_struct *send_sms = NULL;
    /*----------------------------------------------------------------*/
    /* Code Body                                                      */
    /*----------------------------------------------------------------*/
    send_sms = (srv_sat_send_sms_struct *)(&cmd_info->cmd_data);
    if(mmi_sat_is_in_screen(cmd_info->sim_id))
    {
        group_data = mmi_sat_init_group_data(cmd_info->sim_id, cmd_info->cmd_type, send_sms, MMI_FALSE);
        group_data->func_p = (FuncPtr)mmi_sat_send_sms_scrn_entry;
        mmi_sat_instant_cmd_show_by_nmgr(mmi_sat_scrn_pre_entry, group_data);
    }
    else
    {
        srv_sat_terminal_response_send_sms_stage1(cmd_info->sim_id);
    }
}
2>、如果想直接去掉所有case下的sending text message界面。
那么直接将上述函数中：
    group_data = mmi_sat_init_group_data(cmd_info->sim_id, cmd_info->cmd_type, send_sms, MMI_FALSE);
    group_data->func_p = (FuncPtr)mmi_sat_send_sms_scrn_entry;
    mmi_sat_instant_cmd_show_by_nmgr(mmi_sat_scrn_pre_entry, group_data);
替换成：
srv_sat_terminal_response_send_sms_stage1(cmd_info->sim_id);
 
 
针对 slim 之后的版本，没有 mmi_sat_send_sms_process，请参考下面说明修改。
 
请在 satApp.c 中，mmi_sat_get_process() 修改如下case, 修改后，在 stk menu 之外界面的 send sms 不会显示。

修改前：

case SRV_SAT_CMD_SEND_SMS:
send_sms = (srv_sat_send_sms_struct *)(&cmd_info->cmd_data);
group_data = mmi_sat_init_group_data(cmd_info->sim_id, cmd_info->cmd_type, send_sms, MMI_FALSE , mmi_sat_send_s_scrn_entry);

修改后：

case SRV_SAT_CMD_SEND_SMS:
if(mmi_sat_is_in_screen(cmd_info->sim_id))
{
kal_sys_trace("[stk] show send sms.");
send_sms = (srv_sat_send_sms_struct *)(&cmd_info->cmd_data);
group_data = mmi_sat_init_group_data(cmd_info->sim_id, cmd_info->cmd_type, send_sms, MMI_FALSE , mmi_sat_send_s_scrn_entry);
break;
}
else
{
kal_sys_trace("[stk] not show send sms.");
srv_sat_terminal_response_send_sms_stage1(cmd_info->sim_id);
return;
}

若测试有问题：
1. 请提供一个问题复现的log，从开机到问题复现，
filter: MOD_SIM(all class on), MOD_L4C(all class on), MOD_MMI_COMMON_APP(TRACE_GROUP_3).MOD_MMI_FW(trace_group_1)
2. 请提供修改的代码文件。
```

## [FAQ03920] [NvRAM] NvRAM product info的客制化以及注意事项

```
89之后的平台，MTK提供了Product info feature，支持Normal Mode下使用NvRAM接口写入数据， factory reset不会擦除，也避免了Normal Mode备份引起的掉电风险。
ICS2.MP/ICS.MP部分版本可以通过打patch支持，需要申请patch：ALPS00329542（JB 和TDD ICS2 branch 除外）

###Steps###
1. 打开MTK_PRODUCT_INFO_SUPPORT
修改alps/mediatek/config/$project/ProjectConfig.mk： MTK_PRODUCT_INFO_SUPPORT=yes
详情可参考DCC上文档《Customization in NvRAM Product Info feature》Page 10

2. 新增NvRAM项
如需在AP端新增NvRAM项，可以参考DCC上文档《Customization in NVRAM》；如不需要增加NvRAM项，请直接跳至Step3。
注意事项_1：
a) 如平台使用的是【eMMC】，新LID对应struct的size必须是512 byte的倍数；
b) 如平台使用的是【NAND】，新LID对应struct的size必须是page size对齐（即4K或2K）。

3. 将新加LID配置到product info
将对应的LID写入CFG_file_info.c的g_new_nvram_lid[]，填入正确的start_address和size；如不需要配置新加LID，请看注意事项_2。
注意事项_2：
a) 如平台使用的是【eMMC】，g_new_nvram_lid[]里面新LID的size必须要128K对齐；
b) 如平台使用的是【NAND】， g_new_nvram_lid[]里面新LID的size必须要blocksize对齐（4K pagesize对应的是256K，2K pagesize对应的是128K）。
c) g_new_nvram_lid[]里各LID总size不能超过partition table里pro_info的size。默认情况下，【eMMC】平台pro_info大小为3M，【NAND】平台pro_info大小为1M。

4. AP_CFG_REEB_PRODUCT_INFO_LID的配置
a) 如不需要配置AP_CFG_REEB_PRODUCT_INFO_LID在g_new_nvram_lid[]里面，可以直接移除，新加LID的start_address需要改成0。
b) 如保留AP_CFG_REEB_PRODUCT_INFO_LID在g_new_nvram_lid[]里面，则需要注意CFG_file_info.c的aBackupToBinRegion[]里面去掉AP_CFG_REEB_PRODUCT_INFO_LID。

5. Default value配置问题
如普通nvram项的配置，欲写入product info的nvram也需要在进行配置在g_akCFG_File[]（CFG_file_info.c），并在对应的xx_default.h和xx_file.h申明和定义default value。
但是，此处与普通nvram项不同的地方在于，当前的design中，写入product info的nvram项，自定义的default value是不生效的。
首次开机获取到的值，完全取决于当前/dev/pro_info这个raw分区里面的值：默认情况下，NAND的是0xff，eMMC的是0x00。

###After Customization###
客制化之后，配置到g_new_nvram_lid[]的LID对应的NvRAM data不再以文件形式存在/data/nvram/，而是直接写到了/dev/pro_info，数据不会同时存在两个地方。

【Platform】
目前，89之后的平台均支持，89之前的打了patch也支持。
```

## [FAQ13590] SD卡不识别等问题

```
1. 如果是所有SD卡都不识别，则请查看
[FAQ04249] 【sdcard-common】新开项目SDCard不识别，如何debug？
[FAQ07310] 【sdcard-driver】sd卡热插拔需要注意的几点？
[FAQ09005] [Storage]emmc LCA 版本T卡（sdcard）异常

2.部分SD卡不识别或只读，低概率出现：
请修改
\mediatek\custom\${project}\kernel\core\src\board.c
(/kernel/drivers/misc/mediatek/mach/mt6***/${project}/core/board.c)
struct msdc_hw msdc1_hw = {
.flags = //去除MSDC_UHS1、MSDC_DDR后看效果，如果没有改善接着再去除MSDC_HIGHSPEED看下
}
如果上面的修改对问题有改善，基本说明贵司的layout或者SD卡存在问题，
请提交硬件eService检查贵司的SD卡相关硬件设计和layout，谢谢！
```

## [FAQ09562] 关机动画和铃声没有完整播放就灭屏了

```
在我司默认的关机流程设计中，一般会根据运营商设置一个灭屏的时间，这个时间是基于运营商测试要求和用户体验考虑的。一般情况下，7S以内灭屏，可以让用户感知关机很快，而且在网络情况良好，系统稳定的情况下，关机的时间一般也会在10S以内；即使由于一些特殊原因，比如网络情况不好，也希望灭屏时间短，让用户体验更好。

如果关机铃声或者关机动画的时间大于灭屏的时间，就会出现动画和铃声没有播放完成就灭屏的情况。虽然可以修改代码，等待关机铃声和动画播放完成再灭屏，但是一般不建议关机铃声和动画太长，这样即使在系统比较稳定的情况下也会造成关机时间长的用户体验；而且当用户客制化其它关机铃声和关机动画时，关机的时间也会随之改变。因此，建议采用默认设计，缩短关机铃声和关机动画的时长。
```

## [FAQ05394] [Build]BT Profiles 详细介绍

```
蓝牙有很多Profile，代表这着向用户的许多种蓝牙应用，下面逐一详细介绍这些Profile。

MTK_BT_PROFILE_OPP：Object Push Profile  普遍用于文件、名片的传输，从文件管理器中通过蓝牙分享即使用该协议
MTK_BT_PROFILE_SIMAP  ：SIM Access Profile  车载蓝牙会通过该协议使用手机上的SIM服务，如通话等，仅将手机作为SIM卡槽，使用车载蓝牙的自带的无线通信模块
MTK_BT_PROFILE_PRXM   ：Proximity Monitor 
MTK_BT_PROFILE_PRXR   ：Proximity Reporter  以上两个选项为远程距离感应服务的两个角色，当使用该服务连接的两个设备距离拉大到一定范围（可设定）后，双方设备就会发出声音或震动的提示。典型应用是防丢器
MTK_BT_PROFILE_HIDH   ：Human Interface Device Host 该协议的典型应用为连接蓝牙键盘、鼠标等I/O外设
MTK_BT_PROFILE_FTP    ：File Transfer Profile 可以使用该设备浏览另一方蓝牙设备的文件系统，并可以对文件、目录进行下载、上传、修改、删除等操作
MTK_BT_PROFILE_PBAP   ：Phone Book Access Profile  电话本存取服务。高级蓝牙耳机或车载蓝牙可能会通过该协议获取手机通信录、通话记录等信息
MTK_BT_PROFILE_BPP    ：Basic Printing Profile  可通过此设备连接蓝牙打印机，不过其实OPP/BIP/SPP等协议均有可能用于连接打印机（取决于打印机支持哪种协议）
MTK_BT_PROFILE_BIP    ：Basic Imaging Profile  用于传输图片。从图库中分享图片即优先使用该协议。
MTK_BT_PROFILE_DUN    ：Dial-up Networking  用于蓝牙拨号上网
MTK_BT_PROFILE_PAN    ：Personal Area Network 蓝牙共享网络。具体说明及限制可参考ID: FAQ05031 ID: FAQ03951
MTK_BT_PROFILE_HFP    ：Hands-free Profile  连接蓝牙耳机、车载蓝牙最常用的协议，用于完成蓝牙基础通话、三方通话的功能。使用手机的无线通信模块，仅在手机和耳机、车载蓝牙之前传输AT控制命令和语音数据。
MTK_BT_PROFILE_A2DP   ：Advanced Audio Distribution Profile 播放音乐最常用的协议，通过音乐播放器听音乐时即会使用该协议将音乐传递到蓝牙耳机。
MTK_BT_PROFILE_MAPC = no     MAP Profile client
MTK_BT_PROFILE_MAPS = no     MAP Profile server 这两项为信息存取服务的两个角色。该协议用于在蓝牙设备见传输短信、彩信和电子邮件信息
MTK_BT_PROFILE_SPP    ：Serial Port Profile 虚拟串口协议。该协议是一个通用的模拟串口协议。Google 自带程序BluetoothChat即使用该协议。该协议通常被用来连接特种蓝牙外设，如特种打印机、指纹识别器等
MTK_BT_FM_OVER_BT_VIA_CONTROLLER = no      FM收听的声音通过BT传送给蓝牙耳机，在MT6628上该宏不能开
MTK_BT_POWER_EFFICIENCY_ENHANCEMENT = yes  对应到BT功率效能方面的feature，维持default设置就好
MTK_BT_PROFILE_AVRCP13 = no
MTK_BT_PROFILE_AVRCP14 = no    AVRCP用于控制音乐播放，如上一曲、下一曲、暂停、播放等。后面的数字都是指AVRCP的版本（1.3和1.4版本），default是AVRCP 1.0
MTK_BT_PROFILE_TIMEC = no    Time profile client
MTK_BT_PROFILE_TIMES = no    Time profile server 目前这两项MP版本未开放使用
```

## [FAQ04112] Android adb shell 无法启动 insufficient permissions for device 解决方案

```
原因是对应的usb device 没用权限访问，需要添加venderid. 
解决办法1：lsusb查看vendorId号，然后在/etc/udev/rules.d/目录下增加（或修改）51-android.rules文件。
增加一条记录：
SUBSYSTEM=="usb", SYSFS{idVendor}=="xxxx", MODE="0666" 其中xxxx是通过lsusb查看得到的值
常见的情况如下，我都列出来了：
# htc
SUBSYSTEM=="usb", SYSFS{idVendor}=="0bb4", MODE="0666"
# Motorola
SUBSYSTEM=="usb", SYSFS{idVendor}=="22b8", MODE="0666"
# Acer 0502
SUBSYSTEM=="usb", SYSFS{idVendor}=="0502", MODE="0666"
# Dell 413c
SUBSYSTEM=="usb", SYSFS{idVendor}=="413c", MODE="0666"
# Huawei 12d1
SUBSYSTEM=="usb", SYSFS{idVendor}=="12d1", MODE="0666"
# LG 1004
SUBSYSTEM=="usb", SYSFS{idVendor}=="1004", MODE="0666"
# Nvidia 0955
SUBSYSTEM=="usb", SYSFS{idVendor}=="0955", MODE="0666"
# Samsung 04e8
SUBSYSTEM=="usb", SYSFS{idVendor}=="04e8", MODE="0666"
# Sharp 04dd
SUBSYSTEM=="usb", SYSFS{idVendor}=="04dd", MODE="0666"
# Sony Ericsson ofce
SUBSYSTEM=="usb", SYSFS{idVendor}=="0fce", MODE="0666"
# ZTE 19d2
SUBSYSTEM=="usb", SYSFS{idVendor}=="19d2", MODE="0666"
解决办法2：
在51-android.rules中只写一句：
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", MODE="0666"
```

## [FAQ04319] 如何修改默认小时制

```
修改文件alps\frameworks\base\packages\SettingsProvider\res\values\defaults.xml
增加代码<string name="time_12_24" translatable="false">24</string>
红色标记表示24小时制，也可以改为12（12小时制）

修改文件alps\frameworks\base\packages\SettingsProvider\src\com\android\providers\settings\DatabaseHelper.java
找到函数 loadSystemSettings()，在函数中增加以下语句：
loadStringSetting(stmt, Settings.System.TIME_12_24, R.string.time_12_24);
```

## [FAQ17417] 添加语言时如何查询该语言对应的language code和country code

```
在添加一种语言时，需要在配置文件中添加这个语言对应的language code和country code, 如何查询语言对应的language code和country code请参考如下方法。

(1)可先参考FAQ03761,其中有介绍google 支持的语言和mtk支持的语言，从中可查询到每种语言对应的language code和country code.
(2)对于当前系统没有支持的语言在上述FAQ中查询不到，可参考下面两个网址去查询。
language code：
https://zh.wikipedia.org/wiki/ISO_639-1
country code：
https://zh.wikipedia.org/wiki/ISO_3166-1
```

## [FAQ18291] country code table

## [FAQ17457] 如何判断系统是否支持一种语言

```
判断系统是否支持某种语言，可参考如下方法。

（1）参考FAQ17417，查询这种语言对应的language code和country code. 如旁遮普语（印度），对应的就是pa_IN(pa是language code, IN是country code);
（2）参考FAQ04009中添加语言的步骤。
1.是否有对应语言的icu资源。（可以看到external\icu\icu4c\source\data下coll、curr、lang、locales、region，zone这些子文件夹中都有pa.txt和pa_IN.txt）
2.系统中是否有对应字库。可以参考FAQ12255看看系统中是否有这种语言的对应字库。
3.在frameworks/base/core/res/res/下是否有对应的values-xx-rYY的文件夹(xx是language code, YY是country code，下同).
4.每个app对应的res目录下面是否有values-xx文件夹或values-xx-rYY文件夹.
5.如果是复杂语言，还需看看是否有对应的字体引擎（FAQ04009最后部分有介绍如何判断是否是复杂语言，判断复杂语言引擎支持情况可参考FAQ12442）。

如果以上回答都是yes,那就表示支持，如需打开它，参考FAQ04009中的第一步将它加在对应配置文件中。如不支持，对着上面步骤看看是缺少什么，对着FAQ04009一步一步添加即可。
```

## [FAQ10002] 如何修改Notifation Action Button的Icon和Text的位置

```
在阿拉伯,波斯等RTL语言下，对于一些含有action button的UI虽然app使用了android:supportsRtl属性，但是仅仅是action之间的位置发生翻转，而每个button的Icon和Text位置却没调换。
比如(下图所示)未接来电的systemui下拉通知栏的icon和text位置没有调换
如果要调整其位置，可以通过setTextViewCompoundDrawables(int viewId, int left, int top, int right, int bottom)函数去实现想要的效果。
下面的修改是在波斯语、阿拉伯语下把action button的图片放到文字的右边。

import java.util.Lcoale;
Notification.java（alps\frameworks\base\core\java\android\app）
private RemoteViews generateActionButton(Action action) {
    final boolean tombstone = (action.actionIntent == null);
    RemoteViews button = new RemoteViews(mContext.getPackageName(), tombstone ? R.layout.notification_action_tombstone : R.layout.notification_action);
    //modify
    String language = Locale.getDefault().getLanguage();
    if (language.equals("ar") || language.equals("fa")) {
        button.setTextViewCompoundDrawables(R.id.action0, 0, 0,action.icon, 0);
    } else {
        button.setTextViewCompoundDrawables(R.id.action0, action.icon, 0, 0, 0);
    }
    //modify
}

如果在其他地方要修改Button或者TextView的image和text的位置，可以直接调用TextView的函数setCompoundDrawables(Drawable left, Drawable top,Drawable right, Drawable bottom)就行。
```

## [FAQ12442] 如何判断复杂语言引擎支持情况

```
复杂语言处理引擎都是按照各个语言字符分别处理的，即如果2种语言字符相同，则他们可以共用一套引擎，比如阿拉伯语、波斯语、乌尔都语使用同一套引擎；印度语、孟加拉语使用一套引擎。
系统在处理字串时先是根据字串编码范围把字串分成若干小段，比如“asbc中国نحنddf”会分成“asbc”、“中国”、"نحن"、“ddf”4个子串，每个字串用一个Script标记这个字串是属于哪种语言。后面再根据这个Script变量分别调用不同的harfbuzz引擎对这些子串进行处理。
如下是KK版本支持的语言引擎接口。
harfbuzz-shaper.cpp(external\harfbuzz_ng\src\hb-old)
const HB_ScriptEngine HB_ScriptEngines[] = {
    // Common
    { HB_BasicShape},
    // Greek
    { HB_GreekShape},
    // Cyrillic
    { HB_BasicShape},
    // Armenian
    { HB_BasicShape},
    // Hebrew
    { HB_HebrewShape},
    // Arabic
    { HB_ArabicShape},
    // Syriac
    { HB_ArabicShape},
    // Thaana
    { HB_BasicShape},
    // Devanagari
    { HB_IndicShape},
    // Bengali
    { HB_IndicShape},
    // Gurmukhi
    { HB_IndicShape},
    // Gujarati
    { HB_IndicShape},
    // Oriya
    { HB_IndicShape},
    // Tamil
    { HB_IndicShape},
    // Telugu
    { HB_IndicShape},
    // Kannada
    { HB_IndicShape},
    // Malayalam
    { HB_IndicShape},
    // Sinhala
    { HB_IndicShape},
    // Thai
    { HB_BasicShape},
    // Lao
    { HB_BasicShape},
    // Tibetan
    { HB_TibetanShape},
    // Myanmar
#ifdef ZAWGYI_SUPPORT
    { HB_ZawgyiShape },
#else
    {HB_MyanmarShape},
#endif
    // GeorgianRecents
    { HB_BasicShape},
    // Hangul
    { HB_HangulShape},
    // Ogham
    { HB_BasicShape},
    // Runic
    { HB_BasicShape},
    // Khmer
    { HB_KhmerShape},
    // N'Ko
    { HB_ArabicShape}
};
JB版本的文件目录external\harfbuzz\src\，结构稍有不同。
PS：如果是新增一种复杂语言，可以先看看这个语言的字符是不是和已经支持的语言字符一样，如果是，则不需新增引擎。
```

## [FAQ09199] 切换到阿拉伯语、波斯等RTL语言音量调节图标没变化

```
这是 google 的 issue, google 也已经在最新的 JB 修正了, 修正的方法如下
1. \alps\frameworks\base\media\java\android\media\AudioService.java
在 handleConfigurationChanged() 增加一行  mVolumePanel.setLayoutDirection(config.getLayoutDirection()); 如下

private void handleConfigurationChanged(Context context) {
    try {
        .......
        mVolumePanel.setLayoutDirection(config.getLayoutDirection());
    } catch (Exception e) {
        Log.e(TAG, "Error retrieving device orientation: " + e);
    }
}
2. \alps\frameworks\base\core\java\android\view\VolumePanel.java 请新增一 API

public void setLayoutDirection(int layoutDirection) {
    mPanel.setLayoutDirection(layoutDirection);
    updateStates();
}
```

## [FAQ08961] 当前语言设置为阿拉伯语时，有的ListView的Item没有右对齐

```
ListView的Item是由TextView组成的，TextView会判断字符串是什么语言，如果是英文就左对齐，如果是阿拉伯语就右对齐。
如果需要使阿拉伯语下这样的TextView右对齐，下面有两点建议：
1、请把这些字串翻译成阿拉伯语，ListView的Item自然会右对齐；
2、如果不想翻译，可以在Adapter的getView方法中判断当前语言，如果当前语言是阿拉伯语，可以设置Item的Gravity属性为RIGHT，大概如下：
String locale = Locale.getDefault().getLanguage();
if(locale.equals("ar")){
   textView.setGravity(Gravity.RIGHT);
}else{
   textView.setGravity(Gravity.LEFT); 
}
```

## [FAQ09127] 为什么输入RTL字符时，光标分成两段

```
首先需要知道RTL语言和LTR语言，RTL(right to left)语言是指这种语言的字符的输入和显示顺序是从右到左的，一般情况下该语言字符串在手机中都会靠右显示，常见的RTL语言如阿拉伯语(ar)，波斯语(fa)，乌尔都语(ur)，希伯来语(he/iw)等；与之对应的，LTR(left to right)语言是指从左到右输入和显示的语言，世界上大多数语言属于LTR语言，常见的英语，中文，意大利语，德语，西班牙语，葡萄牙语等等都是LTR语言。

光标分2个部分的原因是：RTL和LTR语言的显示方向是不一样的，当它们混合输入时会出现光标跳动，比如一开始输入阿拉伯语，方向是从右到左，输入英语时，方向是从左到右，此时光标会跳动到最左边的阿拉伯语上。这种混合输入可以到google网站上去体验一下。
而采用多种语言算法之后，就不会出现这种光标跳动现象了，当输入方向发生变化时，会将光标分为2个部分，分别在需要变化方向的字符的2旁，有一个是主光标，一个是副光标。主光标是根当前字符的输入方向一致的，而副光标是原本的光标位置。
 
因此，这样的设计是为了多种文字混合输入时，给用户较好的体验，并非BUG。
```

## [FAQ10009] 阿拉伯语、波斯语等RTL语言下部分控件位置不对

```
一些RTL语言比如阿拉伯语、波斯语，其layout布局以及Text显示方向是从右到左的，android4.2版本及以后新增属性android:supportsRtl可以实现这种功能。然而对于一下特殊的字符串，比如波斯语和英文混合的字串、纯英文字串以及一些特殊的控件并不能实现从右到左显示。对于这些问题，下面给出一些例子和解法。

 关于supportsRtl的使用可以参考：FAQ08672

1、混合字符或者纯英文下，TextView没有居右。

A、找到其定义的layout文件

用 match_parent替换wrap_content，如果替换后还是没有效果新增

android:textDirection="locale”这个属性。

例如Preference summary英文下没有居右，可以如下修改

frameworks\base\core\res\res\layout\Preference_holo.xml

<TextView android:id="@+android:id/summary"

android:layout_width="match_parent"

……

android:textDirection="locale"

B、如果找不到其layout，可以在code中使用如下函数进行设置

setGravity(Gravity.RIGHT);

setTextDirection(TEXT_DIRECTION_RTL);

例如spinner控件波斯语下英文字串没有居右，可以如下修改

public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {

String language = Locale.getDefault().getLanguage();

if(language.equals("ar")||language.equals("fa")){

   TextView textview =(textview )view;

textview.setGravity(Gravity.RIGHT);

 }

……

2、对于一些控件没有居右或者layout布局错乱的问题

应检查layout的“left/right”布局属性，是否已经改为对应的”start/end”属性。具体例子可以参考FAQ08672。

3、对于一些图片方向不对的问题

对于这些图片需要按照RTL重新设计，然后放到drawable-ldrtl-hdpi文件夹下。比如actionbar的那个竖线，使用的地方如下

<selector xmlns:android="http://schemas.android.com/apk/res/android">

<item android:state_pressed="true"

android:drawable="@drawable/btn_cab_done_pressed_holo_dark" />

<item android:state_focused="true" android:state_enabled="true"

android:drawable="@drawable/btn_cab_done_focused_holo_dark" />

<item android:state_enabled="true"

android:drawable="@drawable/btn_cab_done_default_holo_dark" />

上面那些图片位置在frameworks\base\core\res\res\drawable-hdpi，重新绘制后放到

frameworks\base\core\res\res\drawable-ldrtl-hdpi目录下

4、其他RTL相关的问题可以参考，

FAQ10002： 如何修改Notifation Action Button的Icon和Text的位置

FAQ09199： 切换到阿拉伯语、波斯等RTL语言音量调节图标没变化

FAQ09094： RTL语言下电话号码从右向左显示的问题

FAQ08961：当前语言设置为阿拉伯语时，ListView的Item有的左对齐，有的右对齐

FAQ09127： 为什么输入RTL语言时，光标分成两段显示
```

## [FAQ08672] 如何实现界面布局根据阿拉伯语、波斯语等RTL语言而反转

```
android4.2 新增了RTL布局镜面反射，这种镜面反射其实就是根据语言显示方向调整layout布局，但google只是对少数app进行了设置，比如setting。如果想要在其他应用中使用这特性可以按照如下进行修改：
1、在AndroidManifest.xml声明文件的<application>元素中，添加” android:supportsRtl=true”。
2、把android:targetSdkVersion="16" 改成17。
3、修改应用程序中layout的“left/right”布局属性，改为对应的”start/end”布局。

注意：状态栏比较特殊，如果要发送的通知也可以使用RTL布局，除了修改SystemUI模块的AndroidManifest.xml文件，还需要修改发送通知的ap的AndroidManifest.xml文件。

如修改radiabutton使其有这种效果，可以修改文件
packages\apps\Settings\res\layout\preference_radiobutton.xml
如下地方
<RadioButton
    android:id="@+id/preference_radiobutton"
    android:layout_width="wrap_content"
    android:layout_height="match_parent"
    android:layout_alignParentEnd="true"
    android:paddingStart="30dip"
    android:paddingEnd="20dip"
    android:focusable="false"/>

<TextView android:id="@+id/preference_title"
    android:layout_width="wrap_content"
    android:layout_height="match_parent"
    android:textAppearance="?android:attr/textAppearanceMedium"
    android:layout_alignParentStart="true"
    android:layout_marginStart="9dip"
    android:layout_marginTop="6dip"
    android:layout_marginBottom="6dip"
    android:paddingEnd="60dip"
    android:maxLines="1"
    android:singleLine="true"
    android:ellipsize="marquee"
    android:focusable="false"/>

关于supportsRtl的详细介绍可以浏览如下网页

http://android-developers.blogspot.tw/2013/03/native-rtl-support-in-android-42.html
```

## [FAQ08718] 【TimeZone】如何修改时区的显示名称

```
目前对于有些地区，很多国家会使用一个时区，显示的名称也是一样，比如对于欧洲，很多城市使用“欧洲中部时间”“中欧夏令时”，非洲国家也是类似的。对于有些客户，可能有定制显示需求，对于某些时区，不显示“xx中部时间”，而是显示“xx时间”，比如下面会以荷兰阿姆斯特丹为例，目前在手机Setting中选择“Amsterdam,Berlin”后在Date&Time界面会显示“Central European Summer Time”，下面是修改荷兰语下这个显示为自定义名称的过程。

【Solution】：

时区Europe/Amsterdam目前显示出来的时间是“欧洲中部时间”或“欧洲中部时间”，如果要修改荷兰语下显示为“阿姆斯特丹时间”或其他自定义的显示，请follow下面的修改：

1. 找到时区ID
时区id并不是城市名称，手机显示到时区列表上的时区名称与时区id有映射关系，可以通过查看Settings中的timezones.xml来确定，package/apps/Settings/res/xml-zh/timezones.xml是中文。这样可以找到Amsterdam,Berlin的时区id是Europe/Amsterdam。

2. 修改metaZones.txt文件（android kk external\icu4c\data\misc\
  android L external\icu\icu4c\source\data\misc\
  android M external\icu\icu4c\source\data\misc\）
1)    修改mapTimezones
修改的目的是把时区添加到自己定义的显示规则中，这样通过时区ID  Europe/Amsterdam就可以得到该显示规则Europe_Amsterdam。这个步骤分2步：

a)      定义自己的显示规则名称
         比如我定义了新的规则Europe_Amsterdam， 需要在mapTimezones中添加进去，mapTimezones中顺序是按字母排序的，所以Europe_Amsterdam这个规则要添加到Europe_Central的前面，如下：

Europe_Amsterdam{

}

b)     将要修改的时区从原规则中删除，添加到自定义的规则中
找到要修改的时区，比如Europe/Amsterdam在Europe_Central中，

剪切NL{“Europe/Amsterdam”}，粘贴到自定义的时区显示规则中，如下所示：

Europe_Amsterdam{

NL{“Europe/Amsterdam”}

}

如果此文件中没有包含要修改的时区，那么就需要添加此时区，添加的内容如上面所示，时区前面的两个字母是国家代码。

2)    修改metaZoneinfo
添加meta信息,这样就可以通过显示规则名称Europe_Amsterdam得到meta信息Europe:Amsterdam。

“Europe:Amsterdam”{
{“Europe_Amsterdam”}
}

3. 修改zone/nl.txt文件（adnroid kk external\icu4c\data\
android L external\icu\icu4c\source\data\

android M external\icu\icu4c\source\data\）
不同的txt文件代表的是不同语言，语言和区域代码可通过查询ISO-3166-1和ISO-639标准确定。

定义在界面显示的字串，这样根据之前得到的meta信息可以得到要显示的字串。

同样的，名称是按照字母排序的，所以在Europe_Central前面添加，如下：

“meta: Europe_Amsterdam”{

ld{“夏令时间显示名称”}

ls{“标准时间显示名称”}

}

4. 编译ICU资源
请参考FAQ04011进行编译和测试
```

## [FAQ11960] 印尼语下时间格式显示成hh.mm

```
KK版本系统语言切换到印尼语，发现时间格式显示成hh.mm,如果想要改成hh：mm改如何操作。

这个时间格式来自于底层ICU资源，如下定义
external/icu4c/data/locales/id.txt
gregorian{
    DateTimePatterns{
    "h.mm.ss a zzzz",
    "h.mm.ss a z",
    "h.mm.ss a",
    "h.mm a",
    ……
如果是其他语言有类似问题可以参照修改
```

## [FAQ11512] 语言名称客制化问题

```
Android语言名称定义在external/icu4c/data/lang/各个语言txt文件中 ，如zh.txt(中文简体):
Languages{
    aa{"阿法文"}
    ab{"阿布哈西亚文"}
    ace{"亚齐文"}
……

调用这些字串接口定义在Locale.java（libcore\luni\src\main\java\java\util)，主要函数如下：
(1)获得指定语言环境(locale)下语言名称
public String getDisplayLanguage(Locale locale)

(2)获得系统默认语言环境的语言名称
public String getDisplayLanguage()

(3) 获得指定语言环境(locale)下带有使用国家的语言名称
public String getDisplayName(Locale locale)

(4) 获得系统默认语言环境下带有使用国家的语言名称
public String getDisplayName()
因此如果要客制化语言名称可以有如下几种方法
1、修改ICU资源，如把aa{"阿法文"}改为aa{"阿发闻"}
这个修改需要编译ICU资源才会起效，如何编译可以参考：FAQ04011
2、修改Locale.java相关函数，如修改菲律宾语返回值，可以参考FAQ11034
3、也可以在app层做相关修改，如setting app中的中文定制，具体可以参考FAQ09198

需要注意的是方法1、2的修改可能导致CTS测试fail，有些语言名称是不能修改的，具体可以参考LocaleTest.java(libcore\luni\src\test\java\libcore\java\util)
```

## [FAQ08671] 音频ID3、文本编码问题

```
Android在编码这块主要指的是音频ID3解码和文本解码。
1、  音频ID3解码。
Android默认支持的编码格式有，utf-8、unicode、shiftJIS、gbk(gb2312)、big5、iso8859-1、EUCKR。

2、  文本解码。
Android默认的文本解码使用的是htmlviewer。其编码识别原理是根据文本字符计算各个编码的可信度，可信度高的就会用来解码。这种原理其实是为每种编码建立一个“常用字符表”，然后计算每种编码的匹配度。在计算可信度的时候有一些特殊处理，比如当字符个数比较少(少于10个)，此时可信度非常低，如果文本字符又不是“常用的字符表”中的字符，这样可信度几乎为0。例如，中文txt如果字符个数少于10，且不是“常用字符表”中的字符就会出现乱码。基于其的编码识别的缺陷，MTK在ICS及以后的版本就关闭了htmlviewer对txt文本的识别。需要补充的一些常用编码是支持的，但是解码可信度却不一定高，详情可参考如下：

<a>常用编码列表fCSRecognizers

csdetect.cpp(alps\external\icu4c\i18n)

<b>常用字符表

csrmbcs.cpp(alps\external\icu4c\i18n)

如中文gb18030，commonChars_gb_18030[]
如果需要更好的支持文本解码，建议内置第三方文本解码器。
```

## [FAQ18543] [NW]如何设置CDMA only模式

```
如果要设置为CDMA Only模式，需要进入*#*#3646633#*#* 工模做如下设置：
1. 工模--> C2K IR Setting,选择CDMA Only；然后重启，重新启动后，只会开启CDMA Modem的Radio。
2. 工模--> CDMA Network select，里面可以选择Hybrid / CDMA 1x Only / EVDO Only
```

## [FAQ10020] 一些字符显示不清晰(修改TTF字体文件)

```
这个问题可以通过修改字库解决，方法如下：

1、找到孟加拉语字库Lohit-Bengali.ttf(external/lohit-fonts/lohit-bengali-ttf/)
2、使用字库工具打开上述字库文件。字库工具FontCreater5.6载网址为：    http://so.pc6.com/?keyword=FontCreat&searchType=down
3、Ctrl+F查找$0985这个字形,右键->”编辑”,调整其笔画粗细,如下图所示：
4、修改后可以push到system/fonts下,然后重新开机查看效果

[FAQ12287] 如何修改或添加字库字体
[FAQ09950] 越南语字母ỡ显示为õ
[FAQ04224] KK版本字库文件介绍
```

## [FAQ09896] 动态切换字体过程中内存占用不断增加的解决办法

```
按照如下原DMS文档(现已更新)，实现了切换字体功能
Font Install and Runtime Change On ICS guideline.doc
 
按照参考文档完成此feature之后,发现不断在不同字体之间切换,手机内存占用会不断增加
这是因为typeface的createFromAsset接口有BUG,每调用一次该接口,native memory占用就会增加,这个问题属于Google Bug,目前尚无完美的解决方案,但是可以使用下面的方法work around.
 
[SOLUTION]
1.修改framework中的typeface.java文件
增加以下代码:
import java.util.Hashtable;
 private static final String TAG = "Typefaces";
 private static final Hashtable<String, Typeface> cache = new Hashtable<String, Typeface>();
 public static Typeface get(AssetManager mgr, String assetPath) {
  synchronized (cache) {
   if (!cache.containsKey(assetPath)) {
    try {
     Typeface t = Typeface.createFromAsset(mgr, assetPath);
     cache.put(assetPath, t);
    } catch (Exception e) {
     return null;
    }
   }
   return cache.get(assetPath);
  }
 }
 
2.修改Textview.java,
将Typeface.createFromAsset(...)替换成新加的Typeface.get(...)接口
根据我司提供的文档,需要修改的地方有2处,分别在textview构造函数,与setTextAppearance函数中.
```

## [FAQ08948] 【DateFormat】如何修改设置中待选的日期格式

```
日期格式选择时，弹出窗口中的日期格式是从R.array.date_format_values中拿到的。
文件：package/apps/Settings/res/values/arrays.xml （所有语言都是这个文件）
描述：
 <string-array name="date_format_values" translatable="false">
        <!-- The blank item means to use whatever the locale calls for. -->
        <item></item>
        <item>MM-dd-yyyy</item>
        <item>dd-MM-yyyy</item>
        <item>yyyy-MM-dd</item>
        <item>EE-MMM-d-yyyy</item>
        <item>EE-d-MMM-yyyy</item>
        <item>yyyy-MMM-d-EE</item>
    </string-array>
第一个空的item即为默认的日期格式，请不要修改；
第2-7个对应显示出来的6个日期格式，可以修改，也可以增加新的格式。
 
需要注意的是，在格式中只能用系统能够识别的字符来制定格式，yyyy是年份，MM是月份，dd是日，EE是星期几。
 
相关逻辑：
然后，在DateFormat的getDateFormatStringForSetting方法中，对取得的格式进行了处理，对于每一项都会进行替换处理。
 
比如对于yyyy-MMM-d-EE这个格式，在系统语言为中文时，就会找到
Donottranslate-cldr.xml (mediatek\frameworks\base\res\res\values-zh-rCN)中的下面这一项：
<string name="year_month_day_wday">"%s年 %s %s日, %s"</string>
这样显示到界面上就是“2013年12月31日，星期一”
对于 KK和L ，M版本定义在：
frameworks\base\core\res\res\values-zh-rCN\donottranslate-cldr.xml中的numeric_date_template；

 
对于非中文的其他语言，会调用Donottranslate-cldr.xml (mediatek\frameworks\base\res\res\values)中的对应字符串进行替换。
所以中文和其他语言是不一样的。 
```

## [FAQ17570] [Audio APP]安装多个音乐播放器时，如何将某个播放器设为默认播放器

```
需要修改 
/frameworks/base/services/core/java/com/android/server/pm/PackageManagerService.java
 
共有如下3步：
1：在 systemReady 方法的最后加入 setDefaultMusicPlayer(); 方法的调用
2：后面是实现setDefaultMusicPlayer 这个方法，具体实现代码如下：
 
public void setDefaultMusicPlayer() { 
final String strComponentName = "com.android.music/com.android.music.AudioPreviewStarter";//这是定义希望默认启动的播放器对应有 activity 全名，本例是以 com.android.music 为例
ComponentName defaultLauncher = ComponentName.unflattenFromString(strComponentName);
Log.e(TAG,"defaultLauncher========"+defaultLauncher);
if (defaultLauncher != null) {
Intent intent = new Intent(Intent.ACTION_VIEW);
intent.addCategory(Intent.CATEGORY_DEFAULT);
Uri uri = Uri.parse("file://");
intent.setDataAndType(uri, "audio/mpeg");
List<ResolveInfo> resolveInfoList = queryIntentActivities(intent, intent.getType(), 
PackageManager.GET_INTENT_FILTERS, 0);
if (resolveInfoList != null) {
int size = resolveInfoList.size();
Log.e(TAG,"size++++++++++=="+size);
Log.e(TAG,"defaultLauncher.getPackageName()=="+defaultLauncher.getPackageName());
for (int j = 0; j < size;) {
final ResolveInfo r = resolveInfoList.get(j);
Log.e(TAG,r.activityInfo.packageName+"/ activity: "+r.activityInfo.name);
if (!r.activityInfo.packageName.equals(defaultLauncher.getPackageName())) {
resolveInfoList.remove(j);
size -= 1;
}else{
j++;
}
}
ComponentName[] set = new ComponentName[size];
Log.e(TAG,"size============="+size);
int defaultMatch = 0;
for (int i = 0; i < size; i++) {
final ResolveInfo resolveInfo = resolveInfoList.get(i);
Log.d(TAG, resolveInfo.toString());
set[i] = new ComponentName(resolveInfo.activityInfo.packageName,
resolveInfo.activityInfo.name);
if (defaultLauncher.getClassName().equals(resolveInfo.activityInfo.name)) {
defaultMatch = resolveInfo.match;
}
}
Log.e(TAG,"defaultMatch="+ Integer.toHexString(defaultMatch));
try{ 
IntentFilter filter = new IntentFilter(); 
filter.addAction(Intent.ACTION_VIEW); 
filter.addCategory(Intent.CATEGORY_DEFAULT); 
filter.addDataType("audio/mpeg");//add this line 
Log.e(TAG,"defaultMatch============"+defaultMatch);
addPreferredActivity2(filter, defaultMatch, set,defaultLauncher);
}catch (IntentFilter.MalformedMimeTypeException e) { 
e.printStackTrace(); 
}
}
}
}

public void addPreferredActivity2(IntentFilter filter, int match,ComponentName[] set, ComponentName activity) {
Log.d(TAG,"addPreferredActivity2 is called.");

synchronized (mPackages) { 
Slog.i(TAG, "Adding preferred activity " + activity + ":");
filter.dump(new LogPrinter(Log.INFO, TAG), " ");
mSettings.editPreferredActivitiesLPw(0).addFilter(new PreferredActivity(filter, match, set, activity,true));
mSettings.writePackageRestrictionsLPr(0); 
}
}
 
3: 修改此文件中的 findPreferredActivity 方法，在如下参考行相对位置加入对应代码：
if (always && !pa.mPref.sameSet(query, priority)) {//参考行
//add begin
if(intent !=null && intent.getAction().equals("android.intent.action.VIEW") && intent.getType().equals("audio/mpeg")){
Slog.i(TAG, "Result set NOT change for "
+ intent + " type " + resolvedType);
Slog.v(TAG, "Returning preferred activity: "
+ ri.activityInfo.packageName + "/" + ri.activityInfo.name);
changed = false;
return ri;
}
//add end
Slog.i(TAG, "Result set changed, dropping preferred activity for "
+ intent + " type " + resolvedType);//参考行
if (DEBUG_PREFERRED) {
Slog.v(TAG, "Removing preferred activity since set changed "
+ pa.mPref.mComponent);
}
pir.removeFilter(pa);
// Re-add the filter as a "last chosen" entry (!always)
PreferredActivity lastChosen = new PreferredActivity(
pa, pa.mPref.mMatch, null, pa.mPref.mComponent, false);
pir.addFilter(lastChosen);
changed = true;
return null;
}
```

## [FAQ08273] [Audio Profile]如何设置视频来电的默认铃声

```
背景：
原始设计语音来电铃声和视频来电铃声是一起设置的。即设置的默认铃声同时是语音来电和视频来电的铃声。
 
需求：
只想单独设置视频来电的默认铃声。
 
实现思路：
参考原先来电铃声的设置机制，给视频来电铃声单独设置属性写默认的铃声名称，然后在文件扫描时，判断扫描到的文件是设置的默认视频铃声的文件名，则在database中填写视频来电的键值为此铃声；
 
PS:被设置的铃声首先要存在于系统中，关于如何添加系统铃声请参考”FAQ06323[Audio Profile]如何添加以及删减特定的默认通知铃声，如何设置默认铃声”；
 
[SOLUTION]
 
1，添加Video Call默认铃声的属性：
alps\build\target\product\core.mk中添加“ro.config.video_call”：

PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.config.ringtone=Backroad.ogg \
    ro.config.video_call=VideocallRt.ogg

 
2，添加对扫描到文件的判断是否是默认Vide Call的默认铃声：
alps\frameworks\base\media\java\android\media\mediascanner.java:

1),添加成员变量用做后面的判断：
private String mDefaultRingtoneFilename;
private String mDefaultVideocallFilename;
private boolean mDefaultRingtoneSet;
private boolean mDefaultVideoCallSet;
private static final String RINGTONE_SET = "ringtone_set";
private static final String VIDEOCALL_SET = "videocall_set";

2):添加读取video call默认铃声的系统属性：
private void setDefaultRingtoneFileNames() {
        mDefaultRingtoneFilename = SystemProperties.get(DEFAULT_RINGTONE_PROPERTY_PREFIX
                + Settings.System.RINGTONE);
        mDefaultVideocallFilename = SystemProperties.get(DEFAULT_RINGTONE_PROPERTY_PREFIX
                + Settings.System.VIDEO_CALL);//add this line
...
    }
 
3):添加对扫描到的文件是否是视频来电默认铃声的判断：
参考标有//start modify”和//end modify”中间包含的为添加整段code，"//add this line"和”Modify this line"为添加添加的语句和修改的语句。
并请留意“else if (ringtones && doesSettingEmpty(RINGTONE_SET)&&!videocall) {”中要一定注释掉对VideoCall的设置：

private Uri endFile(){
       boolean isVideoCall = false; //add this line;
       boolean isVoiceCall = false; //add this line, in case the video call and voice call have same ringtone;
.....
 if (notifications &&((mWasEmptyPriorToScan && !mDefaultNotificationSet) ||
                        doesSettingEmpty(NOTIFICATION_SET))) {
                                ....   
//start modify
} else if(ringtones && ((mWasEmptyPriorToScan && (!mDefaultRingtoneSet||!mDefaultVideoCallSet)) || doesSettingEmpty(RINGTONE_SET)|| doesSettingEmpty(VIDEOCALL_SET))) {
                    if (TextUtils.isEmpty(mDefaultRingtoneFilename) ||
                            doesPathHaveFilename(entry.mPath, mDefaultRingtoneFilename)) {
                        needToSetSettings = true;
                         isVoiceCall = true; //add this line
                        /// M: Adds log to debug setting ringtones.
                        Xlog.v(TAG, "endFile: needToSetRingtone=true.");
                    }
                    if (TextUtils.isEmpty(mDefaultVideocallFilename) ||
                            doesPathHaveFilename(entry.mPath, mDefaultVideocallFilename)) {
                        needToSetSettings = true;
                        isVideoCall = true;
                        /// M: Adds log to debug setting ringtones.
                        Xlog.v(TAG, "endFile: needToSetRingtone=true.");
                    }

                } else if (alarms && ((mWasEmptyPriorToScan && !mDefaultAlarmSet) ||
                        doesSettingEmpty(ALARM_SET))) {
                      ...                   
}
 
...
if(needToSetSettings) {
                if (notifications && doesSettingEmpty(NOTIFICATION_SET)) {
                  .....
//start modify
                } else if (ringtones && (doesSettingEmpty(RINGTONE_SET)||doesSettingEmpty(VIDEOCALL_SET)) {
                    if(isVideoCall ){
                     setSettingIfNotSet(Settings.System.VIDEO_CALL, tableUri, rowId);
                    setProfileSettings(RingtoneManager.TYPE_VIDEO_CALL, tableUri, rowId);
                    mDefaultVideoCallSet = true;
                    setSettingFlag(VIDEOCALL_SET);
                    }
                   if(isVoiceCall ){
                    setSettingIfNotSet(Settings.System.RINGTONE, tableUri, rowId);
                   // setSettingIfNotSet(Settings.System.VIDEO_CALL, tableUri, rowId); //modify this line
                    setSettingIfNotSet(Settings.System.SIP_CALL, tableUri, rowId);
                    setProfileSettings(RingtoneManager.TYPE_RINGTONE, tableUri, rowId);
                   // setProfileSettings(RingtoneManager.TYPE_VIDEO_CALL, tableUri, rowId);//modify this line
                    setProfileSettings(RingtoneManager.TYPE_SIP_CALL, tableUri, rowId);
                    mDefaultRingtoneSet = true;
                    setSettingFlag(RINGTONE_SET);
                    }

                    Xlog.v(TAG, "endFile: set ringtone. uri=" + tableUri + ", rowId=" + rowId);
                 //end modify
                }else if (alarms && doesSettingEmpty(ALARM_SET)) {
                   ....
            }
```

## [FAQ13579] [Audio framework]后台播放music，如何判断是哪个app播放

```
这是一个 change feature 的实现
此 feature 的目的是查询当前是哪个 app 正在播放音乐

[SOLUTION]
1: 修改 frameworks\base\media\java\android\media\IAudioService.aidl, 加入方法声明:
String getFocusedPackageName();

2: frameworks\base\media\java\android\media\AudioService.java 中加入方法:
public String getFocusedPackageName(){
    return mMediaFocusControl.getFocusedPackageName();
}

3: MediaFocusControl.java 增加方法
protected String getFocusedpackageName(){
    synchronized(mAudioFocusLock){
    if(mFocusStack.empty()){
        return "";
    }else
        return mFocusStack.peek().getPackageName();
    }
}

4: FocusRequester.java增加方法
public String getPackageName(){
    return mPackageName;
}
 
则上层通过调用 AudioService 的 getFocusedPackageName 接口即可获取到需要的数据
 
相关FAQ:
FAQ12909 [Audio Common]耳机按键功能定制: 单击:播放/暂停音乐，双击:下一首，三击:上一首
FAQ14329 [如何在Framework层互斥两个第三方音乐播放器]
FAQ14660 音量警告提示框选择OK，重启后再按侧键增大音量希望还会弹出音量警告提示框
FAQ15283 [Audio Driver] 手机放音乐时连接音箱, 将音箱音量调到最大时，音乐暂停
```

## [FAQ09402] [Audio App]WMA格式的支持/关闭

```
WMA格式的支持:
1.客户需要跟微软签订license
2.MTK内部查询确认客户有license后，申请patch:
a.在KK版本之前
mediatek/config/$project/projectconfig.mk中开启MTK_ASF_PLAYBACK_SUPPORT= yes
b.在KK版本之后（含）
mediatek/config/$project/projectconfig.mk中开启
MTK_WMA_PLAYBACK_SUPPORT=yes
MTK_SWIP_WMAPRO=yes
 
WMA格式的关闭:
有些客户没有跟微软签订license, 却发现也可以播放 wma 文件, 此时需要通过以下方法关闭 wma 文件的播放支持
到 mediatek/config/common/ProjectConfig.mk 中找到以下两个宏的定义 (KK 版本)
MTK_WMV_PLAYBACK_SUPPORT
MTK_WMA_PLAYBACK_SUPPORT
把它们的值都改为 no
```

## [FAQ18471] 俄罗斯收到Class0短信下拉状态条和锁屏界面显示空白内容

```
1.首先要确认是否用户收到的Class0短信，查看方式在Radiolog中查找CMT，将CMT后面带的数字例如 07919762020033F1240B919752101008F90010616032019201210355F618
复制到PDUspy工具中，粘贴在Manual --》incoming中，然后点Decode。解析出来的画面如下：红色框中显示的就是Class0 message.
 
按照spec 规定class 0 的 SMS 的，表示 只是给用户显示，不能存储。
目前的design没有显示内容和号码和 不能点击的原因，是因为class 0的信息没有存储到数据库中。

在google default code中class0 sms没有弹notification的功能 ，
所以针对这样的问题 ，
一种解决方法，和google 原始的设计 一样，直接 注释 掉 notifyClassZeroMessage ，当有class0 的sms 不在notifycation 里提醒。
 
另一种，如果一定要弹notification的功能，若需要考虑显示的话，则可以考虑显示最近一条的信息。可以考虑参考如下方法修改：

1. 修改MessagingNotification.notifyClassZeroMessage()，将body传递进去
public static boolean notifyClassZeroMessage(Context context, String address, String body) {
2. 并在notification中显示出来，大约在MessagingNotification的1888行
Notification notification = new Notification.Builder(context)
.setContentTitle(address)
.setContentText(body)
.setSmallIcon(R.drawable.stat_notify_sms).build();
3. 修改其调用的地方SmsReceiverService, 大约在676行
MessagingNotification.notifyClassZeroMessage(this, msgs[0]
.getOriginatingAddress(), messageChars.toString());

还有哪些短信类型？？？？？？
PDUSpy工具下载？？？？？？
```

## [FAQ07233] 如何在设置中默认打开EPO，AGPS功能以提高用户体验

```
alps\mediatek\frameworks\base\agps\etc\agps_profiles_conf.xml
  <agps_conf_para
    agps_enable="no"  ==> 改成"yes"
    disable_after_reboot="no" ==> 保持"no"
alps\mediatek\frameworks\base\epo\etc\epo_conf.xml
  <epo_conf_para
   epo_enable="no"  ==> 改成"yes"
   auto_enable="no"  ==> 改成"yes”
```

## [FAQ17726] 如何打开和关闭GMO

```
根据ReleaseNote_for_MT6735M_L1.MP3中的Project_Package_Set_M6735M查看版本是否支持GMO(AP Project(sub)这一列，是否有带G的project，G代表GMO)
DCC上下载文档 《Feature_Option_Info_Table_6.0.xls》查看MTK_GMO相关的宏定义
修改这几个宏定义为no(支持GMO的project默认为yes)
[FAQ15139]如何确认项目是否打开GMO feature(LCA)？
```

## [FAQ14105] L版本打开WITH_DEXPREOPT宏后首次开机仍慢

```
参照 "[FAQ13573]L版本首次开机慢" 打开宏WITH_DEXPREOPT:=true后，首次开机无效果仍然慢；
说明开机之后又去提取预置apk的odex文件(原本应该是在预编译阶段就生成的)；
主要原因是预置apk的Android.mk对32bit和64bit的配置不准确导致。

[SOLUTION]
搜索main log关键字：dex2oat : /system/bin/dex2oat 
▪这条log打印出就代表这个apk有在做dex2oat且是32还是64的指令集

I dex2oat : /system/bin/dex2oat --zip-fd=11 --zip-location=/system/app/***.apk --oat-fd=12 --oat-location=/data/dalvik-cache/arm or arm64/system@app@**@**.apk@classes.dex --instruction-set=arm or arm64 --instruction-set-features=default --runtime-arg -Xms64m --runtime-arg -Xmx512m --swap-fd=13

▪oat-location表示odex文件存储位置
▪Instruction-set表示此apk的primaryCpuAbi对应的指令集(arm对应32bit / arm64对应64bit)


请严格遵守：
1、对于64bit的芯片,若apk只32bit的lib或者只能作为32bit运行，请在预置apk时在android.mk中添加下边的TAG标记此apk为32bit：
LOCAL_MULTILIB :=32 
(比如出现上述做dex2oat arm的log,则需这样设定)

2、而对于有源码无lib库的apk,请注释掉LOCAL_MULTILIB :=32 
(比如出现上述做dex2oat arm64的log,则需这样注释掉)

3、开机之后既提取arm又提取arm64的apk,请设定LOCAL_MULTILIB :=both
(比如出现上述做dex2oat arm以及arm64的log,则需这样设定)

总之，对32bit 和 64bit 的apk做不同处理。

[FAQ13573]L版本首次开机慢
[FAQ14102]L版本开机提示“Android正在升级或启动”
[FAQ13232]L 预置apk
[FAQ13697]L 版本如何将第三方so库打包到apk
```

## [FAQ18076] android 6.0 M userdebug版本执行adb remount失败

```
userdebug版本如果需要remount system分区来push文件debug，不需要重新编译版本disable dm-verity，只需要执行以下adb命令即可。
adb root
adb disable-verity
adb reboot

重新启动后再执行:
adb remount即可把system分区remount成rw。

贵司向system分区push文件后，请不要再adb enable-verity，否则就会无法开机，因此push文件后，system分区数据就发生了变化。

adb disable-verity/enable-verity 命令只能在userdebug模式下使用。user版本不支持关闭dm-verity。
如果您的adb不支持adb disable-verity命令，请更新android sdk platform-tools到最新版本。或直接到以下的link下载最新版的独立adb tool。
http://forum.xda-developers.com/showthread.php?t=2317790

其他相关信息请参考https://source.android.com/security/verifiedboot/index.html
```

## [FAQ18367] [Recovery][Common]Android M 升级出错：Error:Invalid OTA package,missing scatter Installation aborted.

```
Android M 编译差分包的命令有所修改，继续采用L版本的差分包命令会导致错误：Error:Invalid OTA package,missing scatter Installation aborted.

参考文档OTA and Android SD upgrade application note.docx 3.3.4节
M版本编译升级包的命令，注意命令中的-s参数。

./build/tools/releasetools/ota_from_target_files  -s ./device/mediatek/build/releasetools/mt_ota_from_target_files  --block -k <key_path> -i V2_org.zip V4_new.zip   V2_4.zip

注意：
一定要带上-s ./device/mediatek/build/releasetools/mt_ota_from_target_files 

[FAQ18250] [recovery][common]Android M upgrade occurs “Error: Invalid OTA package, missing scatter”
```

## [FAQ02499] Android USER 版本与ENG 版本差异

```
Android USER 版本与ENG 版本的差异, 用户版本与工程版本的差异

[Keyword]
USER ENG user eng 用户版本 工程版本 差异

[Solution]
Google 官方描述: USER/USERDEBUG/ENG 版本的差异, 参考alps/build/core/build-system.html 的详细说明
eng This is the default flavor. A plain make is the same as make eng.
*       Installs modules tagged with: eng, debug, user, and/or development.
*       Installs non-APK modules that have no tags specified.
*       Installs APKs according to the product definition files, in addition to tagged APKs.
*       ro.secure=0
*       ro.debuggable=1
*       ro.kernel.android.checkjni=1
*       adb is enabled by default.
*       Setupwizard is optional
user make user
This is the flavor intended to be the final release bits.
*       Installs modules tagged with user.
*       Installs non-APK modules that have no tags specified.
*       Installs APKs according to the product definition files; tags are ignored for APK modules.
*       ro.secure=1
*       ro.debuggable=0
*       adb is disabled by default.
*       Enable dex pre-optimization for all TARGET projects in default to speed up device first boot-up
userdebug make userdebug
The same as user, except:
*       Also installs modules tagged with debug.
*       ro.debuggable=1
*       adb is enabled by default.
 
MTK 补充说明差异:
(1) Debug/LOG 方面，原则上user 版本只能抓到有限的资讯，eng 可以抓到更多的资讯，Debug 能力更强，推崇使用eng 版本开发测试
*       因ro.debuggable 的差异，eng 版本默认开启了app 的JDWP，以及uart console debug; 相对应的user 版本关闭, 导致在DDMS 上无法看到app process 的列表.
*       MTK System LOG 在ICS 以后，在user 版本默认关闭全部LOG， 在eng 版本中默认打开，以便抓到完整的资讯
*       在eng 版本上，LOG 量 >= user 版本的log 量，一些地方会直接check eng/user 版本来确认是否打印LOG
*       user 版本默认关闭uart, eng 版本默认开启uart
*       在eng 版本上，开启ANR 的predump, 会抓取ftrace，可以得到更多ANR的资讯
*       在eng 版本上，可用rtt 抓取backtrace，可开启kdb 进行kernel debug, 可用ftrace 抓取cpu 执行场景
*       MTK aee 在ENG 版本抓取更多的异常资讯，比如native exception 会抓取core dump 信息
*       eng 版本linux kernel 开启了大量的debug 选项，可以抓取出更多的资讯，如可以使用sysrq-trigger, KDB, User 版本则关闭
 
(2) 性能方面(Performance)，原则上进行性能测试请使用user 版本测试
*       user 版本为提高第一次开机速度，使用了DVM 的预优化，将dex 文件分解成可直接load 运行的odex 文件，eng 版本不会开启这项优化
*       user 版本相关kernel debug 关闭，有利于提高linux kernel 的性能
*       user 版本更少的LOG 打印，更少的debug 代码，以及uart 的关闭，原则上user 版本的性能要优于eng 版本
 
(3) 安全方面(security)的影响
*       eng 版本默认关闭了adb 的PC RSA指纹验证，而user 版本默认开启, 如果没有验证 PC RSA 指纹, adb 连接时将提升devices offline
*       因user/eng 版本设置ro.secure不同，导致user 版本adb 只拥有shell 权限，而eng 版本具有root 权限
*       eng 版本内置了su, adb 具有root 权限, 导致系统的安全性严重受到影响
 
(4) 如何确认user/eng 版本
*       Java 层，check android.os.Build 类中的TYPE 值
*       native 层，property_get("ro.build.type", char* value, "eng"); 然后check value 值
*       Debug 时， adb shell getprop ro.build.type 返回值如果是user 即user 版本，eng 即eng 版本
*       Log 确认,  mobile log/Aplog_xxxxx/versions 中查看ro.build.type 属性
 
(5) 如何编译user/eng 版本
*       默认编译是eng 版本，如果需要编译user 版本，请加入参数 -o=TARGET_BUILD_VARIANT=user 如:
        ./mk -o=TARGET_BUILD_VARIANT=user mt6595_phone new
```

## [FAQ17441] [Recovery][Common]Android M 版本如何升级lk 、preloader ？

```
Android M 版本升级lk 、 preloader 方法。 
 
[SOLUTION]
 
M版本有些平台是默认升级lk和preloader，这些平台有6755,6750,6797等。
有些平台需要修改一些代码来实现。这些平台有6735,6580,6737等。
note：
修改代码等情况，可能导致平台的划分不一定准确，请一定仔细阅读下面所有的内容。
 
判断是否默认升级：
查看MTXXXX_Android_scatter.txt文件。搜索关键字：
is_upgradable
 
一.存在is_upgradable关键字
比如：
- partition_index: SYS19
partition_name: lk
file_name: lk.bin
is_download: true
type: NORMAL_ROM
linear_start_addr: 0xa900000
physical_start_addr: 0xa900000
partition_size: 0x100000
region: EMMC_USER
storage: HW_STORAGE_EMMC
boundary_check: true
is_reserved: false
operation_type: UPDATE
is_upgradable: true
empty_boot_needed: true
reserve: 0x00
 
is_upgradable的值决定是否升级对应分区，true表示升级，false表示不升级。这种情况下lk和preloader是默认升级的，不需要修改文件。但是如果修改了分区表等情况，可能会改变默认的设置，所以这一步一定要确定：preloader，lk和lk2三个分区的is_upgradable都是true，如果为false，请参考FAQ18188修改分区表OTA_Update字段。
 
二.不存在is_upgradable关键字
修改方法：
1、Full OTA update：
修改build/core/makefile
修改前：
$(hide) ./device/mediatek/build/releasetools/mt_ota_preprocess.py $(zip_root) $(PRODUCT_OUT) $(PRODUCT_OUT)/ota_update_list.txt 

修改后： 
$(hide) MTK_LOADER_UPDATE=yes MTK_PRELOADER_OTA_BACKUP=no ./device/mediatek/build/releasetools/mt_ota_preprocess.py $(zip_root) $(PRODUCT_OUT) $(PRODUCT_OUT)/ota_update_list.txt

2、Incremental OTA update：
编译差分升级包的命令加上如下蓝色部分：
./build/tools/releasetools/ota_from_target_files  -s ./device/mediatek/build/releasetools/mt_ota_from_target_files  --block -k <key_path> -i V2_org.zip V4_new.zip   V2_4.zip
```

## [FAQ18251] [Recovery][common] Android M Adoptable SD卡无法在recovery mode识别和使用

```
Android M 版本，当外置的SD卡被Adoptable 之后，即Format As internal Storage，此时，如果把升级包置于SD卡，进入recovery mode后是无法找到升级包并正常升级的。
[SOLUTION]
首先，外置SD卡可以被Adoptable 这个功能，是Android M 引入的一个new feature，其次，在被Format As internal Storage之后，SD卡会被加密并被Format成Ext4格式，而在recovery mode 是无法访问这时的SD卡，这个是Google原生的做法，MTK维持Google的做法，所以无法在recovery mode是无法挂载Adoptable后的SD的，谢谢！

这种情况下，如果要实现OTA升级，强烈建议您把升级包放入/data/ 下面，谢谢！

相关可参考：
FAQ17442
[Recovery][Common]Android M 版本data加密后升级包放入/data分区如何升级？
```

## [FAQ10991] 泰语、缅甸语等复杂语言圈圈问题

```
一些复杂语言如泰语、缅甸语、印地语，经常会看到一些带有虚线圈圈字符。这是一种正常的处理机制。对于那些不能单独存在的字符，在显示时额外添加虚线圈，以提供对于这些字符的含义的一些提示，使得这些字符在显示时能够有增加适当的位置，避免字符的无限叠加等问题。如在Windows7上的office2010中缅甸语也有同样的行为，如下图:
大多

MTK在JB版本引入了这种机制，如果想去掉圈圈这种机制，可以按照如下方法：
泰语：
JB、JB2版本：
修改文件external\harfbzz\src\harfbuzz-thai.c
注释如下代码
about line 418
    case tR:
//    charIndex[(*outputIndex)] = inputIndex;
//     outputBuffer[(*outputIndex)++] = errorChar;
        charIndex[(*outputIndex)] = inputIndex;
        outputBuffer[(*outputIndex)++] = currChar;
        break;
about line 426
    case tS:
//        if (currChar == CH_SARA_AM) {
//            charIndex[(*outputIndex)] = inputIndex;
//            outputBuffer[(*outputIndex)++] = errorChar;
//        }
        charIndex[(*outputIndex)] = inputIndex;
        outputBuffer[(*outputIndex)++] = currChar;
        break;
JB3、JB5版本由于变形引擎不同，默认是不带圈圈的，如果想使用这种机制，可以修改：
frameworks/base/core/jni/android/graphics/TextLayoutCache.cp
about line 820
switch (script) {
    case HB_SCRIPT_MYANMAR:
        return &GraphiteLayoutShaper::getInstance();
    case HB_SCRIPT_BENGALI:
    case HB_SCRIPT_THAI:  ////新增此句
     harfbuzzShaper.setShapingScript(getHBScriptFromHBNgScript(script));
        return &harfbuzzShaper;
缅甸语：
在KK,L,M版本上修改文件
 民间缅甸语  修改harfbuzz_ng\src\hb-old\harfbuzz-zawgyi.c文件，将该文件中
        //  reordered[len] = Mymr_C_DOTTED_CIRCLE;
        //   len += 1;
        屏蔽一共2处
 官方缅甸语 修改 harfbuzz_ng\src\hb-old\harfbuzz-myanmar.c文件，将该文件中
        //       reordered[len] = C_DOTTED_CIRCLE;
        //       ++len;
        屏蔽一共1处。
在JB版本上：
对于官方缅甸语JB3、JB5版本由于变形引擎不同，默认是不带圈圈的，如果想使用这种机制，可以修改：frameworks/base/core/jni/android/graphics/TextLayoutCache.cp
about line 820
switch (script) {
    case HB_SCRIPT_MYANMAR:
       //#ifndef ZAWGYI_SUPPORT
       // return &GraphiteLayoutShaper::getInstance();
           // #endif
           //注释上述红色代码

需要注意的是，去掉圈圈机制可以会导致一些字符变形问题，如连续输入上下标、母音等字符，后面的字将不断往前面的字上面叠。同时由于该solution没能做严格的测试，而有可能存在其他潜在的风险。在不能单独存在的字符单独出现时去除虚线圈的做法，并不合理，并可能存在其他问题。如果要去掉，需要评估风险。

缅甸语比较特殊，有官方(Paduak)和民间(Zawgyi)之分，二者不同的是编码机制不同，因此这2种缅甸语的字串翻译、处理引擎、字库都是不同的。如果遇到问题可以先按照如下方法排查：
1、 如果字串中出现一个圈圈可能是个别字串翻译问题，可以参考FAQ09106解决。
2、 如果浏览网页或者界面中出现大量圈圈、这可能是网页内容或者翻译和字库不匹配导致。如大多缅甸语网站是民间缅甸语的，如果使用官方的缅甸语引擎和字库访问的话，就会出现这个问题。
3、目前MTK仅仅在JB3及以后的版本可以支持民间缅甸语，但是需要申请patch(L和M上不必申请patch)，具体patch可以查看FAQ03761备注。

[FAQ09106] 如何去掉界面中缅甸语圈圈(JB,JB2)
```

## [FAQ18513] M版本如何关闭或打开log

```
關閉所有log
简单的说你可以执行如下两步:
關閉所有log
adb shell xlog filter-set off
然後
adb shell logcat -c

下面是具体的：
adb shell xlog filter-set off

開啟所有log
adb shell xlog filter-set on

開啟verbose等級以下的log
adb shell xlog filter-set verbose

開啟debug等級以下的log
adb shell xlog filter-set debug

開啟info等級以下的log
adb shell xlog filter-set info

開啟warn等級以下的log
adb shell xlog filter-set warn

開啟error 等級以下的log
adb shell xlog filter-set error
```

## [FAQ17683] 如何调整CPU corenum, freq, policy

```
cpufreq控制结点位于 /sys/devices/system/cpu/cpu0/cpufreq/
C:\Users\mtk71247>adb shell
root@NOBLEX:/ # cd sys/devices/system/cpu/cpu0/cpufreq
cd sys/devices/system/cpu/cpu0/cpufreq
root@NOBLEX:/sys/devices/system/cpu/cpu0/cpufreq # ls
ls
cpuinfo_cur_freq： 当前cpu正在运行的工作频率
cpuinfo_max_freq：该文件指定了处理器能够运行的最高工作频率 （单位: 千赫兹）
cpuinfo_min_freq ：该文件指定了处理器能够运行的最低工作频率 （单位: 千赫兹）
cpuinfo_transition_latency：该文件定义了处理器在两个不同频率之间切换时所需要的时间  （单位： 纳秒）
scaling_available_frequencies：所有支持的主频率列表  （单位: 千赫兹）
scaling_available_governors：该文件显示当前内核中支持的所有cpufreq governor类型
scaling_cur_freq：被governor和cpufreq核决定的当前CPU工作频率。该频率是内核认为该CPU当前运行的主频率
scaling_driver：该文件显示该CPU正在使用何种cpufreq driver
scaling_governor：通过echo命令，能够改变当前处理器的governor类型
scaling_max_freq：显示当前policy的上下限  （单位: 千赫兹）需要注意的是，当改变cpu policy时，需要首先设置scaling_max_freq, 然后才是scaling_min_freq
scaling_setspeed：如果用户选择了“userspace” governor, 那么可以设置cpu工作主频率到某一个指定值。

                             只需要这个值在scaling_min_freq 和 scaling_max_freq之间即可。
root@NOBLEX:/sys/devices/system/cpu/cpu0/cpufreq #

1、查看当前CPU支持的频率档位
root@NOBLEX:/sys # cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies              
1300000 1235000 1170000 1040000 819000 598000 442000 299000
root@NOBLEX:/sys #
2、查看当前支持的governor（手机型号可能略有不同）     
root@NOBLEX:/sys # cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors
sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors                
ondemand userspace powersave interactive performance
performance表示不降频，
ondemand表示使用内核提供的功能，可以动态调节频率，
powersvae表示省电模式，通常是在最低频率下运行，
userspace表示用户模式，在此模式下允许其他用户程序调节CPU频率。

root@NOBLEX:/sys # 
3、查看当前选择的governor
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
interactive
root@NOBLEX:/sys #

4、查看系统支持多少核数
root@NOBLEX:/ # cat sys/devices/system/cpu/present
cat sys/devices/system/cpu/present
0-3
root@NOBLEX:/ # 

5、全开所有cpu ，在实际设置时，还需要（有root权限才可以设置）

adb shell "echo 0 > /proc/hps/enabled" (关闭cpu hotplug)
adb shell "echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor" (固定最高频)
echo 1 > /sys/devices/system/cpu/cpuX/online
X表示(0~3，不同平台CPU core 数是不一样的)
例：6735平台
root@NOBLEX:/ # echo 1 >sys/devices/system/cpu/cpu1/online
echo 1 >sys/devices/system/cpu/cpu1/online
root@NOBLEX:/ # echo 1 >sys/devices/system/cpu/cpu2/online
echo 1 >sys/devices/system/cpu/cpu2/online
root@NOBLEX:/ # echo 1 >sys/devices/system/cpu/cpu3/online
echo 1 >sys/devices/system/cpu/cpu3/online

6、设置频率(可以先cat 出来当前的频率有哪些)
C:\Users\mtk71247>adb shell "cat /proc/cpufreq/cpufreq_ptpod_freq_volt"
[0] = { .cpufreq_khz = 1300000, .cpufreq_volt = 113750, .cpufreq_volt_org = 1250
00, },
[1] = { .cpufreq_khz = 1235000, .cpufreq_volt = 110000, .cpufreq_volt_org = 1231
25, },
[2] = { .cpufreq_khz = 1170000, .cpufreq_volt = 106250, .cpufreq_volt_org = 1206
25, },
[3] = { .cpufreq_khz = 1040000, .cpufreq_volt = 98750,  .cpufreq_volt_org = 1150
00, },
[4] = { .cpufreq_khz = 819000,  .cpufreq_volt = 95000,  .cpufreq_volt_org = 1100
00, },
[5] = { .cpufreq_khz = 598000,  .cpufreq_volt = 95000,  .cpufreq_volt_org = 1050
00, },
[6] = { .cpufreq_khz = 442000,  .cpufreq_volt = 95000,  .cpufreq_volt_org = 1000
00, },
[7] = { .cpufreq_khz = 299000,  .cpufreq_volt = 95000,  .cpufreq_volt_org = 9500
0, },

adb shell "echo 0 >proc/cpufreq/cpufreq_oppidx"

设置后再cat 看一下当前的设置是否成功
adb shell "cat proc/cpufreq/cpufreq_oppidx"
[MT_CPU_DVFS_LITTLE/0]
cpufreq_oppidx = 0
        OP(1300000, 113750),
        OP(1235000, 110000),
        OP(1170000, 106250),
        OP(1040000, 98750),
        OP(819000, 95000),
        OP(598000, 95000),
        OP(442000, 95000),
        OP(299000, 95000),

C:\Users\mtk71247>
    
7、查看当前状态有多少个CPU
adb shell cat sys/devices/system/cpu/online
0-3
```

## [FAQ13573] L版本首次开机慢

```
首次开机慢的原因：
一 L版本默认开启了加密功能，影响开机时间。
    请参考FAQ关闭加密功能。
    [FAQ14128]L版本如何关闭默认加密

二 L 版本首次开机会提取所有预置apk的odex文件，花费比较多时间。
    请参考FAQ修改为预编译时提取apk的odex文件。
    [FAQ14131] L版本预编译提取apk的odex文件，如何修改？
    [FAQ14105] L版本打开WITH_DEXPREOPT宏后首次开机仍慢

三 如果开机之后，发现单个APP优化的时候还比较长，请参考FAQ：
    [FAQ14117]单个APP优化时间过长的问题 

四 如果开机时间还不理想，建议关闭patch oat功能，请参考FAQ：
    [FAQ14132] 开启WITH_PREODEX之后，如何减少第一次开机之后data分区的大小 

五 如果遇到eng版本make命令生成不了odex文件，请参考FAQ:
    [FAQ15081] eng版本make命令生成不了odex的说明

实际测试情况：
使用手机：mt6752 L user版本
测试情况：
1 关闭WITH_DEXPREOPT且开启手机加密
首次开机时间：4:40
2        开启WITH_DEXPREOPT且关闭手机加密
首次开机时间：2:16
上述首次开机时间是mtk内部52手机测试时间，仅供参考。
首次开机时间和贵司具体预置的apk的数量有关。
请知悉，谢谢~
注意：
1 请不要预置太多apk，尽量减少不必要的apk，太多apk 会导致开机慢。
相关FAQ：
[FAQ14102]L版本开机提示“Android正在升级或启动”
[FAQ13232]L 预置apk
[FAQ13697]L 版本如何将第三方so库打包到apk
```

## [FAQ05755] 如何定位花屏和界面错乱等绘制异常的问题？

```
在如下3个大的check步骤中，请分别按照每一步的操作来进行排查；如果贵司有定位到某一个问题点，请在提eService时，将问题排查过程写清楚，并提供相应的资料到eService附件中，以便MTK做进一步分析。

 

1.通过DDMS或GAT tool获取异常界面的屏幕截图

[Android 5.0版本之前]DDMS 截图方法如下：Device --> Screen capture，点击Screen capture，就能抓到当前刷到LCM 屏上的那帧数据,或者通过Eclipse中的DDMS工具的screen capture功能，点击操作面板上的“照相机”图标即可。

=>如果屏幕截图是ok的，那么问题点就在LCM driver或timing，具体问题要具体分析。

=>如果屏幕截图not ok，那么你需要进入第2步去获取并查看FrameBuffer中的数据。

[Android 5.0版本及以后]

Android L版本上抓取到的DDMS截图，不是ovl output，而是GPU composer之后的画面。

若要抓取ovl output，可以输入如下命令

adb shell

system/bin/lcdc_screen_cap  /data/fb.bin

 

2.获取FrameBuffer中的数据

 

对于android 4.1及以后的版本，通过如下方法抓取FrameBuffer中的数据：

先做如下操作，再dump framebuffer数据

先进入手机中Settings->Developer options->Disable HW overlays

再勾选Disable HW overlays

 

抓取framebuffer 数据：
adb shell
cat /dev/graphics/fb0  > /data/fb.bin
然后将fb.bin adb push出来，通过工具查看fb.bin

=>如果此步骤的屏幕截图是ok，那说明是LCM controller做overlay时出了问题。

需要把寄存器值打出来(保存在kernel log中)，再抓kernel log做进一步分析

打印寄存器的值：

请在当前刷屏时，将LCM controller寄存器打印出来，寄存器打印命令如下：

adb shell

echo reg:lcd>sys/kernel/debug/mtkfb

这条命令会将LCM controller的寄存器打印到kernel log中

抓kernel log的方式：要么开启mobile log，要么单独用adb命令抓取kernel log；

用adb命令抓取kernel log的方法是：adb shell cat /proc/kmsg > kernel_log.txt

如果分析问题原因是出在这一步，遇到困难时，请将抓取的资料都提供到eService附件中。

=>如果此步骤的屏幕截图not ok，那么就需要进入第3步，抓取layerdump。

 
3、抓取layerdump

在异常界面下，手机连接usb，执行抓取layerdump，抓取的方法根据android的版本不同而不同，下面会分别列出不同版本的抓取方法：

android 4.0~4.4的版本，分别介绍在windows环境下和linux 环境下如何抓取layerdump

在Windows系统环境下，将如下内容copy到新建文本文件中，然后保存文件为SF_layerdump_all.bat 

保持手机连接usb并且在异常界面下，在电脑端双击鼠标执行该脚本(请在Windows系统下执行)，就会在脚本所在路径下生成一个文件SF_layerdump_all

将SF_layerdump_all和复现问题的mobile log一并提供到eService附件中。

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SET raw=%1
SET layerdump=%2

IF "%raw%"=="" SET raw=0
IF "%layerdump%"=="" SET layerdump=-1

adb shell setprop debug.sf.layerdump.raw %raw%
adb shell setprop debug.sf.layerdump %layerdump%
adb shell dumpsys SurfaceFlinger > SF_layerdump_all.log
adb shell mkdir /data/SF_dump
adb shell mv /data/*.png /data/SF_dump
adb shell mv /data/*.i420 /data/SF_dump
adb shell mv /data/*.yv12 /data/SF_dump
adb shell mv /data/*.RGBA /data/SF_dump
adb shell mv /data/*.RGB565 /data/SF_dump
rmdir /S /Q SF_layerdump_all
md SF_layerdump_all
move SF_layerdump_all.log  SF_layerdump_all
adb pull /data/SF_dump SF_layerdump_all/
adb shell rm /data/SF_dump/*

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

注意：如果异常画面是动态的，不是那种静止不动的画面，那么可以尝试多执行几次layerdump，尽量争取能抓到发生问题时的画面的layerdump

如果不方便在Windows系统下抓取layerdump，那么就在linux系统的Terminal 下，按照如下步骤执行下面的指令:

在复现问题前，下如下这条命令，做设置并打开layerdump的开关：

adb shell setprop debug.sf.layerdump.raw 1

adb shell setprop debug.sf.layerdump -1

在即将开始复现问题前，先将下面的指令准备好，在复现问题的画面，敲回车执行这条命令，就是做layerdump的动作，

如果复现问题的画面是动态的，请多下几次这条命令，尽量把复现问题的画面dump下来

adb shell dumpsys SurfaceFlinger >SF_layerdump_all.log

执行了上面的第3条命令之后，会在手机的/data/SF_dump目录下生成一些xxx.png或*.i420,*.yv12,*.RGBA,*.RGB565等文件，请把data/SF_dump这个目录pull出来提供给我们，还有SF_layerdump_all.log文件也一并需要提供。

android 5.0及以后的版本，在windows环境下如何抓取layerdump

在Windows系统环境下

若异常画面是静态稳定的，将如下内容copy到新建文本文件中，然后保存文件为SF_bqdump_L.bat

@echo off

adb shell rm /data/SF_dump/*
adb shell setprop debug.bq.dump "@surface"

adb shell "dumpsys SurfaceFlinger" > SF_bqdump_all.log

adb shell setprop debug.bq.dump ""

rmdir /S /Q SF_bqdump_all
md SF_bqdump_all
move SF_bqdump_all.log SF_bqdump_all
adb pull /data/SF_dump SF_bqdump_all/
adb shell rm /data/SF_dump/*

echo "Please view dump files in folder 'SF_bqdump_all'"
pause

若异常画面是一闪而过的，则需用如下脚本dump画面刷新过程的几十帧画面，下面是设置30帧：SF_cont_bqdump_L_30.bat

复现问题后，双击执行下面的脚本，接着按命令行提示“按电脑任意键继续”，然后等几秒钟，系统会自动dump复现过程的所有帧到指定目录

@echo off

adb shell rm /data/SF_dump/*

:: Modified this line to set surface count,default is 30
adb shell setprop debug.bq.dump "@surface#30"

adb shell "dumpsys SurfaceFlinger > /dev/null"

pause

adb shell setprop debug.bq.dump "@surface"

adb shell "dumpsys SurfaceFlinger" > SF_bqdump_all.log

adb shell setprop debug.bq.dump ""

rmdir /S /Q SF_bqdump_all
md SF_bqdump_all
move SF_bqdump_all.log SF_bqdump_all
adb pull /data/SF_dump SF_bqdump_all/
adb shell rm /data/SF_dump/*

echo "Please view dump files in folder 'SF_bqdump_all'"
pause

注意：抓取到layerdump后，请将layerdump的所生成的文件SF_layerdump_all(在Linux环境下就是手机的data/SF_dump目录和SF_layerdump_all.log文件)和复现问题的mobile log一并提交到eService上来。 

 

抓到layerdump之后，根据layerdump的结果，再做下一步分析；

如果layerdump看到的目标画面not ok，则参考如下FAQ做进一步确认，看是app本身的问题还是UI framework绘制的问题；

FAQ10366  如何抓取View Hierarchy for UI Automator?
```

## [FAQ14389] Feature Table加载原理和调试方法

```
不同branch的feature table的位置可能略有不同，在修改和调试过程中，可能对于加载机制有所疑惑
 
[DESCRIPTION]
 
   1  Feature Table文件的位置：   vendor/mediatek/proprietary/custom/<project>/hal/sendepfeature/<sensor_name>/config.ftbl.<sensor_name>.h
   因为历史原因，有的会位于vendor/mediatek/proprietary/custom/<project>/hal/imgsensor/<sensor_name>/config.ftbl.<sensor_name>.h
  
   2  如何确定Feature Table的位置究竟在哪里？
    vendor/mediatek/proprietary/hardware/matkcam/v1/common/paramsmgr/feature/custom/Android.mk
    此文件是如何编译feature table静态库的makefile.
    会有类似如下的语句：
    ifeq ($(wildcard $(MTK_PATH_CUSTOM)/hal/sendepfeature), )
       MY_CUST_FTABLE_PATH +=  $(MTK_PATH_CUSTOM_PLATFORM)/hal/sendepfeature
    endif
    这说明使用的是hal/sendepfeature目录里面的feature table文件。
   
   3 Feature Table文件是如何被编译的？
      如上面的makefile,  它的执行是：
      在指定的目录中寻找feature table文件，并把这些头文件加上#include 字样写到一个中间头文件custgen.config.ftbl.h，此中间头文件会被custom.cpp包含，最终编译到libcam.paramsmgr.feature.custom.a中.
   
 define my-all-config.ftbl-under
$(patsubst ./%,%, \
 $(shell find $(1) -maxdepth 1 \( -name "config.ftbl.*.h" \) -and -not -name ".*") \
 )
endef

 MY_CUST_FTABLE_FILE_LIST := $(call my-all-config.ftbl-under, $(MY_CUST_FTABLE_PATH))

LOCAL_MODULE := libcam.paramsmgr.feature.custom
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
INTERMEDIATES := $(call local-intermediates-dir)
# custom feature table all-in-one file
MY_CUST_FTABLE_FINAL_FILE := $(INTERMEDIATES)/custgen.config.ftbl.h
LOCAL_GENERATED_SOURCES += $(MY_CUST_FTABLE_FINAL_FILE)
$(MY_CUST_FTABLE_FINAL_FILE): $(MY_CUST_FTABLE_FILE_LIST)
 @mkdir -p $(dir $@)
 @echo '//this file is auto-generated; do not modify it!' > $@
 @echo '#define MY_CUST_VERSION "$(MY_CUST_VERSION)"' >> $@
 @echo '#define MY_CUST_FTABLE_FILE_LIST "$(MY_CUST_FTABLE_FILE_LIST)"' >> $@
 @for x in $(MY_CUST_FTABLE_FILE_LIST); do echo "#include <`basename $$x`>" >> $@; done

#-----------------------------------------------------------
include $(BUILD_STATIC_LIBRARY)

  
  4 如何快速调试feature table?
  最终feature table静态库会被编译到libcam.paramsmgr.so中。
  具体的编译为：
 
 touch vendor/mediatek/proprietary/hardware/mtkcam/v1/common/paramsmgr/feature/custom/custom.cpp && \
 mmm -j24 vendor/mediatek/proprietary/hardware/mtkcam/v1/common/paramsmgr/ 2>&1 | tee ft.lib.log && \
 mmm -j24 vendor/mediatek/proprietary/<platform>/hardware/mtkcam/v1/common/paramsmgr 2>&1 | tee ft.so.log
   最后把生成的libcam.paramsmgr.so 根据32位或者64位push到设备的/system/lib目录或者/system/lib64目录中。
   一般，目前camera app使用的是32位的目录/system/lib.
  因为此动态库是mediaserver加载，用如下命令重启mediaserver来重新加载feature table:
  adb shell stop media && adb shell start media
 
  如果是调试camera app, 请先关闭camera app, 避免app缓存了feature table信息导致调试不生效。
 
  5 从log中如何查看feature table是否生效？
   您可以在log中搜索MtkCam/ParamsManager来确定是否生效，也可以搜索"s8Symbols="来确定加载的是否是指定sensor的feature table.
   "s8Symbols="的log信息来源于Feature.extern.cpp queryCustomFeature函数。
 
  6  深入了解feature table的机制：
   请在vendor/mediatek/proprietary/hardware/mtkcam/v1/common/paramsmgr/feature/custom/Android.mk中增加LOCAL_CFLAGS += -E 来获取custom.cpp预处理后feature table头文件的信息。
  编译feature table静态库，最终会保存在out/target/product/<project_name>/obj/STATIC_LIBRARIES/libcam.paramsmgr.feature.custom_intermediates/custom.o
 
 
 可以看出，就是把一些数据加到数组中，最后提供给外部一个query的函数来获取。
```

## [FAQ18051] M版本开机时间优化

```
在升级到M版本之后，谷歌在camera新增了一个叫“media.camera.proxy”的service，在开机过程中会去连接该service。
当连接不上时会try 5次，持续5秒左右。影响开机的performance。
 
如下是连接不上的Log：
01940 01-01 08:35:59.563987   222   222 I ServiceManager: Waiting for service media.camera.proxy...
02086 01-01 08:36:00.564399   222   222 I ServiceManager: Waiting for service media.camera.proxy...
02294 01-01 08:36:01.564777   222   222 I ServiceManager: Waiting for service media.camera.proxy...
02387 01-01 08:36:02.565194   222   222 I ServiceManager: Waiting for service media.camera.proxy...
02494 01-01 08:36:03.565630   222   222 I ServiceManager: Waiting for service media.camera.proxy...
 
可以打开/frameworks/av/services/camera/libcameraservice/CameraService.cpp
找到pingCameraServiceProxy这个函数
将
sp<IBinder> binder = sm->getService(String16("media.camera.proxy"));
改为
sp<IBinder> binder = sm->checkService(String16("media.camera.proxy"));
```

## [FAQ11485] [SELinux Debug]权限(Permission denied)问题如何确认是Selinux 约束引起？

```
android KK 4.4 版本后，如果发现进程无法访问某些文件，无法连接socket 等问题，并且发现errno 是EPERM(Operation not permitted) 或者 EACCES (Permission denied), 如何确认此类问题是因为SELinux 约束引起？
 
[Keyword]
android, SELinux, Permission denied, 访问限制,  权限问题
 
[Solution]
在Android KK 4.4 版本后，Google 有正式有限制的启用SELinux, 来增强android 的安全保护。
SELinux 分成enforcing mode 和 permissive mode, enforcing mode 会强制性限制访问; 而permissve mode 只审查权限, 但不限制, 即不会产生实质性影响.
 
KK 版本, Google 只有限制的启用SELinux, 即只有针对netd, installd, zygote, vold 以及它们直接fork 出的child process 使用enforcing mode, 但不包括zygote fork的普通app.

L  版本后, Google 全面开启SELinux, 所有的process 都使enforcing mode， 影响面非常广.
 
 
另外为了限制user 版本root 权限，针对su 有做特别的处理，可以参考FAQ android KK 4.4 版本后，user 版本su 权限严重被限制问题说明
 
目前所有的SELinux check 失败，在kernel log 或者android log(L版本后)中都有对应的"avc:  denied" 或者 "avc: denied"的LOG 与之对应。反过来，有此LOG，并非就会直接失败，还需要确认当时SELinux 的模式, 是enforcing mode 还是 permissve mode, 通常在LOG 上带有 permissive = 1 即是permissive mode, 否则permissve = 0 即是enforcing mode.
 
如果问题容易复现，我们可以先将SELinux 模式调整到Permissive mode，然后再测试确认是否与SELinux 约束相关.
在ENG 版本中:
adb shell setenforce 0
 
如果设置成permissive mode 后问题依旧，说明还有其他的权限问题约束，否则就是SELinux 方面的问题。
 
[相关FAQ]
[FAQ11414] android KK 4.4 版本后，user 版本su 权限严重被限制问题说明
[FAQ11486] 在Kernel Log 中出现"avc: denied" 要如何处理？
[FAQ11484] 如何设置确认selinux 模式
[FAQ11483] 如何快速Debug SELinux Policy 问题
```

## [FAQ04300] 如何预置APK

```
1, 如何将带源码的 APK 预置进系统？

2, 如何将无源码的APK预置进系统？

3, 如何预置APK使得用户可以卸载，恢复出厂设置时不能恢复？

4, 如何预置APK使得用户可以卸载，并且恢复出厂设置时能够恢复？

 [SOLUTION]

一、如何将带源码的APK预置进系统？

1)     在 packages/apps 下面以需要预置的 APK的 名字创建一个新文件夹，以预置一个名为Test的APK 为例

2)     将 Test APK的Source code 拷贝到 Test 文件夹下，删除 /bin 和 /gen 目录

3)     在 Test 目录下创建一个名为 Android.mk的文件，内容如下：

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := Test

include $(BUILD_PACKAGE) 

4)     打开文件 build/target/product/${Project}.mk （其中 ${Project} 表示工程名）

将 Test 添加到 PRODUCT_PACKAGES 里面。

5)     重新 build 整个工程

 

二、如何将无源码的 APK 预置进系统？

1)     在 packages/apps 下面以需要预置的 APK 名字创建文件夹，以预置一个名为Test的APK为例

2)     将 Test.apk 放到 packages/apps/Test 下面

3)     在  packages/apps/Test 下面创建文件 Android.mk，文件内容如下：

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Module name should match apk name to be installed

LOCAL_MODULE := Test

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(LOCAL_MODULE).apk

LOCAL_MODULE_CLASS := APPS

LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)

4)     打开文件 build/target/product/${Project}.mk （其中 ${Project} 表示工程名）

将 Test 添加到 PRODUCT_PACKAGES 里面。

5)     将从Test.apk解压出来的 so库拷贝到alps/vendor/mediatek/${Project}/artifacts/out/target/product/${Project}/system/lib/目录下，若无 so 库，则去掉此步；

6)     重新 build 整个工程

注：Google在KK上修改protection Level为System的permission控管机制

如果App使用System Level的permission，需要預置到/system/priv-app底下 (原在/system/app)。

举例来讲：

关于获取副SD卡的写入权限的案例，App需要在AndroidManifest.xml宣告WRITE_MEDIA_STORAGE permission获取副卡的写入权限



 

(Ref: KK/alps/frameworks/base/core/res/AndroidManifest.xml)

已知android.permission.WRITE_MEDIA_STORAGE属于SystemOrSignature level的permission，定义如下：



 

KK上，您需要采用以下方法，获取该permission：

修改Android.mk，增加LOCAL_PRIVILEGED_MODULE := true，以声明app需要放在/system/priv-app下。

 

三、如何预置APK使得用户可以卸载，恢复出厂设置时不能恢复？

1)     在 packages/apps 下面以需要预置的 APK 名字创建文件夹，以预置一个名为Test的APK为例

2)     将 Test.apk 放到 packages/apps/Test 下面；

3)     在  packages/apps/Test 下面创建文件 Android.mk，文件内容如下：

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Module name should match apk name to be installed

LOCAL_MODULE := Test

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(LOCAL_MODULE).apk

LOCAL_MODULE_CLASS := APPS

LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_CERTIFICATE := PRESIGNED

LOCAL_MODULE_PATH := $(TARGET_OUT_DATA_APPS)

include $(BUILD_PREBUILT)

4)     打开文件 build/target/product/${Project}.mk （其中 ${Project} 表示工程名）

将 Test 添加到 PRODUCT_PACKAGES 里面。

5)     重新 build 整个工程

注意：这个比不能卸载的多了一句

LOCAL_MODULE_PATH := $(TARGET_OUT_DATA_APPS)

 

四、如何预置APK使得用户可以卸载，并且恢复出厂设置时能够恢复？

有两种方法：

方法一：预置apk到system/vendor/operator下面

具体做法如下：

在packages/apps下面以需要预置的 APK 名字创建文件夹，以预置一个名为Test的APK为例：

1)     将Test.apk 放到 packages/apps/Test 下面；

2)     在packages/apps/Test下面创建文件 Android.mk，文件内容如下：

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Module name should match apk name to be installed

LOCAL_MODULE := Test

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(LOCAL_MODULE).apk

LOCAL_MODULE_CLASS := APPS

LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_CERTIFICATE := PRESIGNED

LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/operator/app

include $(BUILD_PREBUILT) 

3)     打开文件 build/target/product/${Project}.mk （其中 ${Project} 表示工程名）， 将 Test 添加到 PRODUCT_PACKAGES 里面

4)     重新 build 整个工程

 

方法二：使用MTK_SPECIAL_FACTORY_RESET，再配合.keep_list / .restore_list

为了让用户在将预置的 APK 卸载后，恢复出厂设置时能恢复，敝司做了一个 Feature，但在ALPS.GB.TDFD.MP.V1.7和 ALPS.GB.FDD2.MP.V4.7版本后支持，若贵司版本低于此版本，请申请 Patch ALPS00092543；

大致的做法是：
  - 在vendor/mediatek/project_name/artifacts/out/target/product/project_name/system目录下新建一个名为appbackup的文件夹，将该应用的apk文件copy到appbackup文件夹下
  - 在mediatek/config/project_name/ProjectConfig.mk文件中添加定义：MTK_SPECIAL_FACTORY_RESET=yes
   - 在vendor/mediatek/project_name/artifacts/out/target/product/project_name/data/app下创建一个.restore_list，并且在其中添加语句：
/system/appbackup/xxx.apk（注意，.restore_list中的每一行都要以"/system” 开头）

当卸载了data/app下的apk后，再恢复出厂设置，系统会从 .restore_list 中读取apk的名字，然后从 appbackup 文件中把apk重新拷贝到data/app下，从而恢复data/app下已经卸载了的apk。

同时，还需要在vendor/mediatek/project_name/artifacts/out/target/product/project_name/data/app目录下创建一个空文件，命名为.keep_list(.keep_list的用途是，如果安装了A,B,C三个APK到DATA，在恢复出厂设置时，想要将A保留，那么就将A写入到.KEEP_LIST,这样，A会被保留，B,C会被删除。如果没有这个文件，那么所有的APK都会被保留。具体可以参考FAQ03437和FAQ05341）。

以上操作过程，DCC 上面也有相应的文档可供参考，文档的名字叫： Android SD upgrade application note.docx，里面有一项：MTK special factory reset，就详细地介绍了以上操作步骤。

注：该方法从kk开始不建议使用，原因：从KK版本开始，DVM取dex文件的路径变成了绝对路径，而PMS和installd用的都是文件路径，如果用MTK_SPECICAL_FACTORY_RESET配合.restore_list的方式恢复apk的话，这种上下不sync会导致一些问题，比如：恢复出厂设置后三方应用报错、恢复出厂设置后user版本move to phonestorage报错、多次恢复出厂设置开机提示"Android系统正在升级"等。
```

## [FAQ14128] L版本如何关闭默认加密

```
L版本手机默认加密，那如何关闭默认加密呢?
  
[SOLUTION]
 关闭加密功能有两种情况：

1      How to disable default encryption in your own image

(1)    Modify fstab.{ro.hardware} in ‘out’ folder

alps\out\target\product\[project]\root\ fstab.{ro.hardware}

Set the flag back to encryptable for /data

(2)    Re-pack boot.img

make ramdisk-nodeps; make bootimage-nodpes

(3)    Download the new boot.img by flashtool


2         How to disable default encryption in your codebase

a)        Modify fstab.{ro.hardware} in your codebase

device\mediatek\ [project]\ fstab.{ro.hardware}

If the project doesn’t have it own fstab.{ro.hardware} . Please create it

Modify device.mk to use the modified fstab.{ro.hardware} .

Set the flag back to encryptable for /data
b)        Re-build boot.img

make bootimage

c)        Download the new boot.img by flashtool
```

## [FAQ04464] [USB]如何修改USB连接后的默认功能

```
如何修改USB连接后通知栏中默认选择的功能

M版本：
在M版本上，手机连接PC，PC上能显示出MTP，但不能访问存储。默认的功能还是charging only。
Android M 版本Follow 的是Google Default Charging Only的行为，不建议修改。

L版本：
修改：
/device/mediatek/common/device.mk

# default usb function
ifeq ($(strip $(MTK_MASS_STORAGE)),yes)
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage
//修改上面成想要的功能，如 ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp
else 
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp //这里也同步修改 
endif
修改后，需要重新完全编译。先执行make clean 再 make all

KK及以前版本：

以默认功能为MTP为例，可在main.mk中，使
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp
```

## [FAQ11901] 【Partition】客制化分区Partition问题汇总

```
客制化Partition的需求主要就是调整分区size和新增分区，目前MOL系统针对客制化分区的FAQ有很多个并且过于分散，本FAQ主要针对目前已有的FAQ进行汇总，同时也汇总了DCC上需要参考的相关文档。
 
如果有分区客制化的需求，请首先到DCC搜索以下几份文档参考:
(1)Partition Layout Introduction and Customization_V1.pptx
(2)MT6582_Partition_Layout_Introduction_and_Customization_V2.pptx
(3)How_to_Add_an_Image_Partition.ppt
(4)How to add a ext4 partition_MT6572.pptx
(5)How to add a ext4 partition_MT6572_AOSP.pptx
(6)How to add a ext4 partition _MT6589（JB）（customer）.pptx
(7)How to add a UBIFS partition.pptx

基本上参考这几份文档就比较明确如何做分区客制化操作了。

相关的FAQ汇总如下:
(1) 分区含义介绍
[FAQ03559][Storage]MTK platform partition meaning 
(2) 添加raw data分区
[FAQ04465]【partition】如何在77或89平台上添加raw data分区 

(3) emmc添加ext4分区
[FAQ04466]【partition】如何在JB平台上添加ext4分区 

(4) nand flash添加UBIFS分区
[FAQ06763][Storage]如何在mt6572 UBIFS 上创建新分区 

(5) nand flash添加FAT分区
[FAQ04352][Storage]如何实现在nand上创建一个FAT分区

(6) 分区大小设定
[FAQ06257]Flash上新建分区的大小限定
[FAQ04658]【partition】android\cache\userdata三个partition大小设定 
[FAQ11957] 【Partition】一套代码多个项目只有一个分区表，如何调整不同项目的Partition Size

(7) 修改分区表
[FAQ04503]【partition】partition_table中各sheet的名称的含义
[FAQ11445]【Partition】修改了分区表文件partition_table_MT65XX.xls，但是没有生效 
[FAQ09996]同一套代码实现不同的项目使用不同的客制化分区表 

(8) 去掉内置T卡分区
[FAQ04137][Storage]如何将emmc上的内置sdcard拿掉 
[FAQ06774]ICS\ICS2\JB版本上如何去掉内置SD卡
```

## [FAQ05616] [BMT]采用Fuel Gauge可能出现的几种电量现象及解释

```
首先应该熟悉两个变量，bat_volt_check_point是UI上面显示的值。
gFG_capacity_by_C,库仑计计算的电量值.也等于SOC的值.
公式 DOD1 = DOD0 + (-Car/Qmax).
DOD1对应当前的电量值.
DOD0对应初始的电量值.
Car 为t时间内, 流过Rfg电阻电流的电量.
Qmax为电池的容量.
下面几种情况会更新DOD0的值，
1.开机头10S.
2.插拔USB.
3.电池充满的状态
4.电池容量为15%和0%的情况

正常情况下如果，库仑计获取的初始电量DOD0的值比较准确，
那么，gFG_capacity_by_c的值会很准，
实际上，gFG_capacity_by_c跟实际的电量会有点小偏差。不过该值
会在充电过程中与实际电量同步起来。譬如充电过程中是在100%
不充电过程中是在15%和0%
 
[PLATFORM]
MT6575 MT6515 MT6577 MT6517  MT6589
 
 
请结合
alps\mediatek\platform\mt6589(mt6575/mt6577)\kernel\driver\power\
mt6320_battery.c
mt6575_battery.c
mt6577_battery.c
中mt6575_battery_update或是mt6320_battery_update来理解.

采用Fuel gauge方案。
1.充电情况
A.充电到99%，可能需要等上一段比较长的时间才能到100%.
----->采用FG的计算电量的变量gFG_capacity_by_C先到达100，而实际上，电池还没有充满，此时会
先将UI显示即Bat_Volt_Check_point定格在99.直到电池满足充满条件时，才会让Bat_Volt_Check_point
值变成100，并在UI上面显示100，此时底层的值为gFG_capacity_by_C以及Bat_Volt_check_point为100.
上层会show满的图片，并停止充电。
电池充满的条件是，进入top_off mode,并且充电电流小于200mA，这个值具体看软件的定义。

B.充电从90%(可能是其他值)到100%需要的时间比较长
----->Battery充电进入硬件的CV阶段，此时充电电流减小。对于库仑计的方式来计算电量，
DOD1 = DOD0 + Car/Qmax，Car = I*t，每增加一%，如果电流恒定，那么电量增加的时间是相等，在CC阶段，电流比较大，每增加1%的时间，
所需要的时间比较短，在CV阶段，电流减小，每增加1%的时间就会变长。
当battery 充满即满足charging full的条件。此时电量会每10S，Bat_Volt_check_point增加1%，在UI上面显示也会相应每10S增加1%一直到100%.
假设FG电量的方式gFG_capacity_by_c为96,电池满足充满的条件，此时，
Bat_volt_check_point(即UI显示)会每10S增加1，当Bat_volt_check_point为100时，
此时会调用FGADC_SW_RESET_parameter,直接将DOD1变成0，也即是
gFG_capacity_by_c变成100.
 
C.Recharging
----->电池充满后，会停止充电，此时系统由电池来供电，当电量低于4.11时，此时
又会重新充电，但是，UI上面会一直显示100%，假设这个时候拔掉USB，这个时候
电量会从100%每1min down 1%去syc FG的电量。
最差的情况，如果FG的电量变成96%，那么4min后，UI显示就变成96.
 

2.不充电情况
A.出现在20或者其他值，很快下降到15%，或者是在15%处停留时间比较久。
---->
这是因为15%是同步点，当电池真实电量成为15%，FG计算电量方式会同步到15%.
 
B.出现在8%或者其他值，然后很快掉到1%.
---->
当实际的电量达到0%，也即电池电压的值小于3.4V，此时，UI上面会每10S，下降1直到
0%，而FG的电量也会每10S，update一次，直到0.
 
C.1%停留的时间比较久.
---->
当FG的计算方式先达到0%,那么UI上面会保持为1%，直到真实的电池容量变为0，也即是
电池电压小于3.4V
 
以上的情况都是软件的正常处理流程.初始的电量DOD0获取正确, 电量就会准确.
而当有点小偏差，那么就会出现上述的一些情况.
```

## [FAQ05745] user版本进行OTA升级时如何抓取升级过程的log

```
【eng版本的log】
In recovery mode
    adb pull /tmp/recovery.log
Reboot to normal mode
    /cache/recovery/last_log

【user版本的log】
方法一：
In recovery mode
目前没有办法在user版本也看到recovery.log，目前的办法是
直接用eng版本的recovery.img替换user版本的recovery.img，然后抓取log。
Reboot to normal mode
在user版本也会产生/cache/recovery/last_log，但是可能会不能用adb pull出来！目前的办法是做完recovery，reboot到normal mode后，重新烧boot.img，用eng版本的boot.img替换user 版本的boot.img，然后将log pull出来！

方法二：
    升级或者恢复出厂设置后，手机断电，参考FAQ05169[Storage]如何从手机上readback任意分区的image回来？将cache分区回读，并且mount，得到cache/recovery目录的log。
```

## [FAQ03442] [Recovery]如何在recovery mode下抓取LOG

```
1、在recovery mode下,升级动作之后 adb pull /tmp/recovery.log

如果是KK版本：
2、在nomal mode下 adb pull /cache/recovery/last_log_r

如果是KK之后的版本：
2、在nomal mode下 adb pull /cache/recovery/last_log

此两种方法均可

如果是user版本：请参考：

FAQ05745：user版本进行OTA升级时如何抓取升级过程的log
```

## [FAQ18460] 低电提示提示一次后就不再弹出

```
手机在弹出HUN(head-up notification)低电提示后不充电继续使用，之后没有再弹出HUN提示低电。

此现象是Google默认设计，用户将某条HUN滑动收缩起来，HUN所在App在短期内发送的下一条HUN将不以HUN方式提醒用户. 用这种方式记录用户短期行为，避免再次骚扰用户.
```

## [FAQ18236] [Android M] M版本 bluedroid蓝牙问题分析需要哪些log及如何抓取

```
M版本开始使用google bluedroid stack原生架构
L版本用的是MTK blueangel stack 架构


[SOLUTION]
1. common 问题需要log: mtklog, hcilog.
注意:
(1)蓝牙的main log 需要打开更多的debug level 才能抓到，打开方式有2种：
a:把手机etc/bluetooth/bt_stack.conf文件pull 出来，把debug level 相关项都设置成6，
原路径push 覆盖， 看看modify time 是否是当时push的时间，再adb reboot.
b:请提交ES 来获取可以配置debug level的APK.
(2)Hcilog仍在“设置”中的“开发者选项”，勾选“启用蓝牙HCI信息收集日志”功能，hci log 保存在mtklog/btlog 路径下。
(3)Hcilog在蓝牙关开后会重新生成新的log, 所以对于蓝牙多次开关测试引起的问题，需要提供前面多份的hcilog.
(4)Hcilog的查看工具请下载安装：http://www.fte.com/support/download.aspx?mode=update&iid=1w

2. A2DP 播放声音（音乐，提示音，按键音,触屏音等）卡顿，无声,杂音等异常问题需要log: mtklog, hcilog, audiodump（请参考FAQ03727）
3. HFP SCO modem语音电话引起的杂音，卡顿，无声等异常问题需要log: mtklog, hcilog, vmlog（请参考FAQ03727）
4. HFP SCO 微信/QQ/skype/line 语音，和voip 网络电话等 引起的杂音，卡顿，无声等异常问题需要log: mtklog, hcilog, audiodump（请参考FAQ03727）
5. 当确认到是firmware contronller 问题时还需要log: air sniffer log(请DCC 下载Ellisys User Manual.pptx)
```

## [FAQ18459] 通话记录显示Unknown

```
问题描述：从平台拨打一个已经存在通话录里的联系人，在InCallUI界面，刚开始显示的信息还是存储的联系人的具体信息，但当通话接通的瞬间，InCallUI界面显示为Unknown，在通话结束后CallLog中存储的也是Unknown的信息。

关键Log分析：

1.在对应的radio.log中查看电话接通瞬间ECPI的返回信息

06-21 15:09:55.268856 976 994 D AT : AT< +ECPI: 1,6,0,1,0,0,"",128,""
06-21 15:09:55.268880 976 994 D AT : RIL_URC_READER Enter processLine:+ECPI: 1,6,0,1,0,0,"",128,""

如果是这种log，则说明是SIM卡开通了号码隐藏服务，后面就check拨打端和接听端SIM卡是否有开通对应的服务，进行对比测试。

Line 8225: 06-21 15:10:22.545596 976 994 D AT : AT< +ECPI: 1,6,0,1,1,0,"38163520502",145,""
Line 8226: 06-21 15:10:22.545619 976 994 D AT : RIL_URC_READER Enter processLine:+ECPI: 1,6,0,1,1,0,"38163520502",145,""

如果是这种log，则说明是本身平台处理的问题，需要继续看步骤2。

2.在radio.log中继续查看CLIR

Line 1899: 06-28 07:28:36.556097  1491  1491 D ImsPhoneCallTracker: [ImsPhoneCallTracker][Phone1] dial clirMode=0

如果是支持VOLTE，注册上IMS网络，则会看到这些log信息，clirMode=0则是问题所在；如果不是注册的IMS网络，则看不到这些log；这两种情况下都需要看步骤3分析对应的代码。

3.查看CallTracker中dial函数异常点（红色部分）

注册上IMS网络，需要查看ImsPhoneCallTracker.java中dial 函数：

非IMS网络，需要查看GSMCallTracker.java中的dial函数：

解决方法：

将步骤3中的红色部分作出如下修改：

将 CommandsInterface.CLIR_DEFAULT修改为CommandsInterface.CLIR_SUPPRESSION
```

## [FAQ18450] 3rd camera ap 画面亮度偏暗

```
3rd camera ap, e.g. google hangouts, whatsapp, skype 等preview or 视频通话时画面偏暗
 
在log中search "preview-fps-range="
12092 12569 V CameraFramework: set Key = preview-fps-range, value = 30000,30000
preview-fps-range=30000,30000;preview-fps-range-values=(5000,30000),(20000,20000),(30000,30000);
 
可以看到3rd ap 通过api: setPreviewFpsRange(30000, 30000)把fps固定在30, 此时camera AE会把shutter固定在30ms
 
在光线不好的环境下, 30ms shutter会让画面偏暗
 
[SOLUTION]
fps和画面亮度两者不可兼得:
 
1, fps固定在30, 在暗处画面偏暗是预期的行为, 牺牲画面亮度保证fps是3rd ap预期的行为, 不需要修改
2, feature table:
KEY_AS_(MtkCameraParameters::KEY_PREVIEW_FPS_RANGE), 
SCENE_AS_DEFAULT_SCENE(
ITEM_AS_DEFAULT_("5000,30000"), 
ITEM_AS_USER_LIST_(
"(15000,15000)", 
"(24000,24000)", 
"(30000,30000)",
 
改为:
 
KEY_AS_(MtkCameraParameters::KEY_PREVIEW_FPS_RANGE), 
SCENE_AS_DEFAULT_SCENE(
ITEM_AS_DEFAULT_("5000,30000"), 
ITEM_AS_USER_LIST_(
"(5000,30000)",
 
让平台只支持dynamic fps (5~30), 此时3rd ap下preview-fps-range=(30000,30000)不起作用
 
在暗处时牺牲了fps来提高画面亮度
```

## [FAQ18297] 为何Monkey测试时MTKlogger UI界面不可用

```
adb shell setprop ro.monkey true, MTKlogger UI界面不可用，start/stop按钮消失

这是敝司特意的设计，设计的目的是：防止monkey 测试过程中，误打开mtklogger，误关闭mtklogger导致抓不到log。
所以在monkey测试中，mtklogger UI是不让操作的，重启后可恢复。
```

## [FAQ18143] L/M版本首次/非首次开机时间优化

```
首次开机时间优化可先参考[FAQ13573]L版本首次开机慢  进行修改。

非首次开机时间优化需要check以下阶段是否存在问题：
Zygote阶段：
一般有两个耗时点：
预加载class/resource的时间。需要确认是否有添加很多系统资源。
这期间是否有很多GC动作；

SystemServer阶段：
（1）PMS scan package阶段，PMS扫描apk的时间与预置apk的数量及大小有关，预置apk的size越大、数量越多扫描时间会越长。一般建议如果一个apk的elapsed time大于100ms需要删除该预置apk。
01-09 08:30:01.487   750   750 D PackageManager: scan package: /system/framework/framework-res.apk , end at: 16266ms. elapsed time = 87ms.
01-09 08:30:01.499   750   750 D PackageManager: scan package: /system/framework/mediatek-res , end at: 16278ms. elapsed time = 11ms.
01-09 08:30:01.515   750   750 D PackageManager: scan package: /system/priv-app/BackupRestoreConfirmation , end at: 16295ms. elapsed time = 15ms.
01-09 08:30:01.544   750   750 D PackageManager: scan package: /system/priv-app/CDS_INFO , end at: 16323ms. elapsed time = 28ms.
01-09 08:30:01.574   750   750 D PackageManager: scan package: /system/priv-app/CalendarProvider , end at: 16354ms. elapsed time = 31ms.
。。。。。。
01-09 08:30:04.957   750   750 D PackageManager: scan package: /system/app/VoiceUnlock , end at: 19736ms. elapsed time = 29ms.
01-09 08:30:04.986   750   750 D PackageManager: scan package: /system/app/YGPS , end at: 19765ms. elapsed time = 28ms.
01-09 08:30:05.015   750   750 D PackageManager: scan package: /system/app/webview , end at: 19794ms. elapsed time = 29ms.
（2）PMS dexopt阶段：开机时apk作Running dexopt的操作比较耗时，需要参考[FAQ14131] L版本预编译提取apk的odex文件进行修改。
（3）开机过程出现camera I2C transfer timeout，需要排查camera加载慢的原因。
[292:mediaserver][mt-i2c]ERROR,481: id=0,addr: 10, transfer timeout
（4）Check各个service开机初始化过程的耗时情况，如果某个service初始化过程耗时，需要check这个具体service的行为。

BootAnimation阶段：
如果log中有打印Waiting for service media.camera.proxy... ，可以参考[FAQ18051]M版本开机时间优化进行修改；
当开机动画包中图片很多或占内存很大时会出现lowmemory的现象，导致开机较慢。建议将开机动画包bootanimation.zip中part1部分的图片控制在10张以内。

Keyguard阶段：check锁屏绘制是否存在延时
//画锁屏
01-09 08:30:17.710   891   891 D KeyguardViewMediator: handleShow
//锁屏画完
01-09 08:30:17.787   891   891 D KeyguardViewMediator: handleShow exit

相关FAQ：
[FAQ13573]L版本首次开机慢
[FAQ14128]L版本如何关闭默认加密
[FAQ18051]M版本开机时间优化
```

## [FAQ14812] 如何快速对系统重启问题进行归类

```
当手机发生系统重启，即导致kernel重启的异常时，会在手机中的/data/aee_exp目录下保存异常重启的db。工程师可以通过GAT的bug report功能，或者直接通过adb pull，把对应的db从手机中抓回来。进一步，对于异常重启的类型，需要通过GAT工具解开db档案（解开方式参考MTK-online上的文档GAT_User_Guide(Customer).docx之5.1的部分），对里面的SYS_KERNEL_LOG/SYS_LAST_LOG/SYS_REBOOT_REASON 内容进行解析，才能知道具体的重启的类型。
一般来说，导致kernel重启的异常重启，包括Kernel Panic, Watchdog Timeout, Hardware Reboot这三种类型。一个完整的Kernel Panic，其db解开来会包含如下的 档案：

[SOLUTION]
1. Kernel Panic
即linux kernel发生了无法修复的错误，从而导致panic。通过查看SYS_KERNEL_LOG的内容，kernel Panic进一步可以分为如下几类：
a. 普通的data abort。从SYS_KERNEL_LOG中，可以检索到如下的info:

Unable to handle kernel NULL pointer dereference at virtual address XXXXXXXX

如上的XXXXXXXX代表某个非法地址。这种类型是最多的。

b. oom 主动触发的panic。从SYS_KERNEL_LOG中，可以检索到如下的info:

Kernel panic - not syncing: Out of memory and no killable processes...

此种类型的panic一般是某个process或者APK耗尽了memory资源，从而kernel主动触发的panic重启。对于这种类型的重启，强烈建议工程师把如上的info填写到eService 的标题中，这样MTK可以对eService进行一次到位的分配。

c. undefined instruction，未定义指令异常。从SYS_KERNEL_LOG中，可以检索到如下的info:

Internal error: Oops - undefined instruction

此类异常较为少见，可能是CPU/DRAM 不稳定或者受干扰导致的问题。

d. bad mode异常，即PC处于一个无效的virtual address。从SYS_KERNEL_LOG中，可以检索到如下的info:

Bad mode in Synchronous Abort handler detected
...
[14820.652408]-(1)[682:VSyncThread_0][<ffffffc000088f90>] bad_mode+0x78/0xb0

此类异常较为少见，可能的原因是stack错乱，或者未注册回调函数引起。


2. watchdog 超时

a. 底层看门狗超时。从SYS_KERNEL_LOG中，可以检索到如下的info:

for arm64 platform
PC is at aee_wdt_atf_info+0x4c8/0x6dc
LR is at aee_wdt_atf_info+0x4c0/0x6dc

for arm32 platform
PC is at aee_wdt_irq_info+0x104/0x12c
LR is at aee_wdt_irq_info+0x104/0x12c

此类异常较为常见，多见于底层频繁irq/bus卡死，导致kicker无法被schedule，从而引起watch dog触发中断，引导系统进入FIQ处理流程，最终call到BUG触发重启。

b.上层hang_detect 触发看门狗超时。从SYS_KERNEL_LOG中，可以检索到如下的info:

[ 2131.086562] (0)[77:hang_detect][Hang_Detect] we should triger HWT ...
...

[ 2180.467416]-(0)[77:hang_detect]PC is at aee_wdt_irq_info+0x154/0x170

[ 2180.467426]-(0)[77:hang_detect]LR is at aee_wdt_irq_info+0x154/0x170
...

此异常类型较为常见，多见于GPU/SD卡/eMMC 无法满足surfacelinger/system_server的通讯需求，从而导致上层卡死，进而主动触发看门狗超时重启。对于这种类型的重启，强烈建议工程师把如上的Hang_Detect关键字填写到eService 的标题中，这样MTK可以对eService进行一次到位的分配。

3. Hardware Reboot

hardware reboot是watch dog直接发出reset信号，导致整个系统重启；在重启之前，并没有触发任何异常处理流程。一般情况下，hardware reboot对应的db不会有SYS_KERNEL_LOG 可以排查，只能从SYS_LAST_KMSG获知异常之前kernel的动作，以及从SYS_REBOOT_REASON 获知异常时的CPU寄存器值和其它参数。
从ZZ_INTERNAL 档案，可以知道发生了hardware reboot
Hardware Reboot,0,0,99,/data/core/,0,,HW_REBOOT,Fri Jul  3 14:31:53 CST 2015,1

就上面所罗列的诸多异常重启，工程师务必把如上黄底部分的log片段拷贝到eService的Description栏位，并把红色的关键字填写到eService的标题中，这样，可以大大加快eService的分配流程。
```

## [FAQ11737] 添加一些语言后，切换到该语言手机自动重启，添加ICU资源

```
新增一些语言比如 哈萨克斯坦语(kk)、奥罗莫语(om)等，添加成功后在Setting语言列表中切换到该语言，
手机重启且一直停留在开机动画界面。查看log可以发现如下特殊语句：
01-01 00:12:34.687  4365  4365 E ICU     : Couldn't find ICU yesterday/today/tomorrow for om_ET
01-01 00:12:34.687  4365  4365 W dalvikvm: Exception Ljava/lang/AssertionError; thrown while initializing Llibcore/icu/LocaleData;
01-01 00:12:34.687  4365  4365 W dalvikvm: Exception Ljava/lang/AssertionError; thrown while initializing
[SOLUTION]
 
原因一些语言的icu资源不全导致，external\icu4c\data\locales\om.txt确少fields项，下面是英语的部分定义，可以先把这段加进去验证，验证ok后需要做做翻译。

fields{
    day{
        dn{"Day"}
        relative{
            "-1"{"Yesterday"}
            "0"{"Today"}
            "1"{"Tomorrow"}
        }
    }
    dayperiod{
        dn{"AM/PM"}
    }
    era{
        dn{"Era"}
    }
    hour{
        dn{"Hour"}
    }
    minute{
        dn{"Minute"}
    }
    month{
        dn{"Month"}
        relative{
            "-1"{"Last month"}
            "0"{"This month"}
            "1"{"Next month"}
        }
    }
    second{
        dn{"Second"}
    }
    week{
        dn{"Week"}
        relative{
            "-1"{"Last week"}
            "0"{"This week"}
            "1"{"Next week"}
        }
    }
    weekday{
        dn{"Day of the Week"}
    }
    year{
        dn{"Year"}
        relative{
            "-1"{"Last year"}
            "0"{"This year"}
            "1"{"Next year"}
        }
    }
    zone{
        dn{"Time Zone"}
    }
}
```

## [FAQ09662] 如何实现字体切换功能

```
一、 实现单个字体切换

         可以参考DMS文档：Font Install and Runtime Change On ICS guideline.doc

二、多个字体(多个字体一套风格，比如泰语字库、英文字库)

实现这个功能其实是采用了系统在加载字体时会为每个字体指定加载路径的原理，只要把我们要替换的字库文件编译到系统目录下，然后修改要替换的字体的路径就可实现这一功能。

  1、添加字库

1)把对应的字库文件拷贝到frameworks/base/data/fonts下

2)修改fonts.mk (frameworks/base/data/fonts)

           a、ICS
     PRODUCT_COPY_FILES := \
       ......
      frameworks/base/data/fonts/NewFontFile.ttf:system/fonts/DroidSansThai-My.ttf \

          frameworks/base/data/fonts/NewFontFile.ttf:system/fonts/ Roboto-Regular-My.ttf \

           b、JB

           PRODUCT_PACKAGES:= \

        DroidSansThai-My.ttf \

         Roboto-Regular-My.ttf \

         ......

4)对于JB2，JB3，JB5，kk还需修改android.mk

           ifeq ($(MINIMAL_FONT_FOOTPRINT),true)

           ……
else # !MINIMAL_FONT
font_src_files +=

          ……

          DroidSansThai-My.ttf \
       Roboto-Regular-My.ttf \

5)对于GB版本只需修改Android.mk
           copy_from := \ 
           DroidSansThai-My.ttf \
            Roboto-Regular-My.ttf \
            ……
    注：请不要修改fallback_fonts.xml等xml文件，这个添加仅仅是让系统把字库编译到fonts目下。

 2、修改ttf加载路径

 #include <cutils/properties.h>//引入头文件

 SkFontHost_android.cpp（alps\external\skia\src\ports）

    static void getFullPathForSysFonts(SkString* full, const char name[]) {

    static char args[PROPERTY_VALUE_MAX];//定义变量

       property_get("persist.sys.usedmyfont", args, "no");//获取persist.sys.usedmyfont配置

       full->set(getenv("ANDROID_ROOT"));

       full->append(SK_FONT_FILE_PREFIX);

       if(strstr(args,"yes")){

            if(strstr(name,"DroidSansThai")){

                full->append("DroidSansThai-My.ttf");

             }else if(strstr(name,"Roboto-Regular")){

                full->append("Roboto-Regular.ttf");

             }else{

               full->append(name);

             }

        }else{

            full->append(name);

        }

 }

kk版本文件路径：

SkFontConfigInterface_android.（external\skia\src\ports）

3、实现上层切换功能

因为这一步比较容易实现，且不同需求ui设计不同，因此此步骤只提供大概思路，没有具体实现。

1)上层app(比如setting)实现可以切换字体的ui选项。

2)需要定义个配置变量persist.sys.usedmyfont：

当字体切换时SystemProperties.set("persist.sys.usedmyfont", "yes");

当使用默认字体时SystemProperties.set("persist.sys.usedmyfont", "no");

3)  因为这个功能是要重新加载字库文件，因此必须要实现切换字体后要重启手机功能。
```

## [FAQ11478] 语言设置为[Developer]Accented English点击显示报错

```
[DESCRIPTION] 语言设置为[Developer]Accented English点击显示报错 [SOLUTION] Language 中的[Developer] Accented English是一种虚拟mapping出来的语言，source code的resource中并没有实际的values-zz-rZZ 的resource与之对应。 针对settings中报的这个问题，是因为ResourceManager将alps/packages/apps/Settings/res/values/strings.xml 中的%1$s 中的占位符号进行了mapping翻译%1$š ，使得formart时找不到对应的占位符而出错。 这个问题的修改方法如下，将alps/packages/apps/Settings/res/values/strings.xml 中的%1$s 替换成 %1$s，避免占位符被mapping翻译。 因为属于google default resource issue，请自行修改验证。
```

## [FAQ11536] KK版本语言列表[Developer]Accented English问题

```
Android4.4进入到系统设置-语言和输入法-语言，界面就会语言选项里面多了第一个[Developer] Accented English。
这一项有什么用，如何把它去掉呢？
[SOLUTION]
KK:
[Developer] Accented English是一种虚拟mapping出来的语言，source code的resource中并没有实际的values-zz-rZZ 的resource与之对应。
切换到该语言也是仅仅Setting UI的字串发生变化.这是为开发者模式设计的，对于使用者没有多大作用。
添加这个语言项具体为如下红色部分：
LocalePicker.java (frameworks\base\core\java\com\android\internal\app)
public static ArrayAdapter<LocaleInfo> constructAdapter(Context context, final int layoutId, final int fieldId, final boolean isInDeveloperMode) {
    final Resources resources = context.getResources();
    ArrayList<String> localeList = new ArrayList<String>(Arrays.asList(Resources.getSystem().getAssets().getLocales()));
    if (isInDeveloperMode) {
        if (!localeList.contains("zz_ZZ")) {
            localeList.add("zz_ZZ");
        }
        /** - TODO: Enable when zz_ZY Pseudolocale is complete
         *  if (!localeList.contains("zz_ZY")) {
         *      localeList.add("zz_ZY");
         * }
         */
    }
    ……
}
如果要去掉该项，可以把红色部分注释掉。
 
L:
L上与KK不同,L上是判断如不在开发者模式就将"ar_XB"和"ar_XA"拿掉(如果有的话),没有使用"zz_ZZ".
 
有关[Developer ]Accented English其他问题可以参考：FAQ11478
```

## [FAQ08190] 如何修改Sim卡语言自适应

```
一、  系统设定默认语言规则

1.  系统预置语言，即在 makefile 文件中定义的语言；
–  位置：mediatek/config/${Project}/ProjectConfig.mk，默认第一个是系统默认语言
2.  刷机过后，开机重启，如果未插卡，系统语言为预置的语言；
3.  插入SIM卡过后，系统语言根据 SIM 卡来改变， 默认会把刷机过后第一次插的 SIM 卡的语言设置为默认语言；(如果sim的mcc可以在内置的mcc表中找到)
4.  如果用户没有手动在 Settings 里面设置语言，以后系统语言一直是默认语言（第一次插的 SIM 卡的语言），即使是插入其它国家的卡，系统语言也不会变；
5.  如果用户在 Settings 里面手动设置了语言，以后系统语言会为设置后的语言，无论插入什么卡，系统语言不会变，一直为用户手动设置后的语言。

MTK默认设计是如果手机有插卡，那么在开机是会读取SIM的imsi取出mcc，然后通过mcc来查找对应的language，并设置为手机默认语言(相关文件MccTable.javaframeworks\opt\telephony\src\java\com\android\internal\telephony).
二、  修改默认语言

1. 如果想手机默认语言不随SIM的MCC走，请按照如下修改：
在setLocaleFromMccIfNeeded()函数中
//String language = MccTable.defaultLanguageForMcc(mcc); <<注释掉此语句
对于KK版本
在updateMccMncConfiguration()函数中
// locale = getLocaleFromMcc(context, mcc); <<注释掉此语句

2. 如果手机默认语言随SIM卡走
此为operator CT的定制feature，如果有开OP03 option,默认就支持该功能。
如果想非OP03也支持该功能，请按照如下修改:
alps/mediatek/frameworks/base/op/java/com/mediatek/op/telephony/TelephonyExt.java中, 使方法isSetLanguangBySIM()返回true，那么手机的默认语言会使用SIM中的EF_LI(6F05)或者EF_EPL(2F05)中的语言。这两个文件优先使用EF_LI中的，如果EF_LI没有匹配的在使用EF_EPL的。
```

## [FAQ08860] 添加语言后语言列表没有显示或者显示空白和乱码

```
在MTK_PRODUCT_LOCALES（KK及以前版本，L上是PRODUCT_LOCALES）中添某种语言代码，却没有在setting语言列表中找到该语言选项或者出现空白和乱码，出现这样的情况可以按照如下方法排查。

一、检查添加的语言代码是否正确

Android使用语言_区域来确定一种语言，比如en_US,zh_CN，前面两位表示语言，后面两位表示区域，语言和区域中间使用_隔开，多种语言中间用空格分隔。
语言代码遵循ISO_639-1标准，可以参考维基百科：ISO_639-1
http://zh.wikipedia.org/wiki/ISO_639-1

语言代码遵循ISO_3166-1标准，可以参考维基百科：ISO_3166-1
http://zh.wikipedia.org/wiki/ISO_3166-1

Note： Java中使用了几个过时的语言代码，与ISO_639-1中的不一样，见下表，因此在添加下面几种语言的时候需要额外注意：希伯来语，印尼语，意地绪语。

          ISO_639-1  Android/Java
希伯来语(Hebrew) he iw
印尼语(Indonesian) id in
意地绪语(Yiddish) yi ji

二、检查framework是否有对应的value文件夹
如果添加的语言代码是正确的，列表种还是没有，请检查framework的res下是否有相应的values-xx-rYY文件夹，例如

JB2、JB3在ProjectConfig.mk文件MTK_PRODUCT_LOCALES处加上bn_IN,ur_PK后，setting语言列表却找不到这2个语言，那是因为

frameworks/base/core/res/res/下缺少文件values-bn-rIN和values-ur-rPK,需要新建并在其里面新建文件arrays.xml(KK和L上是strings.xml)，内容如下：

<?xml version="1.0" encoding="utf-8"?>
<resources>
    <integer-array name="maps_starting_lat_lng">
        <item>20593684</item>
        <item>78962880</item>
    </integer-array>
    <integer-array name="maps_starting_zoom">
        <item>3</item>
    </integer-array>
</resources>

三、语言列表中出现空白或者乱码
这是由于缺少字库或者字库添加不正确造成的，可以参考FAQ04513
如果按照上面步骤检查后仍有问题，请联系MTK技术人员解决。
```

## [FAQ04553] ICU资源简单介绍

```
1、什么是icu4c
ICU4C是ICU在C/C++平台下的版本, ICU(International Component for Unicode)是基于用于支持软件国际化的开源项目。ICU4C提供了C/C++平台强大的国际化开发能力，软件开发者几乎可以使用ICU4C解决任何国际化的问题，根据各地的风俗和语言习惯，实现对数字、货币、时间、日期、和消息的格式化、解析，对字符串进行大小写转换、整理、搜索和排序等功能，必须一提的是，ICU4C提供了强大的BIDI算法，对阿拉伯语等BIDI语言提供了完善的支持。

在平台新增一种语言必须要添加对应的icu资源(如zh_CN.txt,my.txt)，并重新编译ICU。ICU资源可在http://site.icu-project.org/  网址上下载。

（1）打开网址选择左侧列表框的DownloadICU
（2）选择“offcial Release”中最新版本的ICU4C如50.1
（3）下载“ICU4C Source Code Download”框中第一个包如“icu4c-50 l-data.zip”

2、新增语言添加哪些icu资源
下载完icu4c code包解压为data文件夹下面对应会有coll、curr、lang、locales、region，zone几个子文件夹。各种语言的icu资源就在这些文件夹里面。如中文以及中文简体的资源为zh.txt,zh_CN.txt(中文代码为zh，大陆国家码为CN)。新增语言时只需把所需语言的icu资源分布添加到平台对应的文件夹下，并修改对应mk文件重新编译就行。

具体如何添加可参考FAQ： FAQ04009 
```

## [FAQ04326] 如何打开一种语言以及如何设置开机默认语言

```
如何打开语言支持计划中的语言？
如何打开一种新语言？
如何设置开机默认语言?

[Solution]
一、如何打开语言支持计划中的语言？
Android KK JB
关于MTK语言支持情况请参考：FAQ03761
请打开文件：mediatek/config/${Project}/ProjectConfig.mk
找到宏MTK_PRODUCT_LOCALES，把所需的语言代码添加进去，比如添加越南语"vi_VN"
如果没有找到MTK_PRODUCT_LOCALES，可能在mediatek/config/common/ProjectConfig.mk中.
ANDROID L 
MTK_PRODUCT_LOCALES这个宏已经没有使用，使用的是alps\device\公司名字\项目名字\项目名字.mk  中的PRODUCT_LOCALES请添加语言的时候在PRODUCT_LOCALES中添加。
例如我司自己内部的项目代号aubest52 那么添加语言路径是（device\mediatek\aubest52\full_aubest52.mk中的PRODUCT_LOCALES后面添加语言）其他流程和KK一致

二、怎么添加一种新语言
请参FAQ04009

2.1、如果打开后在语言列表中没有找到该语言 
请参FAQ08860

三、设置开机默认语言 
如果想把某种语言设置为开机默认语言，只需把这个语言的代码放到(Android L PRODUCT_LOCALES后面第一个即可),（Android KK MTK_PRODUCT_LOCALES的第一个即可)。
```

## [FAQ18376] [MMS]彩信发送Vcard，接收失败，内容为空

```
彩信发送Vcard，接收失败，内容为空。
有一种情况是网络在转发时修改了数据，如下左图是手机发送时的数据，右图是从网络接收时的数据，接收的数据多了一个par。
如果是这种情况，请参考下面的workaround 改法。

修改SlideshowModel.java 的createFromPduBody()方法如下：

// Create media models for each slide.
NodeList mediaNodes = par.getChildNodes();
int mediaNum = mediaNodes.getLength();
ArrayList<MediaModel> mediaSet = new ArrayList<MediaModel>(mediaNum);
// mtk add start 
boolean isIgnore = false;
for (int k = 0; k < mediaNum; k++) {
    SMILMediaElement sme1 = null;
    try {
        sme1 = (SMILMediaElement) mediaNodes.item(k);
    } catch (ClassCastException cce1) {
        MmsLog.e(TAG, cce1.getMessage());
        continue;
    }
    String tag = sme1.getTagName();
    String src = sme1.getSrc();
    if (tag.equals(SmilHelper.ELEMENT_TAG_REF)) {
        String suffix = src.contains(".") ? src.substring(src.lastIndexOf("."), src.length()) : "";        
        if (suffix.equals(".vcf") || suffix.equals(".vcs")  ) {
            isIgnore = true;
        }
    }
}
if (isIgnore) {
    continue;
}
// mtk add end

for (int j = 0; j < mediaNum; j++) {
    /// M: Code analyze 012, new feature, catch ClassCastException @{
    SMILMediaElement sme = null;
    try {
        sme = (SMILMediaElement) mediaNodes.item(j);
    } catch (ClassCastException cce) {
        MmsLog.e(TAG, cce.getMessage());
        continue;
    }
    
FAQ中是用什么工具分析的？？
```

## [FAQ14743] init 启动 Native Service 时出现Service xxxx needs a SELinux domain defined; please fix 警告的说明

```
init 启动 Native Service 时出现Service xxxx needs a SELinux domain defined; please fix 警告的说明
 
[Keyword]
SELinux, Native Service, init, domain

[Android Version]
Version >= android 5.0
 
[Solution]
在android 5.0 后, 默认启用了Enforcing SELinux. 有很多同仁经常会从kernel log 中看到这样的警告.
"[1:init]init: Warning! Service xxxx needs a SELinux domain defined; please fix!"

其原因是因为Google 要求init 启动service 时，都要进行SELinux domain 切换，即从init domain 切换到另外的domain. 这个是从安全方面考虑的, 默认init domain 的SELinux 权限很大, 可以做很多危险行为，比如mount image, kill process 等等. 如果普通service 使用 init domain, 就增大了可攻击的安全面.

Google 在CTS 中有对这一项进行检查， CTS fail of android.security.cts.SELinuxDomainTest # testInitDomain

通常情况下，如果init 启动的是一个可快速执行完的oneshot 的service, 即非deamon 程序, “一闪而过” 的话，可以不进行domain 切换. 此类CTS 检测不到.  如果init 启动的是常驻内存的deamon service, 那么一定要进行domain 切换.(L0/L1 版版本)

但在M版本上,Google 增强了这块的约束，通过使用neverallow init { file_type fs_type}:file execure_no_trans;严格限制了init 启动service 都必须进行domain 切换，否则service 无法启动!!!

下面是一个demo, 方便大家参考.
定义一个init 启动的service, demo_service, 对应的执行档是/system/bin/demo.
(1).  创建一个demo.te 在/device/mediatke/common/sepolicy 目录下, 然后在/device/mediatke/common/BoardConfig.mk 的BOARD_SEPOLICY_UNION 宏中新增 demo.te (注意: M 版本后取消了BOARD_SEPOLICY_UNION 宏，不需要再修改了，添加了文件即可)
(2).  定义demo 类型，init 启动service 时类型转换, demo.te 中
type  demo, domain;
type   demo_exec, exec_type, file_type;
init_daemon_domain(demo)
(3).  绑定执行档 file_context 类型
/system/bin/demo  u:object_r:demo_exec:s0
(4). 根据demo 需要访问的文件以及设备,  定义其它的权限在demo.te 中.

针对特别执行shell 的service , 需要特别处理, 因为/system/bin/sh 已经被定义成了shell_exec 的label. 而有很多这样的service 依赖于sh, 于是需要使用seclabel 操作.
(1). 在你的service 定义中写入 seclabel u:r:demo:s0
(2). 创建你的xxxx_service.te 文件, 和前面类似
type demo, domain;
domain_trans(init, shell_exec, demo)
(3). 根据demo 需要访问的文件以及设备,  定义其它的权限在demo.te 中.

如果大家需要更加深入理解SELinux ，可以参考:

MTK Online SELinux Topic,  没有比这更加完整的文档了.
http://online.mediatek.com/_layouts/15/mol/topic/ext/Topic.aspx?id=158
```

## [FAQ18043] 手机端删除文件之后在PC端查看MTP内容更新但可用容量未更新

```
操作步骤：
被测终端连接MTP至PC端，进入文件管理，删除话机U盘或者SD中的一个文件，进入PC端MTP设备查看
实际结果：
话机U盘或者SD卡的可用容量不变
预期结果：
删除文件后可用容量应该变大
备注：重新插拔数据线后连接MTP后可用容量正常
 
[Analyze]
 
PC端如果要更新MTP信息会通过/dev/mtp_usb节点向native层发送请求
当在手机端操作删除一个文件之后，PC端仅仅会发送更新存储器里面内容的请求，不会发送更新storage info的请求

01-02 02:54:36.733539 1123 1890 V MediaProvider: [MediaProvider] --- delete<<<: uri=content://media/external/file, count=1
01-02 02:54:36.742277 1123 3715 D MtpServer: operation: MTP_OPERATION_GET_OBJECT_HANDLES
01-02 02:54:36.742424 1123 3715 D MtpServer: doGetObjectHandles: storageID = 0x767a0001, format = 0x0, parent = 0xffffffff
01-02 02:54:36.747435 789 2539 D AudioTrack: AudioTrackThread::pauseInternal: ns = 12673505
01-02 02:54:36.747470 789 814 D SettingsInterface: from settings cache , name = dropbox:system_app_strictmode , value = null
01-02 02:54:36.747923 1123 3715 D MtpServer: sending response 2001
01-02 02:54:36.748851 1123 3715 D MtpServer: operation: MTP_OPERATION_GET_OBJECT_PROP_LIST
01-02 02:54:36.749223 1123 3715 D MtpServer: GetObjectPropList 66 format: NONE property: MTP_PROPERTY_OBJECT_FORMAT group: 0 depth: 0
01-02 02:54:36.749356 1123 3715 D MtpDatabase: getObjectPropertyList: handle = 0x42, property = 0xdc02
```

## [FAQ18383] 默认设置以飞行模式开机

```
若有需求在烧完版本后，需要以飞行模式开机，那么请按照如下修改方案进行修改
将/frameworks/base/packages/SettingsProvider/res/values/defaults.xml中
<bool name="def_airplane_mode_on">false</bool>
修改为
<bool name="def_airplane_mode_on">true</bool>

注：仅第一次开机有效，若在使用过程中有离开飞行模式，那么下次开机会保持离开飞行模式状态
```

## [FAQ11162] [SAT]移除google默认浏览器后,LAUNCH BROWSER发生异常

```
客户若将google默认的浏览器移除，则当SAT测试中执行与LAUNCH BROWSR命令相关的测项时都会报exception。

分析:
由于StkAppService.java中是写死调用google默认的浏览器来执行打开browser的动作。
如果把google默认的浏览器移除，那么就无法找到对应的Activity，引起exception。

那么这种case下，需要客户自行修改代码，修改为替换的browser app和activity 即可。
alps\mediatek\packages\apps\stk1\src\com\android\stk\StkAppService.java
private void launchBrowser(BrowserSettings settings) {
    if (settings == null) {
        return;
    }
    ...............
    intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
将红色的字符修改为替换的browser app name和activity name。
而L0.MP5版本以及以后的版本包括 L1和M版本上这行 code已经去掉，并没有写死要启动的 activity。所以，L0.MP5以及以后的版本不用再做这个处理。
```

## [FAQ05657] [SAT]如何动态修改SIM卡应用名称

```
方法一：
以将STK app name动态修改成运营商名称为例子。
1、运营商的名称存储在以下SystemProperty中
卡1:  TelephonyProperties.PROPERTY_OPERATOR_ALPHA 
卡2:  TelephonyProperties.PROPERTY_OPERATOR_ALPHA_2

2、使用运营商名字来动态修改package对应的app name(应用程序名字) 
2.1  如果是GB3版本，则
修改文件：ContextImpl.java
具体修改如下：
import android.os.SystemProperties;
import com.android.internal.telephony.TelephonyProperties;
@Override
public CharSequence getText(String packageName, int resid, ApplicationInfo appInfo) {
    ResourceName name = new ResourceName(packageName, resid);
    CharSequence text = getCachedString(name);
    if (text != null) {
         //add start
         if(packageName.equalsIgnoreCase("com.android.stk"))
         {
            Log.d("jby","packagemanager1,stkpackageName1:"+packageName);
             String tmptext=SystemProperties.get(TelephonyProperties.PROPERTY_OPERATOR_ALPHA);
            if(!tmptext.isEmpty())
              if(!tmptext.equalsIgnoreCase("com.android.stk"))
                       text=tmptext;
         }
         else if(packageName.equalsIgnoreCase("com.android.stk2"))
         {
            Log.d("jby","packagemanager1,stkpackageName2:"+packageName);
            String tmptext=SystemProperties.get(TelephonyProperties.PROPERTY_OPERATOR_ALPHA_2);
            if(!tmptext.isEmpty())
              if(!tmptext.equalsIgnoreCase("com.android.stk2"))
                            text=tmptext;
         }
         Log.d("jby","text="+text);
        //add end
        return text;
    }
    if (appInfo == null) {
        try {
            appInfo = getApplicationInfo(packageName, 0);
        } catch (NameNotFoundException e) {
            return null;
        }
    }
    try {
        Resources r = getResourcesForApplication(appInfo);
        text = r.getText(resid);
        putCachedString(name, text);
        //add start
         if(packageName.equalsIgnoreCase("com.android.stk"))
         {
            Log.d("jby","packagemanager1,stkpackageName1:"+packageName);
         String tmptext=SystemProperties.get(TelephonyProperties.PROPERTY_OPERATOR_ALPHA);
            if(!tmptext.isEmpty())
              if(!tmptext.equalsIgnoreCase("com.android.stk"))
                            text=tmptext;
         } else if(packageName.equalsIgnoreCase("com.android.stk2")) {
            Log.d("jby","packagemanager2,stkpackageName2:"+packageName);
            String tmptext=SystemProperties.get(TelephonyProperties.PROPERTY_OPERATOR_ALPHA_2);
            if(!tmptext.isEmpty())
              if(!tmptext.equalsIgnoreCase("com.android.stk2"))
                            text=tmptext;
         }
         Log.d("jby","text="+text);
          //add end
        return text;
    } catch (NameNotFoundException e) {
        Log.w("PackageManager", "Failure retrieving resources for" + appInfo.packageName);
    } catch (RuntimeException e) {
        // If an exception was thrown, fall through to return
        // default icon.
        Log.w("PackageManager", "Failure retrieving text 0x" + Integer.toHexString(resid) + " in package " + packageName, e);
    }
    return null;
}

2.2  如果是JB2以及JB2以后的版本，则
修改文件：ApplicationPackageManager.java
具体修改：参考上述的GB3版本修改，基本一样。

方法二：
1、如果是GB3、GB5版本，则
修改文件:
packages\apps\launcher2\src\com\android\launcher2\PagedViewIcon.java
具体修改：将applyFromApplicationInfo()方法中的setText，通过packageName来过滤，设置期望显示的名字。
例如：packageName = “com.android.stk1”, 期望显示的名字"我的名字"，则
if (packageName 等于info.componentName.mPackage) {
   setText("我的名字")
} else {
   setText(info.title);
}

2、如果是JB2以及JB2以后的版本，则
修改的文件： PagedViewIcon.java
两个SAT应用程序是共用一个packageName的，所以无法通过应用的包名来区分，必须通过类名来区分。
例如：插入卡槽2的SIM或USIM应用程序是通过启动"stkLauncherActivityⅡ"。
 将applyFromApplicationInfo()方法中的setText，通过TargetclassName来过滤，设置期望显示的名字。
   例如：TargetclassName = “stkLauncherActivityII”, 期望显示的名字"我的名字"，则
   if (TargetclassName 等于info.componentName.mClass) {
       setText("我的名字")
   } else {
       setText(info.title);
   }

L0 、L1 、M版本：
由于StkAppService启动的packageName和activity都只有一个，所以无法区分，因此，无法用这种方法做客制化。

例如：针对联通定制版，要实现STK应用名称从卡里读取并显示(JB2以及JB2以后的版本)。
由于SAT 应用是动态安装的。launcher 菜单中的 SAT应用图标是 Stk1.apk的图标。

1、从systemproperty中获取卡的运营商名称。
可以参考方法2中的2.1 的demo code，修改 ApplicationPackageManager.java 文件的 getText() 方法，从SystemProperties中获取对应的卡的运营商名称:
String tmptext=SystemProperties.get(TelephonyProperties.PROPERTY_OPERATOR_ALPHA);
String tmptext=SystemProperties.get(TelephonyProperties.PROPERTY_OPERATOR_ALPHA_2);

2、两个SAT应用程序是共用一个packageName的，所以无法通过包名来区分，必须通过类名来区分。

例如插入卡槽2的sim或usim应用程序是通过启动"stkLauncherActivityII"
将applyFromApplicationInfo()方法中的setText，通过TargetclassName来过滤，设置期望显示的名字 为从步骤 1 获取到的名字。
例如：TargetclassName = "stkLauncherActivityII", 期望显示的名字"我的名字"
if (TargetclassName 等于info.componentName.mClass) {
    setText("我的名字");
} else {
    setText(info.title);
}
```

## [FAQ15507] 【VoLTE】如何让手机的增强型4GLTE开关默认处于关闭状态？

```
MTK默认的版本中，Setting里面的增强4GLTE开关（VoLTE）默认是开启的，如果想要将其默认设置为关闭状态的话请参考如下修改即可：

package com.android.providers.settings;
DatabaseHelper.java
loadSetting(stmt, Settings.Global.ENHANCED_4G_MODE_ENABLED, ImsConfig.FeatureValueConstants.ON);（两处地方），将ImsConfig.FeatureValueConstants.ON 改为 OFF

alps/device/mediatek/common/device.mk 文件中如下位置
ifeq ($(strip $(MTK_VOLTE_SUPPORT)), yes)
    PRODUCT_PROPERTY_OVERRIDES += ro.mtk_volte_support=1
    PRODUCT_PROPERTY_OVERRIDES += persist.mtk.volte.enable=1
endif
将persist.mtk.volte.enable=1
修改为 ：persist.mtk.volte.enable=0
```

## [FAQ18353] [Legacy Wi-Fi]如何用adb shell am命令关闭wifi后台扫描

```
adb shell am broadcast -a com.mtk.stopscan.activated // 关闭scan
adb shell am broadcast -a com.mtk.stopscan.deactivated // 开启scan
PS：注意不要进入到WifiSettings的页面，因为apk来的Scan，不会挡
```

## [FAQ12485] LatinIME输入键盘的右下角的"笑脸"按键替换成"回车换行"按键

```
JB和KK版本修改方法：
修改latinIME源码中的key_styles_common.xml内的enterKeyStyle 的定义为下面的定义即可（其实就是把大小写对应
的style跟原来比进行了互换）
<switch>
- <!--  Shift + Enter in textMultiLine field. 
  --> 
- <case latin:mode="im" latin:isMultiLine="true" latin:keyboardLayoutSetElement="alphabetManualShifted|alphabetShiftLockShifted">
  <key-style latin:styleName="enterKeyStyle" latin:parentStyle="emojiKeyStyle" /> 
  </case>
- <!-- 
 Smiley in textShortMessage field.
             Overrides common enter key style.
  --> 
- <case latin:mode="im">
  <key-style latin:styleName="enterKeyStyle" latin:parentStyle="shiftEnterKeyStyle" /> 
  </case>
  </switch>
 
L和M版本修改方法：
原理与之前的版本一致，只是修改的文件有所变化，L和M版本修改/packages/inputmethods/LatinIME/java/res/xml/key_styles_enter.xml文件中的如下代码：
小写状态下笑脸改为回车：
  <case latin:mode="im">
      <key-style latin:styleName="enterKeyStyle"
                     latin:parentStyle="emojiKeyStyle" /> 
  </case>
将emojiKeyStyle修改为defaultEnterKeyStyle
 
反之大写状态下要修改为笑脸：
    <case
           latin:isMultiLine="true"
            latin:keyboardLayoutSetElement="alphabetManualShifted|alphabetShiftLockShifted"
       >
            <key-style
                latin:styleName="enterKeyStyle"
                latin:keySpec="!icon/enter_key|!code/key_shift_enter"
                latin:parentStyle="defaultEnterKeyStyle" />
       </case>
将defaultEnterKeyStyle修改为emojiKeyStyle
 
Note：
  如果将"笑脸"键替换成"回车换行"按键后，想再次输入笑脸等表情，可以通过长按“回车换行”键，弹出表情按钮来操作。
```

## [FAQ12261] [Dialer]如何客制化俄文拨号盘？

```
4.2 JB 拨号盘显示是通过多张图片拼接起来显示的，4.4 KK的拨号盘是通过多个TextView显示字符串来实现的，
所以客制化KK的拨号盘只需要客制化对应字符串即可。
方法一:
FILE: alps\packages\apps\Dialer\res\values-ru\strings.xml 
在res\values-ru\strings.xml下面没有定义如下字符串，自己客制化为俄文即可：

<string name="dialpad_star_number">*</string>
<string name="dialpad_pound_number">#</string>
<string name="dialpad_0_letters">+</string>
<string name="dialpad_1_letters"></string>
<string name="dialpad_2_letters">ABC</string>
<string name="dialpad_3_letters">DEF</string>
<string name="dialpad_4_letters">GHI</string>
<string name="dialpad_5_letters">JKL</string>
<string name="dialpad_6_letters">MNO</string>
<string name="dialpad_7_letters">PQRS</string>
<string name="dialpad_8_letters">TUV</string>
<string name="dialpad_9_letters">WXYZ</string>
<string name="dialpad_star_letters"></string>
<string name="dialpad_pound_letters"></string>

优点：修改量小，容易实现；
缺点：如果同时显示英文和俄文字符，则不能单独设置颜色。

方法二:
参考之前英文字符的显示方法自己添加一个TextView来显示俄文字符，然后在res\values-ru\strings.xml中添加对应的字符串即可。
优点：同时显示英文和俄文字符时，可以单独设置俄文的字体颜色/字体大小/位置等。
缺点：修改量大。
```

## [FAQ18330] 开机向导中设置用户名称后，在设置多用户中当前用户名称没有修改

```
Google的开机向导设置用户名称，在设置多用户中，当前用户名称没有修改，始终是Owner
修改如下：
packages/apps/Settings/src/com/android/settings/users/ProfileUpdateReceiver.java

import android.os.SystemProperties;

public void onReceive(final Context context, Intent intent) {
    Log.d("ProfileUpdateReceiver", "Profile photo changed, get the PROFILE_CHANGED receiver.");
    // Profile changed, lets get the photo and write to user manager
    new Thread() {
        public void run() {
            Utils.copyMeProfilePhoto(context, null);
            ///M: Fix ALPS01262605
            String isGMS = SystemProperties.get("ro.com.google.gmsversion", null);
            if (isGMS != null) {
                copyProfileName(context);
            }
        }
    }.start();
}
```

## [FAQ18333] 设置->数据流量->WI-FI里面，选择跨年日期时，图片坐标最终日期不显示年

```
进入设置->数据流量->WI-FI里面，选择跨年日期( 终止日期的年跨过起始年份)时，图片坐标最终日期不显示年
例如选择日期Dec 7，2014 - Jan 4,2015里面；最终图片只显示Jan 4，不显示2015

这个android对时间显示的默认设计，如果跟现在时间是同一年，就不再额外显示年份，敝司觉得是合理的，如果贵司觉得这是个问题要修改，可以参考如下修改方式：
packages/apps/Settings/src/com/settings/DataUsageSummary.java
如下方法里，添加format time的flag FORMAT_SHOW_YEAR

public static String formatDateRange(Context context, long start, long end) {
    final int flags = FORMAT_SHOW_YEAR | FORMAT_SHOW_DATE | FORMAT_ABBREV_MONTH;
    synchronized (sBuilder) {
        sBuilder.setLength(0);
        return DateUtils.formatDateRange(context, sFormatter, start, end, flags, null).toString();
    }
}
```

## [FAQ12121] [SEC]如何调用接口来解锁SIM ME Lock

```
该FAQ介绍如何调用Telephony Framework的接口来解锁SIMME Lock。

在实现运营商的锁网需求时，如果不是MTK原生Keyguard，或者是用户单独开发的解锁界面，调用Telephony的接口函数时，建议参考MTK原生Keyguard的实现方式用一个新线程来实现。

 [SOLUTION]

Framework提供的解锁函数为 PhoneInterfaceManagerEx.java supplyNetworkDepersonalization()，可以调用此函数来解锁。

1. L版本上参考KeyguardSimPinPukMeView.java中的 CheckSimMe thread.run()函数调用方式，

实例如下：

      private class simMeCheckThread extends Thread {

        private final String mPasswd;
        private int mSlotId;
        private int mResult;
 
        protected simMeCheckThread (String passwd, long slotId) {

            mPasswd = passwd;
            mSlotId= slotId;
        }

        @Override
        public void run() {

            try {
 //注意L上slotId与subId的差别，需要进行转换
 long [] subIds = SubcriptionManager.getSubId(slotId);
                Log.d(TAG, "CheckMe, " + "slotId = " + slotId + ", subId = " + subIds[0]);
 //supplyNetworkDepersonalization()
                mResult = ITelephonyEx.Stub.asInterface(ServiceManager.getService("phoneEx"))
                        .supplyNetworkDepersonalization(subIds[0], mPasswd);

                Log.d(TAG, "CheckMe, " + "mSlotId=" + mSlotId + " mResult=" + mResult);
            } catch (RemoteException e) {
                Log.e(TAG, "supplyNetworkDepersonalization got exception: " + e.getMessage());
            }
        }
    }
 2. KK版本可以参考KeyguardSimPinPukView.java CheckSimMe thread 中的run()函数调用方式。

实例如下:

import com.mediatek.common.telephony.ITelephonyEx;
 
private class SimMeCheckThread extends Thread {
    int mSimId;
    String mPasswd;

    SimMeCheckThread(int mSimId, string mPasswd) {
        this.mSimId = mSimId;
        this.mPasswd = mPasswd;
    }

    @Override
    public void run() {
        try {
           Log.d(TAG, "simMeCheckThread-run() mSimId =" + mSimId +" mPasswd ="+mPasswd);
           //supplyNetworkDepersonalization()
           mResult = ITelephonyEx.Stub.asInterface(ServiceManager.checkService("phoneEx")).supplyNetworkDepersonalization(mPasswd, mSimId);
           Log.d(TAG, "simMeCheckThread-run()done mResult =" + mResult);                      
        } catch (Exception e) {
            Log.e(TAG, "supplyNetworkDepersonalization got exception: " + e.getMessage());

        }
    }
}
```

## [FAQ12108] [SEC]输入暗码来上锁和解锁SIM ME LOCK功能

```
运营商需求如下:
输入*#3411#来解锁SIM ME LOCK功能，重启后，非法的卡不需要输入解锁密码。
输入*#3412#来上锁SIM ME LOCK功能，重启后，非法的卡需要输入解锁密码。

[SOLUTION]
实现思路：
由于modem配置锁卡数据之后，是无法修改的。所以UNLOCK和LOCK的功能在AP端来模拟.
1）在modem端配置SML 参数，配置锁卡信息：默认是上锁状态，参考DMS上文档：SIM-ME lock，根据锁需要的 lock 配置相应的 NVRAM_EF_SML_DEFAULT。
2）在app端模拟解锁和上锁的功能。

修改步骤:

增加一个system property 记录是否有输入解锁暗码。默认值为false，就是上锁状态；如果默认值为true则为解锁状态。
针对插入非法卡时，开机时有被locked的处理。
L版本请修改：

alps/frameworks/base/packages/Keyguard/src/com/android/keyguard/KeyguardUpdateMonitor.java
private void proceedToHandleSimStateChanged(SimArgs simArgs) {
    if ((IccCardConstants.State.NETWORK_LOCKED == simArgs.simState) && KeyguardUtils.isMediatekSimMeLockSupport()) {
        //从system Property中取值判断
        //如果不需要输入解锁密码，则直接调用解锁函数进行解锁.
        //参考FAQ12121 [SEC]如何调用接口来解锁SIM ME Lock
        new simMeCheckThread(simArgs.subId, mPasswd).start();
        //mPasswd为modem配置的解锁密码.
    } else {

L之前的版本请修改：alps\frameworks\base\policy\src\com\android\internal\policy\impl\keyguard\KeyguardUpdateMonitor.java

private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {
} else if (TelephonyIntents.ACTION_SIM_STATE_CHANGED.equals(action)) {
if (IccCardConstants.State.NETWORK_LOCKED == simArgs.simState) {
    //从system Property中取值判断
    //如果不需要输入解锁密码，则直接调用解锁函数进行解锁.
    //参考FAQ12121 [SEC]如何调用接口来解锁SIM ME Lock
    new SimMeCheckThread(simArgs.simId, mPasswd).start();
    //mPasswd为modem配置的解锁密码.
否则就按照原有流程跑，就会正常显示输入锁卡密码界面，需要解锁。 

输入暗码的处理
输入*#3411#，解锁设置system Property 为true
输入*#3412#，上锁设置system property 为false
```

## [FAQ18375] 分析windowManagerService相关的问题，需要提交哪些log给MTK?

```
测试的过程中，我们有时候会遇到如下的一些问题，比如:
画面切换或者动画过程中闪屏
window顺序排列异常
转屏过程中出现画面异常
window size异常
........
这些问题，往往无法从默认的mtklog中分析出原因，需要window log才能做具体分析
 
[SOLUTION]
抓取window log的方式有两种:
1.adb shell命令动态打开,不需要build codebase
adb shell dumpsys window -d enable a
PS:不需要用adb shell stop/start重启adb,重启手机或者重启adb后都需要重新开启

2.修改WindowManagerService.java中相关的code
将windowManagerService.java中的所有带DEBUG标志的flag(比如DEBUG,DEBUG_XX)都修改为true,然后重新build frameworks/base/services/core 模块

window log包含在mtklog中，复现问题后直接提交mtklog给MTK即可
```

## [FAQ18349] 设置歌曲为来电铃声，删除歌曲后，来电铃声异常

```
1, packages/services/Telecomm/src/com/android/server/telecom/AsyncRingtonePlayer.java
private Ringtone getRingtone(Uri ringtoneUri) {
/* if (ringtoneUri == null) {
ringtoneUri = Settings.System.DEFAULT_RINGTONE_URI;//ringtone,which can be changed by customer
} */ 
//add begin
Log.d(this, "lll getRingtone ringtoneUri" + ringtoneUri);
if(ringtoneUri == null){
Uri defaultringtoneUri = RingtoneManager.getDefaultRingtoneUri(mContext, AudioProfileManager.TYPE_RINGTONE);//default ringtone 
AudioProfileManager audioProfileMgr = (AudioProfileManager) mContext.getSystemService(Context.AUDIO_PROFILE_SERVICE);
ringtoneUri = audioProfileMgr.getRingtoneUri(audioProfileMgr.getActiveProfileKey(), AudioProfileManager.TYPE_RINGTONE);
Log.d(this, "lll getRingtone ringtoneUri " + ringtoneUri+ " defaultringtoneUri " + defaultringtoneUri);
if (-1 == RingtoneManager.validRingtoneUri(mContext, ringtoneUri,RingtoneManager.TYPE_RINGTONE)) {
ringtoneUri = defaultringtoneUri;
}
Log.d(this, "lll getRingtone actual ringtoneUri" + ringtoneUri); 
}
Ringtone ringtone = RingtoneManager.getRingtone(mContext, ringtoneUri);
//add end

//ALPS01820873 ringtone maybe null
if (ringtone != null) {
ringtone.setStreamType(AudioManager.STREAM_RING);
}
return ringtone;
}
2,frameworks/base/media/java/android/media/RingtoneManager.java
public static int validRingtoneUri(Context context, Uri ringtoneUri, int type) //将public替换为private
```

## [FAQ18372] 静音或震动模式下开机仍然会有开机铃声，如何修改为没有开机铃声？

```
静音或震动模式下开机仍然会有开机铃声，是bootanimation_main.cpp文件中读取persist.sys.mute.state的值读取不到所致。
如何修改为静音或震动模式下没有开机铃声？

[SOLUTION]
1，原因是读取persist.sys.mute.state的属性值时，data分区未挂载，导致读取属性值失败。
2，修改方法如下： 
frameworks/base/cmds/bootanimation/BootAnimation.cpp
117static const int ANIM_ENTRY_NAME_MAX = 256;
118static const bool deal_with_encryption = true;//add
char* BootAnimation::initAudioPath() {
821 if (!bPlayMP3) {
822 XLOGD("initAudioPath: DON'T PLAY AUDIO!");
823 return NULL;
824 }
825
//----------------add--------------------
826 char crypto_state[PROPERTY_VALUE_MAX];
827 char type[PROPERTY_VALUE_MAX];
828 char status[PROPERTY_VALUE_MAX];
829 char volume[PROPERTY_VALUE_MAX];
830
831 property_get("ro.crypto.state", crypto_state, "-1");
832 property_get("vold.encryption.type", type, "-1");
833 XLOGD("[BootAnimation %s %d]ro.crypto.state=%s, vold.encryption.type=%s",
834 __FUNCTION__,__LINE__, crypto_state, type);
835 while (strcmp(type, "-1") == 0 &&
836 strcmp(crypto_state, "unencrypted") != 0 &&
837 deal_with_encryption == true){
838 usleep(100000);
839 property_get("ro.crypto.state", crypto_state, "-1");
840 property_get("vold.encryption.type", type, "-1");
841 }
842
843 while (strcmp(type, "default") == 0 && deal_with_encryption == true){
844 property_get("vold.decrypt", status, "-1");
845 if (strcmp(status, "trigger_restart_framework") != 0){
846 usleep(100000);
847 XLOGD("[BootAnimation %s %d]Decrypt status=%s",__FUNCTION__,__LINE__,status);
848 continue;
849 }
850 property_get("persist.sys.mute.state", volume, "-1");
851 int nVolume = -1;
852 nVolume = atoi(volume);
853 XLOGD("[BootAnimation %s %d]nVolume=%d",__FUNCTION__,__LINE__,nVolume);
854 if(nVolume == 0 || nVolume == 1){
855 XLOGD("initAudioPath: DON'T PLAY AUDIO!");
856 return NULL;
857 }
858 break;
859 }
860
//----------------add--------------------
861 int index = 0;
862 if (bBootOrShutDown) {
863 index = 0;
864 } else {
865 index = 1;
866 }
```

## [FAQ18334] 短信的通知音很长，此时再来电话后，会重叠播放；如何实现来电时，短信通知声应该停止播放？

```
1，将短信的通知铃声设置为播放时间比较长的Mp3或其它文件
2, 来短信，将播放所设定的短信通知铃声，此时来电，来电铃声与短信通知铃声重叠播放在一起
3，如何实现来电时，短信通知声应该停止播放？
 
frameworks/base/services/core/java/com/android/server/notification/NotificationManagerService.java 
private void listenForCallState() { 
TelephonyManager.from(getContext()).listen(new PhoneStateListener() {
@Override
public void onCallStateChanged(int state, String incomingNumber) {

// Add begin
Log.d(TAG,"listenForCallState() state = " + state);
long identity = Binder.clearCallingIdentity();
if (state == AudioSystem.PHONE_STATE_RINGING){
try {
final IRingtonePlayer player = mAudioManager.getRingtonePlayer();
if (player != null) {
Log.e(TAG, "listenForCallState() player.stopAsync()");
player.stopAsync();
}
} catch (RemoteException e) {
} finally {
Binder.restoreCallingIdentity(identity);
}
}
// add end
if (mCallState == state) return;
if (DBG) Slog.d(TAG, "Call state changed: " + callStateToString(state));
mCallState = state;
}
}, PhoneStateListener.LISTEN_CALL_STATE);
}
```

## [FAQ18200] Android M 第三方camera APK, preview video偏暗

```
Andoird M中,在MtkDefaultCamParameter.cpp 中的setParameters函数会去吃config.ftbl.xxxmipiraw.h中设定的preview fps range,需要将config.ftbl.xxxmipiraw.h中Preview Frame Rate Range修改为（5000,30000）。 
   setParameters()
{
   .....
  const char* p = mpParamsMgr->getStr(CameraParameters::KEY_PREVIEW_FPS_RANGE);

  char* q;

  cam3aParam.i4MinFps = strtol(p,&q,10);

  cam3aParam.i4MaxFps = strtol(q+1,&q,10);
  .....
}
 config.ftbl.xxxmipiraw.h:

 FTABLE_CONFIG_AS_TYPE_OF_USER(
 KEY_AS_(MtkCameraParameters::KEY_PREVIEW_FPS_RANGE),
 SCENE_AS_DEFAULT_SCENE(
 ITEM_AS_DEFAULT_("5000,30000")
 ITEM_AS_USER_LIST_(
 "(15000,15000)",
 "(20000,20000)",
 "(24000,24000)",
 "(5000,30000)",
 "(30000,30000)",
```

## [FAQ09066] OTA 升级查询版本失败，log显示your version is illegal！ 解决办法

```
在使用MTK OTA升级的时候，出现查询版本失败的现象，查看log里面提示your version is illegal！报的error为1105
 
这是因为手机的信息，也就是old版本的信息与Server上提交old版本时候填写的信息不一致。 old版本，new版本在upload到server的时候，server上要求填写的项是来自于package包的build.prop文件。对应关系如下：
       build.prop                        upload.php
–      ro.build.display.id-----------------build number of the version
–      ro.product.locale.language---------------LANGUAGE
–      ro.product.manufacturer------------------OEM
–      ro.operator.oper--------------------OPERATOR
–      ro.product.device-----------PRODUCT
–      ro.build.fingerprint------------FINGERPRINT
–      ro.build.version.release--------------------android version
–      ro.product.name------------------------name of the version

请注意：

1、如果 build.prop 中ro.build.display.id的值包含keys或者不以ALPS开头，
upload.php的build number of the version需要填写build.prop中ro.mediatek.version.release的值，而不是ro.build.display.id的值
手机相关code在：SystemUpdate/src/com/mediatek/systemupdate/Util.java

String buildnumber = SystemProperties.get("ro.build.display.id");
//on AOSP branch,the value of 'ro.build.display.id' will like:
//'full_mt6582_phone_qhd-eng 4.4.2 KOT49H 1400738660 dev-keys'
if (buildnumber.contains("keys") || !(buildnumber.startsWith("ALPS"))) {
    Log.i("@M_" + TAG, "Get build number from 'ro.mediatek.version.release'");
    buildnumber = SystemProperties.get("ro.mediatek.version.release");
}
 
2、如果预置了GMS包，upload.php填写PRODUCT时需要在后面加上 [GMS]
手机相关code在：SystemUpdate/src/com/mediatek/systemupdate/Util.java
builder.append(oem).append("_").append(product);

if (isGmsLoad(context) || isGmsLoad2()) {
    builder.append("[gms]");
}
```

## [FAQ13241] [Gallery]PhotoPage如何全屏显示图片（如何动态设置虚拟按键？）

```
根据实际需要这种模式的显示的页面添加如下flag
 
1. Hide Bars 
int flags = 0;
flags|= View.SYSTEM_UI_FLAG_FULLSCREEN
  |View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
  |View.SYSTEM_UI_FLAG_IMMERSIVE
  |View.SYSTEM_UI_FLAG_LAYOUT_STABLE
  |View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
  |View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;
 
 setSystemUiVisibility(flags);
 
 View.SYSTEM_UI_FLAG_HIDE_NAVIGATION --> 隐藏navigationbar
 View.SYSTEM_UI_FLAG_FULLSCREEN --> 隐藏statusbar
 
2.Show Bars
 
int flags = 0;
flags|= View.SYSTEM_UI_FLAG_LAYOUT_STABLE
   |View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
   |View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;
 
setSystemUiVisibility(flags);
 
    这3个flag 需要配合使用，清除所有的Flag，半透明显示SYSTEM UI ，同时使得当前Activity的UI 不被resize 并显示在SYSTEM UI 下面。
 
 ==========================
以PhotoPage为例，实现全屏沉浸模式，需要做如下改动：
 文件：PhotoPage.java
 
1. onResume()方法中增加如下code：
protected void onResume()｛
...
     // add by mtk start
     Window win = mActivity.getWindow();
     win.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
     win.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
     // add by mtk end
...
｝
2. onDestroy()方法中增加如下code：

protected void onDestroy() {
...
     //add by mtk start
     Window win = mActivity.getWindow();
     win.clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
     win.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
     //add by mtk end

     super.onDestroy();
｝
3. showBars()方法增加如下code:

private void showBars() {
...
    //add by mtk start
    Window win = mActivity.getWindow();
    win.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
    win.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
    //add by mtk end

    mActionBar.show();
    mActivity.getGLRoot().setLightsOutMode(false);
...

｝
4. hideBars()增加如下改动：

private void hideBars() {
...

  mActionBar.hide();
   //add by mtk start

  Window win = mActivity.getWindow();
    win.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION);
    int flags = (View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                    | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    | View.SYSTEM_UI_FLAG_FULLSCREEN
                    | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                    | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
  win.getDecorView().setSystemUiVisibility(flags);
    win.setNavigationBarColor(Color.TRANSPARENT);
    //add by mtk end

  //mActivity.getGLRoot().setLightsOutMode(true);  //delete by mtk
...
｝
上述修改可以实现大图界面图片全屏显示，但会导致编辑、连拍按钮被Navigation Bar覆盖，如下图所示：

 

如下修改仅供参考：

Photopage_bottom_controls.xml 设置

 android:id="@+id/photopage_bottom_controls"
 android:padding="10dp"
 android:layout_width="match_parent"
 android:layout_height="wrap_content"
 android:layout_alignParentBottom="true"
 android:layout_alignParentLeft="true"
 android:orientation="horizontal"
 android:fitsSystemWindows=”true”<--! add by mtk -->
 android:visibility="gone">
ContainerLayer.java

1.增加头文件

import android.content.res.Resources;
import android.content.res.Configuration;
2.增加新方法

private static int getNavigationBarHeight(Activity activity){
     Resources resources = activity.getResources();
     int resId = resources.getIdentifier("navigation_bar_height", "dimen", "android");
     int height = resources.getDimensionPixelSize(resId);
     return height;
}
修改showLeftBottomIcon()方法
private void showLeftBottomIcon() {
     mContainer.setVisibility(View.VISIBLE);
 
     // add by mtk start
     int orientation = mActivity.getResources().getConfiguration().orientation;
     int h = getNavigationBarHeight(mActivity);
 
     if (orientation == Configuration.ORIENTATION_PORTRAIT) {
         mContainer.setX(0);
         mContainer.setY(-h);
     }else{
         mContainer.setY(0);
         mContainer.setX(-h);
     }
     //add by mtk end

     if (mMediaData.subType == MediaData.SubType.CONSHOT) {
         mConShotIcon.setVisibility(View.VISIBLE);
     }
 }
PhotoPage.java新增如下方法：

@Override
 public void onConfigurationChanged(Configuration config) {
     super.onConfigurationChanged(config);
     toggleBars();
 }
```

## [FAQ17784] [Recovery][Common]Android M OTA build (Include Security OTA)

```
case 1、不论是否开启Security boot功能，M 版本的OTA build方法都如下：

Full : ./build/tools/releasetools/ota_from_target_files –v --block -k $(key_path) –s device/mediatek/build/releasetools/mt_ota_from_target_files src.zip update.zip
Incremental : ./build/tools/releasetools/ota_from_target_files –v --block -k $(key_path) –s device/mediatek/build/releasetools/mt_ota_from_target_files –i src.zip tgt.zip update.zip

case 2、如果需要同时升级lk、preloader，请参考：
ID: FAQ17441
[Recovery][Common]Android M 版本如何升级lk 、preloader ？
```

## [FAQ14670] 如何关闭latinIME的联想输入功能

```
L版本的修改方法：
1：修改LatinIME code中的SettingsValue.java内的
readSuggestionEnabled函数内的
pref.getBoolean内的默认值为false。
2:修改LatinIME code中的SettingsValue.java内的 autoCorrectionThresholdRawValue
的初始值为
final String autoCorrectionThresholdRawValue = pref.getString(Settings.PREF_AUTO_CORRECTION_THRESHOLD, res.getString(R.String.auto_correction_threshold_mode_index_off));
 
M版本的修改方法：
1：修改LatinIME code中的SettingsValue.java内的
readSuggestionEnabled函数内的
pref.getBoolean内的默认值为false。

2:修改LatinIME code中的Settings.java内的 readAutoCorrectEnabled里面prefs.getBoolean内的默认值修改为false
public static boolean readAutoCorrectEnabled(final SharedPreferences prefs, final Resources res) {
    return prefs.getBoolean(PREF_AUTO_CORRECTION, false);
}
```

## [FAQ10957] LatinIME.apk和LatinImeGoogle.apk的区别

```
1.自4.2之后Latin输入法增加了手势输入（滑动输入）的功能，但是这个功能被google放在了GMS包中，所以自4.2之后GMS包中多了LatinImeGoogle.apk。
2.android源码中的latin输入法是LatinIME.apk，没有手势输入的功能。GMS包中的LatinImeGoogle.apk包括所有LatinIME.apk中的功能外加手势输入功能，但是没有源码。
3.只有安装了GMS之后才会有手势输入功能，在安装GMS包过程会用LatinImeGoogle.apk去替换LatinIME.apk。这就会导致客户在源码中对LatinIME.apk的修改，不能生效。例如，修改LatinIME默认的输入法语言、修改键盘的布局等。
```

## [FAQ12213] 设置默认输入法不成功

```
首先查看InputMethodManagerService.java中的systemRunning函数中是否有下面红色的代码，如果有则把红色后面蓝色的语句注释掉即可。如果没有红色代码可以参考FAQ06663。 
if (!mImeSelectedOnBoot) {
    Slog.w(TAG, "Reset the default IME as \"Resource\" is ready here.");
    /// M: Loading preinstalled ime from feature option. @{
    String preInstalledImeName = IMEFeatureOption.DEFAULT_INPUT_METHOD;
    Slog.i(TAG, "IMEFeatureOption defaultIME : " + preInstalledImeName);
    if (preInstalledImeName != null) {
        InputMethodInfo preInstalledImi = null;
        for (InputMethodInfo imi : mMethodList) {
            Slog.i(TAG, "mMethodList service info : " + imi.getServiceName());
            if (preInstalledImeName.equals(imi.getServiceName())) {
                preInstalledImi = imi;
                break;
            }
        }
        if (preInstalledImi != null) {
            setInputMethodLocked(preInstalledImi.getId(), NOT_A_SUBTYPE_ID);
        } else {
            Slog.w(TAG, "Set preinstall ime as default fail.");
            resetDefaultImeLocked(mContext);
        }
    }
    /// @}
    resetStateIfCurrentLocaleChangedLocked();
    InputMethodUtils.setNonSelectedSystemImesDisabledUntilUsed(
            mContext.getPackageManager(),
            mSettings.getEnabledInputMethodListLocked());
}
```

## [FAQ09939] 写短信输入法软键盘Done字串如何修改

```
解法1：如果其它APP的Done字符串也要更改一致，请用下面的方法修改
1:请修改
MTKRecipientEditTextView.java (alps\mediatek\frameworks-ext\ex\chips\src\com\android\ex\chips)
中将
public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
    ......
    //outAttrs.actionLabel = getContext().getString(R.string.done);// 将这行删除掉
    return connection;
}
2: 再在LatinIME的source code中搜索
label_done_key ,找到对应语言对该字符串的定义,修改为想要的字符串,重新mm LatinIME,修改就可以生效.

解法2：如果只想改短信中 MTKRecipientEditTextView 控件的done字符串，
请修改
MTKRecipientEditTextView.java (alps\mediatek\frameworks-ext\ex\chips\src\com\android\ex\chips)
中将
public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
    ......
    outAttrs.actionLabel = getContext().getString(R.string.done);//将此处的R.string.done替换为贵司需要的字符串，或者在mediate的 framework-res中搜索R.string.done的定义，修改为想要的字符串。
    return connection;
}
```

## [FAQ09620] 如何添加一个新的Latin输入法语言

```
在DMS上查找下面的文档，文档中详细的说明，请参考。
GB2：    Add new language support in LatinIME
ICS：SOP_add_new_language_for_android_keyboard_4.0
JB：SOP_add_new_language_for_android_keyboard_4.1
KK之后参考：
SOP_add_new_language_for_android_keyboard_JB_KK_L.pptx
 
如果要知道MTK目前有支持哪些输入语言，请参考FAQ。
ID: FAQ08121 
输入法语言支持状态
```

## [FAQ08767] 修改Android 自带输入法(LatinIME)空格键的显示

```
JB版本修改方式：
1:修改MainKeyboardView.java (alps\packages\inputmethods\latinime\java\src\com\android\inputmethod\keyboard)
中drawSpacebar函数,将绘制语言text的部分注释掉.
    //canvas.drawText(language, width / 2, baseline - descent - 1, paint);
    paint.setColor(mSpacebarTextColor);
    paint.setAlpha(mLanguageOnSpacebarAnimAlpha);
    //canvas.drawText(language, width / 2, baseline - descent, paint);
2:修改
Key_styles_common.xml 
(alps\packages\inputmethods\latinime\java\res\xml) 
中spaceKeyStyle的实现为
<key-style
    latin:styleName="spaceKeyStyle"
    latin:keyIcon="!icon/space_key"
    latin:code="!code/key_space"
    latin:keyActionFlags="noKeyPreview|enableLongPress" />
3:修改Keyboard-icons-ics.xml (alps\packages\inputmethods\latinime\java\res\values)
中 iconSpaceKey的实现为
<item name="iconSpaceKey">@drawable/sym_keyboard_space_holo</item>
重新编译LatinIME后并push到手机替换验证.
 
L版本和M版本修改方式：
1:修改MainKeyboardView.java (alps\packages\inputmethods\latinime\java\src\com\android\inputmethod\keyboard) 
中函数drawLanguageOnSpacebar函数，将绘制语言text的部分注释掉。
paint.setColor(mLanguageOnSpacebarTextColor);
paint.setAlpha(mLanguageOnSpacebarAnimAlpha);
//canvas.drawText(language, width / 2, baseline - descent, paint);
paint.clearShadowLayer();
paint.setTextScaleX(1.0f); 
2、重新编译LatinIME后并push到手机替换验证.
```

## [FAQ06663] 切换系统语言后默认输入法会自动切换到latin输入法

```
JB解决方案：
可以在文件inputmethodmanagerservice.java中
在构造函数InputMethodManagerService中的最后面，将接收语言改变广播的事件注释掉：

final IntentFilter filter = new IntentFilter();
filter.addAction(Intent.ACTION_LOCALE_CHANGED);
mContext.registerReceiver(new BroadcastReceiver() {
    @Override
    public void onReceive(Context context, Intent intent) {
        synchronized(mMethodMap) {
            //checkCurrentLocaleChangedLocked(); //将此行注释掉
        }
    }
}, filter);

这样就可以了。

KK、L、M 的解决方案：
可以在文件inputmethodmanagerservice.java中
在构造函数InputMethodManagerService中的最后面，将接收语言改变广播的事件注释掉：
final IntentFilter filter = new IntentFilter();
filter.addAction(Intent.ACTION_LOCALE_CHANGED);
mContext.registerReceiver(new BroadcastReceiver() {
    @Override
    public void onReceive(Context context, Intent intent) {
        synchronized(mMethodMap) {
            //resetStateIfCurrentLocaleChangedLocked();//将此行注释掉
        }
    }
}, filter);
这样就可以了。
```

## [FAQ18354] [Legacy Wi-Fi]非root权限下通过abd命令获取手机的MAC地址

```
adb shell wpa_cli -iwlan0 -g@android:wpa_wlan0 IFNAME=wlan0 DRIVER MACADDR
```

## [FAQ14493] [Speech][L version] 通话无声问题需要抓取哪些log

```
有时测试人员会低概率测试到通话无声的问题，
然而仅仅有vmlog+mobile log还比较难定位问题，需要抓取更多信息，具体请参考此FAQ
[SOLUTION]
1. 清空mtklog文件夹
2. 打开vmlog即进入工模->Hardware Testing->Audio->Speech Logger->勾选Enable speech log
    打开vmlog后每打一通电话便会在mtklog\audio_dump中生成一个*.vm文件，其以通话开始时间命名
3. start mobile log
4. 去复现无声问题
5. 当复现到无声后，请不要切换device(即不要切换成免提或者听筒，保持之前的就好)，也不要挂断电话
    进入工模->Hardware Testing->Audio->Audio Logger按下Dump Audio Debug Info
    [Expected result]: 前5s本端会听到tone音，后5s对方会听到tone音，请记录2边实际情况
6. 挂断电话后请不要再打电话
7. stop mobile log
8. 上传整个mtklog文件夹
注意：请严格按照如上步骤抓取，如果某项没有做，就麻烦测试人员重新复现，谢谢
```

## [FAQ14788] 如何用命令设置开发者选项中Enable OpenGL trace的各个选项？

```
在手机的Settings->Developer options->Enable OpenGL traces这个选项中的值，可以直接进入手机界面去做设定。
但有时候需要使用命令行来设置，那么可以使用如下方法来做。
 
[SOLUTION]
Enable OpenGL trace这个选项可以设定的值有3个：Logcat,Systrace(Graphics),Call stack on glGetError，
还有一个是默认选项：None(这个选项对应到property里面是没有值的，所以不可以通过setprop的方式去设置)
 
手机须先获取root权限后才可以设置，设置方法如下：
设定Logcat：adb shell setprop debug.egl.trace  1
设定Systrace：adb shell setprop debug.egl.trace systrace
设定glGetError：adb shell setprop debug.egl.trace  error
上述命令设置以后，接着需要如下两个命令来使得上述设置生效
adb shell  "stop;start"
 
注意：上述属性值设置完以后，永久生效(手机关机再开机依然保持不变)，若要恢复到默认值"None"，必须通过手机图形化界面去选择
 
通过如下命令check，做完上述设置以后是否生效：
adb shell getprop debug.egl.trace
```

## [FAQ18314] MountService对关机时间的影响

```
关机的时候，MountService需要对卡进行卸载，卸载卡有时候需要花费比较长的时间，进而影响到关机时间。
卸载卡即把卡的状态从Mouted切换到unmounted，状态切换的快慢跟是否有process访问卡上资源有很大关系。
卸载卡的时候，如果有process访问卡上资源，vold会每隔5秒retry 3次，如果到了timeout时间，还是有process访问卡上资源，vold会调用Process Killer暴利砍掉对应的process。
目前的循环等待时间是5s，如果要修改这个时间，建议不要修改太多，因为这是一个经验值，改太小的话，正常的unmount做不完就可能被kill，如果是SystemServer占用着卡上资源，暴利砍掉SystemServer就会导致系统重启，因此不要过分追求unmount时间短，因为这大大增加了SystemServer被kill的风险。
相关的code在：/system/vold/Utils.cpp的ForceUnmount()中，修改等待时间即修改这里面的sleep()时间。
 
另外，log中search "vold : Failed to unmount"可以知道具体是哪个路径被占用着，如果有FileSystem相关的监控工具，可以监控下这个路径在被谁操作，从而找到对应的Process。

简单的排查可以关掉MTKLoger(特别是modem log)，看关掉之后关机时间是否会变短。
```

## [FAQ18292] Omacp Apn信息替换原有APN

```
1. 在OmacpApnReceiverService.java文件中新增replaceApn,实现查找替换APN的功能
public long replaceApn(Context context, Uri uri, String apn, String apnId, String name, String types ,ContentValues values, String numeric) {
....
while (!cursor.isAfterLast()) {
…… 
//modify begin 
else if( (name.equals(cursor.getString(2))||apn.equals(cursor.getString(3))) && types.equals(cursor.getString(4)) )
{
numReplaced = cursor.getString(0);
break;
}
//modify end
cursor.moveToNext();
}
.....
}
注:标红的if语句中的内容可根据需求进行调整
 修改OmacpApnReceiverService.java的updateApn函数
private void updateApn(Context context, Uri uri, String apn, String apnId,
String name, ContentValues values, String numeric, Uri peferredUri) {
//modify 调用1中添加的方法
long replaceNum = replaceApn(context, uri, apn, apnId,name, mType , values, numeric);
.................
if (replaceNum == APN_NO_UPDATE) {
…..
}
// modify add 更新添加后的APN
} else if (replaceNum > 0) {
Uri url = ContentUris.withAppendedId(Telephony.Carriers.CONTENT_URI, Integer.parseInt(replaceNum));
getContentResolver().update(url, values, null, null);
}
// modify end
```

## [FAQ18313] [SMS]使用16bit 或7bit 编码，都需要替换特殊字符去掉帽子

```
如果只是针对7bit编码方式需要替换，请参考FAQ08878.
如果是不管使用什么编码方式都要替换，请参考以下改法：

case 1:要求发送方显示特殊字符，接收方显示去掉帽子：
如果发送方不要显示替换后的字符，就要在数据插入database后再替换字符。
/vendor/mediatek/proprietary/packages/apps/Mms/src/com/android/mms/transaction/SmsReceiverService.java
public synchronized void sendFirstQueuedMessage() {
    int msgId = c.getInt(SEND_COLUMN_ID);
    Uri msgUri = ContentUris.withAppendedId(Sms.CONTENT_URI, msgId);
    // 此处增加对 msgText中特殊字串的替换逻辑
    msgText.replaceAlll("\\u005e", "xxxx"); 
    ...
    SmsMessageSender sender = new SmsSingleRecipientSender(this,
    address, msgText, threadId, status == Sms.STATUS_PENDING, msgUri, subId);

case 2:要求发送方与接收方显示一致，都去掉帽子：
/packages/apps/Mms/src/com/android/mms/transaction/SmsMessageSender.java 
1. protected final String mMessageText;将 mMessageText final属性去掉；
2. private boolean queueMessage(long token) throws MmsException {
…
MmsLog.d(MmsApp.TXN_TAG, "SMS DR request=" + requestDeliveryReport);
/// @}
// 此处增加对 mMessageText 中特殊字串的替换逻辑
mMessageText = mMessageText.replaceAll("\\u005e", "xxxx"); 
```

## [FAQ18019] 如何把main log中的信息在kernel log中输出

```
#include <cutils/klog.h>

#define ERROR(x...)   KLOG_ERROR("module_name", x)
#define NOTICE(x...)  KLOG_NOTICE("module_name", x)
#define INFO(x...)    KLOG_INFO("module_name", x)

NOTICE("%s: val=%d \n", __FUNCTION__, value);
```

## [FAQ14351] L版本12小时制状态栏时间不显示AM/PM

```
Andoid L版本把时间格式设置为12小时制，状态栏时间不显示AM/PM的，这是google的默认设计。下拉状态栏，左上角的时间是带有AM，PM的，如果想要显示AM/PM怎么办呢？
[SOLUTION]
把mAmPmStyle的初始值改为AM_PM_STYLE_NORMAL
Clock.java alps\frameworks\base\packages\SystemUI\src\com\android\systemui\statusbar\policy 
public Clock(Context context, AttributeSet attrs, int defStyle) {
    super(context, attrs, defStyle);
    TypedArray a = context.getTheme().obtainStyledAttributes(
        attrs,
        R.styleable.Clock,
        0, 0);
    try {
        ///修改此处
        //mAmPmStyle = a.getInt(R.styleable.Clock_amPmStyle, AM_PM_STYLE_GONE);
        mAmPmStyle = AM_PM_STYLE_NORMAL
    } finally {
        a.recycle();
    }
}
```

## [FAQ18279] 开机时间慢分析

```
(1)若能抓取mobilelog，则可以在APLog_xxxx文件夹中找到bootprof文件。或者直接cat /proc/bootprof

----------------------------------------
0 BOOT PROF (unit:msec)
----------------------------------------
1077 : preloader         // 这里会记录preloader和lk的执行时间，单位为毫秒。
3667 : lk
----------------------------------------
47.188307 : ON
95.973922 : of_init 16992539 ns
124.732076 : ramoops_init 27976001 ns
155.463384 : init_mtk_governor 28810077 ns
208.009307 : arm64_device_init 40170846 ns
245.649461 : pm_sysrq_init 28632231 ns
305.320923 : event_trace_init 25269538 ns
328.487538 : pmic_mt_init 18462461 ns
398.533231 : populate_rootfs 67385539 ns
481.464077 : mtkfb_init 16279692 ns
631.410616 : modem_cd_init 128015693 ns
817.579693 : md_ccif_init 186129616 ns
894.852462 : gf_init 40584231 ns
940.017616 : mt_i2c_init 45137231 ns
1013.895463 : eem_init 23476462 ns
1059.026771 : acc_init 32313847 ns
1116.455540 : gyro_init 57412308 ns
2363.018851 : fpc1022_init 1232834464 ns
2382.414158 : battery_init 18354616 ns
2417.481312 : clk_debug_init 33775692 ns
2450.348466 : mt_soc_snd_init 32818538 ns
2451.768543 : Kernel_init_done
2875.773313 : INIT: on init start
2881.017236 : INIT:Mount_START
3546.686469 : INIT:Mount_END
3550.746930 : start mobicore (on fs)
3553.768623 : start mobicore end (on fs)
3675.040623 : post-fs-data: on modem start
5971.898167 : BOOT_Animation:START             // 这里表明已经进入上层。
6684.275630 : Zygote:Preload Start
7112.275554 : Zygote:Preload Start
8761.911327 : Zygote:Preload 3831 classes in 1319ms
8847.152943 : Zygote:Preload 3831 classes in 1424ms
9055.208867 : Zygote:Preload 342 obtain resources in 206ms
9059.303559 : Zygote:Preload 41 resources in 2ms
9076.121251 : Zygote:Preload 342 obtain resources in 313ms
9081.294482 : Zygote:Preload 41 resources in 3ms
9323.764175 : Zygote:Preload End
9481.360175 : Zygote:Preload End
9550.741483 : Android:SysServerInit_START
10059.694100 : Android:PackageManagerService_Start
10326.429639 : Android:PMS_scan_START
10516.254332 : Android:PMS_scan_data_done:/system/framework
11297.080180 : Android:PMS_scan_data_done:/system/priv-app
12650.057491 : Android:PMS_scan_data_done:/system/app
12736.916952 : Android:PMS_scan_data_done:/system/vendor/operator/app
12768.057183 : Android:PMS_scan_data_done:/system/plugin
12771.374414 : Android:PMS_scan_data_done:/data/app
12780.415645 : Android:PMS_scan_END
12952.868184 : Android:PMS_READY
22793.776438 : Android:SysServerInit_END
24645.384365 : BOOT_Animation:END                     // 这里表示已经开进home界面。
24646.324673 : OFF
----------------------------------------
================ END of FILE ===============

(2) 若不能抓取mobielog，可以直接用uart log抓取，时间的分析可以参考FAQ14851 进入kernel前开机时间分析方法。
```

## [FAQ17418] [Recovery][Build] 预置资源（如apk）到userdata，otapackage之后的userdata.img没有此资源

```
随着FLASH空间的使用率被广泛专注，MTK_SHARED_SDCARD的使用逐渐成为主流。
MTK_SHARED_SDCARD enable的前提下，phone storage和internal storage共享userdata分区，其中phone storage的目录变成了/data/media。
MTK_SHARED_SDCARD enable时的内置资源预置方式，可以参见FAQ：
[FAQ14735]【sdcard-FAT filesystem】MTK_SHARED_SDCARD打开时L上如何预置资源

[Issue]
按照FAQ14735预置资源以后，new之后的userdata.img是包含新内置资源，此时再执行otapackage，out目录下的userdata.img并不包含此资源。

[Solution]
经分析，主要原因如下所示：
/build/core/Makefile 中otapackage的主要flow --
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
-> $(INTERNAL_OTA_PACKAGE_TARGET): $(BUILT_TARGET_FILES_PACKAGE) $(DISTTOOLS)
-> $(BUILT_TARGET_FILES_PACKAGE)
$(hide) ./build/tools/releasetools/add_img_to_target_files -p $(HOST_OUT) $@
$(hide) ./build/tools/releasetools/replace_img_from_target_files.py $@ $(PRODUCT_OUT)
Add_img_to_target_files对各个image的处理 --
/build/tools/releasetools/add_img_to_target_files
main
-> AddImagesToTargetFiles(args[0])
-> AddSystem(output_zip, recovery_img=recovery_image, boot_img=boot_image)
-> AddUserdata(output_zip)
-> AddCache(output_zip)

上面flow的目的是以out/obj/的中间包为source重新生成image，放入中间包。
def AddUserdata(output_zip, prefix="IMAGES/"):
"""Create an empty userdata image and store it in output_zip."""
其中， AddUserdata与其他接口的实现不同，主要是生成一个空的目录，google要求otapackage release出去的dataimage是空的（升级本身也是不包含userdata的）。
-> $(hide) ./build/tools/releasetools/replace_img_from_target_files.py $@ $(PRODUCT_OUT)
这段的目的是从中间包将image copy出来替换out目录。
所以，otapackage最终out/obj目录下的/DATA目录是有apk的，但是最后生成的out目录和中间包里的userdata.img都是空的。
如果一定要预置apk，可以尝试将new后的userdata.img保留下来。Otapackage之后，再用new后的userdata.img替换out目录下的userdata.img。
或是直接修改/build/tools/releasetools/replace_img_from_target_files.py 
将
if img.find(".img") != -1:
修改为
if img.find(".img") != -1 and img.find("userdata") == -1 :
```

## [FAQ11961] KK之后的版本状态栏电池图标问题

```
KK之后的版本电池图标由之前的蓝色改成白色，充电状态背景色也不会动。
这是因为KK之后的版本电池图标不再使用之前的图片方式，而是通过代码绘制而成，具体文件如下
BatteryMeterView.java(frameworks\base\packages\SystemUI\src\com\android\systemui)
```

## [FAQ11708] 如何去掉状态栏G、3G图标

```
去掉方法很简单，就是把这个View隐藏就行了，具体修改文件如下
SignalClusterView.java(frameworks\base\packages\SystemUI\src\com\android\systemui\statusbar)

如果是KK之前的版本可能会有单卡、双卡之分，双卡文件是：

SignalClusterViewGemini.java(frameworks\base\packages\SystemUI\src\com\android\systemui\statusbar)

KK及之前版本：
apply()
……
//hide network icon begin
/* int state = SIMHelper.getSimIndicatorStateGemini(i);//hide network icon
    if (!mIsAirplaneMode
            && SIMHelper.isSimInserted(i)
            && PhoneConstants.SIM_INDICATOR_LOCKED != state
            && PhoneConstants.SIM_INDICATOR_SEARCHING != state
            && PhoneConstants.SIM_INDICATOR_INVALID != state
            && PhoneConstants.SIM_INDICATOR_RADIOOFF != state) {
        ……
    } else {*/
        mSignalNetworkType[i].setImageDrawable(null);
        mSignalNetworkType[i].setVisibility(View.GONE);
    //}
//hide network icon end
……

L版本：
修改apply函数中的如下代码：
/*if (!mIsAirplaneMode && mNetworkType != null) {
    int id = TelephonyIcons.getNetworkTypeIcon(mNetworkType);
    Xlog.d(TAG, "apply(), mNetworkType= " + mNetworkType + " resId= " + id);
    mSignalNetworkType.setImageResource(id);
    mSignalNetworkType.setVisibility(View.VISIBLE);
} else {*/
    mSignalNetworkType.setImageDrawable(null);
    mSignalNetworkType.setVisibility(View.GONE);
//}

M版本：

目前默认的如果是非CTA的项目，网络图标默认就是不显示的，对于CTA项目如果不要显示，那么可以修改函数：
setNetworkIcon中如下代码：
// if (mNetworkIcon == 0) {
    mNetworkType.setVisibility(View.GONE);
/*       } else {
   mNetworkType.setImageResource(mNetworkIcon);
   mNetworkType.setVisibility(View.VISIBLE);
}*/

相反的对于非CTA项目如果需要将网络图标显示出来，可以将：
setNetworkIcon中如下代码屏蔽掉：
/*if (!FeatureOptions.MTK_CTA_SET) {
  return;
}*/
```

## [FAQ11620] 透明的状态栏有渐变的阴影效果

```
这是google default设计，如果桌面壁纸是白色的时候比较明显，这个渐进的效果是通过背景图来设置的，在frameworks/base/packages/systemui/res/ 里面drawable-hdpi（如果是其他density，请找对应的资源）中status_background.9.png替换这个图片；
或者修改代码绘制图片的地方：
BarTransitions.java文件最后draw的方法mGradient.draw(canvas); //注释掉这一行即不绘制这个图片就可以了
```

## [FAQ04788] 如何关闭Navigation Bar

```
KK及之前版本：
默认Navigation Bar的控制在 alps/frameworks/base/core/res/res/values/config.xml文件中<bool name=“config_showNavigationBar”>true</bool>， 但是在6589项目以及6572等项目上修改为false不起作用，或者默认已经是false，但是还是会显示navigation Bar。

MT6589 和MT6572：
1. 在6589项目和6572项目上，MTK内部Demo Project有Navigation Bar的需求，因此通过Resource Overlay机制默认打开了Navigation Bar，如果要关闭，需要确认resource overlay部分是否也有定义，具体如下：
alps/mediatek/custom/project_name/resource_overlay/generic/frameworks/base/core/res/res/values/config.xml
<bool name=“config_showNavigationBar”>true</bool>
将这个配置信息修改为false即可。

2. MT6572：
如果上面的xml文件定义都是false，请再确认下mediatek/config/工程名字的目录/system.prop 是否有qemu.hw.mainkeys=0
如果有，请去掉qemu.hw.mainkeys=0的定义
3. JB3 MP之后所有版本统一如下路径修改
\mediatek\custom\common\resource_overlay\navbar\frameworks\base\core\res\res\values\config.xml 
<bool name=“config_showNavigationBar”>true</bool>
将这个配置信息修改为false即可。 

4. 其他平台或者branch都可以类似查找，以上都找不到，请全局搜索config_showNavigationBar

L和M版本：

这个两个版本的修改方式与之前的版本也是类似：

（1）先查看config_showNavigationBar值的定义，默认定义在：alps/frameworks/base/core/res/res/values/config.xml，如果没有请全局搜索。

（2）再检查qemu.hw.mainkeys值的设置。

（3）是否显示Navigation Bar，判断的值在PhoneWindowManager.java文件中的setInitialDisplaySize 函数中被设置，检查mHasNavigationBar的值是如何被设置的。如果mHasNavigationBar为true，Navigation Bar会显示，否则不显示。
```

## [FAQ04504] 如何修改navigation bar为半透明？

```
Navigation bar是google 从4.0版本开始支持的feature，默认情况下这个feature对应的option是关闭的，需要通过修改config 文件来开启。开启navigation bar的方法和注意事项，请参考FAQ:如何开启navigation bar。
如果想要做到，在开启navigation bar的情况下，可以透过navigation bar的背景看到navigation bar后面的内容（也就是修改navigation bar为半透明），应该如何修改？
[SOLUTION]
1,alps\frameworks\base\packages\SystemUI\res\layout\navigation_bar.xml,
    把background修改成statusbar_background的背景图：
    android:background="@drawable/statusbar_background"
2,制作一张半透明的9.png图片，名字叫statusbar_background.9.png,放到
    alps\frameworks\base\packages\SystemUI\res\drawable-hdpi下
3,alps\frameworks\base\packages\SystemUI\src\com\android\
    systemui\statusbar\phone\PhoneStatusBar.java
    修改方法getNavigationBarLayoutParams，如下：
    private WindowManager.LayoutParams getNavigationBarLayoutParams() {
        WindowManager.LayoutParams lp = new WindowManager.LayoutParams(
        . . .
        /*PixelFormat.OPAQUE*/ PixelFormat.TRANSLUCENT);    //mtk added
        . . .
4,WindowManagerService.java中
    修改方法updateWallpaperOffsetLock，如下：
    boolean updateWallpaperOffsetLocked(WindowState wallpaperWin, int dw, int dh,boolean sync)  {
        if (wallpaperWin.mYOffset != offset) {
            if (DEBUG_WALLPAPER) Slog.v(TAG, "Update wallpaper " + wallpaperWin + " y: " + offset);
                changed = true;
                wallpaperWin.mYOffset = offset;   // 修改成wallpaperWin.mYOffset = 0;
            }

对于JB的版本，还需要修改：
5, WindowManagerService.java
修改方法performLayoutLockedInner，如下：
private final void performLayoutLockedInner(boolean initial, boolean updateInputWindows) {
    if (!mLayoutNeeded) {
        …
        for (i = N-1; i >= 0; i--) {
            final WindowState win = mWindows.get(i);
            //mtk added
            if (win.mIsWallpaper)
                mSystemDecorRect.bootom = 屏幕高度;    //以480*800分辨率来说，这里的屏幕高度就是800
            //mtk added
        …
}

对于JB2之后的版本，google对WMS的架构进行调整，暂不支持navigation bar透明，请在JB2之后的版本不做做此修改

注意：
修改navigation bar半透明后存在的限制：
从那些以wallpaper作为背景的画面(画面对应的window具备属性：FLAG_SHOW_WALLPAPER)切换到不显示wallpaper的画面，会在navigation bar的背景上先闪一下wallpaper，然后navigation bar的背景才变成黑色。
如果希望某些特定的window才可以让navigation bar半透明，其他window上navigation bar仍然不透明，例如：只在launcher画面做到navigation bar半透明，其他画面navigation bar仍然保持原来的风格，目前不做支持。
WVGA上开启navigation bar本身就有很多问题，建议不要在WVGA分辨率下开启navigation bar功能。
Navigation bar半透明的功能只针对当前的wallpaper是ImageWallpaper的情况，对Live Wallpaper不生效，后续也不做更多支持。
```

## [FAQ18278] 关闭wfi&&scan always 关闭的情况下依然显示wifi 耗电

```
关闭wfi&&scan always 关闭的情况下，电池计算耗电，依然显示wifi 耗电；
root casue:
BatteryStats 會去等Wifi framework的SupplicantStateTracker的noteWifiSupplicantStateChanged()
由此得知Wifi Supplicant的狀態，
但是關wifi時，可能正在ScaningState，SupplicantStateTracker沒有先送出WIFI_SUPPL_STATE_DISCONNECTED，就已經回到UninitializedState，不再聽Supplicant state change了，
所以造成BatteryStats與Wifi Framework/Supplicant state 不一致，
這個是Google default issue，
[SOLUTION]
diff --git a/service/java/com/android/server/wifi/SupplicantStateTracker.java b/service/java/com/android/server/wifi/SupplicantStateTracker.java
index a4c029d..7d35c61 100644
--- a/service/java/com/android/server/wifi/SupplicantStateTracker.java
+++ b/service/java/com/android/server/wifi/SupplicantStateTracker.java
@@ -249,6 +249,8 @@ class SupplicantStateTracker extends StateMachine {
                     transitionOnSupplicantStateChange(stateChangeResult);
                     break;
                 case WifiStateMachine.CMD_RESET_SUPPLICANT_STATE:
+                    ///M: for sync supplicant state with settings
+                    sendSupplicantStateChangedBroadcast(SupplicantState.DISCONNECTED, false);
                     transitionTo(mUninitializedState);
                     break;
                 case WifiManager.CONNECT_NETWORK:
```

## [FAQ18274] L版本之后，灭屏依然保证framework发起scan

```
灭屏之后离开AP 范围，断线，重新回到AP 范围，不会自动连接；
root cause：
因为L版本之后，为了省电考虑，framework不会触发scan ，从而导致断线后无法自动连接，需要等到亮屏才会重新连接； 
[SOLUTION]
如果需要客制化这一功能，请按照如下修改方案测试；
在WifiStateMachine.java文件中；
改两个地方：
1， 
PendingIntent getPrivateBroadcast(String action, int requestCode) {
    Intent intent = new Intent(action, null);
    intent.addFlags(Intent.FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT);
    //intent.setPackage(this.getClass().getPackage().getName());    注解掉这行
    return PendingIntent.getBroadcast(mContext, requestCode, intent, 0);
}

2，setScanAlarm內，set那句code 改为setRepeating：
mAlarmManager.setRepeating(AlarmManager.RTC_WAKEUP,
System.currentTimeMillis() + 1000, mDefaultFrameworkScanIntervalMs, mScanIntent);

这里的修改保证一点：当wifi 断线之后，我们会1s 后触发一次scan ，之后每间隔5分钟触发一次scan；
mDefaultFrameworkScanIntervalMs 定义的值如下：
<integer translatable="false" name="config_wifi_framework_scan_interval">300000</integer>
```

## [FAQ18293] DRM FL文件没有小锁图标

```
1.进入浏览器->链接到下载网址
2.选择DRM文件->选择Forward Lock文件，下载一张图片->下载完成，从通知栏里进入downloads，发现下载的DRM文件没有小锁图标
这个是正常现象，只有CD和SD的文件才会有锁，因为只有这两类DRM文件需要check权限，而FL是没有权限限制的，只是不能转发，所以FL类型不会有锁显示。

什么是 DRM FL 文件？？
```

## [FAQ18294] 安装应用提示不能安装，报INSTALL_FAILED_DUPLICATE_PERMISSION错误

```
安装应用提示不能安装，报 INSTALL_FAILED_DUPLICATE_PERMISSION 错误
[SOLUTION]
Android 5.0上新增加的 permission 的判断，INSTALL_FAILED_DUPLICATE_PERMISSION这个简单讲就是如果两个apk声明了相同的permission，但是如果这两个apk的签名不一样的话，后安装的apk会fail。
http://tieba.baidu.com/p/3237226241?see_lz=1 可以参考一下。
```

## [FAQ17743] 如何修改35/35m/53平台DDR的工作频率

```
DDR工作频率的修改仅限debug使用，不能用于量产
[SOLUTION]
For MT6753/MT6735
[fix dram to low freq]
adb shell "echo ddr_dfs 1 > /sys/power/vcorefs/vcore_debug"
adb shell "echo KIR_SYSFS 0 > /sys/power/vcorefs/vcore_debug"
adb shell "echo KIR_SYSFS 1 > /sys/power/vcorefs/vcore_debug"
adb shell "echo feature_en 1 > /sys/power/vcorefs/vcore_debug"
adb shell "cat /sys/bus/platform/drivers/emi_clk_test/read_dram_data_rate"
DRAM data rate = 1313

[fix dram to highfreq]
adb shell "echo ddr_dfs 1 > /sys/power/vcorefs/vcore_debug"
adb shell "echo KIR_SYSFS 1 > /sys/power/vcorefs/vcore_debug"
adb shell "echo KIR_SYSFS 0 > /sys/power/vcorefs/vcore_debug"
adb shell "echo feature_en 1 > /sys/power/vcorefs/vcore_debug"
adb shell "cat /sys/bus/platform/drivers/emi_clk_test/read_dram_data_rate"
DRAM data rate = 1466 or 1600

For MT6735M

//DDR 1066
echo KIR_SYSFSX 1 > /sys/power/vcorefs/vcore_debug

//DDR 800
echo KIR_SYSFSX 2 > /sys/power/vcorefs/vcore_debug
```

## [FAQ18283] Android M+Mediatek _Camera Code Path （不含Kernel）

```
Camera App Package
MTK Camera：/vendor/mediatek/proprietary/packages/apps/Camera/
AOSP Camera：
(out/target/product/<project>/system/app/Camera2.apk)
/packages/apps/Camera2/

Application Framework（out/target/product/<project>/system/framework/framework.jar)
/frameworks/base/core/java/android/hardware/ （非Camera2下的为api1）
/frameworks/base/core/java/android/hardware/camera2/
/frameworks/base/media/java/android/media/ 
CamcorderProfile.java、CameraProfile.java、ExifInterface.java、Image.java、ImageReader.java、ImageUtils.java、ImageWriter.java等等
注：FaceDetector.java并非Camera FaceDetection，而是android原生一个开源人脸识别算法接口，可从一个bitmap获取到人脸信息

JNI (out/target/product/<project>/system/lib/libandroid_runtime.so)
/frameworks/base/core/jni/
android_hardware_Camera.cpp
android_hardware_camera2_CameraMetadata.cpp
android_hardware_camera2_DngCreator.cpp
android_hardware_camera2_legacy_LegacyCameraDevice.cpp
android_hardware_camera2_legacy_PerfMeasurement.cpp

Android Camera Native Framework
/frameworks/av/camera/
/frameworks/av/include/camera/
/frameworks/av/services/camera/libcameraservice/
/frameworks/av/media/mediaserver/
/frameworks/av/media/img_utils/src/DngUtils.cpp

Android Camera Hal
core header files：
(/system/core/include/system/) camera.h、graphics.h 、window.h
camera metadata：
/system/media/camera/

AOSP Hal：
/hardware/libhardware/include/hardware/
/hardware/libhardware/modules/camera/
/hardware/libhardware/modules/usbcamera/
/hardware/libhardware/modules/gralloc/

MediaTek Camera Hal (ISP3.0平台)
/vendor/mediatek/proprietary/hardware/mtkcam/legacy/
/vendor/mediatek/proprietary/hardware/mtkcam/ext/
/vendor/mediatek/proprietary/hardware/mtkcam/feature/
/vendor/mediatek/proprietary/custom/common/hal/inc/
/vendor/mediatek/proprietary/custom/mtxxxx/hal/ 
/vendor/mediatek/proprietary/custom/{ProjectName}/hal/imgsensor/

如下为非Camera但和Camera强相关的Hal模块
/vendor/mediatek/proprietary/hardware/gralloc_extra/
/vendor/mediatek/proprietary/hardware/dpframework/
/vendor/mediatek/proprietary/hardware/bwc/
/vendor/mediatek/proprietary/hardware/jpeg/
/vendor/mediatek/proprietary/hardware/m4u/
/vendor/mediatek/proprietary/hardware/mmsdk/
/vendor/mediatek/proprietary/hardware/mmutils/
/vendor/mediatek/proprietary/hardware/perfservice/

MediaTek Camera Hal (ISP4.0平台)
/vendor/mediatek/proprietary/hardware/mtkcam/（除legacy的folder外）
/vendor/mediatek/proprietary/custom/common/hal/inc/
/vendor/mediatek/proprietary/custom/mtxxxx/hal/ 
/vendor/mediatek/proprietary/custom/{ProjectName}/hal/imgsensor/

如下为非Camera但和Camera强相关的Hal模块
/vendor/mediatek/proprietary/hardware/gralloc_extra/
/vendor/mediatek/proprietary/hardware/dpframework/
/vendor/mediatek/proprietary/hardware/bwc/
/vendor/mediatek/proprietary/hardware/jpeg/
/vendor/mediatek/proprietary/hardware/m4u/
/vendor/mediatek/proprietary/hardware/mmsdk/
/vendor/mediatek/proprietary/hardware/mmutils/
/vendor/mediatek/proprietary/hardware/perfservice/

CTS
/cts/tests/tests/hardware/src/android/hardware/camera2/
/cts/tests/tests/hardware/src/android/hardware/cts/
/cts/apps/CameraITS/
/cts/apps/CtsVerifier/src/com/android/cts/verifier/camera/

Portability Camera
/frameworks/ex/camera2/
(主要应该是这个folder /frameworks/ex/camera2/portability/src/com/android/ex/camera2/portability/)
```

## [FAQ18281] 如何修改长按LatinIME键盘中某个字母时弹出框的内容

```
弹出框的字符定义在donottranslate-more-keys.xml这支文件中，根据修改语言的不同，可以在
packages\inputmethods\LatinIME\tools\make-keyboard-text\res\values-xxx这个路径中找到对应语言使用的donottranslate-more-keys.xml文件，在文件中找到要修改的字符对其字串定义进行修改即可。
 
修改完成之后需要按照如下步骤进行编译才能生效： 
（1）执行指令：mmm packages/inputmethods/LatinIME/tools/make-keyboard-text/
生成新的make-keyboard-text.jar放在alps\out\host\linux-x86\framework路径下。

（2）使用（1）步生成的make-keyboard-text.jar来生成新的KeyboardTextsTable.java文件，执行指令如下：
java -jar out/host/linux-x86/framework/make-keyboard-text.jar -java packages/inputmethods/LatinIME/java/src/
该指令完成后，会在packages\inputmethods\LatinIME\java\src\src\com\android\inputmethod\keyboard\internal路径下生成新的KeyboardTextsTable.java，将这个新的KeyboardTextsTable.java剪切到之前packages\inputmethods\LatinIME\java\src\com\android\inputmethod\keyboard\internal目录下，将旧的替换掉。

（3）执行mmma packages/inputmethods/LatinIME/，生成新的LatinIME.apk，将新的apk push到手机中验证即可。
```

## [FAQ03087] 如何在状态栏上增加一个icon

```
1. 首先需要在alps/frameworks/base/res/res/values/config.xml中定义需要显示的icon的配置信息。以添加headset(耳机图标)为例：
2. 其次在 alps/frameworks/packages/SystemUI/src/com/android/systemui/statusbar/PhoneStatusBarPolicy.java 中进行初始化
3. 然后在 alps/frameworks/packages/SystemUI/src/com/android/systemui/statusbar/PhoneStatusBarPolicy.java 中注册相应的receiver来接收Intent
同时在updateHeadSet方法中调用StatusBarManager提供的setIcon/setIconVisibility方法 来显示或隐藏head set icon.
```

## [FAQ03089] 如何调整状态栏icon之间的显示顺序

```
需要在alps/frameworks/base/res/res/values/config.xml 中的config_statusBarIcons调整相应的顺序，其中从上倒下，对应的状态栏的顺序为从左到右。
```

## [FAQ07781] user版本时，设置里，如何将“开发者选项”选项显示出来

```
如果要always显示“开发者选项”菜单，请修改
Settings.java (alps\packages\apps\settings\src\com\android\settings)
中 
private void updateHeaderList(List<Header> target) {
final boolean showDev =  true; //修改为一直显示开发者选项.
```

## [FAQ06277] 账户自动同步默认关闭

```
Q:设置--账户与同步---自动同步
如何使得自动同步默认关闭。
A:修改 SyncStorageEngine.java (alps\frameworks\base\core\java\android\content)中的
private boolean mMasterSyncAutomatically = true;
修改为
private boolean mMasterSyncAutomatically = false;
既可将自动同步的默认值设置成不勾选。 
```

## [FAQ10772] 在窗口小部件里快速设置如何默认同步关闭

```
在JB版本是由 SyncStorageEngine.java (alps\frameworks\base\core\java\android\content)
中
public boolean getMasterSyncAutomatically(int userId) {
    synchronized (mAuthorities) {
        Boolean auto = mMasterSyncAutomatically.get(userId);
        Log.d(TAG,"userId="+userId+" auto="+auto+" mExt="+mExt);
        if(mExt != null && mExt.getCurrentOPIndex() == 1){
            ///M: add for cmccc when there is no account default auto sync is off
            Log.d(TAG,"mExt.getCurrentOPIndex()="+mExt.getCurrentOPIndex());
            return auto == null ? false : auto;
        } else {
            return auto == null ? true : auto;
        }
        //return auto == null ? mDefaultMasterSyncAutomatically : auto;
    }
}
决定的, 如果是CMCC的项目,默认就会是false.这是CMCC需求。
如果不是CMCC定制,可以修改
return auto == null ? true: auto; 
为
return auto == null ? false: auto;
这样就默认是关闭了。
只适用JB版本
```

## [FAQ06166] 怎么在某种语言下添加baidu搜索引擎,BING 显示为中文，并将系统默认的搜索引擎修改成百度？

```
1：去掉google搜索引擎修改方法：
在alps\mediatek\source\frameworks\res\res\values\donottranslate-search-engines.xml 中
有一个name为search_engines的array,将其中的google item删除掉即可删除中文下的google搜索引擎。
其他语言下方法类似，在该res包中搜索search_engines的关键字找到其它语言的google搜索引擎，同样将
google的ITEM删除掉，即可删除其它语言下的google 搜索引擎。
2：如何设置BAIDU为默认引擎：
在quickSearhBox的源码中，有个SearchEngineItemControl.java的文件，修改其中的
DEFAULT_SEARCH_ENGINE的定义为baidu即可。
3：如何修改BING 显示为中文必应：
修改
alps\mediatek\source\frameworks\res\res\values\donottranslate-all_search_engines.xml 中
string-array name="bing_zh_CN" 内<item>的值为下面的内容即可
<string-array name="bing_zh_CN" translatable="false">
    ...
    <item>&#x5fc5;&#x5e94;</item>
    ...
</string-array>
如果只要验证baidu是否被添加进去,只需编译mediatek-res.apk, framework.jar,secondary-framewor.jar 并push 到手机重启即可验证.
如果要验证baidu是否有设为默认引擎,则需整个项目new下才能验证,我这边实验过恢复出厂设置不行,恢复后,还是上次
选中的搜索引擎.
```

## [FAQ10763] 在中文简体状态下无法修改默认引擎，默认引擎一直都是百度

```
项目在中文简体状态下无法修改默认引擎，默认引擎一直都是百度。如何改为Google?
[SOLUTION]
如果是OP01项目：
修改
KK和KK以前的版本：OP01DefaultSearchEngine.java (alps\mediatek\operator\op01\packages\apps\plugins\src\com\mediatek\qsb\plugin)
L和L以后的版本：OP01DefaultSearchEngine.java /vendor/mediatek/proprietary/operator/OP01/packages/apps/Plugins/src/com/mediatek/qsb/plugin/
中
public static final String SERCH_ENGIN_GOOGLE = "google";//BrowserSetting
public String getSearchEngine(SharedPreferences mPrefs) {
    Xlog.i(TAG, "Enter: " + "getSearchEngine" + " --OP01 implement");
    return mPrefs.getString(PREF_SEARCH_ENGINE, SERCH_ENGIN_GOOGLE);
}
同时为保证 quickSearchBox那边的一致, quickSearchBox部分也要修改
OP01DefaultSearchEngine.java (alps\mediatek\operator\op01\packages\apps\plugins\src\com\mediatek\qsb\plugin) 
中改为google
public static final String DEFAULT_SEARCH_ENGINE = "google";
 
如果不是OP01的项目应该修改
1：KK和KK以前的版本：Donottranslate-new-search_engines.xml (alps\mediatek\frameworks\base\res\res\values)
L和L以后的版本： /vendor/mediatek/proprietary/frameworks/base/res/res/values/
values-zh-rtw
values-zh-rcn 这三个目录，将google作为第一个搜索引擎。
```

## [FAQ06192] 设置 > 个人 > 安全 > 凭据存储 的作用

```
使用证书 您可以使用数字证书标识设备，以实现多种目的，包括 VPN 或 Wi-Fi 网络访问，以及“电子邮件”或 Chrome 浏览器等应用对服务器的身份验证。在您的系统管理员的帮助下进行使用；并将其安装在设备的受信任凭据存储上。
Android 支持以 .crt 或 .cer 扩展名的文件形式保存的 DER 编码 X.509 证书。如果您的证书文件带有 .der 或其他扩展名，则必须将其更改为 .crt 或 .cer，否则无法安装。
Android 也支持以 .p12 或 .pfx 扩展名的 PKCS#12 密钥库文件形式保存的 X.509 证书。如果您的密钥库文件带有其他扩展名，则必须将其更改为 .p12 或 .pfx，否则无法安装。通过 PKCS#12 密钥库安装证书时，Android 会同时安装所有随附的私有密钥或证书授权中心的证书。
安装客户端证书和 CA 证书
要从平板电脑的内存设备安装证书，请按以下步骤操作：
将证书或密钥库从计算机复制到设备的内存设备的根目录下（也就是说，不要复制到某个文件夹中）。 
依次转到设置  > 个人 > 安全 > 凭据存储 > 从存储设备安装。 
触摸证书或密钥库的文件名即可安装。系统只显示您尚未安装的证书。 
根据系统提示输入密钥库的密码，然后触摸确定。 
为该证书输入一个名称，然后触摸确定。 
通常，系统会同时安装客户端证书随附的 CA 证书。您也可以通过相同步骤安装单独的 CA 证书。
如果您尚未设置设备的图案、PIN 或密码，则系统会提示您设置一个。您的系统管理员可能会预先确定可接受的锁定类型。
现在，您可以在连接到安全网络时使用安装的证书，或将该证书用于“电子邮件”、“浏览器”和第三方应用的客户端身份验证。证书成功安装后，系统会删除存储设备中的副本。
重要提示：对于“电子邮件”和“浏览器”等支持证书的应用，可直接从应用内部安装证书。有关详情，请参阅各应用随附的帮助信息或其他说明。
使用 CA 证书
依次触摸设置 > 个人 > 安全 > 凭据存储 > 受信任的凭据。“受信任的凭据”屏幕有以下两个标签： 
系统显示永久安装在手机 ROM 中的证书授权中心 (CA) 的证书。
用户显示您自行安装的所有 CA 证书，例如安装客户端证书过程中安装的 CA 证书。
要查看 CA 证书的详情，请触摸其名称。相应详情会显示在滚动屏幕中。 
要删除或停用 CA 证书，请向下滚动到详情屏幕的底部，然后触摸停用（适用于系统证书）或删除（适用于用户证书）。 
当您停用系统 CA 证书后，其详情屏幕底部的按钮会变成启用，以便您在需要时重新启用该证书。当您删除用户安装的 CA 证书后，该证书会永久消失，必须重新安装才能再次获得该证书。
在出现的确认对话框中，点击确定。
```

## [FAQ12169] 点击进入quick search box，搜索不到通话记录

```
1:在quick search box中,进入设置->可搜索项->勾选通话记录。
2：在quick search box中选择全部，搜索，搜索不到通话记录。

搜索不到通话记录的原因是因为call log不是default enabled 的corpus， 
目前google  default的搜索规则在搜索全部时很怪，搜索全部时， 不是
真正的去搜索全部的，而是去搜索default enabled的，但是当default
enabled的(例如网络)不被勾选时，它又可以多去搜索一个非default的。
所以去掉网络就可以搜索到calllog.
如果想要保证搜索全部时可以搜索到calllog，需要把calllog设置成default 搜索项，
同时因为添加了一个default可搜索项目，需要
将QuickSearchBox 代码中
Config.java内的NUM_PROMOTED_SOURCE 的值加一，即修改为4.
同时修改QuicksearchBox中的config.xml
将default_corpora中添加callLog的项目
<string-array name="default_corpora" translatable="false">
    <item>web</item>
    <item>apps</item>
    <item>com.android.dialer/.com.mediatek.dialer.activities.CallLogSearchResultActivity</item>
    <item>com.android.providers.applications/.ApplicationLauncher</item>
</string-array>
或者将calllog的uri添加到default_corpora_suggest_uris中去
<string-array name="default_corpora_suggest_uris" translatable="false">
    <item>content://com.android.contacts/search_suggest_query</item>
    <item>content://call_log/search_suggest_query</item>
</string-array>
```

## [FAQ10764] 快速搜索(QuickSearchbox)怎么关联应用(apk)

```
快速搜索(QuickSearchbox)怎么关联应用（apk）
[SOLUTION]
要实现一个自己的contentProvider,并在searchable.xml中的searchSuggestAuthority 
配置上这个provider,同时provider返回的数据也有格式要求，返回的列应该是
_ID  TEXT_1  TEXT_2  ICON_1  ICON_2  INTENT_ACTION INTENT_DATA INTENT_DATA_ID NTENT_EXTRA_DATA QUERY SHORTCUT_ID SPINNER_WHILE_REFRESHING 
你的provider要响应的URI是
content://your.authority/optional.suggest.path/SUGGEST_URI_PATH_QUERY
其中optional.suggest.path是可选的，一般可以为空，所以贵司可以要handle的 uri是
content://your.authority/SUGGEST_URI_PATH_QUERY
而SUGGEST_URI_PATH_QUERY是SearchManager的一个常量，为"search_suggest_query"
所以要handler的URI是
content://your.authority/search_suggest_query
其中your.authority就是你在provider中定义的authority，也是searchable中的searchSuggestAuthority
 
如果要在选中全部时，输入就有搜索结果，必须在searchable.xml中设置android:queryAfterZeroResults="true"
如果在searchable.xml中没有设置，默认值就是false。

google官方可以参考的文档有
http://developer.android.com/guide/topics/search/index.html
http://developer.android.com/guide/topics/search/search-dialog.html
http://developer.android.com/guide/topics/search/adding-recent-query-suggestions.html
http://developer.android.com/guide/topics/search/adding-custom-suggestions.html
http://developer.android.com/guide/topics/search/searchable-config.html
```

## [FAQ18286] 设置里面App notification里面，短信应用选择Block all,但是在短信编辑界面自发自收短信，仍有提示音

```
进入系统设置，Sound&notification--->Notification---->App notification--->Messaging--->Block all,
勾选Block all选项。
在短信应用里面，当前会话界面自发自收，如果停留在编辑界面，收到新信息会有提示音。（这一点非常重点，一定是要当前正在收发信息的会话才会有提示音。如果是其它号码发过来的，而没有停留在那个会话，那么收到信息不会有提示音）

[SOLUTION]
block的if判断请参考如下修改方法，Thanks！
import android.app.AppOpsManager;
在 MessagingNotification.java 的 playInConversationNotificationSound 方法中：

AppOpsManager appOps = (AppOpsManager)context.getSystemService(Context.APP_OPS_SERVICE);
boolean isNotificationEnabled = appOps.checkOpNoThrow(AppOpsManager.OP_POST_NOTIFICATION,
context.getApplicationInfo().uid, context.getPackageName()) == AppOpsManager.MODE_ALLOWED;
if (!isNotificationEnabled || notiProf.needMute() || TextUtils.isEmpty(ringtoneStr)) {
// Nothing to play
return;
}
```

## [FAQ08624] 搜索设置为全部时无法搜索到短信，音乐

```
搜索设置中选择了音乐和短信，音乐中此时有一首名为全城热恋的歌曲，但是在搜索时，如果输入"全"或者"全城"，都搜不到，只有输入"全城热"才可以搜到,

music两个字符搜索不到是正常现象,因为在
Searchable.xml (alps\packages\apps\music\res\xml) 
中有默认定义最小搜索需要3个字符.
<searchable xmlns:android="http://schemas.android.com/apk/res/android"
    android:label="@string/search_title"
    android:hint="@string/search_hint"
    android:includeInGlobalSearch="true"
    android:searchSuggestAuthority="media"
    android:searchSuggestPath="external/audio/search"
    android:searchSuggestThreshold="3"             ##这里有默认定义最少3个,如果需要,可以修改这个值.
    android:searchSuggestIntentAction="android.intent.action.VIEW"
    android:searchSettingsDescription="@string/search_settings_description" />

[FAQ13588] [Audio APP]在音乐中搜索歌曲, 至少需要输入三个字符才会启动搜索
```

## [FAQ18254] 开启TurboDownload后下载速度会比纯4G更慢吗？

```
这种情况是存在的。
我们在下载前会根据之前wifi和mobile的速率设置比例，例如wifi为0.6，mobile为0.4，然后建立TCP connection进行下载。一旦建立起来之后，如果wifi速率变慢了，那么Turbo download就会比纯4G下载更慢。
目前无法做到动态配置速率比。
在网络状况良好的情况下是会加速的。不保证一定会比纯4G快

当下载的文件超过5M，并且wifi是connected状态，就会用两种方式进行下载。
涡轮下载不会看当前wifi的信号以及mobile data的信号值，而是根据当前统计的wifi速率及mobile速度设定一个ratio下去，例如wifi为0.5，mobile为0.5，如果之前并没有wifi或者mobile的统计信息，则会使用初始值0.5，0.5。
涡轮下载的时候，会根据当前的wifi和mobile速度动态调整ratio，在下一次再启用涡轮下载时，就会使用新的调整值。
```

## [FAQ17877] [Image]L/M版本上修改gif/bmp的限制

```
考虑到memory的问题，对较大的BMP，GIF图片都做了一些限制；
当前code中设置的值能够满足市面上大部分图片的尺寸要求；如需客制化，需要多测试是否会造成Low Memory问题.
如下地方修改:

/packages/apps/Gallery2/src/com/mediatek/gallery3d/util/DecodeSpecLimitor.java中：
// GIF: None LCA:20MB, LCA:10MB
private final static int MAX_GIF_FILE_SIZE = FeatureConfig.sIsLowRamDevice ? (10 * 1024 * 1024) : (20 * 1024 * 1024);
private final static long MAX_GIF_FRAME_PIXEL_SIZE = (long) (1.5f * 1024 * 1024); // 1.5MB
private final static String MIME_GIF = "image/gif";

// BMP & WBMP: NONE-LCA file size < 52MB, LCA file size < 6MB
private final static int MAX_BMP_FILE_SIZE = FeatureConfig.sIsLowRamDevice ? (6 * 1024 * 1024)
 : (52 * 1024 * 1024);
```

## [FAQ17755] 录制低画质的视频在WIN7上查看属性，发现高宽显示为空。

```
有客户反馈手机上录制低画质视频，把视频放到WIN7系统的电脑上，点右键查看视频的属性，视频高宽栏显示为空。 
 
这个是由于低画质录制的视频采用了H263编码，而Win7对H.263 支持不完善。可以看到，所有H263视频的高宽在WIN7上显示都是空的。
所以如果要避免此问题，可以修改视频录制的编码，比如H264。
```

## [FAQ04247] [Storage]如何解压编译生成的system/data等带ext4文件系统的image

```
在ubuntu系统下：
1.cd alps/out/host/linux-x86/bin/
2../simg2img <source_path>/data.img <target_path>/data_ext4.img
3.生成的data_ext4.img 即被解压出来的带有ext4 文件系统的image文件。
4.使用mount 命令把ext4 image挂载到某目录(temp_dir )
    sudo mount  -t ext4 <target_path>/data_ext4.img ~/<temp_dir>
5.这样就可以直接查看/修改文件系统内的类容。
注意 
如果调用./simg2img出现了错误，就将前面三个步骤省略，直接采用第四个步骤，将得到的回读img通过mout命令挂载。
```

## [FAQ04137] 【sdcard-common】如何将emmc上的内置sdcard拿掉

```
拿掉emmc上的内置T卡，将内置T卡空间分配给userdata区域使用。
[SOLUTION]
for ICS(android 4.0)
   可在DCC上下载参考文档《Disable Internal fat partition_customer_4.0》进行修改。
for JB(android 4.1)
   可在DCC上下载参考文档《Disable Internal fat partition_customer_4.1》进行修改。
```

## [FAQ12295] [VR]录像的视频如何在画面中实时加上时间戳

```
方法一（L之前版本）：
可以在下面这个地方同，即MDP输出这个画面，但是Encode之前，使用SW的方式来Overlay即可，至于具体如何实现Overlay的话，网上搜索一下，很多示例代码的。如下的参考代码是在录像的画面上画一条彩色条的测试代码，你们可以将添加timestamp的功能的代码替换掉memset之后即可实现timestamp的功能。这个Buffer的格式是YUV420 Planer格式，即先放Y，再放U，最后放V。
frameworks/av/media/libstagefright/CameraSource.cpp
 void CameraSource::dataCallbackTimestamp()
{
    ... ...
    CHECK(data != NULL && data->size() > 0);

    // Brand the timestamp start 2014-07-29
    {
        int _stride = mVideoSize.width;
        int height = mVideoSize.height;
        uint8_t *_ptr = (uint8_t *)data->pointer();
        int offset = 240;
        int bar_width = 80;
        ALOGE("!!! draw line, ptr: %p, offset: %d, stride: %d, height: %d", _ptr, offset, _stride,height);
        if (NULL != _ptr) {
            // Overlay the timestamp here.
            memset(_ptr + offset*_stride , 0x80, _stride * bar_width); //Clear Y
            memset(_ptr + (height*_stride) + offset*_stride/4 , 0x40, _stride*bar_width/4); // Clear U
            memset(_ptr + (height*_stride + height*_stride/4) + offset*_stride/4, 0x40, _stride*bar_width/4); // Clear V
        }
    }
    // Brand the timestamp end 2014-07-29

    mFramesReceived.push_back(data);
    int64_t timeUs = mStartTimeUs + (timestampUs - mFirstFrameTimeUs);
    mFrameTimes.push_back(timeUs);
    ... ...
}
方法二(适用所有版本，不包括MT6735平台的M版本):   
PreviewCmdQueThread.cpp(/vendor/mediatek/proprietary/platform/mt6735/hardware/mtkcam/D2/v1/hal/adapter/MtkDefault/Preview/PreviewCmdQueThread.cpp) 的
updateOne()方法中修改。将丢给encoder的yuv数据进行处理，这里的demo是将部分内容给涂黑，您可以使用这段buffer来处理timestamp，其中buffer地址为vidoNode.getImgBuf()->getVirAddr()。
1）录像video中显示时间：
if(flag&eID_Pass2VIDO)
{
 //Add timestamp
 MUINT8*p=(MUINT8*)vidoNode.getImgBuf()->getVirAddr();  
 MUINT8*end_p=(MUINT8*)vidoNode.getImgBuf()->getVirAddr()+ vidoNode.getImgBuf()->getImgWidth()*3*100/2;
 while((p<(end_p)))//add the addTimeStamp() function for yourself
 {
  *p=0;
   p++;
 }  
 //Add timestamp end
 vidoNode.getImgBuf()->setTimestamp(pass1LatestTimeStamp);
 mspPreviewBufHandler->enqueBuffer(vidoNode);
}
    2）录像preview的时候也显示时间:
if (flag&eID_Pass2DISPO)
{
 //Add timestamp
 MUINT8*p=(MUINT8*)dispNode.getImgBuf()->getVirAddr();    
 MUINT8*end_p=(MUINT8*)dispNode.getImgBuf()->getVirAddr()+ dispNode.getImgBuf()->getImgWidth()*3*100/2; 
 while((p<(end_p)) )//add the addTimeStamp() function for yourself
 {
  *p=0; 
   p++;
 }   
 //Add timestamp
 dispNode.getImgBuf()->setTimestamp(pass1LatestTimeStamp);  
 mspPreviewBufHandler->enqueBuffer(dispNode);
}   
方法三(适用所有版本，包括MT6735平台的M版本):
ExtImgProcImp.cpp：
M版本=>/vendor/mediatek/proprietary/hardware/mtkcam/legacy/v1/common/ExtImgProc/ExtImgProcImp.cpp
L版本=>/vendor/mediatek/proprietary/hardware/mtkcam/v1/common/ExtImgProc/ExtImgProcImp.cpp
KK版本=>/mediatek/hardware/mtkcam/v1/common/ExtImgProc/ExtImgProcImp.cpp
这里的demo是对ImageBufferQueue的yuv数据进行处理，将部分内容给涂黑，您可以使用这段buffer来处理timestamp，其中buffer地址为img.virtAddr。
1）设置需要处理的Image buffer type：
ExtImgProcImp::
ExtImgProcImp()
{
 FUNCTION_NAME;
 //Set which img buf you want to process.
 //For example: mImgMask = BufType_Display|BufType_Record;
 mImgMask = BufType_Display|BufType_Record;//录像Preview和video中都显示时间
 mUser = 0;
} 
2）添加时间戳
MBOOL
ExtImgProcImp::
doImgProc(ImgInfo& img)
{
...
 //Add image process code
 switch(img.bufType)
 {
  case BufType_Display:
  {
  //[BEGIN]

  //Add timestamp
  MUINT8 *p = (MUINT8*)img.virtAddr;
  MUINT8 *end_p = (MUINT8*)img.virtAddr + img.width*3*100/2;
  while((p<(end_p)))
  {
   *p=0;
   p++;
  }
  //Add timestamp end

  //[END]
  break;
  }
  ...
  case BufType_Record:
  {
  //[BEGIN]

  //Add timestamp
  MUINT8 *p = (MUINT8*)img.virtAddr;
  MUINT8 *end_p = (MUINT8*)img.virtAddr + img.width*3*100/2;
  while((p<(end_p)))
  {
   *p=0;
   p++;
  }
  //Add timestamp end

  //[END]
  break;
  }
  ...
 }
}
```

## [FAQ18241] 如何从Log里面判断EIS是否有生效

```
为了准确快捷的确定EIS是否生效，最好的方法就是main log里面去判断

[SOLUTION] 
1. 一般来说，EIS防抖主要录像功能，因此先看是否有startrecording之后才发生,关键词"CameraClient: startRecordingMode"
43648 01-01 22:17:18.968700   292  5565 D CameraClient: startRecording (pid 1591)
43653 01-01 22:17:18.968846   292  5565 D CameraClient: startRecordingMode
43672 01-01 22:17:18.971104   292  5565 I MtkCam/Cam1Device: (5565)(Default:0)[Cam1DeviceBase::startRecording] +

2. 直接看是EIS计算出来的结果,可以看cmvx和cmvy的值。关键词"[PrepareEisResult]"
43814 01-01 22:17:19.000351   292  5532 D EisHal  : [PrepareEisResult]cmvX(44738),cmvY(66588)
43816 01-01 22:17:19.000409   292  5532 D EisHal  : [PrepareEisResult]X(349,1107296256),Y(260,234881024)
44026 01-01 22:17:19.034379   292  5532 D EisHal  : [PrepareEisResult]cmvX(44749),cmvY(66463)
44028 01-01 22:17:19.034734   292  5532 D EisHal  : [PrepareEisResult]X(349,1291845632),Y(259,1333788672)
44310 01-01 22:17:19.068951   292  5532 D EisHal  : [PrepareEisResult]cmvX(44754),cmvY(66472)

3. MDP为EIS出来的input size, 关键词"{MdpMgr} [_startMdp]"
44437 01-01 22:17:19.082214   292  5545 I MdpMgr  : {MdpMgr} [_startMdp] QQ idx[0]_src_crop(1/1) : X(0),FloatX(0),Y(0),FloatY(0),W(2304),H(1296)

4. 供给EIS做处理的SIZE, 关键词"[DoEis]EisIn"
44503 01-01 22:17:19.100225   292  5532 D EisHal  : [DoEis]EisIn(2100,3116),P1T(1750,2596)
```

## [FAQ18243] MTK平台HAL3支持情况

```
目前我司平台有支援HAL3，默认开的是HAL1.如果ap有特别的需求，需要使用API2，可以通过修改一些配置文件开HAL3.
每个平台的支援情况请参考DCC上：M Camera Plan.pptx
如何从HAL1.0切换到HAL3请参考DCC上：
HAL1 switch to HAL3.2.pptx
Programming Guide to switch Camera HAL 1.0 and Camera HAL3.2.docx
```

## [FAQ03434] [Recovery]恢复出厂设置之后如何将时间变为初始值

```
Recovery.c (bootable\recovery):
#include <linux/rtc.h>
#include <sys/ioctl.h>
void set_rtc(void) {
    struct tm tm;
    int fd;
    tm.tm_sec = 0;
    tm.tm_min = 0;
    tm.tm_hour = 0;
    tm.tm_mday = 1;
    tm.tm_mon = 0;
    tm.tm_year = 2012-1900;
    fd = open("/dev/rtc0", O_WRONLY);
    if (fd != -1) {
        ioctl(fd, RTC_SET_TIME, &tm);
        close(fd);
    }
}
int
main(int argc, char **argv) {
...
中的
    } else if (wipe_data) {
....
 //
/*该else if代码最后 新增代码如下*/
set_rtc();
}
```

## [FAQ03431] [Recovery]OTA升级在recovery mode下无法返回normal mode

```
请确认一下 mediatek/custom/<project>/uboot/inc/mt65xx_partition.h
里面的 NAND_WRITE_SIZE是设定为多少.如果您使用的nand flash，请确认NAND_WRITE_SIZE此值是否与nand flash的page size一致。
```

## [FAQ18223] consys-reserve-memory use for which module

```
reviewing the consys-reserve-memory of device，customer finds thare are different in different device;
so customer want to know those memory used for which module?
 
adb shell cat proc/mtk_memcfg/memory_layout
Lavender M: [PHY layout]consys-reserve-memory : 0xa9e00000 - 0xa9ffffff (0x200000) => 2MB
SM30: [PHY layout]consys-reserve-memory : 0x5fe00000 - 0x5fefffff (0x100000) => 1MB

[Answer]
the 2M memory space is devided into three parts(512k for connectivity system, 512k for coredump space and 1M for GPS) in android M.
```

## [FAQ18224] 关于快拍实现的一个思路

```
很多客户有快拍的需求，如在灭屏或锁屏状态下能长按某个物理按键（多是音量键）来唤起Camera应用或者直接拍照并显示出照片预览。
这个需求的基本功能为灭屏或锁屏状态下能响应长按事件并唤起Camera进行拍照，可在PhoneWindowManager.java中来做这件事情。
 
PhoneWindowManager.java的interceptKeyBeforeQueueing会截取到keycode的down和up事件，可以在音量键按下(down)时给handler发送一个延迟启动的消息，在这个消息处理中做唤起Camera应用拍照的动作。在音量键抬起(up)时去remove这个消息.延迟时长可设200ms，表示长按的时间。这样，短按的话会在down时发送这个消息，up时马上又remove掉了，所以什么事情没有发生。长按时，在down时发送了消息，并长按时间超过200ms时就会真正去执行对Camera的操作。 
```

## [FAQ10434] Home key 点亮屏幕后, 如何使手机不自动回到 launcher 界面

```
有些项目会把 home key 配置成 wake key
这样, 按 home key 的时候就可以唤醒手机
但同时,home key 又会把当前的界面切到 launcher
如果只想让 home key 在黑屏时起到唤醒功能, 而不自动切换到 launcher
需要怎么做?
 
[SOLUTION]
注意: 黄色背景部分代码为所添加的代码
L、M
修改phonewindowmanager.java 中 interceptKeyBeforeQueueing 方法的下面这段 code:

// Basic policy based on interactive state.
int result; //参考行
//add  begin
if ( keyCode == KeyEvent.KEYCODE_HOME && !isScreenOn()) {
       policyFlags |= WindowManagerPolicy.FLAG_WAKE;
}
//add end
boolean isWakeKey = (policyFlags & WindowManagerPolicy.FLAG_WAKE) != 0
|| event.isWakeKey(); //参考行

KK
1: 修改 phonewindowmanager.java 中 interceptKeyBeforeQueueing 方法的下面这段 code:
if (keyCode == KeyEvent.KEYCODE_POWER) {
    policyFlags |= WindowManagerPolicy.FLAG_WAKE;
}
改为:
if (keyCode == KeyEvent.KEYCODE_POWER || (keyCode == KeyEvent.KEYCODE_HOME && !isScreenOn)) {
    policyFlags |= WindowManagerPolicy.FLAG_WAKE;
}

2: 仍然是此方法,对应部分修改为如下:
int result; //参考行

if (((isScreenOn && !mHeadless) || (isInjected && !isWakeKey))) {//参考行
    // When the screen is on or if the key is injected pass the key to the application.
    Log.d(TAG,"oldScreenOn = "+oldScreenOn); 
    if(!oldScreenOn && (keyCode == KeyEvent.KEYCODE_HOME)){
        Log.d(TAG,"eat the home up because home down has dropped");
        result |= ACTION_WAKE_UP;
    }else{
        result = ACTION_PASS_TO_USER;
    }
} else {
    // When the screen is off and the key is not injected, determine whether
    // to wake the device but don't pass the key to the application.
    result = 0;
    if (down && isWakeKey && isWakeKeyWhenScreenOff(keyCode)) {
           ...... 
    }
}
oldScreenOn = isScreenOn;

其中的 oldScreenOn 请定义在 phoneWindowManager 这个 class 中, 定义如下:
boolean oldScreenOn = true;
```

## [FAQ15186] Launcher3如何调整滑动灵敏度？

```
请修改Launcher3的PagedView.java中的变量：
private static final float SIGNIFICANT_MOVE_THRESHOLD = 0.4f;
请将这个变量变小。
Note：此修改L上会同时影响桌面和主菜单，M上只会影响桌面的滑动速度。
```

## [FAQ13295] 手机插SIM卡启动，Launcher会闪一下，如何避免？

```
手机插SIM卡启动，Launcher会闪一下，如何避免？
[SOLUTION]
KK/L0/L1/M0:
1. 在AndroidManifest.xml中修改Launcher这个Activity的属性，加上android:configChanges="mcc|mnc"。
2. 在Launcher.java中增加如下方法：
@Override
public void onConfigurationChanged(Configuration newConfig) {
    Log.d(TAG, "onConfigurationChanged() called.");
    super.onConfigurationChanged(newConfig);
}
KK/L0/L1:
3. 在LauncherModel.java的onReceive方法中，找到action等于Intent.ACTION_CONFIGURATION_CHANGED的分支，注释掉mcc/mnc变化时调用的forcereload()这行代码。
```

## [FAQ18182] 更改WiFi加密方式后，在WLAN列表中重复显示WIFI热点名称

```
测试机连接搭建的WiFi热点--路由器更换加密方式--进入设置--WALN列表，在WLAN列表中重复显示WIFI热点名称。
这种现象是正常行为，因为config的定义是，SSID + key management，只要有一者不一样，就是不同config。
如果要修改这个行为，请修改如下：
/frameworks/base/packages/SettingsLib/src/com/android/settingslib/wifi/AccessPoint.java
public void clearConfig() {
    mConfig = null;
    networkId = WifiConfiguration.INVALID_NETWORK_ID;
+ /// M: set AP rssi as default value when updateAccessPoints
+ mRssi = Integer.MAX_VALUE;
}
```

## [FAQ18237] [Legacy Wi-Fi]Adb如何获取所连接AP的RSSI

```
下载eng load，adb如何获取所连接AP的RSSI
adb shell wpa_cli -iwlan0 -g@android:wpa_wlan0 IFNAME=wlan0 SIGNAL_POLL
```

## [FAQ18187] 切换飞行模式SIM联系人是否应该显示?

```
这个与项目配置中的 MTK_FLIGHT_MODE_POWER_OFF_MD 有关系：默认设置是true，是为了省电；
如果期望打开飞行模式，SIM联系人继续显示，可以设置此项为false即可。
详细您可以参考 [FAQ08682][SIM]开关飞行模式引起modem关闭和打开这个与项目
```

## [FAQ17655] SIM卡联系人无法收藏

```
1. SIM卡联系人界面没有收藏功能选项；
2. 需要在收藏联系人界面和快速拨号界面显示收藏后的SIM卡联系人。  
 
[SOLUTION]
 
敝司设计时，故意屏蔽掉了SIM卡联系人。

[原因] SIM卡联系人在重开机/开关飞行模式/热插拨操作后，都会执行删除之前导入的并重新导入操作，
这样会导致您之前设定的 收藏 / 快速拨号 丢失，所以敝司专门屏蔽掉SIM联系人，

----------------------------------------------------------------------------------------------------------------------
如果不介意重开机/开关飞行模式/热插拨操作后设置的信息又丢失的Case，可以尝试如下修改对SIM卡联系人进行收藏。
----------------------------------------------------------------------------------------------------------------------
修改1. SIM卡联系人可以收藏
FILE: /packages/apps/Contacts/src/com/android/contacts/quickcontact/QuickContactActivity.java
public boolean onPrepareOptionsMenu(Menu menu) {
    if (mContactData != null) {
        final MenuItem starredMenuItem = menu.findItem(R.id.menu_star);
        ContactDisplayUtils.configureStarredMenuItem(starredMenuItem, 
        mContactData.isDirectoryEntry(), mContactData.isUserProfile(),
        mContactData.getStarred());
        
        // 下面这个地方就是您需要修改的地方，拿掉即可。 
        /// M: Disable sim contact star menu.
        if (mContactData.getIndicate() > 0) {
            starredMenuItem.setVisible(false);
        }
        ... ...
修改2. 收藏的SIM卡联系人在收藏列表和快速拨号列表显示
FILE: /packages/apps/Contacts/src/com/android/contacts/quickcontact/ContactTileLoaderFactory.java
public static CursorLoader createStrequentLoader(Context context) {
    /** M: Bug Fix for CR ALPS00319593 @{ */
    CursorLoader cursorLoader = new CursorLoader(context,
    Contacts.CONTENT_STREQUENT_URI, COLUMNS,
    Contacts.INDICATE_PHONE_SIM + "=-1 ", null, null);
    ContactsPreferencesUtils.fixSortOrderByPreference(cursorLoader, DISPLAY_NAME, context);
    return cursorLoader;
    /** @} */
}

public static CursorLoader createStrequentPhoneOnlyLoader(Context context) {
    Uri uri = Contacts.CONTENT_STREQUENT_URI.buildUpon().appendQueryParameter(ContactsContract.STREQUENT_PHONE_ONLY, "true").build();
    
    /** M: Bug Fix for CR ALPS00319593 @{ */
    CursorLoader cursorLoader = new CursorLoader(context, uri, COLUMNS_PHONE_ONLY, Contacts.INDICATE_PHONE_SIM + "=-1 ", null, null);
    ContactsPreferencesUtils.fixSortOrderByPreference(cursorLoader, DISPLAY_NAME, context);
    return cursorLoader;
    /** @} */
}
将以上两个方法中的 Contacts.INDICATE_PHONE_SIM + "=-1 " 修改为 NULL。
例如：
将
CursorLoader cursorLoader = new CursorLoader(context, uri, COLUMNS_PHONE_ONLY, Contacts.INDICATE_PHONE_SIM + "=-1 ", null, null);
修改为：
CursorLoader cursorLoader = new CursorLoader(context, uri, COLUMNS_PHONE_ONLY, null, null, null);
```

## [FAQ18203] [Camera_Tuning]CCT工具调试AE_PLine_table

```
CCT 页面上，导入device info ，到AE pline 页面tune AE pline table, 点save to nvraw 后，开机进不了camera
6755 之后的平台才可以通过CCT 页面tune AE Pline table 并且实时生效。。在此之前的平台如6735/6753 是不行的，建议通过CCT offline 的方式先gen AE Pline table ，把它导出来，通过build code 的方式验证
```

## [FAQ17922] 微信，登陆闪退，无法登陆

```
下载最新微信并登陆，下载最新微信并登陆。
1.提供对应的APK ,请确认测试机是否有写入IMEI ,WIFI MAC 地址，手机时间是否为当前网络时间
2.是否有先進行ATTK provisioning
$ adb shell soter_attk_provision
 
根據SOTER spec v2.3.1 SOTER方案OEM厂商微信接入指引 1.0.1.pdf
廠商必須在產線生產的時候同時燒入ATTK到RPMB
我司有提供一個provision command出來，可以透過adb進行attk provision動作
如下：
$ adb shell soter_attk_provision
```

## [FAQ17911] 开启节电助手，终端收到来电时不振动

```
来电震动的代码在alps\packages\services\telecomm\src\com\android\server\telecom\Ringer.java
private void startRingingOrCallWaiting方法中，修改其中的代码逻辑即可。
```

## [FAQ18063] [Others]当camera预览大小为4:3时，从camer里进图片旋转图片会比较慢

```
1.手机先拍几张照片
2.进camera\设置\相机\预览大小\4:3.
3.点右下角的缩略图图标进入Gallery打开一张图片
4.旋转图片，比较直接从Gallery中打开一张图片来旋转时的时间
Result:当camera预览界面比例为4:3时从camera里进图库旋转图片会比较慢,性能差
[SOLUTION]
可以做如下修改来解决
在Camera package下面
PreviewSurfaceView.java 中onMeasure方法中
找到 setMeasuredDimension(previewWidth, previewHeight);
在这一句code之前添加如下部分
if (mIsNeedLockSizeChange) {
    previewWidth = resolveSizeAndState(previewWidth, widthMeasureSpec, 0);
    previewHeight = resolveSizeAndState(previewHeight, heightMeasureSpec, 0);
}
```

## [FAQ18232] 如何打开MDP debug Log

```
当MDP出问题后，需要打开dpframework的开关才能在userdebug版本抓到完整的log.

为了使得在user版本上也能够打印出mdp和dpframework的log可以进行以下动作:
直接修改代码，然后复现问题后把整包mtklog传给mtk.
DpConfig.h (vendor\mediatek\proprietary\hardware\dpframework\include)
#define CONFIG_FOR_TPIPE_FINFO      0      // enable tile setting per tile
#define CONFIG_FOR_DUMP_COMMAND     0      // dump command.bin
#define CONFIG_FOR_SYSTRACE         0      // enable systrace
```

## [FAQ18233] 如何dump mdp(DpBlitStream mode) buffer

```
当图片出现异常后，为了理清问题，经常需要dump mdp buffer来理清是否为mdp 出错

[SOLUTION]
dump buffer的过程有以下两种方法.
(1)方法1：dump到默认的path: Dump folder : /sdcard/mdp/
adb shell setprop dpframework.dumpbuffer.enable 1

(2) 方法2: dump到制定的path: Change Dump folder : /data/mdp/
The dump folder is defined in DpPortAdapt.h

Command: 
1. adb shell setenforce 0 
2. adb shell mkdir /data/mdp
3. adb shell chmod 777 /data/mdp
4. adb shell setprop dpframework.dumpbuffer.enable 1
```

## [FAQ18189] Camera setting中添加拍照音选项

```
在DMS系统上下载以下文档, 参考修改即可
Camera_add_shuttersound_setting_item_L_platform,

DMS链接如下:
https://dcc.mediatek.com/Docs/Default.aspx
```

## [FAQ14500] [Audio Common] OTA升级音频参数后如果不恢复工厂设置也能生效

```
OTA升级默认只更新：boot.img, recovery.img, system.img
不会更新data区，但由于NVRAM存在于data区，所以OTA升级音频参数后需要恢复工厂设置才能生效，
但是恢复工厂设置导致data区user的其他数据也被擦除，不符合需求 
[SOLUTION]
Custom_NvRam_LID.h中每个data都对应一个VERNO即version number
/* audio file version */
#define AP_CFG_RDCL_FILE_AUDIO_LID_VERNO   "001" 
reboot时，当检测到VERNO有变化会重新生成新的NVRAM
所以只需要将对应项的VERNO如"001"改成不一样如"002"就可以了!
 
建议OTA时把此.h中所有的#define AP_CFG_***_LID_VERNO后面的number都改下！
```

## [FAQ15504] [Audio Profile]设置->情景模式->音效改善下面BesAudEnh、BesLoudness、BesSurround和无损蓝牙模式四个选项的默认值

```
设置->情景模式->音效改善下面BesAudEnh、BesLoudness、BesSurround和无损蓝牙模式四个选项的默认值
[SOLUTION]
1. 关于BesAudEnh，
默认值是在 vendor\mediatek\proprietary\custom\common\cgen\cfgdefault\audio_audenh_control_option.h
#define DEFAULT_AUDIO_AUDENH_CONTROL_OPTION_Coeff (0x00000002) //Bit0: Audenh default (Default off for Low Power) , Bit1: BesLoudness default
0x00000000 表示BesAudEnh关闭
0x00000001 表示BesAudEnh打开
2. BesLoudness
同上
0x00000002 表示 BesAudEnh关闭，BesLoudness打开
0x00000003 表示 BesAudEnh打开，BesLoudness打开
3. BesSurround
这个直接修改AudioProfileService.java里的mIsBesSurroundEnable
4. 无损蓝牙模式
/frameworks/av/services/audioflinger/AudioLosslessBTBroadcast.cpp 中，
将
mIsLosslessBTOn = (property_get(LOSSLESS_BT_PROP_NAME, value, "0") > 0) && (atoi(value) == 1);
改为：
mIsLosslessBTOn = (property_get(LOSSLESS_BT_PROP_NAME, value, "1") > 0) && (atoi(value) == 1);
```

## [FAQ15498] 【AudioProfile】如何判断当前文件是否存在？（system无权限读取SD card问题feature的规避）

```
在AudioProfile这边，是用isRingtoneExist()这个API来判断文件是否存在，但是Android5.1上google对system访问SD卡做了权限，而导致该API失效。 后来增加了validRingtoneUri这个API来去判断database里的URI存不存在，。 validRingtoneUri的缺点是一旦遇到文件已经不存在，但是database没有更新，就会有问题。 现提供新的判断方法。
 
 
[SOLUTION]
 
 
 
1. alps\vendor\mediatek\proprietary\frameworks\common\src\com\mediatek\common\audioprofile\IAudioProfileService.aidl

增加

boolean isRingtoneCanOpen(String UriData);

 

2. AudioProfileManager.java

增加

public boolean isRingtoneCanOpen(String UriData){

IAudioProfileService service = getService();

try {

return service.isRingtoneCanOpen(UriData);

} catch (RemoteException e) {

Log.e(TAG, "Dead object in isRingtoneCanOpen", e);

return false;

}

}

 

3. AudioProfileService.java

增加定义

private static final String GET_FILE_IS_EXIST = "GetFileIsExist: ";

增加API

public boolean isRingtoneCanOpen(String UriData){

 

Log.d(TAG, "isRingtoneCanOpen() UriData= "+UriData);

boolean ret=false;

String validUri=null;

// handle non-file sources

String path= GET_FILE_IS_EXIST + UriData;

validUri = mAudioManager.getParameters(path);

Log.d(TAG, "isRingtoneCanOpen() validUri = "+validUri +", path= "+path);

ret = validUri.equals("-1") ? false : true;

return ret;

}

 

3. AudioFlinger.cpp

开头增加定义

char GET_FILE_IS_EXIST[] = "GetFileIsExist: "; // ddd file open

 

在 getParameters()的开头部分增加如下：

ALOGD("+%s(): %s", __FUNCTION__, keys.string());

//start ddd file open

String8 result;

char* strTag;

int lenKey = keys.length();

int lenTag = strlen(GET_FILE_IS_EXIST);

ALOGD("ddd getParameters(): lenKey=%d", lenKey);

 

strTag = strstr(keys, GET_FILE_IS_EXIST);

ALOGD("getParameters(): strTag=%s", strTag);

 

if(lenKey > lenTag && strTag!=NULL){

char* url = strTag + lenTag;

ALOGD("getParameters(): url=%s", url);

 

FILE *m_pInputFile;

m_pInputFile = fopen(url, "r");

if(m_pInputFile == NULL)

{

ALOGE("ddd Couldn't open fd for %s", url);

result = "-1";

}else {

ALOGE("ddd can open fd for %s", url);

result = "9";

fclose(m_pInputFile);

}

return result;

}

//end modify ddd file open

 

4. ringer.java

在startRingingOrCallWaiting()里调用 ValidRingtoneUri 的地方，增加如下，并且将ValidRingtoneUri 改用 isRingtoneCanOpen

String dataKey = audioProfileMgr.getDataKey(audioProfileMgr.getStreamUriKey(audioProfileMgr.getActiveProfileKey(), AudioProfileManager.TYPE_RINGTONE, slotId));

String uriData = Settings.System.getString(mContext.getContentResolver(), dataKey);

Log.d(this, " uriData: "+uriData);

 

if( false==audioProfileMgr.isRingtoneCanOpen(uriData)){

// if( -1==RingtoneManager.validRingtoneUri(mContext, ringtoneUri)){

Log.d(this, "default ");

ringtoneUri = audioProfileMgr.getDefaultRingtone(AudioProfileManager.TYPE_RINGTONE);

}

5. RingtoneManager.java

将getRingtone()里用到ValidRingtoneUri的地方，可以添加判断条件，将其屏蔽掉，因为在ringer.java里面已经有判断当前文件是否存在
```

## [FAQ10873] LatinIME输入法回车的图标如何替换成“Enter"字符

```
LatinIME输入法回车的图标如何替换成“Enter"字符？
[SOLUTION]
Enter图标在不同的style下有不同的定义，ICS和JB默认都采用的是IceCreaemSandWich风格。
在LatinIME的源码中搜索iconEnterKey,可以看到iconEnterKey有下面三个style定义：
KeyboardIcons.Black：
iconEnterKey = @drawable/sym_bkeyboard_return
KeyboardIcons.IceCreaemSandWich：
iconEnterKey = @drawable/sym_keyboard_return_holo
KeyboardIcons：
iconEnterKey = @drawable/sym_keyboard_return
默认情况下，将LatinIME中各个dpi下的资源中的sym_keyboard_return_holo.png
替换成带有Enter字符的图标即可。
如果用的是其它style ，请替换对应style的xxx.png图片为带Enter字符的图标即可。
 
其他版本也可以使用类似的搜索方式搜索iconEnterKey，然后修改它的定义即可。
```

## [FAQ08849] 乌克兰输入法长按Ь会弹出Ъ，去掉弹出Ъ

```
设置输入法为乌克兰输入法,长按长按Ь会弹出Ъ ,要求显示Ь而非Ъ .
因为乌克兰输入法中不应该有字符Ъ.
 
[SOLUTION]
修改
Donottranslate-more-keys.xml (alps\packages\inputmethods\latinime\tools\maketext\res\values-uk) 
中more_keys_for_cyrillic_soft_sign的定义为
 <!-- U+044A: "ÑŠ" CYRILLIC SMALL LETTER HARD SIGN -->
    <string name="more_keys_for_cyrillic_soft_sign"></string>
这里就去掉了长按Ь会弹出Ъ,
不过要使修改生效,先编译maketext,
编译完maketext后,请在alps
目录下使用
java -jar out/host/linux-x86/framework/maketext.jar  -java packages/inputmethods/LatinIME/java/src
然后再rebuild LatinIME.apk
将 LatinIME.apk push到手机中就可以验证了.
 
L和M版本修改类似只是string的名字有修改为：morekeys_cyrillic_soft_sign
```

## [FAQ08884] Latin输入法如何添加删除某些语言的输入法

```
android keyboard支持的keyboard请参考
Method.xml (alps\packages\inputmethods\latinime\java\res\xml) 
的开头说明中查看到输入所支持的语言。
开关这写支持的语言.
该文件有定义很多下面类似的subtype
<subtype android:icon="@drawable/ic_subtype_keyboard"
    android:label="@string/subtype_generic"
    android:subtypeId="1872175968"
    android:imeSubtypeLocale="af"
    android:imeSubtypeMode="keyboard"
    android:imeSubtypeExtraValue="KeyboardLayoutSet=qwerty,AsciiCapable"
/>
想关掉某种语言,直接注释掉即可.
想打开,请取消掉注释.
但是，某些语言无法删除，是因为有两种语言的输入法被定义在
predefined-subtypes.xml (alps\packages\inputmethods\latinime\java\res\values) 中
如果要删除预定义的语言de和fr，请在这里删除。
<string-array name="predefined_subtypes" translatable="false">
    <item>de:qwerty:AsciiCapable</item>
    <item>fr:qwertz:AsciiCapable</item>
</string-array>
因为latin输入法只支持latin语系,所以中日韩语言android keyboard是没有支持的.
对于这些语系,只能通过装第三方输入法解决(所以我司会预制sogou输入法).
```

## [FAQ10435] 如何让 app 自行处理 power key

```
Power key 通常都是由 framework 自行的
app 无法拿到这个 key 值
 
如果想让某个 app 自行处理 power key
应该要怎么做呢?
 
[SOLUTION]
L、M 
修改PhoneWindowManager的interceptKeyBeforeQueueing方法：
     ....
case KeyEvent.KEYCODE_POWER: {
result &= ~ACTION_PASS_TO_USER;
isWakeKey = false; // wake-up will be handled separately
 
//com.example.adc为要处理power key的包名
if(win != null && win.getAttrs() != null&&win.getOwningPackage().equals("com.example.adc")){
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
 try{
  if (activityManager.getRunningTasks(1).get(0).topActivity.getPackageName().equals("your_special_package_name")){ 
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

注意: 以上蓝色背景部分的内容需要替换为您预期要处理 power key 的 app 对应的 package name.
```

## [FAQ18170] 录像的时候添加Previewcallback

```
客户希望在录像的时候，能够在AP获取Previewcallback的数据进行处理。
  
[SOLUTION]
 
由于Record和Previewcallback在Pass2是公用同一输出，所以在录像的时候Previewcallback正常情况下是没有数据的。很多客户希望获取Previewcallback的数据，那么就需要从display输出中copy数据给Previewcallback，再callback给AP。所有的数据格式都是yv12的，如果AP设置NV12或者NV21的格式，可能会出现彩色条纹，所以请客户自行在copy的时候进行格式的转换。
具体的修改方式如下：

一.K2以上平台的修改方法如下：

修改文件路径：/vendor/mediatek/proprietary/hardware/mtkcam/legacy/platform/<ProjectName>/v1/adapter/CamNode/DefaultBufHandler.cpp

          1. private内添加变量

            MBOOL                       misVideo;//Add by mtk

2.函数enqueBuffer(MUINT32 const data, IImageBuffer const * pImageBuffer)内

            case eBuf_Rec:

            {

                 bufProvider = mspImgBufProvidersMgr->getRecCBPvdr();

                misVideo = MTRUE;//Add by mtk

                break;

            }

            case eBuf_AP:

            {

                                misVideo = MFALSE;//Add by mtk

             bufProvider = mspImgBufProvidersMgr->getPrvCBPvdr();

                const_cast<ImgBufQueNode*>(&keepImgBufQueNode)->setCookieDE(0); // 0 for preview

                break;

            }

         3.bufProvider->enqueProvider(keepImgBufQueNode);后添加

// Add by mtk start

if(misVideo){

            sp<IImgBufProvider> PreviewBufProvider;

            PreviewBufProvider = mspImgBufProvidersMgr->getPrvCBPvdr();

            ImgBufQueNode Previewnode;

            if (PreviewBufProvider != 0 && PreviewBufProvider->dequeProvider(Previewnode))

            {

                    MY_LOGD("APCallback size:%d, APClient size:%d", Previewnode.getImgBuf()->getBufSize() ,                                                   keepImgBufQueNode.getImgBuf()->getBufSize());

                    if ( Previewnode.getImgBuf()->getBufSize() >= keepImgBufQueNode.getImgBuf()->getBufSize())

                                               {

                             MY_LOGD("APCallback addr:0x%x, APClient addr:0x%x", Previewnode.getImgBuf()->getVirAddr(),                                             keepImgBufQueNode.getImgBuf()->getVirAddr());

                             memcpy(Previewnode.getImgBuf()->getVirAddr(),

                             keepImgBufQueNode.getImgBuf()->getVirAddr(),

                             keepImgBufQueNode.getImgBuf()->getBufSize());

                             const_cast<ImgBufQueNode*>(&Previewnode)->setStatus(ImgBufQueNode::eSTATUS_DONE);

                     }

                     else

                     {

                             MY_LOGE("APClient buffer size < Record buffer size");

                             const_cast<ImgBufQueNode*>(&Previewnode)->setStatus(ImgBufQueNode::eSTATUS_CANCEL);

                     }

                     PreviewBufProvider->enqueProvider(Previewnode);

            }

}

       //Add by mtk end

二.MT6580,MT6735M的修改如下

修改的文件路径：

/vendor/mediatek/proprietary/hardware/mtkcam/legacy/platform/<ProjectName>/v1/hal/adapter/MtkDefault/Preview/PreviewBufMgr.cpp

          1.添加private变量

MBOOL                         mIsVideo;//Add by mtk

          2.函数enqueBuffer(ImgBufQueNode const& node)内添加

         1）case eBuf_Disp:

        {

            sp<IImgBufProvider> bufProvider = mspImgBufProvidersMgr->getDisplayPvdr();

            if (bufProvider != 0)

            {

                bufProvider->enqueProvider(node);

            }

             //Add by mtk start

               if(mIsVideo)

            {

                 // If preview cb exists, copy to it

                  bufProvider = mspImgBufProvidersMgr->getDisplayPvdr();

                  ImgBufQueNode PrvCBnode;

                  if (bufProvider != 0 && bufProvider->dequeProvider(PrvCBnode))

                   {

                          if ( PrvCBnode.getImgBuf()->getBufSize() >= node.getImgBuf()->getBufSize())

                         {

                               memcpy(PrvCBnode.getImgBuf()->getVirAddr(),

                               node.getImgBuf()->getVirAddr(),

                               node.getImgBuf()->getBufSize());

                               const_cast<ImgBufQueNode*>(&PrvCBnode)->setStatus(ImgBufQueNode::eSTATUS_DONE);

                            }

                            else

                            {

                                 MY_LOGE("preview cb buffer size < ap buffer size");

                                const_cast<ImgBufQueNode*>(&PrvCBnode)->setStatus(ImgBufQueNode::eSTATUS_CANCEL);

                               }

                             //

                               bufProvider->enqueProvider(PrvCBnode);

                                  }                                                                                              

                              }

//Add by mtk end

        2）case eBuf_AP:

        {

                mIsVideo = MFALSE;//Add by mtk

       3）case eBuf_Rec:

        {

                mIsVideo = MTRUE;//Add by mtk

      3.析构函数中添加

PreviewBufMgr::

PreviewBufMgr(sp<ImgBufProvidersManager> &rImgBufProvidersMgr)

    : mspImgBufProvidersMgr(rImgBufProvidersMgr)

    , mspHwBufPvdr(new HwBuffProvider())

{

    mIsVideo = MFALSE;//Add by mtk

    }
```

## [FAQ11603] 如何在发生java层的out of memory时自动抓取对应进程的hprof

```
在Monkey等自动化测试时，需要在出现java的out of memory问题时自动抓取hprof文件(hprof会自动打包到aee_exp的db文件中)

1. 需要先从mainlog确认是否有合入DVM和AEE两部分的Patch.
   mainlog中有出现如下log, 代表有合入DVM部分的patch
   01-01 15:42:20.636  1310  1310 D dalvikvm: not gen hprof when oome
   mainlog中有出现如下log, 代表AEE部分的patch有合入
   01-01 15:42:21.407 12001 12001 E AEE/DUMPSTATE: copy_file: Copy /data/anr/1310.hprof to PROCESS_OOME_HPROF failed(2), No such file or directory 

2. 对应不同软件版本上的Patch ID：
   ALPS.JB2.MP：ALPS00692776
   ALPS.JB3.MP ALPS.JB3.TDD.MP: ALPS00828917 
   ALPS.JB5.MP: ALPS01210674+ ALPS00870675
   JB9.MP以及KK之后的版本已经包含所需patch

3. 再保证有合入patch的前提下，还请按照如下方法在ENG版本上测试：
    3.1. 连上adb执行如下命令（会自动重启，把电池开机后属性会无效，需要重新输入）：
          adb shell setprop dalvik.vm.oome-hprof-path  /data/anr
          adb shell chmod 0777 /data/anr/
          adb shell stop
          adb shell start
    3.2. 开完机后清除mtklog文件夹，再开启mobilelog.
    3.3. 然后复制问题，出现问题后等几分分钟，然后将mtklog发过来。

 

4.针对L版本需要做如下的修改

/art/runtime/Android.mk

334ifeq ($(TARGET_ARCH), $(filter $(TARGET_ARCH), arm arm64))
335  ifeq ($(TARGET_BUILD_VARIANT), eng)
336    # MTK add dump hprof when OOME
337    #LIBART_CFLAGS += -DMTK_DUMP_HPROF_WHEN_OOME
338    ifneq ($(strip $(MTK_EMULATOR_SUPPORT)), yes)
339      # MTK add dump reference table usage when table overflow
340      #LIBART_CFLAGS += -DMTK_DEBUG_REF_TABLE
341    endif
342  endif
343endif
344endif #MTK_EMULATOR_SUPPORT
345
LIBART_CFLAGS += -DMTK_DUMP_HPROF_WHEN_OOME     #打开宏开关

M 版本目前不支持。
```

## [FAQ18172] Andorid M版本上手电筒不亮

```
在Android M版本上，如果我们使用的闪光灯是透过LED2 的driver去实际控制打闪的，在下拉菜单中
点击手电筒会不亮。
 
[SOLUTION]
M版本的手电筒是透过flash_hal.cpp 来控制的，默认的source code中只会下command去控制LED1。如果闪光灯实际上是通过LED2的driver去控制，那么我们需要添加对LED2的控制，如下code中所示。（add for led2是需要添加的内容）
 
setTorchOnOff(MINT32 i4SensorOpenIndex, MBOOL en) {
    MINT32 i4SensorDevId = (!m_pHalSensorList)? 0: m_pHalSensorList->querySensorDevIdx(i4SensorOpenIndex);
    if(i4SensorDevId==2 && cust_isSubFlashSupport()==0)
        return 1;
    StrobeDrv* pStrobe = StrobeDrv::getInstance(i4SensorDevId);
    StrobeDrv* pStrobe2 = StrobeDrv::getInstance(i4SensorDevId,2);//add for led2
    if(en==1){
        pStrobe->init();
        pStrobe->setDuty(0);
        pStrobe->setTimeOutTime(0);
        //add for led2
        pStrobe2->init();
        pStrobe2->setDuty(0);
        pStrobe2->setTimeOutTime(0);
        //add end
        pStrobe->setOnOff(1);
        pStrobe2->setOnOff(1);//add for led2
        m_status = 1;
    }else{
        pStrobe->setOnOff(0);
        pStrobe->uninit();
        //add for led2 
        pStrobe2->setOnOff(0);
        pStrobe2->uninit();
        //add end
        m_status = 0;
    }
    return 0;
}
```

## [FAQ18149] Antutu跑分低排查建议

```
建议参考下述步骤排查：
1、请与贵司Power、Thermal相关同仁确认是否因为功耗、温升等问题修改过可能影响performance的代码及配置，比如CPU限核、限频等。如有，请还原为Mediatek原始状态进行测试。
2、请参考下面FAQ重新测试：
     FAQ12284  Benchmark Tool 跑分测试注意事项
3、请在冰箱环境中测试，统计并对比常温、冰箱中测试数据。
     Note*: 冰箱环境中，并非温度越低越好，比如电池在冰冻环境中比较容易打到低电量导致的CPU限核及限频。建议选取在-10℃、-5℃、0℃分别测试看看。
4、请关闭thermal throttle后，分别在冰箱、常温下进行测试，统计并对比相关测试数据。关闭方法参考下面FAQ:
     FAQ14794  How to disable thermal throttling
5、请测试CPU performance mode（全核全频率）下跑分，分别在冰箱、常温下进行测试，统计并对比相关测试数据。方法可以咨询贵司Power同仁。 
6、请使用Driver Only版本测试，统计并对比相关测试数据。
7、如果1~6排查下来仍有疑问，请提eservice处理，同时提供下面数据（统计到Excel表格中），格式如下：
```

## [FAQ12284] Benchmark Tool 跑分测试注意事项

```
1.使用Benchmark Tool，例如Antutu等对手机进行跑分测试时，建议使用user build + driver only测试；若没有driver only load，请务必使用user 版本(关掉log)来run benchmark tool

2.Run Benchmark Tool时建议:
    手机恢复出厂设置，再安装Benchmark APK;
    测试APK前重启手机，等待一分钟，等手机稳定后再进行测试，每测完一次，等待一分钟，再进行测试,测四次，取后三次平均值;

3.测试机与参考机分值差在10%以内，我们认为是正常的。

4.附上内部常用benchmark Tool apk list供您参考

CaffeineMark 
Linpack for Android
Nbench 
CoreMark(AndEBench)
Quadrant Advanced
Antutu benchmark 
Smartbench 2012
CF-Bench 
FPS2D 
Benchmark
0xBench
NenaMark2
An3DBenchXL 
Electopia 
3DRating Benchmark
Vellamo 
BrowserMark
Sunspider 
AndroBench
RL Benchmark:SQLite
```

## [FAQ18152] [AudioProfile]第一次开机，来电话没有来电铃声

```
第一次开机的时候，没有来电铃声，甚至drive only版本也是如此。 正常情况下，第一次开机的时候，是要响默认铃声。
同样的版本，在客户端没有问题，而在客户的客户端却有问题。
[SOLUTION]
问题原因：
有第三方将ringtone_set的值初始化为1
解决办法：
以work around 的方法解决：
private boolean doesSettingEmpty(String settingName) {
    String existingSettingValue = Settings.System.getString(mContext.getContentResolver(), settingName);
    /*   删掉如下
    if (TextUtils.isEmpty(existingSettingValue)) {
        return true;
    }
    return false;
    */

//改为如下：
Log.d(TAG, "Mits doesSettingEmpty settingName:" + settingName + " existingSettingValue:"+existingSettingValue);
if (TextUtils.isEmpty(existingSettingValue)) {
    return true;
}else if(existingSettingValue.equals("yes")){
    return false;
}else
    return true;
}

也就是说，我们避开去判断第三方设置为1这个值，在初始化时，只有为"yes"，才认定为已经设置来电铃声的默认值，否则，就认为没有设定默认值。
```

## [FAQ14482] [Recovery][Others]如何在recovery mode下单独关闭selinux 而不影响normal mode

```
参考 FAQ11484[SELinux] 如何设置确认selinux 模式，
可以在开机一启动就设置selinux模式，  但这是针对所有模式。 
如果只想在recovery mode下关闭而不影响normal mode，以下提供方法。 

[SOLUTION]
修改  /bootable/bootloader/lk/app/mt_boot/mt_boot.c

+if(g_boot_mode == RECOVERY_BOOT){ //<----添加这行
+sprintf(commanline, "%s androidboot.selinux=permissive", commanline); //<----添加这行
+}else{ //<----添加这行
#ifdef SELINUX_STATUS
#if SELINUX_STATUS == 1
sprintf(commanline, "%s androidboot.selinux=disabled", commanline);
#elif SELINUX_STATUS == 2
sprintf(commanline, "%s androidboot.selinux=permissive", commanline);
#endif
#endif
+}//<----添加这行
 
在L版本上，因user版本默认无法关闭selinux, 如果要对user 版本有效,
同样需要修改 system/core/init/Android.mk ，新增
LOCAL_CFLAGS += -DALLOW_DISABLE_SELINUX=1
```

## [FAQ12491] [Recovery mode][Common] 选择"apply update from sdcard"直接进入data/目录是否正常？

```
Recovery mode 选择"apply update from sdcard"直接进入data/目录，说明您开了MTK_SHARED_SDCARD宏；请检查下贵司project下的projectconfig.mk文件，谢谢！
至于开了share sd功能后的升级方案：请参考：
ID: FAQ12477
关于打开MTK_SHARED_SDCARD宏后MTK目前升级方案
KK 版本默认是支持在打开MTK_SHARED_SDCARD宏后从内卡升级，即从/data/media/下面选取升级包升级；但这种情况有些Limitation；详情见FAQ12477。
[SOLUTION]
这种现象是正常的！ 谢谢！
```

## [FAQ12477] [Recovery][Common]关于打开MTK_SHARED_SDCARD宏后MTK目前升级方案

```
如果设置宏MTK_SHARED_SDCARD=yes；默认是把升级包放到外置SD卡才能升级成功。即这种情况下不支持内卡升级。
因为此时只有data/ 目录，sdcard0 其实变成了/data/media/；如果支持从内卡升级，有如下Limitation：
1、因為android 有對 /data 加密的功能, 在加密的情況下OTA 就無法將升級包下載至 /data recovery 也無法從 /data 下取得升級包升級.
2、除了加密的限制, 另外的 limitation 是, 如果 /data 分区的起始地址有更動我們升級時會擋下, 因為/data的資料無法 backup 和 restore. 所以客戶需確認兩版的 /data 起始地址也不能改變.
```

## [FAQ12478] [Recovery][Common]关于打开MTK_SDCARD_SWAP 宏后MTK目前升级方案

```
如果设置宏MTK_SDCARD_SWAP=yes；默认是优先从外卡获取升级包，外卡没有包，才会去内卡获取！
1. 插入外卡，升级包update.zip放入外卡，升级可以成功！
2. 插入外卡，升级包update.zip放入内卡，升级失败，提示：找不到升级包！
3. 未插入外卡，升级包update.zip放入内卡，升级成功！
```

## [FAQ18188] [Recovery][Common]Android M 版本如何升级logo等rawdata分区方法？

```
参考FAQ17441[Recovery][Common]Android M 版本如何升级lk 、preloader ？可以升级lk和preloader，那如何升级logo等其他的rawdata分区呢？
根据MTXXXX_Android_scatter.txt文件是否存在is_upgradable分成两种情况
 
一.存在is_upgradable关键字
修改方法
修改partition table中的OTA_Update，将需要升级的分区的N改成Y。

二.不存在is_upgradable关键字
修改方法：
在FAQ17441的基础上，另外加入下面的修改
 
修改/device/mediatek/build/releasetools/mt_ota_preprocess.py

if os.getenv("MTK_LOADER_UPDATE") is not None and os.getenv("MTK_LOADER_UPDATE") == "yes":
if "lk" not in upgrade_list_include:
upgrade_list_include.append("lk")
if "preloader" not in upgrade_list_include:
upgrade_list_include.append("preloader")
加入
+ if "logo" not in upgrade_list_include:
+ upgrade_list_include.append("logo")
其他的rawdata分区，可以参考加入。
```

## [FAQ14091] 如何在Recent App不显示某个应用

```
长按HOME键或者Navigation bar的recent key在最近应用程序列表中会显示最近访问过的应用，如何做到不显示某应用以达到隐藏进程的目的呢？
 
[SOLUTION]
 
为该应用AndroidManifest xml文件中主activity设置属性：android:excludeFromRecents=“true”
例如：
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
      package="com.mingli.test"
      android:versionCode="1"
      android:versionName="1.0">
    <application android:icon="@drawable/icon" android:label="@string/app_name">
        <activity android:name=".HttpTest"
                  android:excludeFromRecents="true"
                  android:label="@string/app_name">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>        
    <uses-sdk android:minSdkVersion="3" />
</manifest>
```

## [FAQ13927] 如何取消Heads-Up Notification方式

```
1. 从Android 5.0开始，如果notification  priority设置为HIGH, MAX, 或者fullscreenIntent不为空，在非锁屏界面收到notification时屏幕上方会显示一个小悬浮窗口提醒用户，方便用户在不退出当前浏览界面的前提下快速响应该notification，即Heads-Up Notification(简称HUN)。如下图：

2. 如需禁止某个应用notification以HUN方式显示，又不想降低notification priority或者拿掉fullscreenIntent，毕竟这两种方式会改变notification其他行为。
work around方法是在baseStatusbar.java中根据需求客制化interrupt值。
例如，要禁止来电以Heads-Up Notification方式显示，可修改如下：
```

## [FAQ13742] 添加“一键删除最近应用列表”功能

```
在RecentActivity界面添加“一键删除最近应用列表”按钮，其实现分两个部分：
1. 在RecentActivity界面添加一个button，点击该button触发一键删除功能，请您根据需求添加在合适位置。
2. 在button的onclick()方法中，通过调用AMS接口来删除AMS记录的recent list。请通过如下方式来实现：
final ActivityManager am = (ActivityManager)mContext.getSystemService(Context.ACTIVITY_SERVICE);
final List<ActivityManager.RecentTaskInfo> recentTasks = am.getRecentTasks(MAX_TASKS, ActivityManager.RECENT_IGNORE_UNAVAILABLE);
for(ActivityManager.RecentTaskInfo rt:recentTasks ) {
    if (am != null) am.removeTask(rt.persistentId, ActivityManager.REMOVE_TASK_KILL_PROCESS);
}
```

## [FAQ12395] Notification列表中的日期格式和Setting的不一致

```
这个是google设计的默认问题，按照如下修改可以解决，
DateTimeView.java（frameworks/base/core/java/android/widget）
private DateFormat getDateFormat() {
    String format = Settings.System.getString(getContext().getContentResolver(), Settings.System.DATE_FORMAT);
    if (format == null || "".equals(format)) {
        return DateFormat.getDateInstance(DateFormat.SHORT);
    } else {
        try {
            //return new SimpleDateFormat(format);///注释此行，使用下面的替代
            return android.text.format.DateFormat.getDateFormat(getContext());
        } catch (IllegalArgumentException e) {
            // If we tried to use a bad format string, fall back to a default.
            return DateFormat.getDateInstance(DateFormat.SHORT);
        }
    }
}
```

## [FAQ10475] 切换系统语言，拉下状态栏发现状态栏内容没有同步更新

```
切换系统语言，拉下状态栏发现状态栏内容没有同步更新
例如：
1、手机插入USB，切换系统语言之后，下状态栏发现，USB相关的状态栏通知内容没有同步更新，还是切换前的语言文字内容。

[SOLUTION]
这是Google default design，google原生对比机nexus是一样的行为现象。因为：
1. Statusbar 无法控制是否改语言，只负责显示App发送的通知中所携带的字串和图片内容。
2. 如果需要翻译由各个app决定。
3. 到底变不变对于end users来说都是可以接受的，因为改变语言是主动行为，user是可以接受某条临时notification没有变化的情况的
请知悉，谢谢！
```

## [FAQ12130] [Recovery][Common]如何通过adb command 完成自动SD卡升级？

```
通过adb 命令的方式，免去了按powerkey+volumeup进入menu select以及recovery mode的不便。可以把命令放到.bat档。只要包的路径设置正确，可以实现在PC端一键升级。
1. Insert SD card with  OTA package，下面以OTA包放到内卡为例；
[Step]
1、正常开机模式下：手机连接usb成功。
2、输入adb cmd： adb shell "echo \"--update_package=/sdcard/update.zip\" > /cache/recovery/command"
3、输入：adb reboot recovery
```

## [FAQ08109] [Recovery][Common]在recovery mode下同时挂载内置T卡和外置T卡

```
目前recovery mode下只支持挂载内置T卡或者外置T卡一种，如果想同时挂载内置T卡和外置T卡，请参考以下方法
[SOLUTION]
1，
Add -DSUPPORT_SDCARD2 in bootable/recovery/Android.mk
ifeq ($(WITH_BACKUP_RESTORE),true)
LOCAL_CFLAGS += -DSUPPORT_DATA_BACKUP_RESTORE -DSUPPORT_SDCARD2
Endif
 
2，
recovery.fstab的优先级是project > platform > common，还请根据项目的具体情况来修改recovery.fstab。比如，project的fstab需要修改alps/mediatek/config/<project>/recovery_xxx.fstab。
具体修改，还请仿照以下方法新增加一行
a) KK前的版本
emmc为：
/sdcard2  vfat  /dev/block/mmcblk1p1 /dev/block/mmcblk1
nand为：
/sdcard2  vfat  /dev/block/mmcblk0p1 /dev/block/mmcblk0
 
b) KK版本
emmc为：
/dev/block/mmcblk1p1 /sdcard2 vfat  defaults defaults
nand为：
/dev/block/mmcblk0p1 /sdcard2 vfat defaults defaults
 
3，
重新编译整个工程
```

## [FAQ04559] [Recovery][Common]从JB版本开始支持adb sideload命令

```
从JB版本开始支持adb sideload命令,adb sideload命令的优势在于我们不必将制作好的升级包拷贝到SD卡或T上上！adb sideload是支持将升级包存于电脑上然后通过abd sideload命令进行直接对手机进行升级！

[Solution]

具体的操作过程如下：
1，同时按下手机power和音量上键进入recovery mode，
2，然后选择“apply update from ADB"这一项并确定
3，用usb线连上手机和电脑，（确保usb转串口驱动安装完好）
4，在电脑端点击 开始——运行，在里面输入 adb sideload $path,(其中$path 代表的是升级包在电脑上的具体路径）
```

## [FAQ07941] [HFP]蓝牙车载和蓝牙耳机的区别

```
蓝牙耳机：市面上，双声道蓝牙耳机大多数支持HFP(手机音频) 和 A2dp(媒体音频) 和AVRCP(音/视频控制)这三个Profile；
             单声道蓝牙耳机大多数只支持HFP，部分会同时支持HFP 和 A2dp。
 
蓝牙车载：分为外置式和内置式，外置式是一台可携带的蓝牙设备，内置式是集成在车辆上的，随原车一起购买。车载
             大多数都支持HFP、A2dp、AVRCP 这三个Profile，有显示屏的车载还会支持PBAP(电话本访问协议)，这样可以
             从车载上直接进行拨打电话操作。
 
所以从蓝牙系统应用(Profile) 角度看，蓝牙车载和蓝牙耳机本质上没有区别，只是车载的功能会多一些。
```

## [FAQ07939] [Debug]如何抓取蓝牙空中数据包(Air Sniffer)

```
1、抓取 Sniffer Log 需要专门的蓝牙Sniffer工具才能抓取，可以截取蓝牙通信双方的空中数据包，分析交互双方的行为等，目前敝司使用的 Frontline  公司和Ellisys 公司生产的蓝牙Sniffer 工具，抓取方式可以参考该工具的官方帮助文档。
 
2、抓取蓝牙Air Sniffer时，需要输入配对后产生的Link Key，目前敝司在JB 和 JB2 版本上获取Link key 的方法
如下：
 
1、手机连接ADB
2、输入 adb shell btconfig 6，即会打印出Link Key 和 对方设备蓝牙地址。

Sniffer工具哪里下载？？？？怎么用？？？
```

## [FAQ18155] factory mode/meta mode如何抓log

```
factory mode/meta mode如何抓log？
factory mode/meta mode下会将log存到外卡中。将外置SD卡插入手机，即可抓取log至外卡。
 
factory mode/meta mode抓不到log怎么办？
1.先确认，有插入外置SD卡
2.确认外卡能正常识别
adb shell进/storage下看是否有外卡
3.mobile_log_d这个抓log的daemon有在运行
查看手机 factory_init.rc 里是否有以下code：
service mobile_log_d /system/bin/mobile_log_d
class main
或adb shell ps | grep mobile_log_d查看daemon是否运行
4.M版本还需检查一下selinux权限
/device/mediatek/common/sepolicy/mobile_log_d.te中若无需添加下面两句：
allow mobile_log_d mnt_media_rw_file:dir {search create_file_perms};
allow mobile_log_d mnt_media_rw_file:file create_file_perms;
```

## [FAQ18077] Android L之后，状态栏图标资源的编辑

```
Android L之后，google逐渐采用VectorDrawable这种矢量图代替传统的png应用到状态栏上。
矢量图的优点是与像素无关，systemUI的矢量图统一放在frameworks\base\packages\SystemUI\res\drawable
路径下，可以将它缩放到任意大小和以任意分辨率在输出设备上打印出来，都不会影响清晰度。
最新版本的Android Studio支持解析xml文件描述的矢量图所输出的图片样式。
 
客户如果想客制化状态栏上的矢量图，有以下方法：
1. 用png代替。 谨记需提供不同分辨率设备所需的png资源，放在对应density的的res\drawable_xxx 路径下。
2. 制作xml矢量图。google未提供制作工具，目前市面上有收费软件Adobe Illustrator (AI) CS6可以制作，如果有兴趣可以向mtk提交e-service申请该工具参考文档。标题注明SystemUI 关键字。敝司只提供该工具指导文档，具体制作需客户自行研究实现。

Adobe Illustrator (AI) CS6 工具怎么用？？
```

## [FAQ08566] 如何修改默认的searchable items.

```
在QuickSearchBox中有个config.xml文件
里面有定义个default_corpora的数组。
修改这个数组的内容就可以更改默认的search-able的值。
例如：
将
<string-array name="default_corpora" translatable="false">
    <item>web</item>
    <item>apps</item>
    <item>com.android.providers.applications/.ApplicationLauncher</item>
</string-array>
修改为
<string-array name="default_corpora" translatable="false">
    <item>web</item>
    <item>apps</item>
    <item>com.android.providers.applications/.ApplicationLauncher</item>
    <item>com.android.mms/.ui.SearchActivity</item>
    <item>com.android.contacts/com.mediatek.contacts.activities.CallLogSearchResultActivity</item>
</string-array>
上面就添加了mms和calllog.
修改后，重新编译QuickSearchBox.apk ，再push进手机后恢复出厂设置验证.
```

## [FAQ18139] 如何dump连拍时的YUV数据

```
1. adb command 方式：
    手机连接PC
    adb shell setprop debug.MShot.dump 1
    adb shell setprop debug.camnode.dump.44 1
    然后进入camera 开始连拍，连拍后在sdcard/camera_dump 文件夹检查连拍dump YUV图片。

2. 修改code方式：
原理同上述方法1一样。
/vendor/mediatek/proprietary/platform/mt6735/hardware/mtkcam/D1/core/camnode/ICamGraphNode.cpp

ICamGraphImpl::
start()
{
Mutex::Autolock _l(mLock);
MY_LOGD("Start +");
MY_ASSERT_STATE( mState == State_Initiated, mState );

{ //update dump enable
char value[PROPERTY_VALUE_MAX] = {'\0'};
char key[PROPERTY_KEY_MAX];
snprintf( key, PROPERTY_KEY_MAX, "debug.%s.dump", getName());
property_get( key, value, "0"); 

if( (mbDumpEnable = atoi(value)) )
{
MY_LOGD("enable dump buffer: %s", getName() );
}
//修改1 
//add beg

MY_LOGD("enable dump buffer1: %s, mbDumpEnable %d", getName() ,mbDumpEnable);
char *a = "MShot";
if(strcmp(a,getName)==0)
{
mbDumpEnable = 1;
}
MY_LOGD("enable dump buffer2: %s, mbDumpEnable %d", getName() ,mbDumpEnable);
//add end



checkDumpData(MUINT32 const data) const
{
MBOOL bDump = MFALSE;
char value[PROPERTY_VALUE_MAX] = {'\0'};
char key[PROPERTY_KEY_MAX];
snprintf( key, PROPERTY_KEY_MAX, "debug.camnode.dump.%d", data);
property_get( key, value, "0");
if( (bDump = atoi(value)) )
{
MY_LOGD("enable dump buffer: %s, %d", getName(), data );
} 

//修改2： 
//add beg
MY_LOGD("enable dump buffer3: %s, data:%d bDump:%d,", getName(), data,bDump );
if(data == 44)
{bDump = 1;}
MY_LOGD("enable dump buffer4: %s, data:%d bDump:%d,", getName(), data,bDump );
//add end

return bDump;
}
```

## [FAQ18103] [Android M] 连接蓝牙耳机，通话过程中，关闭蓝牙，调节音量仍然现象蓝牙音量

```
问题是 google issue，请按照如下修改:
HeadsetService.java 文件中的stop() 方法： 
protected boolean stop() {
    try {
        unregisterReceiver(mHeadsetReceiver);
    } catch (Exception e) {
        Log.w(TAG,"Unable to unregister headset receiver",e);
    }
    ///M: Null object reference checking
    if (mStateMachine != null) {
        // Add By MTK Start
        //M: inform Audio Service that BT SCO is disconnected
        if (mStateMachine.isAudioOn()) {
            AudioManager mAudioManager = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
            mAudioManager.setBluetoothScoOn(false);
        }
        // Add By MTK End
        mStateMachine.doQuit();
    }
    return true;
} 
```

## [FAQ17994] 切换语言后返回Launcher主菜单，应用名称没有立即切换成正确的语言

```
1. 修改LauncherModel.java的getAppShortcutInfo方法，将其中的此段代码：
// from the db
if (TextUtils.isEmpty(info.title) && c != null) {
    info.title = Utilities.trim(c.getString(titleIndex));
}
替换为：
// from PMS.
if (lai != null) {
    info.title = lai.getLabel();
}

2. 修改IconCache.java的cacheLocked方法，在末尾添加：
if (info != null) {
    entry.title = info.getLabel();
}
```

## [FAQ11049] 切换语言后，桌面上的快捷方式名称没有切换到当前语言

```
这个是google默认设计，如果要修改的话，请按照以下步骤操作：
1、请修改LauncherModel.java的loadWorkspace()方法，修改为如下：
......
if (itemType == LauncherSettings.Favorites.ITEM_TYPE_APPLICATION) {
     info = getAppShortcutInfo(manager, intent, user, context, c, cursorIconInfo.iconIndex, titleIndex, allowMissingTarget, useLowResIcon);
} else {
    info = getShortcutInfo(c, context, titleIndex, cursorIconInfo);
    //mtk add begin
    CharSequence title = getShortcutTitle(manager, intent);
    if(title != null ){
        info.title = title;
    }
    //mtk add end

    // App shortcuts that used to be automatically added to Launcher
    // didn't always have the correct intent flags set, so do that
    // here
    if (intent.getAction() != null &&
        intent.getCategories() != null &&
        intent.getAction().equals(Intent.ACTION_MAIN) &&
        intent.getCategories().contains(Intent.CATEGORY_LAUNCHER)) {
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
    }
}
......

2、请在LauncherModel.java增加如下方法：
private CharSequence getShortcutTitle(PackageManager manager, Intent intent) {
    ComponentName componentName = intent.getComponent();
    if (componentName == null) {
        return null;
    }
    try {
        PackageInfo pi = manager.getPackageInfo( componentName.getPackageName(), 0);
        if (!pi.applicationInfo.enabled) {
            // If we return null here, the corresponding item will be
            // removed from the launcher
            // db and will not appear in the workspace.
            return null;
        }
    } catch (NameNotFoundException e) {
        Log.d(TAG, "getPackInfo failed for package " + componentName.getPackageName());
    }

    ResolveInfo resolveInfo = manager.resolveActivity(intent, 0);
    if (resolveInfo != null) {
        return resolveInfo.activityInfo.loadLabel(manager);
    }
    return null;
}
PS:标注为黄色的代码即为修改的代码
```

## [FAQ13991] Launcher2的主菜单一直卡在加载状态，如何解决？

```
1、请修改Launcher.java的onDestroy方法，将如下code：
mModel.stopLoader();
app.setLauncher(null);
修改为：
// It's possible to receive onDestroy after a new Launcher activity has
// been created. In this case, don't interfere with the new Launcher.
if (mModel.isCurrentCallbacks(this)) {
    mModel.stopLoader();
    app.setLauncher(null);
}
2、请在LauncherModel.java中增加如下code：
public boolean isCurrentCallbacks(Callbacks callbacks) {
    return (mCallbacks != null && mCallbacks.get() == callbacks);
}
```

## [FAQ14394] 如何动态打开Launcher的debug开关？

```
Launcher的deug开关有些默认是关闭的，譬如：DEBUG_MOTION。如何动态打开这些关闭的debug开关？
[SOLUTION]
请执行
adb shell setprop launcher.debug.xxx true
adb shell stop
adb shell start
 
其中launcher.debug.xxx可以设置为下面的任意值：
launcher.debug.all
launcher.debug
launcher.debug.draw
launcher.debug.drag
launcher.debug.edit
launcher.debug.key
launcher.debug.layout
launcher.debug.loader
launcher.debug.motion
launcher.debug.performance
launcher.debug.surfacewidget
launcher.debug.unread
launcher.debug.loaders
launcher.debug.autotestcase

Note：此FAQ只支持KK2及以上版本，而且只对当次开机有效。
```

## [FAQ11060] 桌面上特定的图标不能被移动和删除

```
桌面上有些预置的快捷方式，要求不能移动和删除，要怎么做？
[SOLUTION]
1、请在Workspace.java的startDrag方法中判断将要拖动的图标是否是特定的图标（通过package name/activity name判定），如果是的话，就禁止拖动。
2、那么如何获取当前点击图标的package name呢？
请在Workspace.java的startDrag方法中，在View child = cellInfo.cell;代码后面添加：
ItemInfo info = (ItemInfo)cell.getTag();
接下来判断info是否是ShortcutInfo实例，如果是的话，就可以将info强制转换成ShortcutInfo，然后拿到intent，最后通过intent获取package name/activity name。
```

## [FAQ11206] 快速双击home键回到Launcher3的桌面默认页

```
Launcher3桌面的默认页是首页(即0页)。
如果当前界面是Launcher3桌面的非默认页，点击home键，可以回到桌面的默认页。但是如果当前界面是其它应用，此时快速双击home键却不能回到桌面的默认页。
[SOLUTION]
请修改 Launcher3 的 launcher.java 的 onNewIntent 方法，将
final boolean alreadyOnHome = mHasFocus && ((intent.getFlags() & Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT) != Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT);
修改为：
final boolean alreadyOnHome = (intent.getFlags() & Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT) != Intent.FLAG_ACTIVITY_BROUGHT_TO_FRONT;
```

## [FAQ11029] Launcher3如何增加默认的Home Screen数目？

```
Launcher3默认的Home Screen数目是由预置的桌面应用(default_workspace_NxN.xml)决定的。如果要增加Home Screen数目，需要在default_workspace_NxN.xml中将桌面应用配置在不同screen id上(如何配置桌面应用请参考FAQ04293)。
```

## [FAQ10350] 如何修改主菜单图标的位置？

```
M0:
InvariantDeviceProfile.java
hotseatAllAppsRank = (int) (numHotseatIcons / 2); //默认是列数除以2取整，可以设置为需要的值
 
L1/L0:
DynamicGrid.java
hotseatAllAppsRank = (int) (numHotseatIcons / 2); //默认是列数除以2取整，可以设置为需要的值
```

## [FAQ10990] Launcher如何去掉进入应用时的动画效果？

```
请修改Launcher.java的startActivity方法，如下：
private boolean startActivity(View v, Intent intent, Object tag) {
    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    try {
        // Only launch using the new animation if the shortcut has not opted out (this is a
        // private contract between launcher and may be ignored in the future).
        //boolean useLaunchAnimation = (v != null) && //mtk modify
        //            !intent.hasExtra(INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION); //mtk modify
        boolean useLaunchAnimation = false; //mtk add

        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(this);
        UserManagerCompat userManager = UserManagerCompat.getInstance(this);
```

## [FAQ08556] 如何将主菜单图标改成按安装时间排序？

```
M：
1. 参考AppNameComparator.java新增：AppInstallTimeComparator.java；
2. 在AlphabeticalAppsList.java新增变量：
private AppInstallTimeComparator mAppInstallTimeComparator;
 
3. 修改AlphabeticalAppsList.java 的构造函数：
将
mAppNameComparator = new AppNameComparator(context);
替换成:
mAppInstallTimeComparator= new AppInstallTimeComparator(context);
 
4. 修改AlphabeticalAppsList.java 的 onAppsUpdated() 方法：
将
Collections.sort(mApps, mAppNameComparator.getAppInfoComparator());
替换成:
Collections.sort(mApps, mAppInstallTimeComparator.getAppInstallTimeComparator());
 
5. 修改AlphabeticalAppsList.java 的 onAppsUpdated() 方法：
将
sectionMap = new TreeMap<>(mAppNameComparator.getSectionNameComparator());
替换成:
sectionMap = new TreeMap<>(mAppInstallTimeComparator.getSectionNameComparator());
 
L以前版本：
1. 在 LauncherModel.java 中加入如下方法：
public static final Comparator<AppInfo> getInstallTimeComparator() {
  return new Comparator<AppInfo>() {
            public final int compare(AppInfo a, AppInfo b) {
                return a.firstInstallTime == b.firstInstallTime ? 0 : a.firstInstallTime > b.firstInstallTime ? 1:-1;
            }
        };
 }

 public static class InstallTimeComparator implements Comparator<ResolveInfo> {
  private PackageManager mPackageManager;
  List<ResolveInfo> mapps;
  InstallTimeComparator(PackageManager pm, List<ResolveInfo> apps)
  {
   mPackageManager = pm;
   mapps = apps;
   
  }
 
  public final int compare(ResolveInfo a, ResolveInfo b) {
   String packageNameA = a.activityInfo.applicationInfo.packageName;
   String packageNameB = b.activityInfo.applicationInfo.packageName;
   long firstInstallTimeA = 0, firstInstallTimeB = 0;
   try{
   firstInstallTimeA = mPackageManager.getPackageInfo(packageNameA, 0).firstInstallTime;
   firstInstallTimeB = mPackageManager.getPackageInfo(packageNameB, 0).firstInstallTime;
   }catch(Exception e){
    e.printStackTrace(); 
    return 0;
   }
  return firstInstallTimeA == firstInstallTimeB ? 0 : firstInstallTimeA > firstInstallTimeB ? 1:-1;
  }
 };
 
2. 修改 LauncherModel.java 的 loadAllAppsByBatch() 方法：
将
Collections.sort(apps,new LauncherModel.ShortcutNameComparator(packageManager, mLabelCache));
替换成:
Collections.sort(apps,new InstallTimeComparator(packageManager, apps));
 
3. 修改 AppsCustomizePagedview.java 的 setApps 方法
将
Collections.sort(mApps, LauncherModel.getAppNameComparator());
替换成:
Collections.sort(mApps, LauncherModel.getInstallTimeComparator());
 
4. reorderApps()在某些条件下会被调用，如果要求在那些条件下也要达到按照安装时间排序，请在调用reorderApps方法前增加
Collections.sort(mApps, LauncherModel.getInstallTimeComparator());
例如：新安装应用后仍然要按照安装时间排序，需要在AppsCustomizePagedview.java的addApps方法中增加sort的调用。如下：
```

## [FAQ05709] 在Launcher界面上锁再解锁后，如何回到上锁前的界面？

```
M0:
请修改packages/apps/Launcher3/src/com/android/launcher3/Launcher.java的mReceiver的onReceive方法，注释掉下面的代码：
if (mAppsView != null && mWidgetsView != null && mPendingAddInfo.container == ItemInfo.NO_ID) {
    showWorkspace(false);
}

L1/L0/KK:
请修改packages/apps/Launcher3/src/com/android/launcher3/Launcher.java的mReceiver的onReceive方法，注释掉下面的代码：
if(mAppsCustomizeTabHost != null && mPendingAddInfo.container == ItemInfo.NO_ID) {
     showWorkspace(false);
}
```

## [FAQ18067] iperf测试wifi direct的传输速度的方法

```
iperf如何测试wifi direct的传输速度？
1.推送iperf文件到待测试的两个手机
adb remount
adb push iperf /system/bin
adb shell
cd /system/bin/
chmod 777 iperf

2.两手机进行wifi direct连接
首先，对所有已保存的ap进行取消保存的操作。
然后wifi direct连接。

3.获取手机的ip地址
adb shell
ifconfig p2p0

4.在一个手机上启iperf的server
cd /system/bin/
iperf –s

5.在另一个手机上启iperf的client端
cd /system/bin/
iperf –c [另一手机的ip地址] -i 3 –t 180

这样就可以了。

-i 3表示每3s报告一次传输速度。
-t 180 表示打流量打180s。
```

## [FAQ18048] 如何解决SettingsProvider中的值读写不同步的问题

```
因为SettingsProivder算是一个公共模块，很多属性的值都写到了SettingsProivder中，但在某些情况下时，
如果写入的值，马上就在另外一个APP中去查询，发现查询得到的值还是旧的值。 
 产生这个问题的原因是，android在设计SettingsProvider时，所有的SettingsPovider保存的属性，如果相关
app读取过一次，就会在app端cache起来，下次再来读这个值时，如果发现该属性所在的表的版本（保存在systemProperties中）没有变化，就
会直接从cache中读旧值，如果版本发生了变化，才会去SettingsProvider中去取真正的新值。这样做的目的是
为了减少ipc调用的次数。但是，问题来了，如果透过systemProperties的api获得版本属性比较慢时，就会发现这个版本还是旧的版本，导致
app认为版本没有变化，就直接从app的cache中取值了，这样取得的就是旧值。
[SOLUTION]
对自己关注的属性，直接从provider中取值，例如希望“airplane_mode_on ”取得的值一定是最新的值，修改方法如下：
请修改 /frameworks/base/core/java/android/provider/Settings.java
中的
public String getStringForUser(ContentResolver cr, String name, final int userHandle) {
    final boolean isSelf = (userHandle == UserHandle.myUserId());
    if (isSelf&&!name.equals("airplane_mode_on")) {//添加airplane_mode_on 不从cache中取，直接从provider中取
```

## [FAQ14169] [Audio APP]Music、FM等apk在播放或运行时，从recent app list中删除后，如何实现music、FM等apk立即停止？

```
在ActivityManagerService.java文件中cleanUpRemovedTaskLocked方法中修改，
private void cleanUpRemovedTaskLocked(TaskRecord tr, int flags) {
    ……
    for (int i=0; i<procs.size(); i++) {
        ProcessRecord pr = procs.get(i);
        if (pr == mHomeProcess) {
            // Don't kill the home process along with tasks from the same package.
            continue;
        }
        Slog.d(TAG, "pr.processName=" + pr.processName+",pr.setSchedGroup="+pr.setSchedGroup);//第一步，先要该行log,得到要修改的apk的name
        if (pr.setSchedGroup == Process.THREAD_GROUP_BG_NONINTERACTIVE || "要删除的apk" == pr.processName) { //第二步，添加红色字体标记的代码
            Slog.d(TAG,"pr.kill");
            pr.kill("remove task", true);
        }  
```

## [FAQ09723] [Audio App]在FM station list界面，将当前正在播放的频道标识出来.

```
1.修改FMRadioActivity.java方法：private void enterChannelList() 
在        intent.setClass(FMRadioActivity.this, FMRadioFavorite.class);
之前添加：
Bundle bd= new Bundle();
bd.putInt("current_freq",mCurrentStation);
intent.putExtras(bd);
2.修改FMRadioFavorite.java
添加：    static private int currentstation;
3.修改    public void onCreate(Bundle savedInstanceState) 
在        super.onCreate(savedInstanceState);
之后添加：
Bundle bd = this.getIntent().getExtras();
currentstation=bd.getInt("current_freq");
4.修改        public void bindView(View view, Context context, Cursor cursor) 
在            viewHolder.mStationFreqView.setText(FMRadioUtils.formatStation(stationFreq));
之前添加：
if (currentstation== stationFreq) {
    stationName =stationName +  "  now playing!";
}
```

## [FAQ09169] [Audio BT] 连接蓝牙耳机后拨号按键音，第一个按键无声。

```
复现步骤：
1.连接蓝牙耳机；
2.进入拨号盘按键；
3.第一次或者前几次按键均无提示音输出。#问题
 
对比机行为：
1.三星Samsung Galaxy Nexus可以复现；
2.三星S3无法复现。

[SOLUTION]
原因分析：
1.请参考 FAQ08025，是因为特殊蓝牙耳机兼容性问题，可参考该FAQ做修改；
2.三星S3无法复现的原因是S3的数字键盘提示音不是标准的DTMF音，而换成了其它声音较长的音源，因此OK。

解决方法：
1.属于蓝牙耳机问题，可参考FAQ08025改善；
2.蓝牙耳机本身问题，除非更换数字键盘提示音，否则没有其它更有效的解决方案。
```

## [FAQ08906] [Audio Command]Music播放后恢复FM后台播放

```
1. 启动FM播放。
2. 播放music，此时FM被停止播放。等music播放一段时间后暂停，FM不会自动恢复播放。
如果要实现Music暂停后恢复FM播放，请参考以下SOLUTION.
 
[SOLUTION]
1. 改变申请audiofocus的类型。
在MediaPlaybackService.java (alps\packages\apps\music\src\com\android\music)
public void play() 中去申请audio focus->AUDIOFOCUS_GAIN_TRANSIENT。即：
if (AudioManager.AUDIOFOCUS_REQUEST_FAILED == mAudioManager.requestAudioFocus(
mAudioFocusListener, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN)) {
showToast(getString(R.string.audiofocus_request_failed_message));
MusicLogUtils.w(TAG, "<< play: phone call is ongoing, can not play music!");
return;
}

改为：
if (AudioManager.AUDIOFOCUS_REQUEST_FAILED == mAudioManager.requestAudioFocus(mAudioFocusListener, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN_TRANSIENT)) {
    showToast(getString(R.string.audiofocus_request_failed_message));
    MusicLogUtils.w(TAG, "<< play: phone call is ongoing, can not play music!");
    return;
}

2. 暂停的时候去做audiofocus释放动作。
在public void pause() 的时候去释放audiofocus
在MusicLogUtils.d(TAG, "pause");之后添加如下两句：
// abandon audiofocus
// abandon audio focus
mAudioManager.abandonAudioFocus(mAudioFocusListener);

3. 在FM获取到audiofocus的时候做Resume动作。
在FMRadioService.java (alps\mediatek\packages\apps\fmradio\src\com\mediatek\fmradio)
public void onAudioFocusChange(int focusChange) 中的如下case中，当获取到audiofocus的时候做resume的动作。
case AudioManager.AUDIOFOCUS_GAIN:
    LogUtils.d(TAG, "AudioFocus: received AUDIOFOCUS_GAIN");
    updateAudioFocusAync(AudioManager.AUDIOFOCUS_GAIN);
    //resume FM Player
    resumeFMAudio();
    break;
```

## [FAQ08593] [Audio App]如何内置FM频道

```
如有5个频道需要内置，即烧完软件后第一次进入FM，还没有进行搜索时，列表就可以始终显示内置频道
[SOLUTION]
FMRadioService.java
1.private  int defaultChannels[] = new int[] {875, 903, 918, 942, 1025};//自定义内置频道
2.initService()中添加insertDefaultStation(defaultChannels);
3.定义insertDefaultStation()函数
private int[] insertDefaultStation(int[] channels) {
    LogUtils.d(TAG, "insertDefaultStation.firstValidChannel:" + Arrays.toString(channels));
    int firstValidChannel = mCurrentStation;
    int channelNum = 0;
    if (null != channels) {
        Arrays.sort(channels);
        int size = channels.length;
        // Save searched stations into database by batch
        ArrayList<ContentProviderOperation> ops = new ArrayList<ContentProviderOperation>();
        String defaultStationName = getString(R.string.default_station_name);
        for (int i = 0; i < size; i++) {
            if (FMRadioUtils.isValidStation(channels[i])) {
                if (0 == channelNum) {
                    firstValidChannel = channels[i];
                }
                if (!FMRadioStation.isDefaultStation(mContext, channels[i])) {
                    ops.add(ContentProviderOperation.newInsert(Station.CONTENT_URI)
                            .withValue(Station.COLUMN_STATION_NAME, defaultStationName)
                            .withValue(Station.COLUMN_STATION_FREQ, channels[i])
                            .withValue(Station.COLUMN_STATION_TYPE, FMRadioStation.STATION_TYPE_SEARCHED)
                            .build());
                }
                channelNum++;
            }
        }
        // Save search stations to database by batch
        try {
            mContext.getContentResolver().applyBatch(FMRadioStation.AUTHORITY, ops);
        } catch (RemoteException e) {
            LogUtils.d(TAG, "Exception when applyBatch searched stations " + e);
        } catch (OperationApplicationException e) {
            LogUtils.d(TAG, "Exception when applyBatch searched stations " + e);
        }
    }
    LogUtils.d(TAG, "insertDefaultStation.firstValidChannel:" + firstValidChannel + ",channelNum:" + channelNum);
    return (new int[] { firstValidChannel, channelNum });
}
4.handleMessage()->case FMRadioListener.MSGID_SCAN_FINISHED:中
result = insertSearchedStation(channels);
insertDefaultStation(defaultChannels);//添加此行
5.FMRadioStation.java中添加
public static boolean isDefaultStation(Context context, int iStation) {
    return isStationExist(context, iStation, STATION_TYPE_SEARCHED);
}
```

## [FAQ13747] 向Android framework添加新资源的建议

```
开发过程中，有时需要向frameworks\base\core\res\添加新资源，编译到framework-res.apk中，方便各应用使用。
这种添加资源的方法，不论添加多或者少，都有一定概率引起id shift导致编译出错等。id shift并不是每次都会发生，和资源名字，存放路径等因素都有关系。
MTK建议客户，如需向framework添加资源，请参考如下文档添加一个customer-framework.res来完成，这样可完全避免id shift导致的错误。
请通过如下dcc link下载文档 MediaTek_resource_packing_and_accessing.doc 参考实现。
```

## [FAQ06619] 需要注意的，有可能使android.theme CTS fail的客制化修改

```
在DCC上搜索 CTS Customize Guideline.docx 这篇文档。
可能导致 android.theme fail 的客制化建议请参考5.5小节。
```

## [FAQ09510] 【other】如何打印出Looper中Message处理的log

```
Telephony中大量的消息处理与传递都是靠handler与Looper来完成，若是有遇到消息处理（例如某一个message处理太久）导致问题，可以在适当位置按照如下方式打开Looper处理message的相关log查看。
Looper中提供了setMessageLogging(Printer printer)接口可以用来打开Looper.loop()中相关log信息。
例如：
先import android.util.LogPrinter;
然后可以在拨打电话时，加入以下代码，打开log：
Looper.myLooper().setMessageLogging(new LogPrinter(Log.DEBUG, LOG_TAG));
在电话挂断后，加入以下代码关闭log：
Looper.myLooper().setMessageLogging(null);
这样就可以打开整个电话流程中，Phone主线程的Looper对于Message的处理情况。
```

## [FAQ13972] 如何将HOME键传给APP，屏蔽系统的home键功能

```
KK版本APP可以使用
this.getWindow().addFlags(WindowManager.LayoutParams.FLAG_HOMEKEY_DISPATCHED);
 
L版本因为flag的位数已被系统用完，故没有FLAG_HOMEKEY_DISPATCHED
这个feature，
现在只有通过硬编码才能解决这个问题。
修改PhoneWindowManager.java中的
@Override
public long interceptKeyBeforeDispatching(WindowState win, KeyEvent event, int policyFlags) {
......
// timeout.
if (keyCode == KeyEvent.KEYCODE_HOME) {
    //com.example.adc 替换为贵司的apk 包名称即可。
    if(win != null && win.getAttrs() != null&&win.getOwningPackage().equals("com.example.adc")){
        return 0;// return 0就会丢给app处理了。
    }
    如果要仅仅丢给某个APP的某个activity，可以用下面的方法：
    if(win != null && win.getAttrs() != null&&win.getAttrs().getTitle().contain("xxx.xxx.xxx.xxxActivity")){
        return 0;// return 0就会丢给 xxx.xxx.xxx.xxxActivity处理了。
    }
```

## [FAQ17871] 设置安全锁后，从锁屏界面进入相机，图片预览和录像播放界面短按电源键无法锁屏

```
以下三段代码都在 PhotoPage.java中

1. 将code1 与PhotoPage类的成员变量放在同一级
//code 1
private BroadcastReceiver mScreenOffReceiver = new BroadcastReceiver() {
    @Override
    public void onReceive(Context context, Intent intent) {
        mActivity.finish();
        Log.d(TAG, "mScreenOffReceiver receive");
    }
};
//code 1 end

2. 将code2 放在PhotoPage.onCreate()里的 if(secureAlbum != null) 的语句下
//code 2
IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
mActivity.registerReceiver(mScreenOffReceiver, filter);
//code 2 end

3. 将code3 放在 protected void onDestroy()中
//code 3
if (mSecureAlbum != null) {
    mActivity.unregisterReceiver(mScreenOffReceiver);
}
//code 3 end
```

## [FAQ17998] 发送长短信时，分段发送的编码方式不一致导致接收方出现乱码

```
目前对于长短信的编码方式是：
每个part的编码方式是独立的，默认用7bit，如果7bit编码不了，则在该part使用16bit，所以会出现各part使用的编码方式不同。比如第一个part用了16bit编码，第个二part用了7bit编码。
以上编码方式在国内以及其他很多国家都是OK的，但某些运营商不支持这种组合编码pdu的情况，所以当短信从SMSC转发到手机时，pdu编码会被统一成7bit，导致接收方解码成乱码。
 
 
[SOLUTION]
将各个part统一编码方式。
修改 /packages/apps/Mms/src/com/android/mms/transaction/SmsSingleRecipientSender.java
在sendMessage()内，把
if (messageCount > 1) {
    intent.putExtra(SmsReceiverService.EXTRA_MESSAGE_CONCATENATION, true);
}
改成:
if (messageCount > 1) {
    intent.putExtra(SmsReceiverService.EXTRA_MESSAGE_CONCATENATION, true);
    for (int j = 0;j < messageCount;j++) {
        if (GsmAlphabet.countGsmSeptets(messages.get(j), false) == null) {
            codingType = SmsMessage.ENCODING_16BIT;
            break;
        }
    }
}
```

## [FAQ10514] [People]在联系人用户自定义视图中，默认状态所有账号下面需要全部选中

```
进入联系人列表 显示菜单--》contacts to display --》customize --》如何默认设置谷歌帐号联系人全部选中？
目前默认是只有My Contacts 和 Starred in Android 这两个有默认选中。
[SOLUTION]
[第1处修改]
FILE: ContactsDatabaseHelper.java
PATH: alps/packages/providers/contactsProviders/src/com/android/provider/Contacts
FUNC: onCreate()
@Override
public void onCreate(SQLiteDatabase db) {
Log.i(TAG, "Bootstrapping database version: " + DATABASE_VERSION);
... ...
// Groups table
db.execSQL("CREATE TABLE " + Tables.GROUPS + " (" +
... ...
//  [1309行左右]
// 修改前
//        Groups.GROUP_VISIBLE + " INTEGER NOT NULL DEFAULT 0," +
// 修改后
Groups.GROUP_VISIBLE + " INTEGER NOT NULL DEFAULT 1," +      // Modified
... ...

... ...
db.execSQL("CREATE TABLE IF NOT EXISTS " + Tables.SETTINGS + " (" +
Settings.ACCOUNT_NAME + " STRING NOT NULL," +
Settings.ACCOUNT_TYPE + " STRING NOT NULL," +
Settings.DATA_SET + " STRING," +
// [1346行左右]
// 修改前 
//        Settings.UNGROUPED_VISIBLE + " INTEGER NOT NULL DEFAULT 0," +
// 修改后
Settings.UNGROUPED_VISIBLE + " INTEGER NOT NULL DEFAULT 1," +     // Modified
Settings.SHOULD_SYNC + " INTEGER NOT NULL DEFAULT 1" +
");");
... ...

[第2处修改]
FILE: CustomContactListFilterActivity.java
PATH: alps/packages/contacts/src/com/android/contacts/List

// [311行左右]
// 修改前
//    private static final int DEFAULT_VISIBLE = 0;
// 修改后
private static final int DEFAULT_VISIBLE = 1;   // Modified
```

## [FAQ10619] [People] “设置默认号码”的作用

```
“设置默认值”仅仅会在DATA表中填写一个IS_PRIMARY的栏位，目前仅此联系人被设为favorite时，在DialtactsActivity中的favorite tab上，若是有设置“默认号码”的话会直接拨出而不会选择号码。
需要注意的是：设置后并不意味着在其他一些界面上选择多号码的联系人拨打电话时会不弹出号码选择的对话框，而直接打出电话。
```

## [FAQ10016] [People]如何将联系人编辑界面下拉框中字符串全部左对齐显示？

```
FILE:   LabeledEditorView.java (L640~L648)
PATH: alps/packages/apps/contacts/src/com/android/contacts/Editor/
private View createViewFromResource(int position, View convertView, ViewGroup parent,
int resource) {
TextView textView;
if (convertView == null) {
textView = (TextView) mInflater.inflate(resource, parent, false);
textView.setAllCaps(true);
[ 4.2 JB ]
//            textView.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);   // 右对齐显示
textView.setGravity(Gravity.LEFT | Gravity.CENTER_VERTICAL);    // 左对齐显示
[ 4.4 KK ]
//            textView.setGravity(Gravity.END| Gravity.CENTER_VERTICAL);           // 右对齐显示
textView.setGravity(Gravity.START | Gravity.CENTER_VERTICAL);    // 左对齐显示

textView.setTextAppearance(mContext, android.R.style.TextAppearance_Small);
textView.setTextColor(mTextColor);
textView.setEllipsize(TruncateAt.MIDDLE);
textView.setHorizontalFadingEdgeEnabled(false);
} else {
textView = (TextView) convertView;
}
```

## [FAQ09727] [People]开机英语，之后切换中文，新建联系人还显示部分英文

```
第一次开机或者恢复出厂设置后，选择其他国家语言(非中文)，开机导航完之后再手动切换到中文语言模式下，
新建联系人中部分字符串依然显示英文字符，如下图。

[SOLUTION]
SIM/USIM卡第一次插入手机时，就会获取当前系统语言，然后决定显示中文还是英文(国内SIM卡只支持中文英文两种语言)，确定之后会将SIM名称/类型等信息写入数据库telephony.db，如果不手动修改这些信息，即使切换系统语言，这张SIM对应的信息也不会改变。
这也就是为什么其他语言切到中文下SIM卡名字还是显示英文的原因，反之您如果开机设置中文，之后切到其他语言下，SIM卡名字也不会由中文改变为英语。
如果您认为有必要，可以去手动在设置->SIM卡管理中重新设置一个SIM卡的名字即可。

SIM卡信息会保存在数据库telephony.db中，可以使用以下命令导出数据库到C盘根目录查看。
```

## [FAQ09491] [People][RTL]阿拉伯语下电话号码显示错乱

```
前提: 对联系人模块(contacts.apk)设置了RTL；
现象: 阿拉伯语等右对齐显示语言下，电话号码显示错乱；
示例: 150 9994 3431，会显示为 3431 9994 150

1. TextView的解决方法(仅显示不是编辑框)：
在Number前后加上控制字符 '\u202D' 和 '\u202C'，这样在显示的时候number就不会乱掉。
Example:
fieldView.setText(TextUtils.isEmpty(number) ? number : '\u202D' + number + '\u202C');

2. EditText的解决方法(编辑框中)：
对这个View
设置text的显示方向为从左到右
fieldView.setTextDirection(TEXT_DIRECTION_LTR);
设置view从右边开始显示
fieldView.setGravity(Gravity.RIGHT);
Example:
在设置RTL后，阿拉伯语下联系人编辑框中输入的号码会乱掉，处理方法如下：
TextFieldsEditorView.java
文件路径：alps/packages/apps/contacts/src/com/android/contacts/Editor
setValues() 方法中处理如下
-----------------------------------------------------------------------------------------------------------
if (inputType == InputType.TYPE_CLASS_PHONE) {
    /** M: New Feature xxx @{ */
    /*
     * original code
     * PhoneNumberFormatter.setPhoneNumberFormattingTextWatcher
     * (mContext, fieldView);
     */
    // add by mediatek
    ExtensionManager.getInstance().getContactDetailExtension().setViewKeyListener(
            fieldView, ContactPluginDefault.COMMD_FOR_OP01);
    PhoneNumberFormatter.setPhoneNumberFormattingTextWatcher(mContext, fieldView, null);
    /** @} */
    //  Add for Arabic language [RTL]
    String locale = Locale.getDefault().getLanguage();
    if(locale.equals("ar")){
          fieldView.setTextDirection(TEXT_DIRECTION_LTR);
          fieldView.setGravity(Gravity.RIGHT);
    }
    // End for Arabic language [RTL]
}
-----------------------------------------------------------------------------------------------------------       
备注：("ar") 表示是阿拉伯语，需要进入包import java.util.Locale
```

## [FAQ15362] 查询USSD后结果框显示乱码

```
将alps\vendor\mediatek\proprietary\hardware\ril\mtk-ril\Ril_ss.c里的
onUssd方法里的以下code
if (bNewSSServiceClassFeature == 1) {
    /* DCS is set as "UCS2" by AT+CSCS in ril_callbacks.c */
   dcsString = strdup("UCS2");
   p_data[2] = dcsString;
} else {
   p_data[2] = (char *) GsmCbsDcsStringp[dcsType];
}
改为
if (bNewSSServiceClassFeature == 1) {
     if (dcsType == DCS_8BIT) {
     // GsmCbsDcsE: DCS_8BIT = 1
          p_data[2] = (char *) GsmCbsDcsStringp[dcsType];
          LOGD("onUssd: p_data[2] (dcsString) = %s", p_data[2]);
      } else {
          /* DCS is set as "UCS2" by AT+CSCS in ril_callbacks.c */
          dcsString = strdup("UCS2");
          p_data[2] = dcsString;
      }
} else {
  p_data[2] = (char *) GsmCbsDcsStringp[dcsType];
}
```

## [FAQ17919] 如何在M版本抓取display相关log

```
在M版本上，有对kernel log做精简优化，默认抓取到mtklog中的display log非常的少，有时候需要抓取更多的display log 帮助分析。

[SOLUTION]
1. 抓取display register dump
adb shell cat /d/disp/dump

2. 抓取最近时间的display log 
adb shell cat /d/mtkfb
（该方法只能够抓取最近一段时间的display log）

3.将display log打印到mtklog中（推荐）
adb命令方法 （缺点输入命令后才生效，重启失效）
打开： adb shell "echo mobile:on > /d/mtkfb"
关闭： adb shell "echo mobile:off > /d/mtkfb"
修改代码
/kernel-3.18/drivers/misc/mediatek/video/[chip]/videox/debug.c
unsigned int g_mobilelog = 1;
```

## [FAQ17553] 如何手动对apk进行签名？

```
如下情况会需要手动签名：
1.像Phone/Contacts/Dialer/SystemUI 等apk，在其package下面的Android.mk文件中，都有写明LOCAL_CERTIFICATE=platform或者shared的属性，测试过程中有时需做对比验证，但这些Android prebuilt apk是无法从一台手机里pull出来再直接push到手机运行的，需要用自己手机软件对应的key进行签名之后，才可以正常运行。
2.来自客户的demo apk或3rd apk带有platform或shared签名时，无法直接安装运行。
 
[SOLUTION]
platform和shared对应签名文件的key都放在alps/build/target/product/security/common下，
签名工具signapk.jar位于/out/host/linux-x86/framework 下，由alps/build/tools/signapk/生成​。
 
使用方法：
1.明确待签名的apk所使用的签名类型
=>如果是Android prebuild apk，则直接查看package下面的Android.mk文件的LOCAL_CERTIFICATE栏位值是shared还是platform；
=>如果是来自客户的demo apk或3rd apk，则可直接向客户询问签名类型或者用Google提供的apktool反编译出apk的AndroidManifest.xml文件，查看其android:sharedUserId属性的值，是"android.uid.shared"(对应shared签名)还是"android.uid.system"(对应platform签名)
apktool链接：http://ibotpeaches.github.io/Apktool/
 
2.明确待签名的apk需要安装到的手机所对应Android软件版本，如Android 4.4或Android5.0等版本号，无需详细到手机软件具体的version版本号，只需大的Android软件版本号对应即可
 
3.参考上面签名文件和签名工具在android代码中的存放路径，将对应软件版本的签名文件和签名工具拷贝到PC或Linux系统某个目录下，与待签名的apk放在同一目录下
 
4.在待签名apk所在目录下执行签名命令java -jar signapk.jar  xxx xxx name.apk name_after_signatured.apk
其中xxx xxx分别是签名文件，name是apk的名字
 
使用方法举例：
例如：在Android5.0版本上，用platform.x509.pem和platform.pk8来签名​ Settings.apk，重新签名之后的apk名字为​Settings_1.apk​，那么将随意一份Android 5.0 软件代码中的signapk.jar和platform.x509.pem和platform.pk8等文件拷贝到PC，放在自己指定的路径下，如C盘或桌面，然后打开PC端cmd命令窗口或linux terminal窗口(确保你的环境有装java)，cd到该路径下，执行下面的命令：
java -jar signapk.jar platform.x509.pem platform.pk8 Contacts.apk Contacts_1.apk
 
例如：​用 shared.x509.pem和shared.pk8来签名 Contacts.apk，重新签名之后的apk名字为Contacts_2.apk 
java -jar signapk.jar shared.x509.pem shared.pk8 Contacts.apk Contacts_2.apk 
 
可以使用上述方法，对手头需要验证测试的系统apk做签名后，再push到手机就可以正常运行了。
```

## [FAQ17903] [Audio Profile]第三方播放器设置的来电铃声，在铃声列表选择框里不能显示

```
第三方音乐播放器设置来电铃声后，进入设置里面的手机铃声查看，发现丢失光标，或者找不到所设置的铃声。 将铃声放到其他文件夹，这时候手机铃声列表里面（选择more）可以看到。
 
[SOLUTION]
因为第三方app insert media DB时不会去写IS_DRM这个字段, 从而使RingtoneManager.java getNewCorsor加载不了在KuwoMusic里面设置的ringtone audio, 第三方行为是正常. 要规避此问题，可以如下修改:
修改RingtoneManager.java, 在appendDrmToWhereClause()方法sb.append(MediaStore.Audio.Media.IS_DRM).append("!=1")和if(it != null)中加上一行code, code如下所示：
sb.append(" or ").append(MediaStore.Audio.Media.IS_DRM).append(" is null");
```

## [FAQ16697] 第一开机或者恢复出厂设置后，桌面小部件很长时间才更新到正常的画面

```
原因：开机后有很多广播在处理（尤其在安装GMS包的情况下），影响了广播 APPWIDGET_ENABLE 和 APPWIDGET_UPDATE（background broadcast）的分发速度。
解决方法：建议在 AppWidgetServiceImpl.java 中的 sendEnableIntentLocked() 和 sendUpdateIntentLocked() 中，给intent添加 FLAG_RECEIVER_FOREGROUND，这样可以加快 APPWIDGET_ENABLE 和 APPWIDGET_UPDATE 的处理速度。
```

## [FAQ17873] 第一次进入设置——蓝牙，点接收的文件，会比较慢

```
請修改device\mediatek\common\sepolicy\bluetooth.te

在最後面加上下面這段
# Operation: Program binary service
# Purpose : Add permission for program binary service find from ServiceManager.
allow bluetooth program_binary_service:service_manager find;

然後build load重燒。

这个是什么原因呢？？？
```

## [FAQ17876] 设置——提示音和通知——铃声音量，播放时按HOME键或返回键，播放不停止

```
packages/apps/Settings/src/com/mediatek/audioprofile/Editprofile.java
onPause 方法里面添加："mVolumeCallback.stopSample();"
```

## [FAQ17879] Launcher主菜单的搜索框匹配规则是什么？

```
搜索框的关键字会从主菜单应用名称中每个单词的开头开始匹配，无法从单词中间或者末尾匹配（空格隔开单词)。
譬如：在搜索框输入"T"，可以匹配"Dev Tools"、"Sim Toolkit"，无法匹配"Calculator"、"Contacts"。
```

## [FAQ17870] 打开微笑快门，不能切换前后camera

```
前摄像头没有加微笑快门的拍照模式。在使用前摄像头时，被拍的人可以在屏幕上看见拍下的场景，拍照的时机可以自行决定。使用者完全可以在微笑时自行按下拍照键完成拍照，所以前摄像头没有加微笑快门。打开微笑快门，不能切换前后摄像头，属正常设计。
如需修改打开微笑快门，能切换前后camera，修改如下：
请修改/packages/apps/Camera/src/com/mediatek/camera/setting/SettingDataBase.java文件中的 MATRIX_RESTRICTION_STATE[SettingConstants.ROW_SETTING_DUAL_CAMERA] = new int[]{STATE_E0, STATE_D0, STATE_E0, STATE_D0, STATE_D0, STATE_D0, STATE_D0, STATE_E0, STATE_D0, STATE_E0, STATE_E0, STATE_D0, STATE_E0, STATE_D0};//1: dual camera

倒数第三个STATE_D0改成STATE_E0
```

## [FAQ17872] 相机设置中点击开关项会连续响两声

```
请在alps/packages/apps/Camera/src/com/android/camera/ui/InLineSettingSwitch.java中修改如下：
1.添加private boolean mChecked = false;
2.在onClick(View view)方法中将mSwitch.performClick();语句注释掉。将其改为：
mSwitch.setChecked(!mChecked);
mChecked = !mChecked ;
changeIndex(mChecked ? 1 : 0);
```

## [FAQ17834] M版本SettingsProvider的数据放在哪里？

```
以前的版本都放在/data/data/com.android.providers.settings目录下的settings.db文件内，Android M版本存放在哪里呢？ 
[SOLUTION]
M版本上settings.db 只用做备份旧数据，新数据不会直接存到里面。
M版本现在的设置数据都是保存在
data/system/users/<userid>/settings_system.xml
data/system/users/<userid>/settings_global.xml
data/system/users/<userid>/settings_secure.xml
且settings.db里面的数据也会迁移到这些xml文件中。
```

## [FAQ17812] 第三方应用卡顿问题如何抓取systrace

```
请使用 user load 抓取mtklog 以及systrace
使用SDK下Monitor抓取systrace 的方法如下:
Trace duration 尽量不要设超过10s，请按照下图所示勾选对应的tags 然后点击OK后再复现卡顿场景，若没复现到再多抓几次
```

## [FAQ17813] CMW500 setup SOP for Volte test

```
APN Settings
-->Settings ->More->Mobile networks settings->Data connection->Off
-->Settings -> More --> Mobile networks settings -> Access Point Names->New APN
Name = ims, APN = ims , APN type = ia, ims (Note: “default” APN MUST be unchecked),
APN protocol = IPv6

NVRAM Settings
--> Use MTK META tool to change below NVRAM value.
META tool -> NVRAM_EF_IMS_PROFILE_LID -> 1 -> imc_config -> voice_bearer_ctrl=0x00

Engineering Mode Settings
EM -> IMS -> Common -> operator_code -> choose VoLTE_Operator_CMW500
EM -> IMS -> Bearer -> ims_signaling_qci=5
EM -> IMS -> Call -> UA_call_precondition=0 (disable precondition for volte call)

CMW500 Settings
Default EPS Bearer for IMS QCI=5
Dedicated EPS bearer for Voice QCI=1(manually Setup dedicated bearer about 10s after UE registers IMS successfully)

Note
--> Restart UE for each testing.
--> DO NOT use Flight Mode
--> DO NOT use AT Command for all Configuration and Setting
--> CMW500 version:
 ->Base：3.2.70
 ->DAU：3.2.52.7
 ->LTE：3.2.82
```

## [FAQ17811] 如何从modem log看出E FACH和HS RACH是支持的

```
1   从rrcConnectionSetupComplete 的 hsdschReception-CellFach: true (0) 可以看出E FACH 是支持的
hsscchlessHsdschOperation: true (0) 
enhancedFdpch: true (0) 
hsdschReception-CellFach: true (0) 
hsdschReception-CellUraPch: true (0) 
uplinkPhysChCapability 
edch-PhysicalLayerCategory-extension: 7 
 
2   从 EDCH_HS_DSCH_FACH_ENABLED 或者在 RRC Connection Request 里面有找到 supportOfCommonEDCH 就代表HS RACH 是支持的

modem log用什么工具查看？？？如何分析？？？
```

## [FAQ17556] Android M 版本MTP查看手机剩余空间比从手机上看到的小

```
MTP模式连接手机，从PC上查看手机内部存储剩余容量：
PC:   我的电脑-> MTP存储 ->Internal Storage ->右键属性 ->查看 Used space 和 Free Space
手机: Setting -> Storage&USB -> 查看Used Space
从PC上看到的 Used Space 更大，几百兆不等，和手机的Internal Storage 大小有关。
[SOLUTION]
这是Google 的 Design。会Reserve 一部分存储空间，为防止内部存储被拷贝满而影响手机正常使用。
/frameworks/base/core/java/android/os/storage/StorageManager.java
public long getStorageLowBytes(File path) {
    final long lowPercent = Settings.Global.getInt(mResolver, Settings.Global.SYS_STORAGE_THRESHOLD_PERCENTAGE, DEFAULT_THRESHOLD_PERCENTAGE);
    // 可以通过改变DEFAULT_THRESHOLD_PERCENTAGE 的大小来改变预留空间的大小，默认是10%。
    private static final int DEFAULT_THRESHOLD_PERCENTAGE = 10;

    // Google 的解释如下：
    /**
     * Number of megabytes of space to leave unallocated by MTP.
     * MTP will subtract this value from the free space it reports back
     * to the host via GetStorageInfo, and will not allow new files to
     * be added via MTP if there is less than this amount left free in the storage.
     * If MTP has dedicated storage this value should be zero, but if MTP is
     * sharing storage with the rest of the system, set this to a positive value
     * to ensure that MTP activity does not result in the storage being
     * too close to full.
     *
     * @return MTP reserve space
```

## [FAQ17707] M版本如何clone project

```
Clone Project 指的是根据现有的Project创建出新的Project
▪后面指令中使用的变量含义如下:
•$BASE_PROJECT 指的是新Project的基础Project
•$NEW_PROJECT 指的是将创建的新的Project
•$PLATFORM 指的是平台信息，如MT6797等
•$COMPANY 指的是开案公司的名字，如lenovo, tinno, huawei等等。
 
▪ cd vendor/mediatek/proprietary/bootable/bootloader/preloader/custom/：（clone preloader）
输入以下指令:
•cp -r  ${BASE_PROJECT}   ${NEW_PROJECT}
• mv  ${NEW_PROJECT}/${BASE_PROJECT}.mk  ${NEW_PROJECT}/${NEW_PROJECT}.mk
•sed -i   s/${BASE_PROJECT}/${NEW_PROJECT}/g  ${NEW_PROJECT}/${NEW_PROJECT}.mk
 
▪cd vendor/mediatek/proprietary/bootable/bootloader/lk/ : (clone lk)
输入以下指令
•cp  project/${BASE_PROJECT}.mk   project/${NEW_PROJECT}.mk
•cp -r  target/${BASE_PROJECT}   target/${NEW_PROJECT}
•sed -i   s/${BASE_PROJECT}/${NEW_PROJECT}/g    project/${NEW_PROJECT}.mk
 
▪cd kernel-3.18/ :(clone kernel)
输入以下指令
•cp  -r  drivers/misc/mediatek/mach/mt6755/${BASE_PROJECT}   drivers/misc/mediatek/mach/mt6755/${NEW_PROJECT}   // mt6755以及下面的arm64需要根据您的平台对应修改
•cp  arch/arm64/configs/${BASE_PROJECT}_defconfig   arch/arm64/configs/${NEW_PROJECT}_defconfig
•cp  arch/arm64/configs/${BASE_PROJECT}_debug_defconfig   arch/arm64/configs/${NEW_PROJECT}_debug_defconfig
•sed  -i  s/${BASE_PROJECT}/${NEW_PROJECT}/g  arch/arm64/configs/${NEW_PROJECT}_defconfig
•sed  -i  s/${BASE_PROJECT}/${NEW_PROJECT}/g  arch/arm64/configs/${NEW_PROJECT}_debug_defconfig
• cp  arch/arm64/boot/dts/${BASE_PROJECT}.dts   arch/arm64/boot/dts/${NEW_PROJECT}.dts
 
▪clone android
•cp  -r  device/${COMPANY}/${BASE_PROJECT}   device/${COMPANY}/${NEW_PROJECT}
•mv  device/${COMPANY}/${NEW_PROJECT}/full_${BASE_PROJECT}.mk  device/${COMPANY}/ ${NEW_PROJECT}/full_${NEW_PROJECT}.mk
•cp  -r  vendor/mediatek/proprietary/custom/${BASE_PROJECT}  vendor/mediatek/proprietary/custom/${NEW_PROJECT}
•cp  vendor/mediatek/proprietary/trustzone/custom/build/project /${BASE_PROJECT}.mk vendor/mediatek/proprietary/trustzone/custom/build/project /${NEW_PROJECT }.mk
•cp –r vendor/${COMPANY}/libs/${BASE_PROJECT} vendor/${COMPANY}/libs/${NEW_PROJECT}
•sed -i s/${BASE_PROJECT}/${NEW_PROJECT}/g device/${COMPANY}/${NEW_PROJECT}/AndroidProducts.mk
•sed -i  s/${BASE_PROJECT}/${NEW_PROJECT}/g  device/${COMPANY}/${NEW_PROJECT}/BoardConfig.mk
•sed -i  s/${BASE_PROJECT}/${NEW_PROJECT}/g  device/${COMPANY}/${NEW_PROJECT}/device.mk
•sed -i  s/${BASE_PROJECT}/${NEW_PROJECT}/g  device/${COMPANY}/${NEW_PROJECT}/full_${NEW_PROJECT}.mk
•sed -i  s/${BASE_PROJECT}/${NEW_PROJECT}/g  device/${COMPANY}/${NEW_PROJECT}/vendorsetup.sh
•sed -i s/${BASE_PROJECT}/${NEW_PROJECT}/g  vendor/mediatek/proprietary/custom/${NEW_PROJECT}/security/efuse/input.xml
•sed -i s/${BASE_PROJECT}/${NEW_PROJECT}/g vendor/mediatek/proprietary/custom/${NEW_PROJECT}/Android.mk
```

## [FAQ11983] [Contacts Data] 联系人列表#组置于A~Z之前

```
修改文件ContactLocaleUtils.java两处
Path: /packages/contactsprovider/src/com/android/providers/contacts/

1. 函数public ContactLocaleUtilsBase(Locale locale)结尾处
...
mAlphabeticIndexBucketCount = mAlphabeticIndex.getBucketCount();
//add for put # group to first START
//mNumberBucketIndex = mAlphabeticIndexBucketCount - 1;
mNumberBucketIndex = 0;
//add for put # group to first END

2. 函数public int getBucketIndex(String name)结尾处 
...
mAlphabeticIndexBucketCount = mAlphabeticIndex.getBucketCount();
//add for put # group to first START
//mNumberBucketIndex = mAlphabeticIndexBucketCount - 1;
mNumberBucketIndex = 0;
//add for put # group to first END
```

## [FAQ12836] 如何用CMD 去开关AAL 各个子feature

```
讨论的前提是ProjectCOnfig.mk 中的MTK_AAL_SUPPORT=yes
 
1. 参考AAL sub feature 开启状况：
adb shell dumpsys AAL --function
 
返回值：
bit 0 表示LABC enable(1)/Disable(0)
bit 1 表示CABC enable(1)/Disable(0)
bit 2 表示DRE enable(1)/Disable(0)
 
2. 如何enable/disable 各个sub feature
adb shell dumpsys AAL --function n  （建议CMD 多执行几次，确认生效）
n 描述跟上面的一样。
 
比如n=0 表示disable LABC/CABC/DRE
n=7 表示全部enable
```

## [FAQ12136] KK版本开始手机中发现很多三方apk，如三方filemanager，无法在外置sd卡上做新建、删除文件等写操作

```
KK版本开始手机中发现很多三方apk，如三方filemanager，无法在外置sd卡上做新建、删除文件等写操作，如新建文件会出现如下Permission denied的错误
System.out: mkdir failed: EACCES (Permission denied) path = /storage/sdcard1/Android/data/cn.cmvideo.isj

[SOLUTION]

一、因为KK版本上Google规定应用需要拥有android.permission.WRITE_MEDIA_STORAGE权限才能写副卡，所以若三方没有按照要求申请到权限，而又要写副卡就会出现操作失败。
google原文说明： http://source.android.com/devices/tech/storage/

二、应用要拥有android.permission.WRITE_MEDIA_STORAGE的条件：
1、AndroidManifest.xml中有申请android.permission.WRITE_MEDIA_STORAGE
<uses-permission android:name = "android.permission.WRITE_MEDIA_STORAGE" />
如果没有申请，需拿源码添加，否则该应用是肯定无法写副卡的。

2、要让这个权限申请成功，必须要采用下面2种方法之一
因为android.permission.WRITE_MEDIA_STORAGE属于SystemOrSignature level的permission，必须采用下面两种方法之一才能申请成功。
1). 应用签系统签名
2). 将应用预置到/system/priv-app/下，即在对应的Android.mk中添加如下语句：

LOCAL_PRIVILEGED_MODULE := true

三、对比测试需注意事项：
1、该对比机并没有被root
2、所做的操作确实是写副卡
3、要写的文件并非是卡/Android/data/[packagename]下。因为google规定Android/data/[packagename]是对应package的私有目录，对应的package是有权读写的。
```

## [FAQ11144] [Common]如何获取手机SN

```
一、KK版本之前
KK之前由"phone" service提供接口： String getSN()

二、KK版本
KK版本是已经搬到"phoneEx" service中了，名称是： String getSerialNumber()

KK版上使用范例:
mTelEx = ITelephonyEx.Stub.asInterface(ServiceManager.getService("phoneEx"));
String SN = mTelEx. getSerialNumber();
或者也可以直接使用SystemProperties.get("gsm.serial");来获得；

三、L版本/L版本以后
L版本/L版本以后，未提供API接口给上层来调用；

请直接获取"gsm.serial"系统属性的值： SystemProperties.get("gsm.serial");
```

## [FAQ17580] 在乌尔都语下，设置色彩效果与预览效果不一致

```
在com/mediatek/camera/addition/effect/EffectLayout.java文件中的bindView()方法中
layout = new LinearLayout(getContext());语句下面添加layout.setLayoutDirection(View.LAYOUT_DIRECTION_LTR);
让滤镜预览图默认为LTR。
```

## [FAQ16945] MTK平台可以支持多大容量T卡？

```
目前MTK平台的可以High Capacity SD Memory Card，因此最大可以Support 32GB的T card.
Memory capacity:
Standard Capacity SD Memory Card: Up to and including 2 GB
High Capacity SD Memory Card: More than 2GB (This version of specification limits capacity up to and including 32GB)
```

## [FAQ14118] 移除掉Android L上的TaskPersist功能

```
1. 【问题现象】
关机或者重启手机后，最近任务列表仍然存在
2. 【问题原因】
Android L之后，在里面增加了任务持久化(TaskPersist)功能，用来在系统运行过程中对任务进行保存，而在开机过程中进入ActivityManagerServvice的systemReady()方法后，就对其进行恢复。 

修改的原理：
1.AMS其实就是将最近任务列表mRecentTasks 从持久化对象mTaskPersister中恢复过来，所以这里只要控制它不再恢复，而是直接new一个新的对象给它。
修改实作如下：
 
1.将ActivityManagerService.java中的systemReady中对应的代码。

修改前：
public void systemReady(final Runnable goingCallback) {
    if (mRecentTasks == null) {
        mRecentTasks = mTaskPersister.restoreTasksLocked();
    }

修改后：
public void systemReady(final Runnable goingCallback) {
    if (mRecentTasks == null) {
        //mtk added ，new 一个新的ArrayList给mRecentTasks。restoreTasksLocked的返回结果不再给 mRecentTasks
        mRecentTasks = new ArrayList();
        mTaskPersister.restoreTasksLocked();
    }
```

## [FAQ12126] 没有网络，NTP更新时间问题

```
这是ntp更新时间正常设计。
ntp在第一次更新时间时会把这个值保存到mCachedNtpTime，当再次通过ntp更新时间时，如果距离上次更新时间小于24小时，ntp便不会从网络上更新时间
而是使用上次保存的mCachedNtpTime这个加上2次更新的时间间隔getCacheAge()；如果更新时间间隔大于24小时，系统会从网络更新时间。
如下为具体code
NtpTrustedTime.java（frameworks\base\core\java\android\util）
///从网络更新时间
public boolean forceRefresh() {
    if (mServer == null) {
        // missing server, so no trusted time available
        return false;
    }
    if (LOGD) Log.d(TAG, "forceRefresh() from cache miss");
    final SntpClient client = new SntpClient();
    if (client.requestTime(mServer, (int) mTimeout)) {
        mHasCache = true;
        mCachedNtpTime = client.getNtpTime();
        mCachedNtpElapsedRealtime = client.getNtpTimeReference();
        mCachedNtpCertainty = client.getRoundTripTime() / 2;
        return true;
    } else {
        return false;
    }
}
///获取上次ntp更新的时间间隔
@Override
public long getCacheAge() {
    if (mHasCache) {
        return SystemClock.elapsedRealtime() - mCachedNtpElapsedRealtime;
    } else {
        return Long.MAX_VALUE;
    }
}
///获取当前系统时间(上次保存值和时间间隔之和)
@Override
public long currentTimeMillis() {
    if (!mHasCache) {
        throw new IllegalStateException("Missing authoritative time source");
    }
    if (LOGD) Log.d(TAG, "currentTimeMillis() cache hit");
    // current time is age after the last ntp cache; callers who
    // want fresh values will hit makeAuthoritative() first.
    return mCachedNtpTime + getCacheAge();
}
```

## [FAQ07606] 恢复出厂设置后日期没有恢复为出厂设置默认值

```
恢复出厂设置后，时间不能恢复为：2013年1月1日
仍然显示为之前设置的时间，如：2013年5月30日

[SOLUTION]
由於之前有遇到一些預設年份過於老舊, 會造成 SSL 連線的時候, 驗證 Certificate 的有效時間會錯誤.
所以对这块有做更改 (下面修改在Android KK,L,M上有效)
可以修改下列的檔案.
alps\frameworks\base\services\java\com\android\server\NetworkTimeUpdateService.java

[Function]
systemReady()
方法一:
關閉這個功能.

Log.d(TAG, "Set the year to " + mDefaultYear);
SystemProperties.set(BOOT_SYS_PROPERTY, "false");
//SystemClock.setCurrentTimeMillis(today.toMillis(false)); ==> 請修改此行

方法二:
還原成 2013/01/01

Log.d(TAG, "First boot:" + tempString + " with date:" + today);
today.set(1, 0, mDefaultYear);   //請修改此行
Log.d(TAG, "Set the year to " + mDefaultYear);
SystemProperties.set(BOOT_SYS_PROPERTY, "false");
SystemClock.setCurrentTimeMillis(today.toMillis(false));
```

## [FAQ17472] 灭屏后亮屏没有看到锁屏

```
google默认设计：
（1）timeout灭屏（手机休眠时间到）时，不会立即锁屏，默认会等待5s才会上锁，5s内亮屏是不会看到有锁屏的。
（2）按电源键灭屏时， 如果没有勾选“按电源键立即锁屏”菜单，默认也会等待5s才上锁，5s内亮屏不会看到锁屏。
（3）keyguard被三方app disable掉了，所以灭屏不会上锁，亮屏不会看到锁屏。可从如下log中mExternallyEnabled的值为false表示keyguard是被三方app disable掉了。
   如果不是以上三种原因引起，请联系MTK技术人员解决。
 
11-27 08:49:43.505  1196  3408 D KeyguardViewMediator: doKeyguard : 
externally disabled reason..mExternallyEnabled = false
 
对于第三种原因引起的灭屏后亮屏没有看到锁屏，建议贵司接受这种设计，三方app是使用了KeyguardManager.java中提供的disableKeyguard()方法将锁屏disable掉了，这个接口目前google已不建议使用了。
如果坚持想要修改成三方app disable后不生效，可以参考下面两种方法：
（1）将KeyguardManager.java中disableKeyguard()和reenablekeyguard()方法直接return.(由于这是google提供的接口，所以不建议使用)
（2）将KeyguardViewMediator.java中使用到mExternallyEnabled这个变量的地方都把它的值当true使用。
```

## [FAQ17561] recents界面长按某个应用图标会进入应用信息界面的说明

```
在L0和M版本上，在recent界面，长按某个应用的应用图标区域(如左图红框)，会进入其应用信息界面（如右图）。
在L1的某些版本上，长按则无反应。原因在于某些版本中TaskView.java中mHeaderView.mApplicationIcon.setOnLongClickListener(this);是被两个if条件包住的, setOnLongClickListener没有被执行。
第一个if条件中Constants.DebugFlags.App.EnableDevAppInfoOnLongPress定义在Constants.java中，默认值是true；
第二个if条件中mConfig.developerOptionsEnabled由Setting应用中"开发者选项"开关决定。如果"开发者选项"开启，则为true，响应该图标的长按操作，否则则不响应。

如果希望不论何种条件，长按recent界面的某个应用图标都能进入该应用信息界面，可以仿照Android M的实现，将上图红框中两个if条件都拿掉即可。
```

## [FAQ17503] VoLTE注册成功后关闭数据连接，状态栏上数据图标依然显示

```
VoLTE注册成功后关闭数据连接，如果手机此时开了一路IMS Pdn，则会将当前data connection state通知上层(如下log所示)，所以状态栏上数据图标依然显示。
11-11 14:09:43.333 819 836 D TelephonyRegistry: mConnectedApns[0]: [ims]
11-11 14:09:43.333 819 836 D TelephonyRegistry: notifyDataConnectionForSubscriber: handle onDataConnectionStateChanged
11-11 14:09:43.333 819 836 D TelephonyRegistry: onDataConnectionStateChanged(0, 13)
11-11 14:09:43.335 968 968 D NetworkController.MobileSignalController(1): onDataConnectionStateChanged: state=0 type=13
11-11 14:09:43.335 968 968 D NetworkController.MobileSignalController(1): updateNetworkType: DataState= 0, getDataNetworkType= 13
这在OM版本上是google default设计。
 
[SOLUTION]
如果希望此时状态栏上不显示数据连接图标。
1. NetworkControllerImpl.java MobileSignalController中新增：
String mApnType = "unknown";
public void onPreciseDataConnectionStateChanged(PreciseDataConnectionState state) {
    /// M: Support onPreciseDataConnectionStateChanged. @{
    if((mDataState==state.getDataConnectionState())&&(mDataNetType == state.getDataConnectionNetworkType())){
        mApnType = state.getDataConnectionApnType();
    }
    if (PluginFactory.getStatusBarPlugin(mContext).customizeBehaviorSet() == BehaviorSet.OP01_BS) {
        mSvLteController.onPreciseDataConnectionStateChanged(state);
        mCurrentState.mShowDataActivityIcon = mSvLteController.isShowDataActivityIcon();
        notifyListenersIfNecessary();
    }
}

2. MobileSignalController.notifyListeners()中 showDataIcon变量加上mApnType 的判断即可。
```

## [FAQ14865] Android L上EmergencyButton不显示初步分析方法

```
在mainlog中搜索EmergencyButton关键字，看其中的如下log．
下面log中，　变量show的值表示紧急拨号显示或不显示，　为true表示显示EmergencyButton，　false表示不显示EmergencyButton．
antiTheftLocked的值表示当前是否防盗锁，为true表示当前是防盗锁，　false表示当前不是防盗锁．
mEmergencyButtonExt.showEccInNonSecureUnlock()的值表示是否在非安全锁上显示，　为false表示不在非安全锁上显示．
eccShouldShow的值表示是否允许EmergencyButton显示．
enabled的值稍稍复杂一点，可对着代码看，　根据EmergencyButton.java中函数private void updateEmergencyCallButton()去了解．
它们之间的关系是这样：　 show = (enabled || antiTheftLocked || mEmergencyButtonExt.showEccInNonSecureUnlock()) && eccShouldShow;

紧急拨号不显示多数情况是eccShouldShow的值的影响．eccShouldShow的值是在函数private boolean eccButtonShouldShow()函数返回的，
对于默认版本，　eccShouldShow为true的条件是ServiceState为STATE_IN_SERVICE或者ServiceState.isEmergencyOnly()的值为true. 对于联通版本，　它还要求sim卡处于ready状态．
可按照如上方法先确定问题时间点，如不能解决问题，请联系MTK技术人员，　并将分析结果贴入note中，以上分析结果能让MTK更精准的将问题分配给对应owner处理．


05-28 17:30:58.912  1139  1139 I EmergencyButton: show = true --> enabled= true, antiTheftLocked=false, mEmergencyButtonExt.showEccInNonSecureUnlock() =false, eccShouldShow=true
```

## [FAQ10256] 【Contacts Data】 RCS/AAS/SNE/SNS分别代表什么含义?

```
RCS 是为国外一些运营商（如OP03），提供的一种类似于QQ、飞信的服务。这个东西会作为plug-in嵌入到Contacts中，提供一些即使通信、语音视频的服务。
AAS 是USIM卡的附属号码，这个附属号码会支持自定义Label。这个Feature是作为plug-in嵌入到Contacts中的，提供UI、db上支持这个功能的code。OP03上有这个feature。
SNE 是USIM卡的“NickName”功能，支持给一个USIM联系人起别名。部分USIM卡支持这个功能，OP06上有这个plug-in。
SNS 是之前开发的对Facebook等社交网络的整合支持，但这个Feature后来被拿掉掉了，没有MP过。这部分代码只存在于Host中，没有对应的plugin apk。

AAS和SNE在SPEC上的解释如下：

4.4.2.7 EFAAS (Additional number Alpha String)

This file contains the alpha strings that are associated with the user defined naming tags for additional numbers referenced in EFANR.

4.4.2.10 EFSNE (Second Name Entry)

The phone book also contains the option of a second name entry. The amount of second name entries may be less than or equal to the amount of records in EFADN. Each record contains a second name entry. This record cannot be shared between several phonebook entries.
```

## [FAQ09775] 【Contacts Data】 短信选择收件人时，号码搜索联系人修改成任意位置开始中间匹配

```
ContactsProvider2.java 中的queryLocal函数，修改方法如下：
case PHONES_FILTER:
case CALLABLES_FILTER: 
......
if (searchPhoneNumber) {
    ......
    sb.append(Data._ID +
            " IN (SELECT DISTINCT " + PhoneLookupColumns.DATA_ID
            + " FROM " + Tables.PHONE_LOOKUP
            + " WHERE " + PhoneLookupColumns.NORMALIZED_NUMBER + " LIKE '");
    //add here 
    sb.append("%");
    sb.append(number);
    sb.append("%')");
    hasCondition = true;
}
```

## [FAQ08959] 【Contacts Data】 Contacts/Acore进程经常被Kill，导致联系人开机后丢失怎么办？

```
Contacts/Acore进程，在内存较少和开机进程过多的情况下会经常被 ActivityManager Kill 掉，
导致Sim卡联系人开机后未导入或者只导入一部分，造成联系人丢失的现象，但是重新开机后可以恢复正常。
[SOLUTION]
遇到这样的问题可以采用以下方法提供Contacts/Acore进程的优先级，降低被ActivityManager 杀掉的概率。
 
找到这个进程对应的AndroidMannifest.xml文件，在其中添加属性『android:persistent="true"』，
这样可以将该进程设置为常驻内存进程，就可以降低被Kill的概率。
以Acore进程为例，
在 /package/providers/ContactsProvider/AndroidMannifest.xml 文件中增加一行『android:persistent="true"』
具体修改示例如下：
<application android:process="android.process.acore"
     android:label="@string/app_label"
     android:icon="@drawable/app_icon"
     android:allowBackup="false"
     android:persistent="true" <!--新增加代码，保证acore进程不被ActivityManager杀死-->
>
NOTICE:
这个方法可以将对应AP的ADJ临时提高到2。

解决发生JE问题（必须合入）：
CallLogProvider.java  (Line1000)

public static final void notifyNewCallsCount(SQLiteDatabase db, Context context) {
    Log.i(TAG, "[notifyNewCallsCount] newCallsCount = " + newCallsCount);
    //send count=0 to clear the unread icon
    if (newCallsCount >= 0) {
        Intent newIntent = new Intent(Intent.MTK_ACTION_UNREAD_CHANGED);
        newIntent.putExtra(Intent.MTK_EXTRA_UNREAD_NUMBER, newCallsCount);
        newIntent.putExtra(Intent.MTK_EXTRA_UNREAD_COMPONENT, new ComponentName(Constants.CONTACTS_PACKAGE, Constants.CONTACTS_DIALTACTS_ACTIVITY));
        // New add for fixed JE
        newIntent.addFlags(Intent.FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT);
        // End
        context.sendBroadcast(newIntent);
```

## [FAQ10264] 【Contacts Data】sim卡姓名长度最大为14字节可以输入11个相同汉字

```
SIM卡记录名字的最大长度是14 ，可以输入14个字符，输入中文是可以输入6个，但是如果是相同的汉字 ，可以输入11个。如，可以保存"天天天天天天天天天天天" ,但只能保存"天天天天天气”
[SOLUTION]
sim联系人的中文编码采用UCS2 0x81编码. 编码格式为，14个字节，前两个字节表示编码方式和长度.一个汉字占用两个字节.
当输入全部相同的汉字时，将采用基址偏移的方式，第三个字节为基址, 后面11个字节则是通过基址偏移对应的unicode编码. 所以，当输入相同的汉字，最多可以存储11个汉字.
 
例如,  杜杜杜
UNICODE编码为:675C675C675C
用UCS2的81方案表示是:81 03 CE DCDCDC
81：为标记
03：表示整个字符串为3个字符
CE：一个字节为基址。解析的方法为：将基址（CE）左移七位，并将最高位置为0，最低位再补一个0.此时基址变为0x6700，然后再判断后面的数据字节。
DCDCDC：3个数据字节 DC， DC， DC 。如果数据字节的最高位为0，则认为此字节是一个ASCII字符。如果数据字节的最高位为1，则低7位为基址的一个偏移，实际的UCS2字符为基址加上这个偏移值。由于此处三个数据字节最高位都为1，则实际的3个字符的偏移值为：5C， 5C， 5C。实际的UCS2编码为： 0x675C 0x675C 0x675C
```

## [FAQ10397] 【Contacts Data】 SDN/FDN/BDN MTK平台是否支持？

```
SIM卡的SDN/FDN/BDN MTK SmartPhone平台是否支持？
[SOLUTION]
EF_SDN (Service Dialling Numbers)  [业务拨号号码]
--> 默认支持
     联系人列表最上面会显示所有SDN
EF_FDN (Fixed Dialling Numbers)  [固定拨号号码]
--> 默认支持
     Dialpad -> Settings -> Other Settings -> Fixed Dialing Number -> Enable FDN -> FDN List
EF_BDN (Barred Dialling Numbers)  [禁止拨号号码] 
--> 目前不支持
 
NOTE:
您可以通过在拨号盘输入 *#*#4636#*#* 来进入Phone information
  --> Menu
  --> View SIM address book           [ADN]
  --> View Fixed Dialing Numbers      [FDN]
  --> View Service Dialing Numbers   [SDN]

SDN/FDN/BDN 有什么用？？
```

## 如何导出国内手机号码归属地的数据库？

```
adb pull /system/etc/geocoding.db ./
```

## [FAQ13184] 【Contacts Data】 如何修改最小匹配位数MIN_MATCH?

```
如何修改最小匹配位数MIN_MATCH? 
[SOLUTION]
调整MIN_MATCH涉及三支文件：
1. PhoneNumberUtils.java   MIN_MATCH
    （alps\frameworks\base\telephony\java\android\Telephony\）
2. OldPhoneNumberUtils.cpp   getMinMatch()
    （alps\external\sqlite\Android\）
3. PhoneNumberExt.java getMinMatch() （After KK 4.4）
    L:（alps\vendor\mediatek\proprietary\frameworks\base\packages\fwkplugin\src\com\mediatek\op\Telephony\） 
    KK:（alps\mediatek\frameworks\common\src\com\mediatek\common\Telephony\）
```

## [FAQ17576] [Storage]如何在android M版本的storage有关界面里不显示sdcard品牌名称？

```
android M版本当插入sdcard的后，在storage有关界面里面会显示sdcard厂商。下图示例是一张sandisk的sdcard插入到M版本的手机中作为Portable storage在setting->Storage&USB显示情况：
详细修改方案：
/system/vold/Disk.cpp
需要对status_t Disk::readMetadata() 函数中如下语句进行修改，将蓝色code修改为红色code
 
notifyEvent(ResponseCode::DiskLabelChanged, mLabel);
修改为：
notifyEvent(ResponseCode::DiskLabelChanged, “”);
```

## [FAQ17558] 如何用adb shell am命令启动MTKLogger?

```
adb shell am 命令手动叫起mobile log这个apk：
adb shell am start -n com.mediatek.mtklogger/com.mediatek.mtklogger.MainActivity

备注：
adb shell am 命令是一个通用的命令，在知道activity的包名和类名的情况下，可以手动启动activity。
特别是主菜单中应该显示某应用图标，而遇到不显示图标的时候，可以用这个命令做临时测试用。

命令格式如下：
adb shell am start -n packagename/packagename.ClassName
```

## [FAQ17577] omacp的browser xml文件样本

```
<wap-provisioningdoc>
<characteristic type="BOOTSTRAP">
<parm name="NAME" value="settings" /> 
</characteristic>
<characteristic type="APPLICATION">
<parm name="APPID" value="w2"/>
<parm name="NAME" value="bookmark folder name"/>
<parm name="TO-PROXY" value="PROXY"/>
<parm name="TO-NAPID" value="INTERNET"/>
<characteristic type="RESOURCE">
<parm name="AAUTHNAME" value="username"/>
<parm name="AAUTHTYPE" value="HTTP-BASIC"/>
<parm name="AAUTHSECRET" value="password"/>
<parm name="URI" value="www.qq.com/index.wml"/>
<parm name="NAME" value="QQ"/>
<parm name="STARTPAGE"/>
</characteristic>
</characteristic>
</wap-provisioningdoc>
```

## [FAQ13612] Mms Apn的omacp xml文件样本

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE wap-provisioningdoc PUBLIC "-//WAPFORUM//DTD PROV 1.0//EN" "http://www.wapforum.org/DTD/prov.dtd">
<wap-provisioningdoc version="1.1">
  <characteristic type="BOOTSTRAP">
       <parm name="NAME" value="WAP y MMS"/>
       <!parm name="PROVURL" value="http://www.mediatek.com/"/>
       <parm name="CONTEXT-ALLOW" value="0"/>
       <parm name="PROXY-ID" value=""/>
  </characteristic>
  <characteristic type="PXLOGICAL">
       <parm name="PROXY-ID" value="id4"/>
       <parm name="NAME" value="MMS"/>
         <characteristic type="PXPHYSICAL">
              <parm name="PHYSICAL-PROXY-ID" value="id4"/>
              <parm name="PXADDR" value="10.0.0.172"/>
              <parm name="PXADDRTYPE" value="IPV4"/>
              <parm name="TO-NAPID" value="ap4"/>
                <characteristic type="PORT">
                     <parm name="PORTNBR" value="80"/>
                </characteristic>
         </characteristic>
  </characteristic>
  <characteristic type="NAPDEF">
       <parm name="NAPID" value="ap4"/>
       <parm name="BEARER" value="GSM-GPRS"/>
       <parm name="NAME" value="mediatek彩信 (China Mobile)"/>
       <parm name="NAP-ADDRESS" value="mediatekcmwap"/>
       <parm name="NAP-ADDRTYPE" value="APN"/>
  </characteristic>
  <characteristic type="APPLICATION">
       <parm name="APPID" value="w4"/>
       <parm name="NAME" value="mms"/>
       <parm name="ADDR" value="http://mmsc.monternet.com"/>
       <parm name="TO-PROXY" value="id4"/>
         <parm name="CM" value="R"/>
  </characteristic>
</wap-provisioningdoc>
```

## [FAQ12286] [Dialer][KK]进入Dialer显示最新一条的通话记录不变，不随calllog的切换tab操作改变

```
通过下面的修改确保Dialer界面的最新通话记录不会随着Calllog切换tab页面的操作而改变.
请修改PhoneFavoriteFragment.java, fetchCalls, 注释下面两行代码. 其余不变.

//int typeFilter = prefs.getInt(Constants.TYPE_FILTER_PREF, Constants.FILTER_TYPE_DEFAULT);
int typeFilter = Constants.FILTER_TYPE_ALL;
```

## [FAQ17512] 开机通过SIM卡更新时间出错

```
开机的时候通过SIM卡更新时间出问题
从LOG中看到 MccTable: timezone set to ××时区
如果××时区和SIM卡的MCC号对应不上就会出现此问题。 

frameworks\opt\telephony\src\java\com\android\internal\telephony\gsm GsmServiceStateTracker.java
private String[][] mTimeZoneIdByMcc = {{"460", "Asia/Shanghai"}这个数组中添加上自己需要的时区和SIM卡MCC号码
```

## [FAQ08125] [Audio App]观看优酷视频或者youtube时如何将music,FM等后台播放停掉

```
优酷视频或者youtube使用HTML5Video进行播放
修改方法如下：
修改HTML5VideoView.java中方法start()
在   mPlayer.start();  之前添加
Intent i = new Intent("com.android.music.musicservicecommand");
i.putExtra("command", "pause"); 
mProxy.getContext().sendBroadcast(i);

在开始播放时broadcast此消息，FM，music app中会接收此消息并停止
```

## [FAQ08112] [Audio Speech] 不同制式下语音加密算法及密钥长度

```
有客户在过运营测试时运营商要求提供不同制式下语音加密算法及密钥长度
目前支持情况如下：
加密算法             密钥长度              制式
A5_1/A5_3         64 bits               GSM
UEA-0/UEA-1     128 bits;             UMTS
```

## [FAQ12562] [Audio App]如何关闭com.mediatek.voicecommand进程

```
请在ProjectConfig.mk中进行配置：
MTK_VOICE_CONTACT_SEARCH_SUPPORT=no
MTK_VOICE_UI_SUPPORT=no
MTK_VOICE_UNLOCK_SUPPORT=no
```

## [FAQ10792] [Audio App]如何在手机中不显示某类后缀名的多媒体文件

```
请在frameworks\base\media\java\android\media\mediafile.java中，找到不显示的某类后缀名
addFileType(后缀名,...) //直接拿掉
```

## [FAQ10972] 如何在ap获取拍照的yuv数据

```
通过实现ap的RawPictureCallback接口来实现，主要包括ap层以及中间层的修改：
一、AP层的修改：
PhotoActor.java（alps/packages/apps/Camera/src/com/android/camera/actor/）
1、添加import android.hardware.Camera.Size;
2、public boolean capture() 函数中
将
if (!mCameraCategory.applySpecialCapture()) {
    mContext.getCameraDevice().takePicture(getShutterCallback(), mRawPictureCallback,
    mPostViewPictureCallback, mCameraCategory.getJpegPictureCallback());
}
改为
if (!mCameraCategory.applySpecialCapture()) {
    if(!mContinuousShotPerformed){
        Size curPictureSize = mCamera.getParameters().getPictureSize();
        byte []uRawDataBuffer = new byte [curPictureSize.width*curPictureSize.height*2];
        mContext.getCameraDevice().addRawImageCallbackBuffer(uRawDataBuffer);
    }
    mContext.getCameraDevice().takePicture(getShutterCallback(), mRawPictureCallback,
    mPostViewPictureCallback, mCameraCategory.getJpegPictureCallback());
}

二、中间层的修改：
NormalShot.cpp（alps/mediatek/platform/mt65XX/hardware/camera/hal/adatper/scenarioshot/normalshot/）
1，onCmd_capture（）函数中需要注册YUV的callback message：
pSingleShot->enableDataMsg(NSCamShot::ECamShot_DATA_MSG_YUV);
2，fgCamShotDataCb（）函数中需要添加yuv callback的处理机制：
依照postview的处理方式，添加else if语句
else if(NSCamShot::ECamShot_DATA_MSG_YUV==msg.msyType)
{
pNormalShot->handleYUVData(msg.puData,msg.u4Size)；
}
3，第二步中调用的handleYUVData是新添加的函数，首先在NormalShot.h文件中仿照handlePostViewData()添加函数声明：
MBOOL handleYUVData(MUINT8* const puBuf,MUINT32 const u4Size);
然后在NormalShot.cpp文件中添加其实现：
MBOOL
NormalShot::
handleYUVData（MUINTE8 * const puBuf,MUINT32 const u4Size）
{
MY_LOGD("+ (puBuf, size)=(%p,%d)",puBuf,u4Size);
mpShotCallback->onCB_RawImage(0,u4Size,reinterpret_cast<uint8_t const*>(puBuf));
return MTRUE;
}
4，在handleJpegData（）函数中，将原来的dummy raw callback注释掉
//mpShotCallback->onCB_RawImage(0,0,NULL);
```

## [FAQ17430] 如何让某个APK里面的图片能够作为壁纸使用

```
1.在APK中需要申明Action为“com.android.launcher3.action.PARTNER_CUSTOMIZATION”的receiver
<receiver
android:name="com.example.partner_wallpaper.WallpaperReceiver"
android:exported="true">
<intent-filter>
<action android:name="com.android.launcher3.action.PARTNER_CUSTOMIZATION" />
</intent-filter>
</receiver> 
2.编写Receiver的类，重写onRecive方法
public class WallpaperReceiver extends BroadcastReceiver{
    @Override
    public void onReceive(Context arg0, Intent arg1) {
    }
}
3.将想要作为壁纸的图片放到apk代码的res/drawable-xxx目录下，并将其重名为 xxx, 还要提供对应的缩略图（小图）放在相同的目录下并命名为xxx_small.

xxx_small显示在壁纸选择列表，xxx是作为壁纸使用。

4.在APK代码的res/value/arrays.xml中增加partner_wallpapers字符串数组资源
<?xml version="1.0" encoding="utf-8"?> 
<resources>
    <!-- name 必须固定为partner_wallpapers-->
    <string-array name="partner_wallpapers">
        <!-- item 与第3步中图片名对应-->
        <item>a</item>
        <item>b</item>
        <item>c</item>
    </string-array>
</resources>

此时如果将此APK预置为系统APK，则这些图片就能出现在Launcher的WallPapaer Picker中，可以作为壁纸使用。
如果不想把APK预置为系统的APK，让其安装上去就能实现此功能，则需要按以下方法修改Launcher的代码。

5.修改 Launcher的Utilities.java文件中的findSystemApk方法
```

## [FAQ16260] [video][common]video play/record issue standard operation

```
[DESCRIPTION]
遇到视频播放/录制问题，请先判断你的问题属于哪一类，大致可以分为以下类；

然后分类别找寻对应解决方案；

最后找寻不到对应类别或者仍未能解决，请贵司将所需的资讯附上来，以加快我司协助速度。

类别一：Video Spec问题，即BB chip支持播放/录制能力咨询问题，提示视频无法播放错误或者只有声音没有视频等问题；播放/录制flexible机制，即希望通过加大memory等代价支持一定限度内超spec的视频播放/录制，当然performance问题无法保证；

类别二：播放视频performance问题，即播放不流畅或者马赛克严重等问题

类别三：播放视频花屏问题

类别四：录制视频performance问题，即录制视频帧率低，录制视频分辨率低等问题

类别五：录制视频花屏问题，即录制中预览花屏，录制后保存视频花屏或者是录制后回放视频花屏等等

类别六：播放/录制视频死机问题以及其他异常情况
 
 
[SOLUTION]
具体处理方法如下：

类别一：video spec问题

1)了解video基础知识

参见FAQ02573 [Video][Common] video常见名称简介

2) 查询贵司项目所用BB chip的video spec，即平台支持的播放录制视频格式，最大支持播放录制的分辨率，帧率等具体参数

参见FAQ02580 [Video][Spec] MTK Chip Video Spec 相关说明

3)  了解贵司工程支持的视频spec配置

参见FAQ09285 [video][common]project video spec详解

通过以上三步，基本上可以确认贵司所需要的video资讯

4)  查看贵司无法播放或者无画面视频的具体参数

参见FAQ02596 [Video][Common]常用Video 辅助工具的说明

通过此步骤基本可以确认播放失败的视频是由于codec不支持还是resolution超过vidoe spec；


若是超过chip video spec，抱歉平台能力有限无法支持；若是希望通过希望通过加大memory等代价支持一定限度内超spec的视频播放/录制，可尝试利用flexible机制实现视频播放/录制

参见FAQ02587[Video Performance][Common] MT6252，MT6253，MT6236等 Chip Video Flexible Architecture 简介

若是未超过chip video spec，只超过project video spec，贵司memory有富余的话，请修改工程.mak看是否能够编译通过，若未通过请告知贵司project版本号，提交patch申请；

若是未超过project video spec，请提供对应的工程.mak,log文件以及sample视频文件。

参见FAQ09284[video][common]video播放录制问题cather log抓取以及memory dump详解

 

类别二：播放视频performance问题

1)请根据类别一方法，确认视频是否已经超过chip/project video spec.若已超过，抱歉chip cpu处理速度有限，无法保证超spec视频的播放效果；若是未超spec，请提供相关log文件。

2)若是播放高码率mpeg4 codec视频，可以尝试将默认丢块的解码方式改为丢帧，改善播放画质；当然若码率超很多的话，改善效果有限。

参见FAQ05081[video][Common] 高品质MPEG4视频播放模糊，马赛克严重，改善播放质量

 

类别三：播放视频花屏问题

1)请帮忙验证时播放特殊视频会花屏还是所有视频都花屏；特殊视频在PC上播放是否正常；

2)请提供memory dump帮忙分析

参见FAQ09284[video][common]video播放录制问题cather log抓取以及memory dump详解

 

类别四：录制视频performance问题

1)通过类别一确认贵司录制视频需求是否有超过spec

2)录制的四种品质fine/good/normal/low时的视频，查看录制的视频参数，告知我司录制具体参数信息或者直接上传视频；

参见FAQ02596 [Video][Common]常用Video 辅助工具的说明

3)录制参数是通过底层帧率表配置的，具体配置位置在

hal\video\custom\custom_video_enc_setting_mjpg.h\_rMjpegFrameRateTable

hal\video\custom\custom_video_enc_setting_mpeg4.h\_rMpeg4FrameRateTable

hal\video\custom\custom_video_enc_setting_h264.h\_rH264FrameRateTable

请根据贵司录制品质及采用的编码方式，告知我司选用的4个帧率表信息

4）请提供录制时的cather log帮忙分析

参见FAQ09284[video][common]video播放录制问题cather log抓取以及memory dump详解

 

类别五：录制视频花屏问题

1)  请查看贵司工程.mak,检查配置是否正确。

我司提供方案设置如下：

a.sensor竖装方案：HORIZONTAL_CAMERA = FALSE, SENSOR_ROTATE = SENSOR_ROTATE_0；

b.sensor横装方案：HORIZONTAL_CAMERA = TURE, SENSOR_ROTATE = SENSOR_ROTATE_90。

也就是sensor若是横装的话，UI必须要横过来，这样录制的视频才符合常规视频宽>高，拍的影像才是比较被用户接受的。且我们底层编码数据时会参考UI rotate的角度，强行将HORIZONTAL_CAMERA = FALSE会导致encode角度计算出错，这样录制出来是视频就会花。

2）配置没有错误的话，请上传此视频文件，并提供录制过程以及播放花屏时的memory dump文件帮忙分析。

参见FAQ09284[video][common]video播放录制问题cather log抓取以及memory dump详解

 

类别六：播放/录制视频死机问题以及其他异常情况

1)  请详细描述复现步骤

2)  死机问题请提供memory dump,其他非死机异常请先提供cather log即可

参见FAQ09284[video][common]video播放录制问题cather log抓取以及memory dump详解
```

## [FAQ17443] [SLP Template] AGPS Supl Profile Configration

```
1.How to change default supl profile
In agps_profiles_conf2.xml,the default profile is google, whose format is：
          <cur_supl_profile name="GOOGLE"
              addr="supl.google.com"
              port="7275"
              tls="true"
          />
cur_supl_profile is refer to default profile. If we need change the default profile, we should change it as below:
          <cur_supl_profile name="nexteldata"
              addr="supl.iusacell.com"
              port="7275"
              tls="true"
          />
Now the default profile will be changed to nexteldata, which can be seen in SLP Template.
 
2.How to add supl profile
If we want to add supl profile in agps_profiles_conf2.xml, we only need to add supl_profile, according to google’s format as below:
  <!-- GOOGLE-->
  <supl_profile name="GOOGLE"
      addr="supl.google.com"
      port="7275"
      tls="true"
  />
  <!-- nexteldata-->
  <supl_profile name="nexteldata"
      addr=" supl.iusacell.com "
      port="7275"
      tls="true"
  />
  <!-- IUSACELL-->
  <supl_profile name="IUSACELL"
      addr="supl.iusacell.com"
      port="7275"
      tls="true"
  />
Now the nexteldata and IUSACELL are added to the SLP Template.

3.How to adaptive change supl profile
If we want to adaptive change supl profile along with SIM card, we should ensure auto_profile_enable=“true” in agps_profiles_conf2.xml , then add operator MCC and MNC in profile as below:
  <!-- GOOGLE-->
  <supl_profile name="GOOGLE"
      addr="supl.google.com"
      port="7275"
      tls="true"
  />
  <!-- nexteldata--> 
  <supl_profile name="nexteldata"
      addr="supl.iusacell.com"
      port="7275"
      tls="true“
      mcc_mnc="334050"
  />
  <!-- IUSACELL-->
  <supl_profile name="IUSACELL"
      addr="supl.iusacell.com"
      port="7275"
      tls="true“
      mcc_mnc="334090"
  />
Now if the inserted SIM card is mcc(334) mnc(050), the SLP Template will auto select nexteldata, else if the inserted SIM card is mcc(334) mnc(090), the SLP Template will auto select IUSACELL.
```

## [FAQ15090] [FM]open /dev/fm fail

```
L版本使用fm app时遇到open /dev/fm fail问题，从log来看/dev/fm这个设备节点打开失败，失败原因是节点的访问权限问题，如下红色字体内容： 
Line 14637: 01-02 09:06:19.878  3563  3592 I FMLIB_COM: COM_open_dev start
Line 14638: 01-02 09:06:19.880  3563  3592 E FMLIB_COM: Open /dev/fm failed, Permission denied
Line 14638: 01-02 09:06:19.880  3563  3592 E FMLIB_COM: Open /dev/fm failed, Permission denied
Line 14639: 01-02 09:06:19.880  3563  3592 I FMLIB_COM: int COM_open_dev(const char*, int*), [fd=-1] [ret=-1007]
Line 14640: 01-02 09:06:19.880  3563  3592 E FMLIB_CORE: int FMR_open_dev(int) failed, [fd=-1]
Line 14640: 01-02 09:06:19.880  3563  3592 E FMLIB_CORE: int FMR_open_dev(int) failed, [fd=-1]
Line 14641: 01-02 09:06:19.880  3563  3592 D FMLIB_JNI: jboolean openDev(JNIEnv*, jobject), [ret=-1007]
Line 14642: 01-02 09:06:19.880  3563  3592 E FM/FMRadioService: Error: opendev failed

1. 在alps\vendor\mediatek\proprietary\packages\apps\FmRadio\Android.mk
修改 LOCAL_CERTIFICATE := platform，原先是media。

2. 在alps\vendor\mediatek\proprietary\packages\apps\FmRadio\ AndroidManifest.xml中添加
<uses-permission android:name="android.permission.ACCESS_FM_RADIO" />

3. 在device/mediatek/common/sepolicy/system_app.te 里面添加下面这行
allow system_app fm_device:chr_file { read write ioctl open};
```

## [FAQ09547] FM搜不到104M频点

```
104M是一个desense频点，软件中作了特殊了处理是这个台不被搜到。但是比如在印度104M本身是一个有效频点，那么需要修改软件将这104作为正常的频点来处理。

要把104M台当做正常台的处理需要修改三处地方：

针对MT6628

1)修改alps/mediatek/source/external/fmradio/custom/fmlib_cust.h文件，从MT6620_FM_FAKE_CHANNEL中拿掉104M

2) 修改alps\mediatek\source\kernel\drivers\fmradio\mt6628\pub中的mt6628_fm_lib.c文件：

将数组mt6628_mcu_dese_list[]和mt6628_scan_dese_list[]中的104拿掉

针对mt6627：

1)修改alps/mediatek/source/external/fmradio/custom/fmlib_cust.h文件，从MT6620_FM_FAKE_CHANNEL中拿掉104M

2) 修改alps\mediatek\source\kernel\drivers\fmradio\mt6627\pub中的mt6627_fm_lib.c文件：

将数组mt6627_mcu_dese_list[]和mt6627_scan_dese_list[]中的104拿掉

对于L版本修改方法跟上面的相同，只是文件的路径有变化，说明如下：

1、mt6627_scan_dese_list和mt6627_mcu_dese_list对应的文件如下：

alps\kernel-3.10\drivers\misc\mediatek\fmradio\mt6627\pub\mt6627_fm_lib.c

2、 MT6627_FM_FAKE_CHANNEL对应的文件为：

alps\hardware\mediatek\fmradio\fmnative\custom\custom.cpp

需要注意我们这边的定义有用MTK_FM_50KHZ_SUPPORT包起来，要注意修改对位置。
```

## [FAQ14734] L版本上auto join 和auto save的配置开关

```
1，auto join
L版本上的一项auto join 的新功能，即每次scan 之后，会比较scan 到的ap 来决定是否要切换到其他ap 去
如果想关闭此功能测试，请修改如下位置：
/frameworks/base/core/res/res/values/config.xml
<bool translatable="false" name="config_wifi_framework_enable_associated_network_selection">true</bool>
将这里的true 改为false；
但是这里请注意side effect ：如果关闭了此auto join 功能，会出现如下现象：
A,B两个已保存ap ，连接A ，断开A 之后，不会自动去连接B ，还请特别注意！
 
2，auto save
连接ap1之后，断开ap1连接，自动去连接名字类似的ap2，但是ap 2开始并不是已保存的ap；
L版本上新功能，自动保存ssid 和bssid 类似的ap；
例如如下log中的两个ap；
Line 126703: 07-28 14:36:14.426 1099 1099 D wpa_supplicant: wlan0: selected BSS 50:17:ff:35:da:e0 ssid='SF-client'
Line 131516: 07-28 14:36:26.372 1099 1099 D wpa_supplicant: wlan0: selected BSS 50:17:ff:35:da:e1 ssid='SF-office'
 
如果需要关闭此功能，请提eservice，申请如下patch：ALPS02217759；
此patch在配置文件中做了一个option，用于对此功能的选择开关；
如果需要此功能，可以直接通过打开此option，
false:表示关掉auto save
```

## [FAQ04539] [Maui Meta]写IMEI或校准后如何正确保存参数

```
使用MauiMETA写IMEI或做RF校准，手机恢复出厂设置之后参数丢失问题
MauiMETA写IMEI、做RF校准后相关参数保存在USRDATA区，正常是需要备份到NVRAM Bin Region

[Solution]
1.确认在MauiMETA的"Options"菜单有选择"Backup to BackupPartition/SDS before disconnect"项
2.写完IMEI（或校准）后点"Disconnect"按钮正常退出META模式
3.待正常退出后在断电（手机会关机）
```

## [FAQ12399] [Common]spn 如何添加特殊‘&’符号

```
在\mediatek\frameworks\base\telephony\etc\spn-conf.xml中配置运营商名称，名称字符串包含‘&’时编译出错，该如何添加？

Xml文件里面配置‘&’需要使用‘&#038;’代替，例如：
对spn-conf.xml中需要配置运营商名称“AT&T”的位置使用：
“AT&#038;T”
```

## [FAQ02912] [Common]如何判断sim卡是4G、3G、2G卡

```
SIM卡是4G、3G卡还是2G卡是由网络来判断的；
例如若这张卡可以注册上4G网络，那这张卡就是4G卡，否则就是3G or2G卡。SIM卡本身是不携带4G、3G还是2G信息的，所以无法通过获得SIM卡的某些信息来做判断。
```

## [FAQ08549] 如何把"设置--安全--未知来源“默认打开

```
如果要修改该默认值,对op03来说,请修改
alps\mediatek\operator\op03\packages\apps\plugins\res\values\Defaults.xml
中
<bool name="def_install_non_market_apps_op03" translatable="false">false</bool>
为
<bool name="def_install_non_market_apps_op03" translatable="false">true</bool>
其它情况请修改
alps\frameworks\base\packages\settingsprovider\res\values\Defaults.xml
中
<bool name="def_install_non_market_apps">false</bool>
为
<bool name="def_install_non_market_apps">true</bool>
注意，修改后可能导致CTS无法通过，请酌情修改。
```

## [FAQ08629] 如何更改后台进程限制默认值

```
ActivityManagerService.java (alps\mediatek\custom\bsp_overlay\frameworks\base\services\java\com\android\server\am)  中
int mProcessLimitOverride 的值即可
```

## [FAQ08016] 关于Mouse and Trackpad/鼠标和触控板功能

```
1.在设置->语言和输入法->鼠标和触控板；
2.调节速度
【实际结果】
不知道变化在哪里

[SOLUTION]
1、当您的手机外接OTG线的方式连接USB鼠标后，手机上会出现一个鼠标指针，那么调节这个Pointer speed，可以改变鼠标指针的速度的；
2、当您的手机外接无线蓝牙键盘（带Trackpad功能的）后，手机上会出现一个鼠标指针，这一点类似笔记本电脑上的触控板了；那么调节这个Pointer speed，可以改变鼠标指针的速度的；
```

## [FAQ12262] 如何默认关闭输入法设置中的“Auto correction”

```
默认关闭请修改SettingsProvider中的databaseHelper.java内的
loadSecureSettings函数，在函数尾部添加
loadBooleanSetting(stmt,Settings.Secure.SPELL_CHECKER_ENABLED,false);
```

## [FAQ08894] 如何将"设置->开发者选项"这个菜单的总开关默认设置为Off”

```
在进入“设置->开发者选项”这个菜单后，系统默认该菜单项的总开关为On，如果想改为Off，可以做如下修改，使得Switch开关默认为Off。
[SOLUTION]
在alps/packages/apps/settings/src/com/android/settings/DevelopmentSettings.java中的onResume()方法中
将如下代码注释掉：
/*
if (mHaveDebugSettings && !mLastEnabledState) {
    // Overall debugging is disabled, but there are some debug
    // settings that are enabled.  This is an invalid state.  Switch
    // to debug settings being enabled, so the user knows there is
    // stuff enabled and can turn it all off if they want.
    Settings.Global.putInt(getActivity().getContentResolver(), Settings.Global.DEVELOPMENT_SETTINGS_ENABLED, 1);
    mLastEnabledState = true;
    mEnabledSwitch.setChecked(mLastEnabledState);
    setPrefsEnabledState(mLastEnabledState);
}
*/
```

## [FAQ07782] 在法律信息中添加菜单

```
请在Device_info_settings.xml (alps\packages\apps\settings\res\xml)
中下面部分添加,其中JASONYYY是我添加的一个菜单项,贵司可以对照修改.
action部分为该菜单项对应的intent.
 <!-- Legal Information -->
<PreferenceScreen
        android:key="container"
        android:title="@string/legal_information">
    <!-- Note: The titles given here probably won't be used.  Instead, we programmatically
               fill the title with the label of the activity with the corresponding action.
               If there is not an activity for an action, the item will be removed from the
               list. -->
    <!-- Copyright information -->
    <PreferenceScreen
            android:key="copyright"
            android:title="@string/copyright_title">
        <intent android:action="android.settings.COPYRIGHT" />
    </PreferenceScreen>
    <!-- License information -->
    <PreferenceScreen
            android:key="license"
            android:title="@string/license_title">
        <intent android:action="android.settings.LICENSE" />
    </PreferenceScreen>
    <!-- Terms and conditions -->
    <PreferenceScreen
            android:key="terms"
            android:title="@string/terms_title">
        <intent android:action="android.settings.TERMS" />
    </PreferenceScreen>
    <!-- Terms and conditions -->
    <PreferenceScreen
            android:key="JASONYYY"
            android:title="JASONYYY">
        <intent android:action="android.settings.LICENSE" />
    </PreferenceScreen>
</PreferenceScreen>
```

## [FAQ04994] 如何去掉ListView/GridView等列表控件滑到顶部或底部时的模糊边缘效果？

```
修改如下文件：
alps/frameworks/base/core/java/android/view/View.java文件中的View的一个构造方法，
将其中这一行 setOverScrollMode(OVER_SCROLL_IF_CONTENT_SCROLLS);
修改为：setOverScrollMode(OVER_SCROLL_NEVER);

public View(Context context) {
    mContext = context;
    mResources = context != null ? context.getResources() : null;
    ......
    mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    setOverScrollMode(OVER_SCROLL_NEVER);
    mUserPaddingStart = UNDEFINED_PADDING;
    mUserPaddingEnd = UNDEFINED_PADDING;
}
注意：上述的修改是将系统中所有使用列表控件的界面的这种顶部/底部边缘模糊效果都去掉了，而不是只针对单个控件的，
如果要消除某一个控件的顶部/底部边缘模糊效果的话，可以通过设定控件的xml属性android:overScrollMode 或者setOverScrollMode(int overScrollMode)这个方法去单独设置即可。
```

## [FAQ04905] 如何在任意界面按某个预设定的硬体按键进入某个Activity？

```
实现在任意非锁屏界面，按某个预设定好的按键进入某个Activity的功能

修改alps/frameworks/base/policy/src/com/android/internal/policy/impl/PhoneWindowManager.java文件中的如下方法：
public long interceptKeyBeforeDispatching(WindowState win, KeyEvent event, int policyFlags)
找到如下代码段：
else if (keyCode == KeyEvent.KEYCODE_APP_SWITCH) {
    if (......) {
        ......
    }
    return -1;
}
在这个else if后面增加相应代码：
else if (keyCode == KeyEvent.KEYCODE_APP_SWITCH) {
    if (......) {
        ......
    }
    return -1;
} //add begin
else if (keyCode == KeyEvent.KEYCODE_XXX) {
    if (down && repeatCount == 0 && !keyguardOn) {
        mContext.startActivity(new Intent("intent.xxx").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
    }
    return -1;
}  // add end

注意:
1、上面写的KeyEvent.KEYCODE_XXX是预设定好的硬按键的键值，根据需要来设定即可；
2、startActivity(new Intent("intent.xxx")中的intent.xxx需要根据所启动的activity来写
```

## [FAQ11540] [Common]如何获取ICCID

```
如何获取(U)SIM卡的唯一标识ICCID (Integrate Circuit Card IDentification)
[SOLUTION]
 
ICCID保存在(U)SIM卡文件中，需要等到开机(U)SIM卡初始化后才能获取到；
方法1：通过SystemProperty获取：
由于开机在RILD会下AT CMD："AT+ICCID?" 去获取个卡的ICCID并保存在对应SystemPrority中，所以可以在上层直接到对应SystemPrority中获取：
(1) 在上层需要获取ICCID的java文件中 import android.os.SystemProperties;
(2)定义SystemProperty：
    private String[] PROPERTY_ICCID_SIM = {
        "ril.iccid.sim1",              //for SIM1
        "ril.iccid.sim2",
        "ril.iccid.sim3",              //if your project is triple SIMs project
        "ril.iccid.sim4",              //if your project is quad SIMs project
    };
(3)定义string来调用get方法接收ICCID
mIccId[simIdx]= SystemProperties.get(PROPERTY_ICCID_SIM[simIdx]);
方法2：IccRecords.java中有public方法 getIccId来获取
 
如果ICCID显示异常，可以参考如下FAQ
ID: FAQ11502[Common]iccid显示异常
```

## [FAQ10436] [Common]默认显示MM reject cause的通知

```
1.在alps/medatek/frameworks/base/op/java/com/mediatek/op/telephony/ServiceStateExt.java
中，更改方法needRejectCauseNotiication(),对特定的cuase返回true，这样在发生MM reject时，如果cause匹配上就会显示出通知。
 
如果想全部cause都显示通知，直接返回ture即可。
 
2.需要注意的是，需要check一下ServiceStateExtOPXX.java是否有重新改方法，如果有重写该方法，则需要到ServiceStateExtOPXX.java里面的needRejectCauseNotiication中去进行修改；
例如，
alps/medatek/frameworks/base/op07/java/com/mediatek/op/telephony/ServiceStateExtOP07.java
里面有去重写needRejectCauseNotiication方法；

什么是MM reject？？？
```

## [FAQ12269] 互动屏保无法使用google相册显示，将此菜单隐藏？

```
预置条件：
安装GMS包，已登录google帐户并存有图片；
测试步骤：
settings-->display-->daydream-->google photos-->start now；
预期结果：
能进入互动屏保界面；
实测结果：
终端不能进入屏保界面，终端闪退。
对比机也有该问题，能否将此菜单隐藏，该如何处理?

[SOLUTION]
修改 Settings 源码中的 DreamSettings.java 添加
import java.util.ArrayList;
......
修改refreshFromBackend的实现
private void refreshFromBackend() {
    logd("refreshFromBackend()");
    mRefreshing = true;
    boolean dreamsEnabled = mBackend.isEnabled();
    if (mSwitch.isChecked() != dreamsEnabled)
        mSwitch.setChecked(dreamsEnabled);
    mAdapter.clear();
    if (dreamsEnabled) {
        List<DreamInfo> dreamInfos = mBackend.getDreamInfos();
        List<DreamInfo>  filteredDreamInfo = new ArrayList<DreamInfo>(); // modify begin
        for(int i= 0;i< dreamInfos.size();i++){
         DreamInfo info = dreamInfos.get(i);
         if(info.componentName.toString().contains("com.google.android.apps.plus"))
          continue;
         filteredDreamInfo.add(info);
        }
        mAdapter.addAll(filteredDreamInfo);    //modify end
    }
    if (mMenuItemsWhenEnabled != null)
        for (MenuItem menuItem : mMenuItemsWhenEnabled)
            menuItem.setEnabled(dreamsEnabled);
    mRefreshing = false;
}
```

## [FAQ14728] [SP Multiport Download Tool]Download checksum分级机制

```
Checksum匹配是保证下载完整性的一种机制，了解Download tool的checksum机制，对我们分析下载不完整问题和提高产线效率是非常重要。

[SOLUTION]
从W1516版本的MDT（SP Multiport Download Tool）开始，MDT下载可以支持4个级别的DA checksum，如图：

4个级别的DA checksum分别如下：
Disable Checksum: 不做DA checksum，即下载时不做任何checksum，不保证下载的完整性。
Enable USB+Dram Checksum: 会在PC Ram和手机或者板子的Ram两边做checksum，并compare 这两个checksum是否一致，这个级别没有把Flash上的image读出来并计算checksum与下载前image checksum做比较，故只能保证USB通信两边的数据在Dram的完整性。
Enable Flash Checksum: download 到手机的flash之后，回读做checksum，然后与PC 侧image的check做比较检查是否一致。这个级别不会做Enable USB+Dram Checksum这个checksum检查。
Enable Checksum All: 这个是Enable USB+Dram Checksum和Enable Flash Checksum总和，即两种mode都会做。

参考FAQ: 
FAQ08732 [SP Multiport Download Tool]Flashtool checksum原理简单介绍
```

## [FAQ17415] 如何在factory mode下将modem log存放在内置SD

```
从6755 L1.MP10开始支持factory mode sd logging功能，mobile log仅可保存在外置SD。 modem log支持USB/SD方式。存放方式在正常开机MTKLogger页面中通过修改modem log mode进行设置。设置后需要将MTKLogger start起来。

如果选为是SD存放，factory mode默认是存放在外置SD（抓取方式参考FAQ15308），用户可根据需要修改为内置SD，以下介绍修改方法
[SOLUTION]
修改/data/mdlog/mdlog1_sd_config （modem1 sd log配置文件）及/data/mdlog/mdlog3_sd_config   （modem3 sd log配置文件）
用UE可打开修改   1è内置    2è外置
这个文件在factory mode中运行一次emdlogger1/3自动生成，默认是2，也可以修改后adb push到相应路径。如果功能不生效
请检查是否有上patch ALPS02412333

参考FAQ：
FAQ14184--Factory Mode下USB抓取modem log的方法
FAQ15308--FactoryMode下用SD卡抓取mobilelog及modemlog
```

## [FAQ09749] LCA项目，DayDream屏保功能默认关闭，如何打开？

```
LCA版本有很多feature或功能都没有打开，包括DayDream，可按如下方法打开开关，但有可能由此引发performance问题，请自行斟酌。
 
[SOLUTION]
修改alps\mediatek\custom\common\resource_overlay\LCA_ram\frameworks\base\core\res\res\values\config.xml，将
<bool name="config_dreamsSupported">false</bool>
修改为
<bool name="config_dreamsSupported">true</bool>
L版本上如果是512M 和1024M的项目，也会因为 ro.mtk_gmo_ram_optimize 为1或者
ro.mtk_lca_ram_optimize 为 1 导致在 DisplaySettingsEx.java
中 initPreference 函数内会 remove KEY_SCREEN_SAVER 的 Preference. 如果一定要开，
可以把该函数内的这一段逻辑删除。删除的影响是会吃掉一些memory，故对memory不算富余的项目，自行斟酌是否要开。
```

## [FAQ06645] [TimeZone]如何解决在欧洲城市自动更新时区错误

```
欧洲某些运营商的NITZ消息比正常的NITZ消息少一位，缺少的是夏令时参数，在这样的情况下，会造成手机获得的时区错误，通常显示为非洲某时区。

对于缺少dst参数的NITZ消息，我们需要通过其他方式来获取和补充这个参数。这里的修改方法是根据手机的TelephonyProperties.PROPERTY_ICC_OPERATOR_NUMERIC这个属性中的mcc信息，即目前所在国家来判断的。

step1:修改ServiceStateTracker.java(frameworks\base\telephony\java\com\android\internal\telephony)
在setTimeFromNITZString这个方法中，修改dst的申明和定义语句如下：
int dst = (nitzSubs.length >= 8 ) ? Integer.parseInt(nitzSubs[7]) : mccDst( getMcc() ,  c.getTimeInMillis());

step2:添加获取mcc参数的方法getMcc（）
//getMcc方法的定义如下（如果已经有这个函数，不用重复添加）：
private int getMcc(){
 int mccmnc = 0;
 int mcc=0;
    if (phone.getMySimId() == Phone.GEMINI_SIM_1) {
     mccmnc = SystemProperties.getInt(TelephonyProperties.PROPERTY_ICC_OPERATOR_NUMERIC, 0);
    } else {
     mccmnc= SystemProperties.getInt(TelephonyProperties.PROPERTY_ICC_OPERATOR_NUMERIC_2, 0);
    } 
   try {
    mcc = mccmnc/100;
   } catch (NumberFormatException e) {
    Log.e(LOG_TAG, "Error parsing IMSI");
   }
   return mcc;
   }
 
step3:添加根据mcc参数获取dst参数的方法mccDst()
//mccDst方法的定义如下
private int mccDst(int mcc, long when) {
  String tz = MccTable.defaultTimeZoneForMcc(mcc);
  if(tz==null)
    return 0;
  TimeZone timezone = TimeZone.getTimeZone(tz);
  if(timezone==null)
  return 0;
  Date d = new Date(when);
  return timezone.inDaylightTime(d)==true?1:0;
 }
```

## [FAQ09004] 【TimeZone】俄罗斯插MTS卡测试，时区自动同步到错误时区

```
在俄罗斯进行测试，插当地SIM卡，勾选“自动确定时间”和“自动确定时区选项”，发现时区更新到"GMT+4:00,Samara Time"，预期显示为"GMT+04:00,Moscow Standard Time"。

原因：

俄罗斯在2010年和2011做过2次时区调整，2010年，将原本的11个时区合并到9个时区；2011年，永久使用夏令时。在调整之前，俄罗斯是属于+3时区，使用夏令时的；调整之后，俄罗斯属于+4时区，没有夏令时。

由于俄罗斯的时区调整，可能会出现下面两个问题：

1.将手机时间调到2013年1月1日，时区调整到Moscow，Moscow的时区是GMT+3时区，正确应该是GMT+4。这个问题原因是android在2010或2011年之前的版本，zoneinfo.dat文件版本较旧，没有包含俄罗斯时区调整后的规则。所以如果出现Moscow时区是GMT+3的问题，请参考FAQ05710更新dat文件。(Android中的时区数据文件zoneinfo.dat编译好之后只读的，所以download到手机之后，该文件不能自动更新)

FAQ05710	【Zone】如何更新时区data文件

2.勾选“自动更新时区”，时区变成"GMT+4:00,Samara Time"。这个问题是因为虽然zoneinfo.dat更新了，但是time_zones_by_country.xml文件没有更新。在这个xml文件中同时有Samara和Moscow，目前Samara时区和Moscow时区都是GMT+4时区，而Samara在该文件中排序靠前，所以查找时会优先返回。参考本FAQ可以修正这种错误。

解决方法：
修改time_zones_by_country.xml(framework/base/core/res/res/xml/)，把含有Samara的那行删除。
```

## [FAQ05703] 手机加密前后，时间显示不一致

```
此现象是正常的。
 
在加密后，手机的data区域都经过加密了，而手机的时区信息也存储在这里，在未解密之前不能获取到该区域的数据，所以输入密码界面显示的时间会是通过默认时区计算而来的时间。
```

## [FAQ14883] google 开机设置时区界面 找不到对应时区

```
安装了setup wizard  ，在开机向导中的时区选择列表中找不到对应的时区，
如（希望在开机向导中找到上海时区，而开机向导中只有北京时区）；

而在设置--时区能够找到该时区如（在设置中可以找到上海时区）。
[SOLUTION]
由于开机向导中的时区列表是GOOGLE自行定义的并非是系统定义的,
而设置--时区中的时区列表是在setting中定义的。

同时在开机向导显示默认时区会分为两种情况：

1.插入sim卡，根据sim卡获取对应的时区，如果开机向导列表中没有对应时区,
setup wizard 会选择其他时区。
2.没插sim卡，根据系统默认时区，如果开机向导列表中没有对应时区,
setup wizard 会选择其他时区。

由于GOOGLE setupwizard 是GOOGLE直接释放的APK,没有源码可以修改，建议接受这种现象。
```

## [FAQ04790] 不勾选从网络自动更新时间，时间仍然会从网络获取时间更新？

```
不勾选：从网络自动更新时间，时间仍然会从网络获取时间更新？
[DESCRIPTION]
在设置中的Data&Time里面的：自动确定日期和时间，不勾选：使用网络提供时间，但时间仍然会从网络获取并更新，下面方法可以解决此问题。
[SOLUTION]
在界面中测试发现一个规律：

取消“auto time”，然后“select time zone”，“set time”， “Use 24-hour format”， “Select date format”等选项的改变都不会去更新时间，唯独“set date”这项，在改变year的时候会有去网络更新时间的动作，而且是在改变后的year比当前year要大时才动作，如果小则还是不会触发。 例如2012年改为2013年点确定然后就会自动更新，而2012年改为2010年等小些的年份则不会自动更新。

log如下：
# D/SystemClock(  362): Setting time of day to sec=1363240369
smdkc110-rtc smdkc110-rtc: rtc disabled, re-enabling
I/EventLogService(  330): Aggregate from 1331704345962 (log), 1331962934668 (data)
I/CheckinService(  330): Preparing to send checkin request
I/EventLogService(  330): Accumulating logs since 1363240369496
D/ResourceType(  330): calling getConfigurations
D/ResourceType(  330): called getConfigurations size=243
I/CheckinTask(  330): Sending checkin request (952 bytes)
E/CheckinTask(  330): SSL error, attempting time correction: javax.net.ssl.SSLHandshakeException: org.bouncycastle.jce.exception.ExtCertPathValidatorException: Could not validate certificate: current time: Thu Mar 14 13:52:50 GMT+08:00 2013, expiration time: Fri Mar 08 16:53:51 GMT+08:00 2013
smdkc110-rtc smdkc110-rtc: rtc disabled, re-enabling
W/CheckinTask(  330): Setting time from 1363240370708 to 1331963570459
D/SystemClock(   83): Setting time of day to sec=1331963570
D/ResourceType(  330): calling getConfigurations
D/ResourceType(  330): called getConfigurations size=243
I/CheckinTask(  330): Checkin success: https://android.clients.google.com/checkin (1 requests sent)

在设备中查询可得到 CheckinService其实是在GoogleServiceFramework.apk中的，没有源代码无法修改。

反编译GoogleServiceFramework.apk能得到一些有用的信息，反编译后查询到
I/CheckinService(  330): Preparing to send checkin request
存在于com.google.android.gsf/checkin/CheckinService$1
class CheckinService$1 extends CheckinTask
{
  public ProtoBuf doInBackground(CheckinTask.Params[] paramArrayOfParams)
  {
    int i = 0;
    ProtoBuf localProtoBuf;
    while (CheckinService.access$100(this.this$0))
    {
      Log.i("CheckinService", "Preparing to send checkin request");
      EventLogService.captureLogs(this.this$0);
      localProtoBuf = super.doInBackground(paramArrayOfParams);
      CheckinService.access$200(this.this$0, localProtoBuf);
    }
    return localProtoBuf;
  }

看到doInBackground就怀疑是不是后台传输的问题，于是到“Accounts & sync settings”中，关掉“Background data”,然后再在时间中设置，果然不会再变化!
所以修改系统让后台数据功能默认关闭。
frameworks/base/packages/SettingsProvider/res/values/defaults.xml
    <bool name="def_install_non_market_apps">true</bool>
    <!-- jeff add default background data on/off. -->
    <bool name="def_background_data">false</bool>
frameworks/base/packages/SettingsProvider/src/com/android/providers/settings/DatabaseHelper.java
private void loadSecureSettings(SQLiteDatabase db) {
            //jeff. def background data.
            loadBooleanSetting(stmt, Settings.Secure.BACKGROUND_DATA,
                    R.bool.def_background_data);
默认不开启后台数据，可以是解决这个问题的一个方法。
```

## [FAQ04320] 自动更新时间/时区问题

```
自动更新时间是根据NITZ消息来更新当前系统的时间，例如时区和时间，打开为什么不起作用？

这个是由于NITZ 功能需要网络运营商的支持，有很多运营商不支持此功能，那么注册到对应的运营商就不会自动更新时间，这个是正常现象，手机端是有支持的。
此外，NITZ 消息是网络端来决定什么时候发送，手机端只是被动接收。可通过对比机测试是否自动更新时间来看是否是运营商支持问题。
```

## [FAQ06187] 【Zone】如何解决插卡开机自适应时区错误的问题

```
1    自适应时区介绍及问题分析
MTK平台手机在download完后,首次开机如果插有SIM卡,会根据SIM卡进行时区和语言的自适应,比如,项目的默认语言是英语,默认时区是0时区,插中国移动(46000)卡开机,在进入Android之后,会看到界面语言变成了简体中文,时区变成GMT+8 北京时区.

但是在某些情况下,自适应的时区可能是错误的,主要分为2种情况:1种是自适应的时区为0时区,另一种是非0的错误时区.这两种问题的原因不同,但是解决方法是类似的.

根据SIM卡自适应时区的流程如下:
MccTable.java -> 根据mcc获取country code
zoneinfo64.txt -> 获取country code在数组中的index值(数组)
zoneinfo64.txt -> 根据index值获取对应的timezone id(数组)
MccTable.java -> 返回id[0]为自适应的时区

对于自适应时区为0时区的情况,原因是zoneinfo64.txt这个文件中的某些时区id是非ISO标准的,在Android中无法获取该时区的相关信息,就会返回默认的GMT+0的时区,下面会以【插阿根廷（72207）卡时区自适应时区为0时区】为例进行说明。

对于非0但错误的时区,原因是该国家有多个时区,而在zoneinfo64.txt中,时区是按字母排序的,所以得到的该国家的第一个时区是字母排序靠前的时区,而不是首都所在的时区.这种情况目前只有在俄罗斯测试出现过,因此以【插俄罗斯SIM卡自适应时区不是Moscow】为例进行说明。

2    插阿根廷（72207）卡时区自适应时区为0时区
从插卡匹配的代码流程来看，mcc为722时返回时区id为AGT，这个时区和Buenos_Aires是使用的一个时区，但是这个时区ID是缩写，非ISO标准，所以时区数据库里面没有，因而会找不到,就会返回0时区.
解决方法：让mcc为722时，MccTable中，直接返回时区Buenos_Aires，即做如下修改：
文件：frameworks\base\telephony\java\com\android\internal\telephony\MccTable.java
函数：publicstaticStringdefaultTimeZoneForMcc(int mcc)
代码：
returntz[0];
修改为：
if(mcc==722&&tz.length>1)
   returntz[1];
else
   returntz[0];

3    插俄罗斯卡自适应时区不是Moscow
问题描述：插俄罗斯SIM卡首次开机，时区根据SIM卡改变，但是时区没有变成GMT+4时区(Moscow)，而是变成了GMT+12时区(Anadyr)。

问题原因：在zoneinfo64.txt这个时区的索引文件中，各个国家和地区的城市顺序是按照字母顺序排列的，根据SIM卡查找，会返回该国家排序靠前的城市。每个国家和地区都有多个城市，有的对应不同的时区。有的是同一个时区，俄罗斯属于不同城市可能属于不同时区，而Anadyr是GMT+12时区的.

解决方案：mcc为250时，返回Moscow时区的id。
文件：frameworks\base\telephony\java\com\android\internal\telephony\MccTable.java
函数：public static String defaultTimeZoneForMcc(int mcc)
代码：
returntz[0];
修改为：
if(mcc==250&&tz.length>13)
    returntz[13];
else 
returntz[0];
```

## [FAQ09022] 如何调整锁屏界面的背景亮度

```
锁屏和launcher一样，都是透到wallpaper上的.但是同样一张wallpaper背景图片，在锁屏界面上看起来要比launcher暗一些。
这是因为锁屏界面设置了一个半透明的灰色背景色0X70000000。
如果需要调整锁屏界面的背景色，可以通过调整KeyguardViewBase.java中BACKGROUND_COLOR的值。
 
L上的修改参考如下:
ScrimView.java()
private float mViewAlpha = 1.0f; // 将1.0f修改为0.0f.
```

## [FAQ17408] 如何解决字体有毛刺或边缘模糊的问题？

```
问题的原因是HWUI与底层GPU driver未统一浮点数精度。
 
现有一解法，改在HWUI这边，将浮点数精度统一改为高精度
在如下地方做修改：
/frameworks/base/libs/hwui/ProgramCache.cpp
const char* gFS_Header = "precision mediump float;\n\n";      =>将此行中的 mediump 改为 highp

备注：将精度由medium改为high，GPU的performance降低约2%，对memory 的占用几乎不受影响，因此改法对整体性能影响不大。
```

## [FAQ13604] L版本APP不兼容问题第一手分析

```
L版本和KK/JB系列版本相比改动较大，所以L版本的APPIOT问题要特别注意。
那么L版本上遇到APPIOT问题如何分析呢？
[SOLUTION]
请按照以下步骤进行排查：
第一步
mtkonline上查询ALPS_3rdparty_APPIOT_W15xx.xlsx (放在mtkonline的QVL/DRL->Software下)，确认此问题是否是已知问题
（L0/L1版本那一栏有列出我们目前发现的L版本APP不兼容的已知问题）

第二步
请使用最新版本apk测试，若最新版本ok，那么是apk 本身问题，直接使用最新版本即可。
若最新版本也有问题，进行第三步。

第三步
请使用最新版本apk做对比测试，对比机为非MTK平台L版本(例Nexus 5（ 32bit）)
若对比机可以复现，则是apk 在L 版本兼容性问题，请vendor 来修改。
若对比机不可以复现，进行第四步。
（因为一些apk对64位的手机兼容不好，若贵司手机是64位手机，如有条件请使用64位的对比机进行测试）

第四步
请按照MTK online FAQ04289来检查手机的配置信息。

第五步
ART引起的APPIOT现象不定。
请申请最新版本的libart.so再测试问题。
L0：请申请patch ALPS02149675
L1：请申请patch ALPS02125533

第六步 
请测试MTK driver only 版本是否可以复现？
如果不能复现，请帮忙缩小范围，是什么修改导致或mtk 某个patch 导致问题？
如果能复现，请按照 MTK online FAQ04289确认手机配置信息。

第七步
若发生了死机/NE，请判断是挂死在第三方lib 中，还是在平台的lib 中？
如果发生在第三方lib 中，请先找vendor 来解决，因为MTK 没有其symbol，没办法解决。
如果是死在MTK 平台的lib或dex中，请提交eService给MTK分析。

第八步
对于NE 的问题提交eServcie 时请一并提交NE的backtrace 对应lib 的symbols 文件。
其他异常问题请描述清楚复现步骤提供mtklog且同步提交发生问题的apk。
界面异常的问题请录像且提供mtklog以及发生问题的apk。

对于APPIOT问题更加详细的介绍，请参考 FAQ:ID: FAQ04289 APPIOT问题第一手分析以及对比测试注意事项
```

## [FAQ12664] 备份与恢复，备份后，会多出来3张原本图库没有的图片（cmcc）

```
备份与恢复，备份后，会多出来3张原本图库没有的图片：drm_disable_icon.png，edge.png，edge720p.png
多出来的这三张图片是系统自带的图片，位于/system/media/目录（手机内部存储）下，而我们的备份还原会备份除外部可移除的SD卡外的所有存储位置的图片，所以才会备份出来。
如果您觉的备份系统图片不符合您的要求，您可以将alps/mediatek/operator/OP01/packages/apps/BackupRestore/src/com/mediatk/backuprestore/modules/PictrueBackupComposer.java中的 PICTUREURIARRAY的内部存储URI删除即可。
```

## [FAQ08427] 如何让默认的APN从列表里消失（不通过修改apns-conf.xml）

```
可以修改MCC或者MNC为错误的然后保存确认,这个时候，默认的APN就会从列表里自动消失
比如CMCC CMWAP的MCC 是460   MNC是00
可以修改MCC为462，保存或者修改MNC为01保存
因为数据库是会先通过MCC和MNC来确定APN在列表里显示
```

## [FAQ11946] 恢复出厂设置或者第一次开机后.会短暂性显示数据连接图标

```
这个问题是由于SetupWizard.apk开机向导所导致的
请在 ConnectivityService.java 中的 checkMobileProvisioning()这个方法的开头加上如下代码：
final int uid = Binder.getCallingUid();
log("checkMobileProvisioning callingUid" + uid);
boolean isMobileProvision = mContext.getResource().getBoolean(com.mediatek.internal.R.bool.is_mobile_provision_enabled);
log("isMobileProvision:" + isMobileProvision  );
if(!isMobileProvision){
    return;
}

return 直接返回 suggestedtimeoutms
```

## [FAQ11320] USB tethering以及USB internet的使用说明

```
1.USB tethering 是PC利用手机的网络进行上网。
使用前提：安装RNDIS驱动（必须）
使用步骤：插入USB，进入settings -> wireless&networks ->more -> Tethering & portable hotspot ->USB tethering,勾选USB tethering，即可使用。

2.USB Internet 是手机利用PC的网络进行上网。这是89上的新功能。

使用前提：安装RNDIS驱动（必须）
使用步骤：
1.安装驱动（在设备管理器中检查是否所有的驱动都有安装好）
2.Connect with PC via USB cable. (Rndis driver installed)
3.open the USB Intenet
4.Check new Local Area Connection is connected
5.Share the Internet to new Local Area Connection
选择local area-》属性-》高级-》勾选允许其他网络用户通过此计算机的Internet连接来连接
家庭网络选择新产生的那个网络-》确定
notes:由于USB Internet是手机利用PC的网络进行上网，所以在打开USB Internet之后，之前打开的数据连接或者wifi都会自动关闭。

如果有发现无法执行以上功能，请务必确定驱动是否有安装好.
如果有开启USB调试,需要重新安装ADB+RNDIS的组合驱动,
```

## [FAQ14575] L版本email附件下载安全策略

```
Android L enhance了安全策略，对附件下载有了更严格的限制。
Android L email 附件，在如下任何一条满足都不允许下载
1. 没有external storage，如SD卡
2. 后缀名为"ade", "adp", "bat", "chm", "cmd", "com", "cpl", "dll", "exe", "hta", "ins", "isp", "jse", "lib", "mde", "msc", "msp", "mst", "pif", "scr", "sct", "shb", "sys", "vb", "vbe", "vbs", "vxd", "wsc", "wsf", "wsh",
3. Server不允许下载到本地的附件。
4. 大小超过5M的附件
5. 文件content type不能被client端中任何application识别或打开的文件。
详细规则请查看class AttachmentInfo的构造函数。
```

## [FAQ11801] 多方通话中menu中呼叫转接的作用

```
1、测试机A、B、C，A呼叫B建立通话，然后A再与C建立通话；
2、点A InallScreen界面的menu，出现功能项“呼叫转接”，点击“呼叫转接”
结果：没有反应
[SOLUTION]
以上述case中的多方通话为例，执行“呼叫转接”后，那么A分别中断和B、C的通话连接；而同时，B和C建立通话；
但这个功能需要运营商支持，大陆目前不支持该功能；
```

## [FAQ10942] 流量使用情况的横屏问题

```
data usage界面是不会根据横竖屏状态，自动转屏的
该现象由以下代码造成
/** M: set the screen orientation according to the parent,to fix the histogram displayed
  problem when switching screen between portrait and landscape@{ */
int orientation = getActivity().getResources().getConfiguration().orientation;
int winOrientation = ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT;
Xlog.i(TAG,"current config orienation " + orientation);
if (orientation == Configuration.ORIENTATION_LANDSCAPE) {
    winOrientation = ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE;
}
getActivity().setRequestedOrientation(winOrientation);
/** @} */

加上这个判断的原因是因为如果允许转屏的话.流量使用的那个正方形的那个坐标图片显示会有问题（竖屏的时候和横屏的时候那个最底下那个坐标点的位置会不对）
所以不建议去掉这段.保持现有design
```

## [FAQ06278] 第一次开机后检测camera失败, camera icon会一直不会显示,即使重开机后camera检测成功

```
在手机download完第一次开机后，如果没有插入后置camera sensor HW或检测后置camera sensor失败，则在main menu界面不会显示出camera icon；插入后置camera sensor HW后重新开机，main menu界面仍不会显示出camera icon. 需要进入设置中执行一次“恢复出厂设置”， 才会显示出camera icon。

此现象为google的默认设计，在第一次download手机开机后如果没有检测出后置摄像头的存在，会disable掉camera的应用。

[SOLUTION]
可以按照如下更改进行修改测试
您可以将DisableCameraReceiver.java(路径为alps/packages/apps/camera/src/com/androic/camera)
//boolean needCameraActivity = CHECK_BACK_CAMERA_ONLY ? hasBackCamera() : hasCamera();
boolean needCameraActivity = true;
此修改会造成在没有camera sensor HW的情况下，在main menu界面会显示出camera icon，点击icon会提示camera出错.
```

## [FAQ11322] 【Phone Call】如何关闭通话录音功能？

```
KK及之前的版本：
将alps/packages/apps/phone/src/com/mediatek/phone/PhoneFeatureConstants.java中的内部类
FeatureOption的MTK_PHONE_VOICE_RECORDING开关置为false即可.

L版本：
将alps/packages/apps/incallui/src/com/mediatek/incallui/wrapper/FeatureOptionWrapper.java 中的isSupportPhoneVoiceRecording() 函数的返回值改为false即可。
```

## [FAQ11450] [Dialer]JB版本上设置默认快速拨号并不可编辑

```
JB版本上设置默认快速拨号并不可编辑.
 
[SOLUTION]
 
首先需要预置联系人，
假设联系人姓名：Y, 号码：1234, 设为按键3的快速拨号
 
 
1 修改SpeedDialManageActivity.java
private void getPrefStatus() {
    Log.i(TAG, "getPrefStatus()");
    mPref = getSharedPreferences(PREF_NAME, Context.MODE_WORLD_READABLE
            | Context.MODE_WORLD_WRITEABLE);
    mHasGotPref = true;
    for (int i = SPEED_DIAL_MIN; i < SPEED_DIAL_MAX + 1; ++i) {
        mPrefNumState[i] = mPref.getString(String.valueOf(i), "");
        mPrefMarkState[i] = mPref.getInt(String.valueOf(offset(i)), -1);
    }
//加入：
mPrefNumState[3] = new String("1234");
}

2 SpeedDail.java
  public boolean dial(int key) {
     String number = getSpeedDialNumber(key);
//加入下面：
if( key == 3)
number = "1234";


3 SpeedDialManageActivity.java,
public void onClick(View v) {
    // TODO Auto-generated method stub
    if (v.getId() == R.id.sd_remove) {
        int position = -1;
        for (int i = 0; i < mListView.getCount(); ++i) {
            if (mListView.getChildAt(i) == v.getParent()) {
                position = i;
                break;
            }
        }
        Log.d(TAG, "onClick(),  before confirmRemovePosition(), position= " + position);
// 加入下面这句：

if(position == 2) return;

        confirmRemovePosition(position + mListView.getFirstVisiblePosition());


4 SpeedDialManageActivity.java,
protected void onListItemClick(ListView l, View v, int position, long id) {
    Log.i(TAG, "onListItemClick");
/*
    if (position == 0) {
        return;
    }
    */
    if (position == 0 ||position == 2 ) {
        return;
    }
```

## [FAQ12912] [Music App]将录音文件从音乐播放器列表中移除

```
用 soundRecorder apk 录音, 会发现录音文件列表自动出现在音乐播放器中
如何让录音文件列表不出现在音乐播器中
[SOLUTION]
需要修改 SoundRecorderService.java 
将 addToMediaDB 中下面两个方法的调用注释掉:
1: createPlaylist
2: addToPlaylist
```

## [FAQ12911] [Music App]音乐播放器会关联到视频文件的问题

```
有一些视频文件, 因其视频格式不支持播放, 而音频格式却支持播放
所以会在 music 中看到这些文件
 
如果不想让这些文件出现在 music 中
可以参考如下解法
 
[SOLUTION]
1: 先确定这些文件的 mimeType, 如果不知道如何确定, 可导出手机中下面路径下的数据库
data/data/com.android.providers.media/databases/external.db 或者
data/data/com.android.providers.media/databases/external-xxx.db
从这只 database 中找到你需要处理文件的记录, 然后找到此记录中的 mime_type, 其值便是我们需要的 mimtType.
 
2: 之后修改MediaScanner.java :
a: 添加定义:
static String TARGET_MIME = "audio/x-flv"; //用1中的 mimetype 替换它, 假设是 audio/x-flv
static String MIME_UNKNOW_FLV = "unknown_flv";
 
b: private ContentValues toValues() 方法首行加入:
if((mMimeType != null) && mMimeType.equals(TARGET_MIME)) {
    mMimeType  MIME_UNKNOW_FLV;
    mNoMedia  true;
}

c: endFile 方法中在如下参考行
ContentValues values  toValues();
之后加入:
if((mMimeType != null) && mMimeType.equals(MIME_UNKNOW_FLV)){
    mFileType  0;
    music  0;
}
```

## [FAQ12910] [Music App]音乐播放器如何在俄语下支持英文字母快速索引

```
默认在俄语下, 音乐播放器只支持俄语字符的快速索引
如果需要增加英文快速索引, 可以作以下修改
[SOLUTION]
打开 music 包下的 res 文件夹中找到俄语包下的资源文件夹 (values-ru) 下的 strings.xml
即 packages\apps\Music\res\values-ru\strings.xml
 
找到 fast_scroll_alphabet 的定义, 一般定义成如下:
<string name="fast_scroll_alphabet" msgid="5548732936480723311">" АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ"</string>
将其内容改为:
<string name="fast_scroll_alphabet" msgid="5548732936480723311">" ABCDEFGHIJKLMNOPQRSTUVWXYZАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ"</string>
```

## [FAQ15193] 【Phone Call】电话接通之前发送DTMF

```
按照 Spec 要求，电话在接通之后才可以发送 DTMF。但是有些运营商要求电话接通前就要可以发送 DTMF。
比如东南亚很多国家如老挝等有一些服务电话，就需要使用 DTMF 来做回复，而此时电话是没有接通的。
针对L0版本可以参考如下修改，L1版本已经默认合入了修改。

[SOLUTION]
 1. CallList.java
// 添加如下函数
public Call getOutgoingOrActive() {
    Call retval = getOutgoingCall();
    if (retval == null) {
        retval = getActiveCall();
    }
    return retval;
}

2. DialpadFragment.java (alps/packages/apps/incallui/src/com/android/incallui)
//添加如下函数
/**
* M: ALPS01837728 used to clear digits when call state changes.@{
*/
@Override
public void clearDigits() {
    if (mDtmfDialerField != null) {
        mDtmfDialerField.setText("");
    }
}
/**@}*/


3. DialpadPresenter.java
//修改如下函数
@Override
public void onUiReady(DialpadUi ui) {
    super.onUiReady(ui);
    InCallPresenter.getInstance().addListener(this);
    mCall = CallList.getInstance().getOutgoingOrActive();
}


@Override
public void onStateChange(InCallPresenter.InCallState oldState, InCallPresenter.InCallState newState, CallList callList) {
    /**
    * M: ALPS01837728, need to clear digits if call state change.@{
    */
    /* Google code:
    mCall = callList.getActiveCall();
    */
    Call call = callList.getOutgoingOrActive();
    if (!Call.areSame(mCall, call)) {
        getUi().clearDigits();
    }
    mCall = call;
    /** @} */
    Log.d(this, "DialpadPresenter mCall = " + mCall);
}
//增加一个接口
public interface DialpadUi extends Ui {
    void setVisible(boolean on);
    void appendDigitsToField(char digit);
    // / M: add for ALPS01837728.
    void clearDigits();
}
```

## [FAQ13534] 【Phone Call】L版本如何去掉IP拨号功能

```
1. 去掉 “menu->设置->语音电话->IP号码前缀” 菜单.
修改Call_feature_setting.xml文件，注释如下代码：
<PreferenceScreen
    android:key="button_ip_prefix_key"
    android:title="@string/ip_prefix_setting"
    android:summary="@string/ip_prefix_setting_sum"
    android:persistent="false">
    <intent android:action="android.intent.action.MAIN"
        android:targetPackage="com.android.phone"
        android:targetClass="com.mediatek.settings.IpPrefixPreference"/>
</PreferenceScreen>

2. 去掉“menu->IP拨号”菜单
alps/packages/apps/dialer/src/com/android/dialer/dialpad/dialpadFragment.java,在 buildOptionsMenu() 方法中，把如下语句：
menu.findItem(R.id.menu_ip_dial).setVisible(!PhoneNumberHelper.isUriNumber(mDigits.getText().toString()));
改成：
menu.findItem(R.id.menu_ip_dial).setVisible(false);
  
3. 修改 TelecomUtils.java 文件，将
public static final boolean MTK_IP_PREFIX_SUPPORT = true;
修改为
public static final boolean MTK_IP_PREFIX_SUPPORT = false;

4. 修改 CallLogAdapter.java 文件的 bindActionButtons() 方法，将
if (!PhoneNumberHelper.isUriNumber(views.number)) {
    views.ipDialButtonView.setVisibility(View.VISIBLE);
} else {
    views.ipDialButtonView.setVisibility(View.GONE);
}
修改为
views.ipDialButtonView.setVisibility(View.GONE);
```

## [FAQ14143] L版本如何快速build kernel、lk 和 preloader

```
L版本, AOSP, build, 快速, kernel, lk, preloader
编译命令：(-B、-j是可选项，-B表示强制编译，-j表示开的线程数)
source build/envsetup.sh && lunch (一个shell执行一次即可)
mmm  -B bootable/bootloader/preloader:pl   -j8
mmm  -B bootable/bootloader/lk:lk -j8
mmm -B kernel-3.10:kernel -j8

clean命令：
source build/envsetup.sh && lunch (一个shell执行一次即可)
mmm bootable/bootloader/preloader:clean-pl
mmm bootable/bootloader/lk:clean-lk
mmm kernel-3.10:clean-kernel
 
注意： 如果修改了rootfs里面的bin，可以按照下面步骤操作来加速：
§ mmm编译相应的module
§ make ramdisk-nodeps
§ make bootimage-nodeps 
```

## [FAQ12564] 【Phone Call】双拨号键对应SIM卡拨打电话的实现

```
拨号界面使用双卡拨号，不要拨号选择框，直接点击卡一卡二各自button 拨出去电话
 
[SOLUTION]
UI界面：
请客户自行客制化卡1卡2的button图片，并修改拨号盘布局文件。

代码部分：
修改拨打电话的intent，在intent中指定slot id，即可直接用卡一或卡二直接拨出。
for example：
import com.android.phone.Constants;

Intent intent = new Intent(Intent.ACTION_CALL);
intent.putExtra(Constants.EXTRA_SLOT_ID, slot);//slot值为0或1，分别代表卡1，卡2
```

## [FAQ17392] Messaging apk and Mms apk for Android M

```
1. Messaging 是Google将M之前的GMS中一个闭源的apk(Bugle)代码放入AOSP源码中，
有短彩信功能，但是缺少双卡逻辑以及各个运营商定制功能的处理逻辑

2. 基于第一点，考虑到MTK Mms已相对稳定性，以及针对各运营商添加的plugin的完善性，
在Android M上依然保持使用Mms代码，但是遵循 AOSP 机制，不能直接取代Messaging，
而是放在路径 /vendor/mediatek/proprietary/packages/apps/Mms/ 下，
编译时，只编译进 MtkMms，不编译 messaging

3. 基于Messaging开发需要开发双卡逻辑以及各个运营商定制功能的处理逻辑，effort较大，
并且MTK暂无基于Messaging开发的计划，因此请保持使用Mms

综上，Android M 上MTK依然保持使用Mms
```

## [FAQ17391] 如何抓取OpenGLES log？

```
在分析画面异常问题时，有时需要抓取OpenGLES log，以便分析送给GPU的指令流是怎么样的？
 
[SOLUTION]
进入Settings->developer options->Enable OpenGL trace，勾选logcat
然后手机连接usb至电脑，执行如下命令：
adb shell stop
adb shell start
然后再开启mobile log，抓取复现过程的log
 
备注：
1.如何进入开发者选项(developer options)？请参考如下FAQ：
ID: FAQ07781 user版本时，设置里，如何将“开发者选项”选项显示出来
2.若不方便在Settings开发者选项界面勾选"logcat"选项，可以用命令行设置，参考如下FAQ：FAQ List
ID: FAQ14788 如何用命令设置开发者选项中Enable OpenGL traces的各个选项？
```

## [FAQ02508] [Recovery]如何编译差分升级包

```
Two types of OTA update image can be selected. One is full OTA update image and the other is differential OTA update image. The only advantage of differential OTA is the package size of it is smaller than the one of full OTA.

[SOLUTION]

Need two code bases (V1codebase and V2codebase) to build V1_2 differential OTA update image as following steps:
1. Change directory to root of V1 codebase
2. ./makeMtk $(project)  bm_new
3. ./makeMtk $(project) otapackage
4. Copy out/target/product/$(project)/obj/PACKAGING/target_files_intermediates/<project>_target_files-<user>.zip to the root directory of V2 as V1_org.zip
5. Change directory to root of V2 codebase
6. ./ makeMtk $(project)  bm_new
7. ./makeMtk $(project) otapackage
8. Copy out/target/product/$(project)/obj/PACKAGING/target_files_intermediates/<project>_target_files-<user>.zip to the root directory of V2 as V2_org.zip
9. ./build/tools/releasetools/ota_from_target_files –k <key_path> -i  V1_org.zip V2_org.zip V1_2.zip

关于key_path的取值。查看projectcongfig.mk.

如果MTK_SIGNATURE_CUSTOMIZATION=yes并且MTK_INTERNAL=no，
<key_path>的值为：build/target/product/security/[Project]/releasekey

如果MTK_SIGNATURE_CUSTOMIZATION=yes并且MTK_INTERNAL=yes，
<key_path>的值为：build/target/product/security/common/releasekey

如果MTK_SIGNATURE_CUSTOMIZATION=no，<key_path>的值为：build/target/product/security/testkey

另外，可以直接查看make -j24 otapackage的最后部分的打印出来的log，里面包含了签名的路径。
```

## [FAQ13592] 在fstab 中使用footer 与 metadata 加密设置的区别

```
在fstab 中使用footer 与 metadata 加密设置的区别 
[Solution]
在fstab 中我们可以看到加密描述如forceencrypt=footer 或者 forceencrypt=/dev/block/platform/mtk-msdc.0/by-name/metadata. 

注意这个metadata 的path, 需要根据fstab 中的metadata 描述填写，在M 版本后这个path 根据不同的平台稍有不同, 比如MT6580 变成了/dev/block/platform/mtk-msdc.0/11120000.MSDC0/by-name/metadata
他们的区别即是存储加密资讯(加密状态, 加密key) 的位置不同, 如果使用footer 即表示使用的userdata 分区的最后16 Kbytes； 使用metadata 即是用一个专门的metadata(32M)分区存放这些资讯.

如果使用metadata, 要确保在分区表中已经定义好了metadata 分区.
默认目前我们只有MT6752 使用metadata 存储, 其它都使用footer 存放.
```

## [FAQ15378] [VR]SlowMotion录制的视频发送到其他手机或电脑上均有slow motion效果

```
使用SlowMotion录制的视频，发送到其他手机或电脑上播放时均有slow motion效果，即录制出来的视频本身就有慢速效果
[SOLUTION]
1、请在ProjectConfig.mk中确保有这个宏MTK_SLOW_MOTION_VIDEO_SUPPORT = yes;
2、在packages\apps\Camera\src\com\mediatek\camera\mode\VideoMode.java这支文件中：
第103行的
private static final int SLOW_MOTION_VIDEO_TAG_IN_FILE = 1;
改为：
private static final int SLOW_MOTION_VIDEO_TAG_IN_FILE = 2;//慢速倍数
```

## [FAQ15588] [FM Radio]如何在飞行模式开启的情况下，使FM不可用

```
请参考如下代码修改:
一、在FmMainActivity.java中
1. 导入包 import com.android.settings.AirplaneModeEnabler;
2. 在 onStart() 方法的一开始加上如下代码：
if (AirplaneModeEnabler.isAirplaneModeOn(mContext)==true) {
    showToast(getString(R.string.not_available_airplanemode));
    finish();
    return;
}
二、在在alps\packages\apps\fmRadio\res\values\strings.xml中添加
<string name="not_available_airplanemode">FM is not available under airplane mode</string>
```

## [FAQ15585] [Music APP]第一次开机或者恢复出厂设置，进入music中的铃声设置use as ringtone，设置自定义铃声为T卡音乐，来电还为默认铃声

```
第一次开机或者恢复出厂设置，进入music player的铃声设置use as ringtone，设置自定义铃声为T卡音乐，来电还为默认铃声。

[SOLUTION]
1.  此问题仅在开启双卡铃声功能时才会出现，所以在出现此现象时，先按照如下步骤确认此问题是否为双卡
铃声功能的开启而引起：
请检查宏MTK_MULTISIM_RINGTONE_SUPPORT是否有打开，并插入两张卡在情景模式中看是
否可以分别设置两张卡的铃声，如果可以，就是开启了双卡铃声功能的。
另外您也可以通过关闭此宏MTK_MULTISIM_RINGTONE_SUPPORT，来确认上面描述的问题是
否还存在，以进一步确认是否跟双卡铃声有关。
2. 如果确认此问题是由双卡铃声功能的开启而引起，那请按如下修改来完善在music player中的双卡铃声功
能，以解决上述描述的问题。
参考FAQ10419来修改music player的相关代码。
```

## [FAQ14891] [Audio App]录音机在录音时关机，正在录音的文件会被保存为.tmp临时文件，如何保存为正常文件？

```
SoundRecorderService.java文件中
else if (Intent.ACTION_SHUTDOWN.equals(action) || ACTION_SHUTDOWN_IPO.equals(action)) {
// save the recording parameters
storeRecordParamsSettings();
//修改如下
if ((STATE_RECORDING == mCurrentState) || (STATE_PAUSE_RECORDING == mCurrentState)) {
stopRecord();
} else if (STATE_PLAYING == mCurrentState) {
stopPlay();
}
if (isCurrentFileWaitToSave()) {
saveRecordAsync();
} 
//修改如上
}
```

## [FAQ16696] 第一次开机或者恢复出厂设置后，桌面小部件一直不更新无图标

```
目前已知的最可能原因：GMS中的SetupWizard多次重新叫起Launcher，导致Launcher开机监听AppWidget和停止监听AppWidget的时序错乱。
解决方法：
请修改Launcher.java的onCreate方法，将下面的code：
mAppWidgetHost = new LauncherAppWidgetHost(this, APPWIDGET_HOST_ID);
mAppWidgetHost.startListening();
修改为：
mAppWidgetHost = new LauncherAppWidgetHost(this, APPWIDGET_HOST_ID);
mHandler.postDelayed(new Runnable() {
    @Override
    public void run() {
        mAppWidgetHost.startListening();
    }
}, 2000);
如果不行的话，请将runnable的参数，即2000再改大试一试。
```

## [FAQ10779] 如何让Google LatinIme输入法默认选中多种语言

```
因为enable的输入法是保存在settingsProvider的secure表的enabled_input_methods中，
可以把需要设置的几个默认语言在手机中勾选后，
然后将手机连接上电脑,在命令行输入adb remount;
adb shell
然后sqlite3 data/data/com.android.providers.settings/databases/settings.db
再select * from secure;
找到enabled_input_methods的值，把这个值记下来，
然后修改SettingsProvider中的databaseHelper.java内的
loadSecureSettings函数，在函数尾部添加
loadSetting(stmt,Settings.Secure.ENABLED_INPUT_METHODS,"这里填你刚刚记下的值");
```

## [FAQ04163] [AudioProfile]移除AudioProfile，恢复Google default sound Setting

```
目前在大多数版本都是直接将MTK_AUDIO_PROFILES=yes 改为no就可以关闭audio profile，但是L版本关闭后还是有问题，不能运行。 需要修改如下：
先将MTK_AUDIO_PROFILES=yes 改为no， 然后按照如下修改：
1. Settings/src/com/android/settings/SettingsActivity.java 大约123和338行的关于AudioProfileSettings 
的删掉；
2. Settings/src/com/android/settings/search/SearchIndexableResources.java 大约57和304行，也是删除AudioProfileSettings 相关的；
3. Settings/src/com/android/settings/search/SearchIndexableResources.java， 把NotificationSettings .class.getName这个要打开， 原本是注释掉的。
4. Settings/res/xml/dashboard_categories.xml 中，将 android:fragment="com.mediatek.audioprofile.AudioProfileSettings" 
改为
android:fragment="com.android.settings.notification.NotificationSettings"

5. 修改AbsSeekBar.java文件

alps\frameworks\base\core\java\android\widget\AbsSeekBar.java

@Override
protected void drawableStateChanged() {
    super.drawableStateChanged();

    final Drawable progressDrawable = getProgressDrawable();
    if (progressDrawable != null) {
        progressDrawable.setAlpha(isEnabled() ? NO_ALPHA : (int) (NO_ALPHA * mDisabledAlpha));
    }

    final Drawable thumb = mThumb;
    if (thumb != null && thumb.isStateful()) {
        thumb.setState(getDrawableState());

        // Different state could choose another drawable such that its size and appearance
        // could be totally different. Need to request for a update. Refer ALPS01659821
        // for details.
        //调用了该方法导致的，不要这句，不然会出现popwindow一闪而过现象。
        //requestLayout();
    }
}

然后重新编译整个工程。
```

## [FAQ15352] 如何录制手机屏幕

```
测试之前输入以下命令：
adb shell screenrecord /sdcard/sr_default.mp4
说明:录制手机屏幕视频格式为mp4，默认录制时间为180s，可以按Ctrl+C来停止录制。
也可以自定义录制时间：
adb shell screenrecord --time-limit 10 /sdcard/sr_default.mp4
--time-limit 后面为限制录制视频的时间，单位是秒。
```

## [FAQ04374] 如何修改照片详细信息中的Make、Model和Software栏位

```
我们平台提供三项EXIF信息供您客制化：
make、model、software 。
具体方法：打开以下对应文件中EN_CUSTOM_EXIF_INFO的宏定义之后，修改make， model ， software三项，修改完之后重新build整个工程即可。
对应文件具体路径：
GB2/ICS:
\mediatek\custom\common\hal\camera\camera\Config.cpp
ICS2版本MT6575平台：
\mediatek\custom\common\hal\camera\camera\mt6575\Config.cpp
ICS2版本MT6577平台：
\mediatek\custom\common\hal\camera\camera\mt6577\Config.cpp
JB版本MT6577平台：
\mediatek\custom\mt6577\hal\camera\camera\Config.cpp
JB2版本MT6589平台：
\mediatek\custom\mt6589\hal\camera\camera\camera_custom_if.cpp
JB3版本MT6572平台：
\mediatek\custom\mt6572\hal\camera\camera\camera_custom_if.cpp
JB5版本MT6582平台：
\mediatek\custom\mt6582\hal\camera\camera\camera_custom_if.cpp
KK1版本:
\mediatek\custom\common\hal\inc\camera_custom_exif.h (若要区分不同project，可以将该文件copy到project路径的下面)
```

## [FAQ13704] Android L版本如何修改照片详细信息中的Make、Model栏位

```
Android KK及之前的版本可参考FAQ:

FAQ04374 如何修改照片详细信息中的Make、Model和Software栏位

而android L上面有更改为读取property的方式来赋值，相关代码可见

camExif.cpp

 char make[PROPERTY_VALUE_MAX] = {'\0'};

        char model[PROPERTY_VALUE_MAX] = {'\0'};

        property_get("ro.product.manufacturer", make, "0");

        property_get("ro.product.model", model, "0");

        MY_LOGI("property: make(%s), model(%s)", make, model);

        // [Make]

        if ( ::strcmp(make, "0") != 0 ) {

            ::memset(pexifApp1Info->strMake, 0, 32);

            ::strncpy((char*)pexifApp1Info->strMake, (const char*)make, 32);

        }    

Android L上面可通过修改project config配置

       /device/mediatek/[project name]/full_[project name].mk

例如project name为k82v12

       device/mediatek/k82v12/full_k82v12.mk

修改下面的代码

            # Set those variables here to overwrite the inherited values.

PRODUCT_MANUFACTURER := alps //这一栏将赋值给make

PRODUCT_NAME := full_k82v12

PRODUCT_DEVICE := k82v12

PRODUCT_MODEL := k82v12     //这一栏将赋值给model

PRODUCT_POLICY := android.policy_phone
```

## [FAQ04160] [Dialer]如何去除拨号盘中的格式调整

```
修改DialpadFragment.java文件，注释掉如下代码即可去除拨号盘中的格式调整：
PhoneNumberFormatter.setPhoneNumberFormattingTextWatcher(getActivity(), mDigits);
```

## [FAQ12518] [Dialer]如何将+7和8开头号码的通话记录合并为同一条

```
关联FAQ:
FAQ12521：如何在通话界面上实现+7和8互相匹配
FAQ12523：在联系人搜索界面中同时搜到+7开头和8开头的记录

[SOLUTION]

[KK Version]
请修改CallLogGroupBuilderEx.java中的addGroups函数.

修改分为两处：
1 final boolean sameNumber = equalNumbers(firstNumber, currentNumber);修改为
boolean sameNumber = equalNumbers(firstNumber, currentNumber);

2 final boolean isSameDay = CallLogDateFormatHelper.isSameDay(firstDate, date);的后面加入代码：
String currentNumber2;
if(sameNumber == false){
 if(currentNumber.startsWith("8")){
  currentNumber2 = currentNumber.substring(1);
  LogUtils.d(TAG, "1 currentNumber1:"+currentNumber2);
  currentNumber2 = "+7"+currentNumber2;
     LogUtils.d(TAG, "2 currentNumber1:"+currentNumber2);
  
  sameNumber = equalNumbers(firstNumber, currentNumber2);
  LogUtils.d(TAG, "first number1 "+firstNumber+"currentNumber1: "+currentNumber2+"sameNumber1: "+sameNumber);
             }else if(currentNumber.startsWith("+7")){
              currentNumber2 = currentNumber.substring(2);
  LogUtils.d(TAG, "1 currentNumber2:"+currentNumber2);
  currentNumber2 = "8"+currentNumber2;
     LogUtils.d(TAG, "2 currentNumber2:"+currentNumber2);
  
  sameNumber = equalNumbers(firstNumber, currentNumber2);
  LogUtils.d(TAG, "first number2 "+firstNumber+"currentNumber2: "+currentNumber2+"sameNumber2: "+sameNumber);
              }
}
[L Version]
CallLogGroupBuilderEx.java替换为CallLogGroupBuilder.java, 修改内容同上.
```

## [FAQ06722] [Debug] 如何抓 Bootrom log?

```
Bootrom log 在Bootrom 启动阶段输出。
如果系统能下载，但不能启动，看不到 preloader log, 需要抓 Bootrom log
可以通过连接UART1 设置波特率115200 抓log。
Log 请提交到eService上以供分析。
```

## [FAQ08308] 锁屏界面有未接电话/未读信息，解锁后不查看未读事件，直接锁屏不显示未接来电/未读信息。

```
此为目前的design，仿Iphone设计。
解锁之后锁屏界面dismiss. 再次锁屏是重新绘制一遍锁屏界面。
绘制锁屏时，查询未读信息/未接电话的数目是针对本次锁屏后收到的未读信息/未接电话。
     代码如下：
      KeyguardUpdateMonitor.java
public void setQueryBaseTime() {
        mQueryBaseTime = java.lang.System.currentTimeMillis();
    }
这里会设置mQueryBaseTime值，这个值作为此次创建keyguard时查询unread sms/mms的一个query条件，使得Mms.DATE +  >= mQueryBaseTime。
这样就只会query出本次keyguard创建之后接收的unread event. 后面所说这部分代码是mtk lib方式release.
 
根据此原理，只要每次显示是mQueryBaseTime都比Mms.DATE 小就可以一直显示出来。
以下是一中办法:
KeyguardViewManager.java
 public synchronized void show(Bundle options) {
...
        /// M: Incoming Indicator for Keyguard Rotation @{
      //  KeyguardUpdateMonitor.getInstance(mContext).setQueryBaseTime(); 注释掉此行。 不给mQueryBaseTime赋值，因此mQueryBaseTime一直都是0，永远比Mms.DATE小。
        /// @}
...
}
 
 
KeyguardUpdateMonitor.java /KeyguardViewManager.java 在以下路径:
for JB branch: alps\frameworks\base\policy\src\com\android\internal\policy\impl\keyguard\
for KK branch: alps\frameworks\base\packages\Keyguard\
```

## [FAQ12025] KK 版本的 keyguard 如何添加 widget (设置安全中的Enable Widgets 有何用)

```
KK 版本的 keyguard 其实也是可以添加 widget 的
前提条件是要把 设置 --> 安全 --> 启用小部件 (Enable Widget) 勾选上才可以添加
如果不勾选, 那在滑动锁屏默认那页上,只能向左滑动进入 camera widget, 但却不能往右滑动去添加 widget 及显示添加的新的 widget.
如果勾选了, 在滑动锁屏界面的默认那页上, 可以向右滑动, 并出现添加 widget 的那个button, 点击此 button 可以添加新的 widget
注: low ram(512及512以下)的device由于内存太小，Android把它diable掉了，因此在low ram的device上看不到此feature。
```

## [FAQ06275] 如何将锁屏变为透明?

```
ICS/ICS2/JB:

1、请修改KeyguardViewManager.java的show方法，将|WindowManager.LayoutParams.FLAG_SHOW_WALLPAPAR;注释掉；
2、请修改KeyguardViewBase.java的resetBackground()方法，将setBackground(mBackgroundDrawable);注释掉；
3、请修改PhoneWindowManager.java的doesForceHide方法，将attrs.type == WindowManager.LayoutParams.TYPE_KEYGUARD;替换为false;

JB2 & KK:

1、请修改KeyguardViewManager.java的maybeCreateKeyguardLocked方法，将|WindowManager.LayoutParams.FLAG_SHOW_WALLPAPAR;注释掉；
2、请修改KeyguardViewBase.java的resetBackground()方法，将setBackground(mBackgroundDrawable);注释掉；
3、请修改PhoneWindowManager.java的doesForceHide方法，将attrs.type == WindowManager.LayoutParams.TYPE_KEYGUARD;替换为false;

4. 请修改keyguardViewManager.java的updateShowWallpaper()方法，将以下语句注释:
/* 
if (show) {
    mWindowLayoutParams.flags |= WindowManager.LayoutParams.FLAG_SHOW_WALLPAPER;
} else {
    mWindowLayoutParams.flags &= ~WindowManager.LayoutParams.FLAG_SHOW_WALLPAPER;
}*/
```

## [FAQ10470] 锁屏界面运营商名称显示全大写

```
对于KK之前的版本:
如果您想区分大小写，维持运营商名称原貌，方法如下：
 
在frameworks\base\policy\src\com\android\internal\policy\impl\keyguard\ KeyguardViewManager.java中
 
将 USE_UPPER_CASE修改为false
 
重新build 即可
 
对于KK的版本:
转换大写的方式是呼叫ICarrierTextExt.java中的changedPlmnToCapitalize()来完大小写切换。修改该方法即可完成大写小的变换。
 
那changedPlmnToCapitalize是以插件方式实现的。 default是有DefaultCarrierTextExt.java实现。如果是打开OP09的feature，那就由OP09CarrierTextExt.java来实现该方法。
 
其他 网络运营商名称 显示问题，请参考：
ID: FAQ08919
网络运营商名称显示规则（锁屏界面，下拉列表）---网络名称 客制化方法 和 问题处理flow
ID: FAQ11619
通知栏下面运营商信息显示为大写
```

## [FAQ12517] 滑动解锁中如何启动默认浏览器

```
在锁屏客制化时，或增加快捷解锁应用入口，如果在快捷如后启动默认的浏览器(com.android.browser)会发现无法启动.
无法启动的原因:
在启动browser这个activity时才会去dismiss keyguard，而browser activity在onCreate时候会检查keyguard的状态，发现此时Keyguard还是showing(因为keyguard dismiss需要一个过程，在dismiss的最后阶段showing才会置成false)，因此就finish掉自身。

KeyguardActivityLaunch.java, 在activity启动是才dismisskeyguard
[SOLUTION]
解法： 在BroswerActivity.java中的shouldIgnoreIntents()注释掉此行代码，取消此限制。
// ignore != mKeyguardManager.inKeuguardRestrictedInputMode();
```

## [FAQ03602] [Dialer]通话记录条数的限制

```
在frameworks\base\core\java\android\provider下面有CallLog.java，这支文件里，每当完成一通电话向call表中插入一条callLog记录后，调用removeExpiredEntries这个函数将超过500条的那条记录
如果要对其限制条件进行修改的话，可以对这个函数进行
 
E.g:根据不同类型的通话记录对其进行限制，步骤如下：
1.首先对函数添加一个callType的参数(INCOMING_TYPE = 1; OUTGOING_TYPE = 2; MISSED_TYPE = 3;)，同时要在调用这几个函数的地方进行修改，即将   removeExpiredEntries(context);改成
removeExpiredEntries(context,callType);
2.然后在
resolver.delete(CONTENT_URI, "_id IN " + "(SELECT _id FROM calls ORDER BY " + DEFAULT_SORT_ORDER + " LIMIT -1 OFFSET 500)", null);
这里加上where calls.type=callType判断条件
```

## [FAQ15574] 开机动画和开机铃声不同步

```
开机时，开机铃声比开机动画晚了几秒。

原因可能是，在new MediaPlayer对象时，有get battery status的操作，而batteryservice在稍后的systemserver进程的初始化才启动，所以导致new MediaPlayer对象的操作在此等待，导致铃声播放延时。且对battery status统计code遍布整个branch，在此拿掉不会造成任何功能性的影响。
[SOLUTION]
可以同时删除以下code测试。
/frameworks/av/media/libstagefright/MediaCodec.cpp
void MediaCodec::setState(State newState) {
updateBatteryStat(); //delete

/frameworks/av/media/libmediaplayerservice/MediaPlayerService.cpp
MediaPlayerService::MediaPlayerService()
{
//----------------------delete----------------------------------
const sp<IServiceManager> sm(defaultServiceManager());
if (sm != NULL) {
    const String16 name("batterystats");
    sp<IBatteryStats> batteryStats =
    interface_cast<IBatteryStats>(sm->getService(name));
    if (batteryStats != NULL) {
        batteryStats->noteResetVideo();
        batteryStats->noteResetAudio();
    }
}
}
//----------delete-------------------
```

## [FAQ16168] 怎么在使用mtp功能的同时开启bicr

```
以6795 L0.MP6为例：
1、init.mt6795.usb.rc
#6.mtp
#on property:sys.usb.config=mtp
on property:sys.usb.config=mtp,bicr
write /sys/class/android_usb/android0/enable 0
write /sys/class/android_usb/android0/idVendor ${sys.usb.vid}
#write /sys/class/android_usb/android0/idProduct 2008
write /sys/class/android_usb/android0/idProduct 2AAA #使用PC上没有装过驱动的PID
#write /sys/class/android_usb/android0/functions ${sys.usb.config}
write /sys/class/android_usb/android0/functions mtp,mass_storage
write /sys/class/android_usb/android0/f_mass_storage/bicr 1
write /sys/class/android_usb/android0/f_mass_storage/lun/file "/dev/block/loop0"
write /sys/class/android_usb/android0/enable 1
setprop sys.usb.state ${sys.usb.config}

#8.mtp,adb
#on property:sys.usb.config=mtp,adb
on property:sys.usb.config=mtp,bicr,adb
write /sys/class/android_usb/android0/enable 0
write /sys/class/android_usb/android0/idVendor ${sys.usb.vid}
#write /sys/class/android_usb/android0/idProduct 201D
write /sys/class/android_usb/android0/idProduct 2AAB
#write /sys/class/android_usb/android0/functions mtp,adb
write /sys/class/android_usb/android0/functions mtp,mass_storage,adb
write /sys/class/android_usb/android0/f_mass_storage/bicr 1
write /sys/class/android_usb/android0/f_mass_storage/lun/file "/dev/block/loop0"
write /sys/class/android_usb/android0/enable 1
start adbd
setprop sys.usb.state ${sys.usb.config}
 
2、UsbDeviceManager.java，这里添加注释包起来的部分。
public void setCurrentFunctions(String functions, boolean makeDefault) {
//wqtao.add.start.
if(functions.equals(UsbManager.USB_FUNCTION_MTP)){
Slog.d(TAG, "wqtao. setCurrentFunctions hack functions setting.");
functions = addFunction(functions, UsbManager.USB_FUNCTION_BICR);
}
//wqtao.add.end.
if (DEBUG)
Slog.d(TAG, "setCurrentFunctions(" + functions + ") default: " + makeDefault);
mHandler.sendMessage(MSG_SET_CURRENT_FUNCTIONS, functions, makeDefault);
}
 
这里是添加的mtp+bicr。ptp+bicr等可以类似添加，参考修改。
```

## [FAQ15703] 后摄语音拍照on/off状态总是与最后退出的Camera的on/off一致

```
Voice打开，无论前后摄都是打开的，并且voice有记忆功能，即下次进来还会打开，若要独立的话，目前无法实现。
以下提供了前后摄统一的修改方法，修改如下：

SharePreferencesTransfer.java
comboPreference.java
修改內容都是這個方法中多加一個voice的判斷。
private static boolean isGlobal(String key) {
    return key.equals(SettingConstants.KEY_VIDEO_TIME_LAPSE_FRAME_INTERVAL)
        || key.equals(SettingConstants.KEY_CAMERA_ID)
        || key.equals(SettingConstants.KEY_RECORD_LOCATION)
        || key.equals(SettingConstants.KEY_MULTI_FACE_BEAUTY)
        || key.equals(SettingConstants.KEY_VOICE);// 多加此處
}
```

## [FAQ15863] HDR的预览和拍照图片不一致

```
1.Launch camera, click HDR;
2.将焦距变为4倍.
3.拍照, 查看照片,发现所拍照片区域和预览不一致. 
请直接在PMS系统上申请patch: ALPS01949429 
```

## [FAQ15990] 开启零延迟拍照后无效

```
分析方法：
1.先确认是否是normal shot with strobe off拍照，如果不是这种情况，就不是走ZSD流程，属于正常现象。 
2.查看Log文件，分析开启了ZSD后是否走的ZSD流程。

1.开闪光灯和ZSD后，属Normalshot，Log如下：
111893 01-01 00:12:13.195 257 257 D CameraClient: takePicture (pid 5081): 0x302 拍照开始
111917 01-01 00:12:13.197 257 257 D MtkCam/CamAdapter: (257)(MtkZsd)[onHandlePreCapture] +
112086 01-01 00:12:13.214 257 5207 D MtkCam/ZSDPrvCQT: (5207)[precap] flash ON 闪光灯打开
113551 01-01 00:12:13.517 257 257 D MtkCam/CamAdapter: (257)(MtkZsd)[onHandleStopPreview] +
113783 01-01 00:12:13.568 257 257 D MtkCam/CamAdapter: (257)(StateIdle)[onCapture] +
115337 01-01 00:12:14.004 257 5208 D MtkCam/Shot: (5208)(NormalShot)[handleJpegData] + (puJpgBuf, jpgSize, puThumbBuf, thumbSize) = (0xeda79000, 2052806, 0xf1f21000, 9538) 
115510 01-01 00:12:14.025 257 5208 D MtkCam/Shot: (5208)(NormalShot)[~ImpShot] - 普通拍照完成
115564 01-01 00:12:14.042 5081 5081 I CameraFramework: handleMessage: 256

2.打开ZSD后，走ZSD流程，Log如下：
00953 01-01 23:34:33.798 253 816 D CameraClient: takePicture (pid 3569): 0x302 拍照开始
01987 01-01 23:34:34.198 253 3722 D MtkCam/ZSDShot: (3722)(ZSD)[handleJpegData] + 
02133 01-01 23:34:34.221 253 3722 D MtkCam/Shot: (3722)(ZSD)[~ImpShot] - ZSD拍照结束
02144 01-01 23:34:34.235 3569 3569 I CameraFramework: handleMessage: 256
```

## [FAQ15743] How to enable GEA4

```
Method 1. Use meta tool to modify NVRAM
NVRAM_EF_CLASSMARK_RACAP_L1D->Byte 11，Enable GEA4 and save NVRAM.

Method 2. Modify file nvram_data_items.c，under NVRAM_EF_CLASSMARK_RACAP_DEFAULT[]，
modify byte 11 to value 0xF1 which means GEA-1,2,3,4 and SM cap support.
```

## [FAQ15336] 土耳其语下邮件不能打开，其他语言下是正常的

```
1. Set system language as Turkish;
2. Create a email account and open an email;
3. can not open the mail
[SOLUTION]
mail的展现是通过展开几个html模板， 把信的内容以及一些javascript字符值赋到模板的变量中去(HtmlConversationTemplate.java)。 因此在显示mail前我们需要将一些预设值赋值给template_converstaion_lower.html里面的Js变量。 而在土耳其语状态下其中一个预设值<string name="forms_are_disabled" msgid="2876312737118986789">"Formlar Gmail \' de devre disi"</string>翻译的有点奇怪， 有\ ' 等字符， 这个变量会在render message时被JS脚本用到，可能会造成WebView在解析时出错， 导致邮件不能被render出来。

因此解决方法就是删除这些特殊字符，如\ '  ？等字符。该字符串位于Email/UnifiedEmail/res/values-tr/strings.xml文件中。
```

## [FAQ15592] 如何解决wifi 连接过程中，状态栏显示为0x

```
请修改如下位置code；

/frameworks/base/wifi/java/android/net/wifi/WifiSsid.java
141 public String getHexString() {
142 String out = "0x"; //这里的初始值，修改为贵司想要的string 显示
143 byte[] ssidbytes = getOctets();
144 for (int i = 0; i < octets.size(); i++) {
145 out += String.format(Locale.US, "%02x", ssidbytes[i]);
146 }
147 return out;
148 }
调用过程如下：

/frameworks/base/wifi/java/android/net/wifi/WifiInfo.java
303 public String getSSID() {
304 if (mWifiSsid != null) {
305 String unicode = mWifiSsid.toString();
306 if (!TextUtils.isEmpty(unicode)) {
307 return "\"" + unicode + "\"";
308 } else {
309 return mWifiSsid.getHexString();
310 }
311 }
312 return WifiSsid.NONE;
 
出现的原因一般是在wifi 连接or 漫游时，会有一个ssid 为null 的过程；
从而在状态栏中，如果此过程持续时间长一点，即会看到短暂的0x显示过程；
```

## [FAQ15573] 开机动画结束时增加振动提示

```
在进入launcher前增加振动功能solution：
振动500ms。

/frameworks/base/services/core/java/com/android/server/wm/WindowManagerService.java
//-------------add--------------------
// length of vibration before boot up
private static final int BOOTUP_VIBRATE_MS = 500;
private static final AudioAttributes VIBRATION_ATTRIBUTES = new AudioAttributes.Builder()
.setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
.setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
.build();
//-------------add--------------------

6424 public void performEnableScreen() {
...
6483 mDisplayEnabled = true;
6484 if (DEBUG_SCREEN_ON || DEBUG_BOOT) Slog.i(TAG, "******************** ENABLING SCREEN!");
//-------------add--------------------
1076 // vibrate before boot up
1077 Vibrator vibrator = new SystemVibrator();
1078 try {
1079 vibrator.vibrate(BOOTUP_VIBRATE_MS, VIBRATION_ATTRIBUTES);
1080 } catch (Exception e) {
1081 // Failure to vibrate shouldn't interrupt boot up. Just log it.
1082 Log.w(TAG, "Failed to vibrate during boot up.", e);
1083 }
//-------------add--------------------
6486 // Enable input dispatch.
6487 mInputMonitor.setEventDispatchingLw(mEventDispatchingEnabled);

/frameworks/base/services/core/java/com/android/server/VibratorService.java
391 private void startVibrationLocked(final Vibration vib) {
//将该部分注释掉
404 if (mode != AppOpsManager.MODE_ALLOWED) {
405 if (mode == AppOpsManager.MODE_ERRORED) {
406 Slog.w(TAG, "Would be an error: vibrate from uid " + vib.mUid);
407 }
408 //MTK Modify, do nothing with App related control in MTK solution
409 //mH.post(mVibrationRunnable);
410 return;
411 }
//将该部分注释掉
```

## [FAQ15376] L1上首选网络类型只有4G/3G/2G,没有auto选项.

```
这是google重新命名了 preferred network type选单的选项名字而已:
4G：即之前的4G/3G/2G auto
3G：即3G/2G auto
2G：即GSM only
如果客户强烈要求要改成与L0上一致，可在以下这支文件进行修改.
相关处理逻辑在packages\services\telephony\src\com\android\phone\MobileNetworkSettings.java中，请参考进行客制化
```

## [FAQ14847] L版本全屏显示来电界面

```
HeadsUp 是 google 在 L 版本上面 PhoneStatusBar 中新增的功能.
 
而在未锁屏时来电就是通过这种方式来显示的. 从而替代了全屏显示来电界面的方式.
 
如果客户还是倾向于全屏显示来电界面. 则可以通过如下方式来单独关闭通话的 HeadsUp 功能.

File: frameworks\base\packages\SystemUI\src\com\android\systemui\statusbar\phone\PhoneStatusBar.java

/// M: turn off HeadsUp for dialer. @{ 
private final String PACKAGES_DIALER = "com.android.dialer";
/// @}

@Override
public void addNotification(StatusBarNotification notification, RankingMap ranking) {
    /// M: turn off HeadsUp for dialer. @{ 
    boolean belongsToDialer = PACKAGES_DIALER.equals(notification.getPackageName());
    if (DEBUG) {
        Log.d(TAG, "addNotification key=" + notification.getKey() +
            ", package=" + notification.getPackageName());
    }
    if (!belongsToDialer &&
    /// @}
        mUseHeadsUp && shouldInterrupt(notification)) {
        if (DEBUG) Log.d(TAG, "launching notification in heads up mode");
        Entry interruptionCandidate = new Entry(notification, null);
        ViewGroup holder = mHeadsUpNotificationView.getHolder();
        if (inflateViewsForHeadsUp(interruptionCandidate, holder)) {
            // 1. Populate mHeadsUpNotificationView
            mHeadsUpNotificationView.showNotification(interruptionCandidate);

            // do not show the notification in the shade, yet.
            return;
        }
    }

    .................................;
}
```

## [FAQ08873] 【Contacts Data】 特殊符号开头的联系人归并至“#”下

```
在PeopleActivity界面，联系人的显示位置是由其display name的第一个字符决定的。
数字开头的联系人会显示在“#”这个header下。
中英文联系人会显示在“A” 到“Z”下。
以符号开头的联系人则没有对应的header，显示在最顶部，如何修改已让它们显示在‘#’号下？
下面的方法可以将其显示在“#”下面（适用于一般ASCII编码内的符号）
 

[SOLUTION]
 JB版本：

ContactsProvider2.java (packages\providers\contactsprovider\src\com\android\providers\contacts)

getFastScrollingIndexExtras函数中如下语句：

          if (title == null) {

                    title = "";                             

                }

修改为：   if (title == null) {

                    title = "#";                                  

                }

 

KK及以后版本：

ContactLocaleUtils.java (alps\packages\providers\contactsprovider\src\com\android\providers\contacts)

修改

ContactLocaleUtilsBase内部类

 

 public int getBucketLabel(String name) {

修改以下代码

 

final int bucket = mAlphabeticIndex.getBucketIndex(name);
if (bucket < 0) {
return -1;
}

//mtk add 
if (bucket == 0) {
     return mNumberBucketIndex; // 返回mNumberBucketIndex是放在#里面，如果想放在#号后面，return mNumberBucketIndex+1
}

//mtk add end

if (bucket >= mNumberBucketIndex) {
return bucket + 1;
}
return bucket;
```

## [FAQ03603] 【Contacts Data】 SIM卡支持存储2000条联系人,MTK平台只能存储1000条

```
有以下两个原因考虑：
1.存储2000条联系人，其开机加载速度非常慢，用记体验不是很好
2.一般情况下，1000条联系人基本能满足用记需求
 
如果一定需要支持到2000条的话，因为是其modem层对这块有限制，需要对其进行修改。
 
对于有modem源码的用户，需要按以下方式对其进行修改：
   1)change modem makefile phb_sim_entry to 2000
   2)remove this limitation in the option.mak:
               ifeq ($(call gt,$(strip $(PHB_SIM_ENTRY)),1000),T)
      $(warning ERROR: PHB_SIM_ENTRY value ($(PHB_SIM_ENTRY)) of USIM projects should not be larger than 1000) 
        DEPENDENCY_CONFLICT = TRUE
    endif
 
对于没有modem源码的客户，需要提交patch request。
 
PS： 因为MTK这边只对SIM卡存储1000条联系人有过全面的测试，因此，如果打开了2000条的开关，需要自行多做测试。
```

## [FAQ03096] 【Contacts Data】 如何修改账户与同步设置下的默认设置

```
背景数据的默认值可以通过修改
ConnectivityService.java(alps\frameworks\base\services\java\com\android\server)
中的getBackgroundDataSetting函数的实现为如下：
public boolean getBackgroundDataSetting() {
    return Settings.Secure.getInt(mContext.getContentResolver(), Settings.Secure.BACKGROUND_DATA, 0) == 1;
}
这样即可修改为默认背景数据不能同步发送和接收。

自动同步的默认值如何修改？
修改SyncStorageEngine.java (alps\frameworks\base\core\java\android\content)中的
private boolean mMasterSyncAutomatically = true;
修改为
private boolean mMasterSyncAutomatically = false;
既可将自动同步的默认值设置成不勾选。
```

## [FAQ15364] [Legacy Wi-Fi] WEP长度及MTK客制化

```
添加网络，当时输入SSID，把密码设置为WEP后，当输入的密码的字符串为5、10、13、16等，“Save”亮显可以保存；输入其他位，则灰显，无法保存。
[SOLUTION]
IEEE802.11 spec 下面這段：
11.2.2 Wired equivalent privacy (WEP)
11.2.2.1 WEP overview

WEP-40 was defined as a means of protecting (using a 40-bit key) the confidentialiy of data exchanged among authorized users of a WLAN from casual eavesdropping. Implementation of WEP is optional. The same algorithms have been widely used with a 104-bit key instead of a 40-bit key in fielded implementations; this is called WEP-104. The WEP cryptographic encapsulation and decapsulation mechanics are the same whether a 40-bit or a 104-bit key is used. The term WEP by itself refers to either WEP-40 or WEP-104.

--以上设计确实是敝司在谷歌original代码上面扩展的，是为了考虑到路由器设备等在密码长度也是这个限制，这样设计是为了提醒用户所输入的密码的长度的有效性。

关于16这个长度的解释如下：
在Wikipedia 有這類的描述,
https://zh.wikipedia.org/wiki/%E6%9C%89%E7%B7%9A%E7%AD%89%E6%95%88%E5%8A%A0%E5%AF%86

WEP是1999年9月通過的IEEE 802.11標準的一部分，使用RC4（Rivest Cipher）串流加密技術達到機密性，並使用CRC-32 驗和達到資料正確性。

標準的64比特WEP使用40位元的鑰匙接上24位元的初向量（initialization vector，IV）成為RC4用的鑰匙。在起草原始的WEP標準的時候，美國政府在加密技術的輸出限制中限制了鑰匙的長度，一旦這個限制放寬之後，所有的主要業者都用104位元的鑰匙實作了128位元的WEP延伸協定。用戶輸入128位元的WEP鑰匙的方法一般都是用含有26個十六進位數（0-9和A-F）的字串來表示，每個字元代表鑰匙中的4個位元，4 * 26 = 104位元，再加上24位元的IV就成了所謂的"128位元WEP鑰匙"。有些廠商還提供256位元的WEP系統，就像上面講的，24位元是IV，實際上剩下232位元作為保護之用，典型的作法是用58個十六進位數來輸入，（58 * 4 = 232位元）+ 24個IV位元 = 256個WEP位元。

鑰匙長度不是WEP安全性的主要因素，破解較長的鑰匙需要攔截較多的封包，但是有某些主動式的攻擊可以激發所需的流量。WEP還有其他的弱點，包括IV雷同的可能性和變造的封包，這些用長一點的鑰匙根本沒有用，見stream cipher attack一頁。
```

## [FAQ13689] L版本何时需要make clean操作

```
L版本make clean何时需要执行，如何执行该命令 
[SOLUTION]
L版本中，new = clean + remake ，
如果非第一次编译，先做make clean 再做make ，相当于new 整个project,否则就是remake的操作
在涉及到project level的configuration,以及kernel的*_defconfig ，修改后要做clean:

例如： 
device/mediatek/mtxxxx/device.mk ->可以添加一些property,变量,permission等等
device/mediatek/mtxxxx/boardconfig.mk ->宏观的是否支持某个feature
device/$company/ $project/ projectconfig.mk 的修改， 
kernel menuconfig 调整了*_defconfig 文件

make clean 是清除之前编译的可执行文件以及配置文件（例如:  *.o 文件以及可执行文件 ），以及out文件夹
在修改了上面的配置文件后，如果局部编译可能会不起做用，这时，先make clean然后再make，执行命令如下：

source build/envsetup.sh
lunch full_$project-eng/userdebug/user
make clean /-pl/-lk/-kernel

make -j24   或者 make -j24 pl/lk/kernel 重新编译project 或者preloader/lk/kernel

注：除了project level 的configuration ，当需要从PRODUCT_PACKAGES里面删除一个module，也需要make  clean ，或者使用make  -B  module_name,否则无法更新system 下的module
```

## [FAQ13305] [Vibrator]LK阶段如何实现开机震动

```
描述LK阶段实现开机震动

[SOLUTION]
1.若LK mt_pmic.c中有实现vibr_Enable_HW/vibr_Disable_HW函数，
请在LK platform.c中Show Logo 之前添加对其调用。
如在platform_init()里面mboot_common_load_logo()之前添加如下代码：
-----------------------------------------
vibr_Enable_HW();//开启震动
mdelay(80); //震动80ms
vibr_Disable_HW();//关闭启震动
-----------------------------------------

2.若LK mt_pmic.c中没有实现vibr_Enable_HW/vibr_Disable_HW函数，
请按如下说明实现vibr_Enable_HW/vibr_Disable_HW函数，
然后再按上面说明在适当位置添加代码对其进行调用。
a).在LK mt_pmic.h中添加vibr_Enable_HW/vibr_Disable_HW函数申明
extern void vibr_Enable_HW(void);
extern void vibr_Disable_HW(void);
b).在LK mt_pmic.c中实现vibr_Enable_HW/vibr_Disable_HW函数
-------------------------------------------------
void vibr_Enable_HW(void)
{
xxxx_upmu_set_rg_vibr_vosel(0x5); // 0x5: 2.8V, 0x6: 3V, 0x7: 3.3V
xxxx_upmu_set_rg_vibr_en(1);
}
void vibr_Disable_HW(void)
{
xxxx_upmu_set_rg_vibr_en(0);
}
-------------------------------------------------
或者
-------------------------------------------------
void vibr_Enable_HW(void)
{
pmic_set_register_value(PMIC_RG_VIBR_VOSEL,5);// 0x5: 2.8V, 0x6: 3V, 0x7: 3.3V
pmic_set_register_value(PMIC_RG_VIBR_EN,1);
}

void vibr_Disable_HW(void)
{
pmic_set_register_value(PMIC_RG_VIBR_EN,0);
}
-------------------------------------------------

其中xxxx_upmu_set_rg_vibr_*/pmic_set_register_value表示LK upmu_common.c中提供的相应API，
如upmu_set_rg_vibr_vosel/mt6325_upmu_set_rg_vibr_vosel/mt6331_upmu_set_rg_vibr_vosel等。
```

## [FAQ15337] Email物理按键弹出菜单字体看不清楚

```
1、进入email 收件箱；
2、点物理按键menu，弹出的菜单显示字体是白色，背景是灰色，无法看清内容，如下图：

这个问题是因为该Activity使用了Android support v7 的actionbar导致的。原因是support v7 的actionbar style与L风格不一致。
可以通过如下方法解决。
在/packages/apps/Email/UnifiedEmail/res/values/themes.xml，约41行，增加一行style 的 item，如下：
<style name="UnifiedEmailTheme.Appcompat.Toolbar" parent="@style/Theme.AppCompat.Light.NoActionBar">
    ......
    <item name="panelMenuListTheme">@style/ThemeOverlay.AppCompat.Light</item>
</style>
另外，Google 在Android 5.0之后，已经禁止设备使用硬件的Menu，不然会有很多UI显示问题。
```

## [FAQ15326] [VP]默认播放器播放视频添加快进快退功能

```
默认的视频播放器只有在op02(联通)的项目默认会有快进快退的功能，若在其他项目上也需要添加快进快退功能，请参考如下方法
[SOLUTION]

Step1：添加RewindAndForward.java到alps\packages\apps\Gallery2\src\com\mediatek\gallery3d\video目录下；每次快进快退的默认时间是：3S
RewindAndForward.java文件请从如下路径下拷贝：
alps\vendor\mediatek\proprietary\operator\op02\packages\apps\plugins\src\com\mediatek\gallery3d\plugin\，并需要把该文件的包名改一下：
package com.mediatek.gallery3d.plugin;
修改为：
package com.mediatek.gallery3d.video; 

Step2：添加drawble：
alps\packages\apps\Gallery2\res\drawable\下添加:  icn_media_forward,xml  ,  icn_media_stop.xml ,   icn_media_rewind.xml
文件来源路径：
alps/vendor/mediatek/proprietary/operator/OP02/packages/apps/Plugins/res/drawable
drawable-hdpi等资源文件下添加：ic_menu_disable_forward.png  ,  ic_menu_disable_rewind.png ,  ic_menu_disable_stop.png ,  ic_menu_rewind.png ,  ic_menu_forward.png,  ic_menu_stop.png

文件来源路径：
alps/vendor/mediatek/proprietary/operator/OP02/packages/apps/Plugins/res/drawable-hdpi
alps/vendor/mediatek/proprietary/operator/OP02/packages/apps/Plugins/res/drawable-mdpi
alps/vendor/mediatek/proprietary/operator/OP02/packages/apps/Plugins/res/drawable-xhdpi
alps/vendor/mediatek/proprietary/operator/OP02/packages/apps/Plugins/res/drawable-xxhdpi
alps/vendor/mediatek/proprietary/operator/OP02/packages/apps/Plugins/res/drawable-xxxhdpi

Step3：修改alps\packages\apps\Gallery2\ext\src\com\mediatek\gallery3d\ext\DefaultMovieExtension.java中的getRewindAndForwardExtension()方法如下： 

public IRewindAndForwardExtension getRewindAndForwardExtension(){
     //return new DefaultRewindAndForwardExtention();//default code
     MtkLog.d(TAG,”new RewindAndForward()”; //added by MTK
     return new RewindAndForawrd(mContext); //added by MTK
}
```

## [FAQ15297] [Audio FTM]如何用adb shell命令实现Loopback测试

```
如何用adb shell命令实现Loopback测试

请先看这些定义，后面的命令需要用到.
enum loopback_t {
    NO_LOOPBACK                                 = 0,
    // AFE Loopback
    AP_MAIN_MIC_AFE_LOOPBACK                    = 1,
    AP_HEADSET_MIC_AFE_LOOPBACK                 = 2,
    AP_REF_MIC_AFE_LOOPBACK                     = 3,
    AP_3RD_MIC_AFE_LOOPBACK                     = 4,
    // Acoustic Loopback
    MD_MAIN_MIC_ACOUSTIC_LOOPBACK               = 21,
    MD_HEADSET_MIC_ACOUSTIC_LOOPBACK            = 22,
    MD_DUAL_MIC_ACOUSTIC_LOOPBACK_WITHOUT_DMNR  = 23,
    MD_DUAL_MIC_ACOUSTIC_LOOPBACK_WITH_DMNR     = 24,
    MD_REF_MIC_ACOUSTIC_LOOPBACK                = 25,
    MD_3RD_MIC_ACOUSTIC_LOOPBACK                = 26,
};

enum loopback_output_device_t {
    LOOPBACK_OUTPUT_RECEIVER = 1,
    LOOPBACK_OUTPUT_EARPHONE = 2,
    LOOPBACK_OUTPUT_SPEAKER  = 3,
};

输入adb shell进入控制台，然后输入AudioSetParam进行loopback测试。
C:\Documents and Settings\mtk03996>adb shell 

root@demo95v2:/ # AudioSetParam

please enter command, ex: 'GET_XXX_ENABLE', 'SET_XXX_ENABLE=0', 'SET_XXX_ENABLE=1', and '0' for exit

SET_LOOPBACK_TYPE=1,3   //1,3表示从main mic -> Speaker的loopback测试。(1,3请参考第1点中的定义，这里可自由组合，这里只是举个例子)
SET_LOOPBACK_TYPE=1,3

please enter command, ex: 'GET_XXX_ENABLE', 'SET_XXX_ENABLE=0', 'SET_XXX_ENABLE=1', and '0' for exit
SET_LOOPBACK_TYPE=0
SET_LOOPBACK_TYPE=0

please enter command, ex: 'GET_XXX_ENABLE', 'SET_XXX_ENABLE=0', 'SET_XXX_ENABLE=1', and '0' for exit
0
0
root@demo95v2:/ #
```

## [FAQ15099] [BT]如何用meta工具修改蓝牙名称

```
1，连上meta
2，选择nvram editor
3，选择other LID -> NVRAM_EF_BT_SYS_INFO_LID
4，按下read from nvram
6，从第五个字节开始修改（nvram_ef_bt_sys_info[4]）
7，按下save to nvram保存就可以了。
 
再用其他设备搜索就可以看到蓝牙名称修改成功了。
```

## [FAQ15310] 睡眠后短按pwrkey偶现点亮不了屏幕（唤醒系统）

```
使用PMIC 6323的平台，诸如MT6582/72等，偶现深度睡眠后，短按pwrkey键无法点亮屏幕的情况。通过查看log可发现，短按pwrkeyu时，并没有上报key press。
[SOLUTION]
针对以上问题，可采用以下两种优化方法（可单独使用也可一起使用）：
1.上层修改
下面从Framework的角度给一个workaround的方法： 
在/frameworks/base/policy/src/com/android/internal/policy/impl/PhoneWindowManager.java中添加一个变量标记是否按下power key： 
Private Boolean isPressedPwrkey; 

然后在public int interceptKeyBeforeQueueing(KeyEvent event, int policyFlags)方法中添加以下代码： 
// Handle special keys. 
switch (keyCode) { 
    case KeyEvent.KEYCODE_POWER: {
        result &= ~ACTION_PASS_TO_USER;
        isWakeKey = false; // wake-up will be handled separately
        if (down) {
            isPressedPwrkey = true;
            interceptPowerKeyDown(event, interactive);
        } else {
            If(!isPressedPwrkey && !isScreenOn(){
               interceptPowerKeyDown(event, interactive);
               isPressedPwrkey = true;
            }
            interceptPowerKeyUp(event, interactive, canceled);
        }
        break;
} 

2.driver层修改 
在pmic_mt6323.c中创建一个全局变量keyispressed，在函数pwrkey_int_handler中作如下逻辑判断：如果按键未被按下的情况下，收到release，先上报press再上报release. 
if (upmu_get_pwrkey_deb()==1)  { 
…… 
if（keyispressed==false）           //add 
{ 
kpd_pwrkey_pmic_handler(0x1);  //add 
} 
kpd_pwrkey_pmic_handler(0x0); 
…… 
keyispressed=false;  //add 
} 
Else 
{ 
…… 
keyispressed=true ；//add 
}
```

## [FAQ15313] How to close the scan function started by framework

```
we can enter linux environment, and use adb cmd to stop scan function.

adb shell am broadcast -a com.mtk.stopscan.activated // stop scan
adb shell am broadcast -a com.mtk.stopscan.deactivated // start scan
ps: the method is onlu used to stop scan function started by framework.
```

## [FAQ15258] [Audio App] 如何将 soundrecorder 改为 wav 格式录音

```
soundrecorder 默认是录 3gpp 格式，如果需要改成 wav 格式录音

需要在录音的时候对 mediarecord 调用下面几个方法：
MediaRecorder mr = new MediaRecorder();
mr.setAudioEncoder(MediaRecorder.AudioEncoder.PCM); //设为 wav 编码
mr.setOutputFormat(MediaRecorder.OutputFormat.OUTPUT_FORMAT_WAV); //设为 wav 对应的 format

默认的录音是在 Recorder.java (soundrecorder 包里面) 的 
private boolean initAndStartMediaRecorder(Context context, RecordParams recordParams, int fileSizeLimit) 
方法里面设置的，请自行改一下

再改一下后缀名为 .wav 就好了, 在如下方法中修改，加入 "// add this line" 行
private boolean createRecordingFile(String extension) {
LogUtils.i(TAG, "<createRecordingFile> begin");
extension=".wav"; // add this line
String myExtension = extension + SAMPLE_SUFFIX;
```

## [FAQ14327] [Audio framework] L 及之后版本首次开机截屏无声音

```
1：status_t Sample::doLoad() 方法内 error 段改为：
error:
mState = ERROR;//add this line
mHeap.clear();
return status;

2: soundpool.h 中，加入 ERROR 态定义
enum sample_state { UNLOADED, LOADING, READY, UNLOADING, ERROR };
 
3: play 方法加入如下修改
int SoundPool::play(int sampleID, float leftVolume, float rightVolume,
int priority, int loop, float rate)
in /frameworks/av/media/libmedia/SoundPool.cpp

add lines wrapped in dismissed lines:

int SoundPool::play(int sampleID, float leftVolume, float rightVolume,
int priority, int loop, float rate)
{
ALOGV("play sampleID=%d, leftVolume=%f, rightVolume=%f, priority=%d, loop=%d, rate=%f",
sampleID, leftVolume, rightVolume, priority, loop, rate);
sp<Sample> sample;
SoundChannel* channel;
int channelID;

Mutex::Autolock lock(&mLock);

if (mQuit) {
return 0;
}
// is sample ready?
sample = findSample(sampleID);//reference line

//add begin
if(sample != 0){
int LoopCounter = 5;
while(LoopCounter-- > 0 && (sample->state() != Sample::READY) && (sample->state() != Sample::ERROR )){
ALOGD("wait for sample ready, sleep 100ms");
usleep(100 * 1000);
}
}//add end
```

## [FAQ15283] [Audio Driver] 手机放音乐时连接音箱, 将音箱音量调到最大时，音乐暂停

```
手机放音乐时连接音箱, 将音箱音量调到最大时，音乐会自动暂停
原因是：HPL上信号过大导致EINT拉高产生了耳机拨出讯号，所以音乐会自动暂停掉
```

## [FAQ15254] [Audio Driver] Audio 寄存器打印不完整怎么办

```
ALSA 架构 Audio 寄存器打印不完整怎么办?
[SOLUTION]
mt_soc_machine.c 中 mt_soc_debug_read函数
const int size=4096;
char buffer[size];
如果寄存器打印出来后面的不完整,那可能是buffer size越界了.
可以将size增大,如size=8192;
```

## [FAQ15286] 关闭EDGE以后 手机界面仍然显示E

```
手机界面显示的E是指示手机当前驻留的2G 小区 具备支持EDGE的能力， 不代表手机自身仍然支持EDGE
换句话说 手机界面显示E，也不应理解为手机的EDGE功能没有关闭

正确的确认手机自身是否支持EDGE 是需要从MTK MD log 中 空口信令 attach req中解析

观察是否携带 EGPRS multislot class:
若以下字段为0，则表示不支持EDGE
EGPRS multislot class: Bits are not available (0)

我司关闭edge的方法可以参考： [FAQ14048]如何关掉EDGE功能
```

## [FAQ05818] 如何默认打开或者关闭TagLog

```
Eng版本TagLog默认打开，user版本TagLog默认关闭。

1.可通过修改\alps\mediatek\external\xlog\tools\目录下的mtklog-config-eng.prop和mtklog-config-user.prop文件（分别对应eng和user load）设定
taglog是否默认开启，在文件的最后一段添加上以下描述：
com.mediatek.log.taglog.enabled = false/true

如果没有添加以上描述，则默认在eng load上开启，在user load上关闭。
注：L版本该文件路径为\alps\vendor\mediatek\proprietary\external\xlog\tools

2.Eng/User版本均可以进入工程模式手动打开/关闭Taglog，方法如下：
拨*#*#3646633#*#* -> EngineerMode -> TagLog -> Start TagLog，勾选时表示打开，否则表示关闭。

TagLog功能简述：FAQ03748
```

## [FAQ15156] Caused by: java.lang.ClassNotFoundException的解决办法

```
经常会发生三方apk出现ClassNotFoundException的异常，这个异常在android开发中无非就是告诉你类没有找到，那么什么原因导致没找到呢？这里会介绍几种发生场景供排除。

ClassNotFoundException形如：
Caused by: java.lang.ClassNotFoundException: Didn't find class "com.iflytek.inputmethod.FlyApp" on path: DexPathListlib

[SOLUTION]
一般分为以下几种情况：

1、(常见)L版本上打开WITH_DEXPREOPT := true之后，预置apk的android.mk的配置不准确，导致32bit和64bit的兼容性问题，找不到对应apk的odex，自然就发生ClassNotFoundException，属于配置问题。

log形如：
Caused by: java.io.IOException: Failed to open oat file from /system/priv-app/ShanYao_StaticTimeWallpaper/arm64/ShanYao_StaticTimeWallpaper.odex (error Failed to open oat filename for reading: No such file or directory) (no dalvik_cache availible) and relocation failed.

【Solution】: 参考“[FAQ14102]L版本开机提示“Android正在升级或启动””第一点进行配置。

2、(常见)启动activity的时候，在AndroidManifest.xml中虽然有注册activity但是code中并没有定义，或者说activity的包名或者名字写错了。属于apk方问题。

【Solution】: 检查AndroidManifest.xml和code对应的class。

3、odex文件损坏，这一般是由于系统硬件问题，比如emmc不稳定，导致类似framwork.jar包被破坏。属于硬件问题。

【Solution】: 从损坏角度出发考量，检查硬件是否稳定。

4、L版本上FOTA/OTA升级后或一些特殊场景下会发生一类特殊的ClassNotFoundException，属于系统方问题。

log形如：
Caused by: java.io.IOException: Failed to remove obsolete file from /data/dalvik-cache/arm/data@app@com.handsgo.jiakao.android-1@base.apk@classes.dex when searching for dex file /data/app/com.handsgo.jiakao.android-1/base.apk: Permission denied

【Solution】参考：“[FAQ14893]FOTA/OTA之後启动第三方APP出現APP Crash”


5、在项目中重新定义了init.rc，但没有加入/system/framework/**.jar，这样会将类似mediatek\config\mt6595\init.rc覆盖，因此找不到**.jar。属于配置问题。

6、使用的class，是一个外部的JAR包，当在工程中编译使用时，发布成APK并没有包含JAR文件，所以APK在执行的时候就找不到JAR文件，也会报错。属于apk方问题。

7、使用了重复的类库，且版本不一致，导致低版本的被优先使用。此时应删除重复的类库，只保留最新的。属于apk方新旧版本问题。
```

## [FAQ11919] 【缅甸语专项】设置--日期和时间--设置日期和时间，弹出的对话框里面，默认日期或者时间看不到

```
【缅甸语专项】设置--日期和时间--设置日期和时间，弹出的对话框里面，默认日期或者时间看不到，拖动下又出来了。
 
[SOLUTION]
 
请修改 NumberPicker.java (path: \frameworks\base\core\java\android\widget\NumberPicker.java).

修改如下:
修改NumberPicker.java裡面的 filter() method:
=== 將原本的 ===
    CharSequence filtered = super.filter(source, start, end, dest, dstart, dend);
    if (filtered == null) {
        filtered = source.subSequence(start, end);
    }
=== 修改為:(中間插入一段code) ===
    CharSequence filtered = super.filter(source, start, end, dest, dstart, dend);
    if (filtered != null) {
        int i;
        for (i = start; i < end; i++) {
            if (!Character.isDigit(source.charAt(i))) {
                break;
            }
        }
        if (i == end) {
            /// the characters in source are all digit.
            filtered = null;
        }
    }
    if (filtered == null) {
        filtered = source.subSequence(start, end);
    }
```

## [FAQ10820] 针对某个APK，需要做到wifi/gprs分别做到允许/禁止两种策略

```
JB5开始已经default有这部分代码，只需要参照该FAQ后面的使用说明和方法调用即可。
JB5之前的版本，可以按照下面完整的solution进行操作
[SOLUTION]
1.NetworkManagementService.java
    public void setFirewallUidChainRule(int uid, int networkType, boolean allow) {
        //enforceSystemUid();
        final String MOBILE = "mobile";
        final String WIFI = "wifi";

        final String rule = allow ? ALLOW : DENY;
        final String chain = (networkType == 1) ? WIFI : MOBILE;
        
        try {
            mConnector.execute("firewall", "set_uid_fw_rule", uid, chain, rule);
        } catch (NativeDaemonConnectorException e) {
            throw e.rethrowAsParcelableException();
        }
    }
    
    /**
     * @internal Configure firewall rule by uid and chain
     * @hide
     */
    public void clearFirewallChain(String chain) {
        //enforceSystemUid();
        try {
            mConnector.execute("firewall", "clear_fw_chain", chain);
        } catch (NativeDaemonConnectorException e) {
            throw e.rethrowAsParcelableException();
        }
    }    
}
2.CommandListener.cpp中
1)最后一个类FirewallCmd的runCommand方法的
    cli->sendMsg(ResponseCode::CommandSyntaxError, "Unknown command", false);
    return 0;
之前加上
    if (!strcmp(argv[1], "set_uid_fw_rule")) {
        if (argc != 5) {
            cli->sendMsg(ResponseCode::CommandSyntaxError,
                         "Usage: firewall set_uid_fw_rule <uid> <mobile|wifi> <allow|deny>",
                         false);
            return 0;
        }

        int uid = atoi(argv[2]);
        FirewallChinaRule chain = parseChain(argv[3]);
        FirewallRule rule = parseRule(argv[4]);

        int res = sFirewallCtrl->setUidFwRule(uid, chain, rule);
        return sendGenericOkFail(cli, res);
    }

    if (!strcmp(argv[1], "clear_fw_chain")) {
        if (argc != 3) {
            cli->sendMsg(ResponseCode::CommandSyntaxError,
                         "Usage: firewall clear_fw_chain <chain>",
                         false);
            return 0;
        }

        const char* chain = argv[2];
        
        int res = sFirewallCtrl->clearFwChain(chain);
        return sendGenericOkFail(cli, res);
    }   
2)以下两个数组改成如下;
static const char* FILTER_INPUT[] = {
        // Bandwidth should always be early in input chain, to make sure we
        // correctly count incoming traffic against data plan.
        BandwidthController::LOCAL_INPUT,
// mtk03594: Support enhanced firewall @{
        FirewallController::FIREWALL,
///@}
        FirewallController::LOCAL_INPUT,
        NULL,
};
static const char* FILTER_OUTPUT[] = {
        OEM_IPTABLES_FILTER_OUTPUT,
// mtk03594: Support enhanced firewall @{
        FirewallController::FIREWALL,
///@}
        FirewallController::LOCAL_OUTPUT,
        BandwidthController::LOCAL_OUTPUT,
        NULL,
};
3) 添加下面这个数组
static const char* FILTER_FIREWALL[] = {
        FirewallController::FIREWALL_MOBILE,
        FirewallController::FIREWALL_WIFI,
        NULL,
};

4) CommandListener.cpp的构造函数CommandListener::CommandListener() :的
    createChildChains(V4, "nat", "PREROUTING", NAT_PREROUTING);
    createChildChains(V4, "nat", "POSTROUTING", NAT_POSTROUTING);

    // Let each module setup their child chains
    setupOemIptablesHook();
后添加
createChildChains(V4V6, "filter", "firewall", FILTER_FIREWALL);


3.FirewallController.cpp里
1)加上以下两个函数
int FirewallController::setUidFwRule(int uid, FirewallChinaRule chain, FirewallRule rule) {
    char uidStr[16];
    char cmdStr[128];
    int res = 0;
    const char* op;
    const char* fwChain;

    sprintf(uidStr, "%d", uid);

    if (rule == ALLOW) {
        op = "-I";
    } else {
        op = "-D";
    }

    if(chain == MOBILE) {
        fwChain = "mobile";
    }else{
        fwChain = "wifi";
    }

    res |= execIptables(V4, op, fwChain, "-m", "owner", "--uid-owner", uidStr,
            "-j", "REJECT", "--reject-with", "icmp-net-prohibited", NULL);
    res |= execIptables(V6, op, fwChain, "-m", "owner", "--uid-owner", uidStr,
            "-j", "REJECT", "--reject-with", "icmp6-adm-prohibited", NULL);

    return res;    
}

int FirewallController::clearFwChain(const char* chain) {
    int res = 0;

    if(chain != NULL){
        if(strlen(chain) > 0){
            res |= execIptables(V4V6, "-F", chain, NULL);
        }else{
            ALOGD("Clear all chain");
            res |= execIptables(V4V6, "-F", NULL);
        }
    }else{
        ALOGE("Chain is NULL");
    }

    return res;
}
2).FirewallController.cpp文件里面添加
const char* FirewallController::FIREWALL = "firewall";
3).FirewallController.cpp文件下面这个方法改成如下;
int FirewallController::setupIptablesHooks(void) {

    // mtk03594: Support enhanced firewall @{
    int res = 0;
    res |= execIptables(V4V6, "-F", FIREWALL, NULL);
    res |= execIptables(V4V6, "-A", FIREWALL, "-o", "ppp+", "-j", FIREWALL_MOBILE, NULL);
    res |= execIptables(V4V6, "-A", FIREWALL, "-o", "ccmni+", "-j", FIREWALL_MOBILE, NULL);
    res |= execIptables(V4V6, "-A", FIREWALL, "-o", "ccemni+", "-j", FIREWALL_MOBILE, NULL);
    res |= execIptables(V4V6, "-A", FIREWALL, "-o", "usb+", "-j", FIREWALL_MOBILE, NULL);
    res |= execIptables(V4V6, "-A", FIREWALL, "-o", "cc2mni+", "-j", FIREWALL_MOBILE, NULL);
    res |= execIptables(V4V6, "-A", FIREWALL, "-o", "wlan+", "-j", FIREWALL_WIFI, NULL);
    //@}
    
    return 0;
}

4.FirewallController.h里
加上以下两个函数定义
    int setUidFwRule(int, FirewallChinaRule, FirewallRule);
    int clearFwChain(const char* chain);
JB5开始的版本可以从此开始进行修改：
完成以上代码添加后，可以在相应的APK里采用以下步骤使用添加的这些接口：
１．在相关的文件里import并且定义及获得NetworkManagementService
　　　　import android.os.INetworkManagementService;
　　　　private INetworkManagementService mNetworkService;
        mNetworkService = INetworkManagementService.Stub.asInterface(
                ServiceManager.getService(Context.NETWORKMANAGEMENT_SERVICE));

2.调用mNetworkService.setFirewallUidChainRule　or mNetworkService.clearFirewallChain设置和清空相应的APP的限制即可．

PS:1.每次重新开机，其Iptable都会被清空，如果下次重新开机时，需要重新下一遍command
     2.setFirewallUidChainRule这个方法,针对同一个AP其allow和deny要成对出现
     如果是要禁止掉某个APP访问网络的话，应该是要下allow,而不是下deny，deny是不禁止，allow是允许禁止
     clearFirewallChain是重置规则,一般在APK reset的时候使用,它里面传的参数可以为wifi 或者mobile
```

## [FAQ04537] 如何修改Kernel Log Buffer的大小？

```
我们采用可以增大kernel log buffer的方法来避免ring buffer的循环覆盖发生。
 
1. 修改文件如下，其中${ARM}为arm或者arm64，根据架构不同选择不用的目录，${PROJECT}指代具体的项目名称。
ENG: alps/kernel/arch/${ARM}/configs/${PROJECT}_debug_defconfig
USER: alps/kernel/arch/${ARM}/configs/${PROJECT}_defconfig
 
修改位置如下：
CONFIG_LOG_BUF_SHIFT=17
将其中的数值17修改为19或者更大，如：
CONFIG_LOG_BUF_SHIFT=19
 
17表示2^17=128KB, 18表示2^18=256KB, 以此类推。但是最大支持的值为21，即2MB buffer。
 
2. 修改后需要重新build kernel并重新生成boot image
$source build/envsetup.sh && lunch
$mmm kernel-3.10:clean-kernel -j8
$mmm kernel-3.10:kernel -j8
$make bootimage-nodeps -j8
 
3. 重新download boot.img即可。
```

## [FAQ12271] [USB]如何修改内置光盘中的内容(BICR, CD-ROM, ISO)

```
BICR 内置光盘 CD-ROM ISO
 
在制作光盘ISO文件时设定需要的文件，然后将制作好的ISO文件放置于 alps/system/mobile_toolkit/ 下即可。
 
其他相关可能的客制化，也可以参考如下FAQ：
FAQ05690 [USB] How to add ISO files into BICR?
FAQ04856 [USB名称修改系列]第4项-如何修改BICR在PC"我的电脑"中显示的label名称
```

## [FAQ10612] 【USB名称修改系列】第15项-如何修改USB设备在控制面板中显示的名称

```
可以在 kernel\drivers\usb\gadget\Android.c 中修改如下红色字段为所需显示的字段
#define PRODUCT_STRING "MT65xx Android Phone"
```

## [FAQ05354] 如何在preloader、uboot、lk、kernel中预置obj文件

```
如何在preloader、uboot、lk、kernel中预置obj文件.docx 
```

## [FAQ02684] [SP FlashTool、SP Multiportdownload Tool]客制化实现下载完成后自动开机

```
一、flashtool:
BCB版本的FlashTool：
1. 修改version.cpp
static const bool          CUSTOMER_VER     = false;
 
2. 修改tboot_1.cpp
//---------------------------------------------------------------------------
int tboot_1::ArgFlashToolWatchDog(FlashTool_EnableWDT_Arg *p_wdt_arg) {
    assert(NULL != p_wdt_arg);
    memset(p_wdt_arg, 0, sizeof(FlashTool_EnableWDT_Arg));
    //timeout to reset bootRom
    p_wdt_arg->m_timeout_ms = 5000;
    p_wdt_arg->m_async = _FALSE;
    p_wdt_arg->m_reboot = _FALSE // _TRUE;=>_FALSE 
    return 0;
}
 
QT版本的Flashtool:
1. 修改version.cpp
static const bool          CUSTOMER_VER     = false;
 
2. 修改WatchDogCommand.cpp
//---------------------------------------------------------------------------
void WatchDogCommand::ArgFlashToolWatchDog(FlashTool_EnableWDT_Arg *p_wdt_arg) {
     memset(wdt_arg, 0, sizeof(FlashTool_EnableWDT_Arg));
     wdt_arg->m_timeout_ms = 3000;
     wdt_arg->m_async = _FALSE;
     wdt_arg->m_reboot = _FALSE;
}
二、SP Multiportdownload Tool:
1，将SPMultiPortFlashDownloadProject.ini中的ForceWatchdogReset改为yes。
2，工具界面的EnableAutoPulling不能勾选。
 
注意：
MTK official release的tool不会开启这个feature.
产线tool也请不要开启这个功能, 会导致重启usb 枚举可能会受影响.
```

## [FAQ04080] 如何消除Phone模块导入Eclipse后产生的错误

```
一般来说，alps工程中的系统应用导入Eclipse后一般都会有很多编译错误，下面我们会以Phone模块为例来说明如何消除这些编译错误，方面我们使用Eclipse进行开发与debug。
[SOLUTION]
1、 将alps中的系统应用取出，例如我们取出./alps/package/apps/Phone/，在Eclipse中新建一个Android Project，将之前取出的Phone模块导入，然后我们就会发现有很多编译错误：
2、 由于Google原生SDK中android.jar的限制，我们需要继续添加一些jar文件参与编译解决编译错误。在我们编译整个alps工程时，其实我们需要的jar文件已经产生，路径为：
a) alps/out/target/common/obj/JAVA_LIBRARIES/framework_intermediates/classes.jar
b) alps/out/target/common/obj/JAVA_LIBRARIES/core_intermediates/classes.jar
c) alps/out/target/common/obj/JAVA_LIBRARIES/ext_intermediates/classes.jar
将以上三个jar文件分别重命名为framework.jar\core.jar\ext.jar，然后导入之前Eclipse建立的工程中：

查看一下效果，看看是否还有编译错误。
这里建议将SDK自带的android.jar删除，因为它会被优先编译，导致编译错误。
3、如果还有错误，可能是还要依赖其他的.java，将这些 .java 文件（.aidl / .java）copy 过来一起编译即可，这里注意package name要用对。
4、若是有发现API level的的编译错误，可以尝试使用在工程上右键---Android Tools---Clear Lint Markers来尝试忽略。这样编译错误就基本清理完毕。

注意事项：
Android 4.1之后的版本，Google开始对framework做拆分，例如有可能还需要加入secondary-framework.jar/telephony-common.jar等。可以仿照以上方式将需要的jar档导入即可
```

## [FAQ11803] [USB]修改USB存储在PC"我的电脑"中显示的label名称，如何解决label中的小写字母全部变成大写字母的问题？

```
按照FAQ04906修改了USB存储在PC"我的电脑"中显示的label名称，代码中label名称由大小写字母组成，但是电脑端的显示全部变成了大写字母，比如新增的format()函数参数  -L  “AAbbCC"，但连接电脑显示的却是“AABBCC"。如何实现在电脑端的显示为实际的 “AAbbCC"？

[KEYWORD]
USB存储 PC"我的电脑" label名称 小写字母 大写字母

[SOLUTION]

请这样修改：
system/core/toolbox/newfs_msdos.c
static void
mklabel(u_int8_t *dest, const char *src) {
    int c, i;
    for (i = 0; i < 11; i++) {
    c = *src ? toupper(*src++) : ' '; //将此处toupper注释掉
    *dest++ = !i && c == '\xe5' ? 5 : c;
    }
}
```

## [FAQ12212] [USB名称修改系列] 如何修改USB MTP模式下，“设备与打印机”中Model项的显示？

```
修改kernel/drivers/usb/gadget/f_mtp.c
 
static struct usb_string mtp_string_defs[] = {
 /* Naming interface "MTP" so libmtp will recognize us */
 [INTERFACE_STRING_INDEX].s = "MTP", //修改此处
 {  }, /* end of list */
};
```

## [FAQ11787] [USB] KK user版本使用adb会提示error: device offline

```
KK user版本需要
1.检查adb版本是1.0.31
2.操作UI 点选弹出的框 OK
才可以使用。

原因是由于google升级SDK，将adb升级加入权限导致。您可以参考以下链接： 
The reason to appearing "device offline" in android 4.2.2 is that android has a security feature in 4.2.2 that create a whitelist of usb ports that can be used as debugging port.
After plugging deivce in usb and entering the command "adb devices" a popup window will be raised in your device and ask you to accept the connection:

After accepting RSA fingerprint of you usb you can now issue the "adb devices" again and see the device is no longer offline,
If you dont see the popup window, the reason is your adb version is old, your adb version must ne at least 1.0.31 (you can see the version using the command "adb version").

http://stackoverflow.com/questions/15079211/android-4-2-2-device-offline
```

## [FAQ04354] 一些查看内存状况的adb command

```
请参考下面的1)2)3)抓取对应的信息，若需要MTK协助，请提供下面的信息，并将mtklog文件夹也一并附上

1) Use adb shell cat /proc/meminfo to calculate the free memory, as usual the free memory is  MemFree + cached
taking the follow example, te free memory is 5616K + 158632K
cat proc/meminfo
MemTotal:         483724 kB
MemFree:            5616 kB
Buffers:            2732 kB
Cached:           158632 kB
SwapCached:            0 kB
Active:           277336 kB
Inactive:          83232 kB
Active(anon):     197452 kB
Attention，in the phone menu setting->apps->running app, the free memory is MemFree + cached + background running app memory - SECOND_SERVER_MEM，you can refer to the follwoing for details：the function void refreshUi(boolean dataChanged) in RunningProcessView.java(/alps/package/apps/settings/src/com/android/setting/applications) (Related FAQ09452How to calculate cached free memory?)

2) Use adb shell procrank (Just ENGload) to find which process consume most memory, please refer to PSS

adb shell procrank
PID      Vss      Rss      Pss      Uss  cmdline
476   65312K   65284K   38499K   35560K  com.android.launcher
268   54916K   54880K   30001K   27000K  system_server
110   32196K   28988K   18924K   12432K  /system/bin/surfaceflinger
347   42400K   42320K   15445K   10704K  com.android.systemui


3) For the process in 2) who consume most memory， use adb shell showmap [pid] (Just ENG load) to more details.  Take system_server for example， first get the pid by adb shell ps system_server:
adb shell ps system_server
USER     PID   PPID  VSIZE  RSS     WCHAN    PC         NAME
system    268   111   406736 54876 ffffffff 400e9c70 S system_server

Then  adb shell showmap 268 to find every .so and heap, stack memory consume.  Refer to the PSS
adb shell showmap 268
virtual                     shared   shared  private  private
size      RSS      PSS    clean    dirty    clean    dirty    # object
-------- -------- -------- -------- -------- -------- -------- ---- ------------------------------
72       20       20        0        0       20        0    1 /data/dalvik-cache/system@app@SettingsProvider.apk@classes.dex
352      148      103       32       16       48       52   18 /data/dalvik-cache/system@framework@android.policy.jar@classes.dex
1348       28        8       20        0        8        0    1 /data/dalvik-cache/system@framework@apache-xml.jar@classes.dex
956       60       13       52        0        8        0    1 /data/dalvik-cache/system@framework@bouncycastle.jar@classes.dex
24        8        0        8        0        0        0    1 /data/dalvik-cache/system@framework@core-junit.jar@classes.dex
3292     1056      126     1012        0       44        0    1 /data/dalvik-cache/system@framework@core.jar@classes.dex


其它内存相关FAQ，欢迎访问
FAQ04223如何查看Modem/Kernel/FrameBuffer的Footprint?
FAQ04354内存不足时查看内存使用情况的一些adb command
FAQ07759如何查看当前项目的physical memory layout
FAQ07760如何查看当前项目的virtual memory layout
FAQ09452手机cached free memory(剩余内存)计算方法
FAQ09454如何计算开机之后留给Linux Kernel可用的总内存
FAQ09456zram(内存压缩)介绍
FAQ10389如何关闭 zram/swap功能
```

## [FAQ09454] 如何计算开机之后留给Linux Kernel可用的总内存

```
众所周知，RAM的layout里面会包含modem 以及 framebuffer部分，那如何计算剩余留给Linux kernel的内存呢？

[SOLUTION]
请首先抓一份开机的uart log

1、搜索“available”，你会看到Memory:xxxxx/xxxxx available，这个xxxxx就是linux kernel可用总内存
[    0.000000]-(0)[0:swapper]Memory: 954092k/954092k available, 27924k reserved, 467968K highmem

2、如何计算的呢？
1) 搜索“PHY layout”，得到total ram size，modem size，以及framebuffer size
[    0.000000]-(0)[0:swapper][PHY layout]avaiable DRAM size = 0x40000000
[    0.000000]-(0)[0:swapper][PHY layout]FB       :   0xbfb00000 - 0xc0000000  (0x00500000)
[    0.000000]-(0)[0:swapper][PHY layout]MD       :   0xbc000000 - 0xbe000000  (0x02000000)
[    0.000000]-(0)[0:swapper][PHY layout]MD       :   0xba000000 - 0xbbc00000  (0x01c00000)
2) memory avaliable = total ram size - (modem size + framebuffer size + reserved)
        = 0x40000000 - (0x02000000 +0x01c00000 + 0x00500000 + 27924k  )
        //本例有两个modem
        = 954092k
其它内存相关FAQ，欢迎访问
FAQ04223如何查看Modem/Kernel/FrameBuffer的Footprint?
FAQ04354内存不足时查看内存使用情况的一些adb command
FAQ07759如何查看当前项目的physical memory layout
FAQ07760如何查看当前项目的virtual memory layout
FAQ09452手机cached free memory(剩余内存)计算方法
FAQ09456zram(内存压缩)介绍
```

## [FAQ09452] 手机cached free memory(剩余内存)计算方法

```
计算方法请参考：RunningProcessView.java(/alps/packages/apps/settings/src/com/android/setting/applications)里面的void refreshUi(boolean dataChanged)接口：
1、首先获取 /proc/meminfo信息
2、availMem = mMemInfoReader.getFreeSize() + mMemInfoReader.getCachedSize()
                - SECONDARY_SERVER_MEM; (因为不同平台，不同配置SECONDARY_SERVER_MEM会不同，如果想确定该值具体大小，建议您在这边自行加log打印该值)
3、 mLastAvailMemory = availMem;
      long freeMem = mLastAvailMemory + mLastBackgroundProcessMemory;
 
4、freeMem即为可用内存，已用内存即为meminfo.total - freeMem
 
所以，这里会包含background process占据的内存
 
其它内存相关FAQ，欢迎访问
FAQ04223 如何查看Modem/Kernel/FrameBuffer的Footprint?
FAQ04354 内存不足时查看内存使用情况的一些adb command
FAQ07759 如何查看当前项目的physical memory layout
FAQ07760 如何查看当前项目的virtual memory layout
FAQ09454 如何计算开机之后留给Linux Kernel可用的总内存
FAQ09456 zram(内存压缩)介绍
```

## [FAQ09456] zram(内存压缩)介绍

```
下面是对Zram(内存压缩)一个简单介绍:
1. zram 又称内存压缩，Linux kernel会把不常用的内存进行压缩，以换出更多的内存供系统使用
    -- 平时空闲时候会做压缩，以备不时之需
    -- kernel 申请不到内存，会触发压缩机制
 
2. 只有user process的内存可被压缩
 
3. 压缩是有成本的，会影响performance
    -- 通常，launch app的时候会受影响
    -- 代码执行中，突然要大量内存的时候也会受到影响
 
4. 在LCA/non-LCA的项目都有可能Enable，目前为止只有72&82&92项目上面支持，其它暂不支持
 
若有更细节问题，可提e-service与MTK讨论
 
 
其它内存相关FAQ，欢迎访问
FAQ04223如何查看Modem/Kernel/FrameBuffer的Footprint?
FAQ04354内存不足时查看内存使用情况的一些adb command
FAQ07759如何查看当前项目的physical memory layout
FAQ07760如何查看当前项目的virtual memory layout
FAQ09452手机cached free memory(剩余内存)计算方法
FAQ09454如何计算开机之后留给Linux Kernel可用的总内存
```

## [FAQ01934] [Others] 如何单独build factory bin？

```
[Key Words]
SW相关，Factory Mode，Factory bin
[Description]
当我们中修改factory的部分，则不需要在new整个工程，只需要重新make factory模块就好，然后使用ADB push到手机即可
[Solution]
1. 修改factory的source code（不然也不需要build bin）
2. 进到工程目录使用下面的命令编译：mk mm mediate/source/factory，注意查看factory的生成时间，如果发现没有重新生成，则随便打开一支文件，添加个空格或回车，保存再执行mk操作
3. 生成的bin会放在alps/out/target/product/[project]/system/bin/factory，注意，没有后缀
4. 接下来使用下面的adb命令push factory到手机：
adb remount
adb push d:\factory /system/bin/factory （d:\factory为factory在PC上的路径，/system/bin/factory为要push到手机中的位置）
adb shell chmod 777 /system/bin/factory
adb reboot（重新开机验证即可）
另外，第4个步骤也可以写成bat文件，每次只需要运行这个bat即可
```

## [FAQ11325] KitKat版本，keyguard上状态栏透明的实现

```
KitKat版本，android default实现了状态栏透明。
statusbar透明的属性是WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS;
navigationbar透明的属性是WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION;

keyguard界面状态栏透明实现是在KeyguardViewManager.java中:
if (shouldEnableTranslucentDecor()) {
    mWindowLayoutParams.flags |= WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS | WindowManager.LayoutParams.FLAG_TRANSLUCENT_NAVIGATION;
}
如需要关闭/打开锁屏界面状态栏透明，修改frameworks/base/core/res/res/values/config.xml中config_enableLockScreenTranslucentDecor变量值即可。
PS: 以上只针对锁屏界面的状态栏透明。
```

## [FAQ14863] perfomance问题的基本信息确认

```
1:确认是否为eng版本？　adb shell getprop ro.build.type.  eng版本本身对perofamnce影响比大．
如果是eng版本出现的问题，请在user load确认是否有同样的问题．

2:　uart 是否有打开，adb shell cat /sys/module/printk/parameters/disable_uart
如果是Ｎ，表示你测试的版本是开uart的，很有可能你遇到perofamnce会跟这个相关．　
如果uart是开的，可以在有root权限下命令: echo 0 > /proc/sys/kernel/printk,然后再测试看看是否有问题.
```

## [FAQ14787] 前置默认设置为美颜模式

```
CameraActivity.java函数内做如下修改：

private PickerManager.PickerListener mPickerListener = new PickerManager.PickerListener() {
@Override

public boolean onCameraPicked(int cameraId) {

函数内的语句mCameraAppUi.setViewState(ViewState.VIEW_STATE_CAMERA_CLOSED);前添加如下语句：

if(cameraId==1)

{

mModePicker.setCurrentMode(ModePicker.MODE_FACE_BEAUTY);

Log.i(TAG,"setCurrentMode facebeauty");

}

else

{mModePicker.setCurrentMode(ModePicker.MODE_PHOTO);}

2.private SettingManager.SettingListener mSettingListener = new SettingManager.SettingListener() {

@Override

public void onRestorePreferencesClicked() {

函数内

将如下语句

if (ModePicker.MODE_PHOTO == mCameraActor.getMode() || !isNonePickIntent()

|| ModePicker.MODE_PHOTO_SGINLE_3D == mCameraActor.getMode()

|| ModePicker.MODE_PHOTO_3D == mCameraActor.getMode()) {

if (ModePicker.MODE_VIDEO == mCameraActor.getMode() && !isNonePickIntent()) {

mISettingCtrl.onSettingChanged(SettingConstants.KEY_VIDEO,"on");

}

mCameraDeviceCtrl.applyParameters(false);

} else {

mModePicker.setModePreference(null);

mModePicker.setCurrentMode(ModePicker.MODE_PHOTO);

}

修改为

if(getCameraId()==1){

mModePicker.setCurrentMode(ModePicker.MODE_FACE_BEAUTY);

}else if (ModePicker.MODE_PHOTO == mCameraActor.getMode() || !isNonePickIntent()

|| ModePicker.MODE_PHOTO_SGINLE_3D == mCameraActor.getMode()

|| ModePicker.MODE_PHOTO_3D == mCameraActor.getMode()) {

if (ModePicker.MODE_VIDEO == mCameraActor.getMode() && !isNonePickIntent()) {

mISettingCtrl.onSettingChanged(SettingConstants.KEY_VIDEO,"on");

}

mCameraDeviceCtrl.applyParameters(false);

} else {

mModePicker.setModePreference(null);

mModePicker.setCurrentMode(ModePicker.MODE_PHOTO);

}
```

## [FAQ12495] 如何用adb命令实现选择哪个麦克录音

```
adb shell setprop streamin.micchoose 0  //代表双麦克
adb shell setprop streamin.micchoose 1  //代表主麦克
adb shell setprop streamin.micchoose 2  //代表副麦克
```

## [FAQ12424] KK版本与JB版本拨号按键音的区别

```
部分客户反馈KK平台拨号音比JB时间较长
[SOLUTION]
kk版本拨号按键音时间长的原因是：
DialpadFragment.java里
private void keyPressed(int keyCode) {
      switch (keyCode) {
         case KeyEvent.KEYCODE_1:
            playTone(ToneGenerator.TONE_DTMF_1, TONE_LENGTH_INFINITE);//这个值TONE_LENGTH_INFINITE代表按下拨号按键会一直有声音，您按的时间长声音出来的声音就会长。如果将这个值TONE_LENGTH_INFINITE改为TONE_LENGTH_MS ，其他按键类似的修改，这样就是每个按键音都是一个固定时间TONE_LENGTH_MS
```

## [FAQ12382] 如何修改LatinIME输入法空格键的显示

```
我要修改LatinIME空格键的显示为自定义的图片,该如何做？
[SOLUTION]
1:修改 MainKeyboardView.java (alps\packages\inputmethods\latinime\java\src\com\android\inputmethod\keyboard)
中 drawSpacebar 函数,将绘制语言text的部分注释掉.
//canvas.drawText(language, width / 2, baseline - descent - 1, paint);
paint.setColor(mSpacebarTextColor);
paint.setAlpha(mLanguageOnSpacebarAnimAlpha);
//canvas.drawText(language, width / 2, baseline - descent, paint);
2:修改
Key_styles_common.xml (alps\packages\inputmethods\latinime\java\res\xml) 
中spaceKeyStyle的实现为
<key-style
    latin:styleName="spaceKeyStyle"
    latin:keyIcon="!icon/space_key"
    latin:code="!code/key_space"
    latin:keyActionFlags="noKeyPreview|enableLongPress" />
3:修改Keyboard-icons-ics.xml (alps\packages\inputmethods\latinime\java\res\values)
中 iconSpaceKey的实现为
<item name="iconSpaceKey">@drawable/sym_keyboard_space_holo</item>
这里将sym_keyboard_space_holo 定义为贵司希望修改成的图片。
```

## [FAQ12383] 如果选择Use system language，如何在键盘的空格上显示当前语言

```
方法1：直接在MainKeyboardView.java (alps\packages\inputmethods\latinime\java\src\com\android\inputmethod\keyboard)  的drawSpacebar函数中对mNeesToDisplayLanguage的判断去掉。
//if(mNeesToDisplayLanguage){
......
//}
方法2：修改SubTypesSwitcher.java中的
needsToDisplayLanguages函数的返回值直接为true.
```

## [FAQ15086] 如何客制化自己的开机向导

```
在开发过程中，可能需要客制化自己的开机向导，可以参考如下的方案。
[SOLUTION]
可以参考一下之前敝司KK版本上的OOBE的实现，其主要有两个核心思想：
1.需要将APK的主Activity的Category声明为"android.intent.category.HOME"，并且设置其优先级要高于默认的Launcher。基中的优先级，可以根据自己的需求灵活设置。因为可能其他的Activity也会有同样的需求。
例如

<activity 
    android:name=".MainActivity"
    android:label="@string/app_name" >
    <intent-filter android:priority="10"> 
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.HOME" /> 
    </intent-filter>
</activity>
 
2.在完成自己的开机向导之后，需要通过PMS的接口禁止掉自己的应用，这样才能在后面的home-key不再起来。

例如：

/mediatek/packages/apps/OOBE/src/com/mediatek/oobe/basic/MainActivity.java

private void finishOOBE() {
    //disable WizardActivity
    PackageManager pm = getPackageManager();
    ComponentName name = new ComponentName(this, WizardActivity.class);
    int state = pm.getComponentEnabledSetting(name);
    if (state != PackageManager.COMPONENT_ENABLED_STATE_DISABLED) {
        pm.setComponentEnabledSetting(name, PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
        PackageManager.DONT_KILL_APP);
    }
}
```

## [FAQ15071] ListView边缘的button经常点不中

```
这是L1的新特性决定的，因为在L1版本的
/frameworks/base/core/java/android/widget/FastScroller.java
中，isPointInsideX的实现如下：
private boolean isPointInsideX(float x) {
    final float offset = mThumbImage.getTranslationX();
    final float left = mThumbImage.getLeft() + offset;
    final float right = mThumbImage.getRight() + offset;

    // Apply the minimum touch target size.
    final float targetSizeDiff = mMinimumTouchTarget - (right - left);
    final float adjust = targetSizeDiff > 0 ? targetSizeDiff : 0;

    if (mLayoutFromRight) {
        return x >= mThumbImage.getLeft() - adjust;
    } else {
        return x <= mThumbImage.getRight() + adjust;
    }
}
相对于L0的版本，会增加一个adjust的值，
而该函数又会影响listView是否会中断事件,导致事件传不到listItem上的button.
 
故该问题可以调小framework resource中，即
frameworks\base\core\res\res\values\dimens.xml
frameworks\base\core\res\res\values-xxx\dimens.xml中
R.dimen.fast_scroller_minimum_touch_target的值解决。
或者可以调整isPointInsideX的实现为L0.MP版本中的实现(即不adjust)，也
可以解决。
L0版本的实现如下：
private boolean isPointInsideX(float x) {
    if (mLayoutFromRight) {
        return x >= mThumbImage.getLeft();
    } else {
        return x <= mThumbImage.getRight();
    }
}
```

## [FAQ15089] Android L 版本后native process 无法使用am pm 等命令的说明

```
在android 5.0 后, 默认启用了Enforcing SELinux. Google 通过SELinux 严禁普通的native process 执行非system image 中的非exec类型的文件, 如data/dalvik-cache 下面的odex 文件, 从而native process 无法直接执行am, pm 等命令.
//external/sepolicy/domain.te
neverallow {
    domain
    -appdomain
    -dumpstate
    -shell
    userdebug_or_eng(`-su')
    -system_server
    -zygote
} { file_type -system_file -exec_type }:file execute;
neverallow {
    domain
    -appdomain # for oemfs
    -recovery # for /tmp/update_binary in tmpfs
} { fs_type -rootfs }:file execute;

通常我们解决的方式是，通过binder 直接使用 activity 等service接口, 直接向AMS 发送指令来规避这一条。 
注意这个同样要求你的process 有操作binder 的SELinux 权限，这个Google 不会限制。
在我们的代码中已经有很多类似的这样案例，大家可以参考：
frameworks/av/media/libmediaplayerservice/ActivityManager.cpp
/vendor/mediatek/proprietary/external/ds1_utility/ds1_utility.cpp
/vendor/mediatek/proprietary/external/batterywarning/batterywarning.cpp
/frameworks/av/services/audioflinger/AudioLosslessBTBroadcast.cpp
/vendor/mediatek/proprietary/packages/apps/MTKThermalManager/jni/thermald.cpp

通常首先：
#include <unistd.h>
#include <binder/IBinder.h>
#include <binder/IServiceManager.h>
#include <binder/Parcel.h>
#include <utils/String8.h>

(1). 获取am service 
sp<IServiceManager> sm = defaultServiceManager();
sp<IBinder> am = sm->getService(String16("activity"));

(2). 填充传送参数Parcel data, 准备好Parcel reply
data.writeInterfaceToken(String16("android.app.IActivityManager"));
.....

(3). 执行binder 
status_t ret = am->transact(XXXXXX_TRANSACTION, data, &reply); 
这些cmd 都定义在/frameworks/base/core/java/android/app/IActivityManager.java , 可选择查看.

(4). 解析返回的ret 和 reply.
比如：
if (ret == NO_ERROR) {
    int exceptionCode = reply.readExceptionCode();
    if (exceptionCode) {
        ALOGE("sendBroadcastMessage(%s) caught exception %d\n", action.string(), exceptionCode);
        return false;
    }
} else {
    return false;
}

Parcel 参数的填充过程可以参考：
/frameworks/base/core/java/android/app/ActivityManagerNative.java
CMD 参数列表可以参考：
/frameworks/base/core/java/android/app/IActivityManager.java
```

## [FAQ15081] eng版本make命令生成不了odex的说明

```
在eng版本上打开宏WITH_DEXPREOPT:=true后，采用make命令生成不了odex文件(预置apk)，而采用mm或mmm命令是可以生成odex文件。
 
[Reason]
 
Android.mk中定义了LOCAL_MODULE_TAGS := debug导致；
在full build下，如果是透過LOCAL_MODULE_TAGS為debug的方式安裝，在build system中會透過debug_MODULES此變數記錄安裝目錄下的目標，而目標只.apk並沒odex:
out/target/product/cci6735m_65u_nj_l1/system/priv-app/WiFiTest/WiFiTest.apk

然而透過PRODUCT_PACKAGES的方式安裝，比如将LOCAL_MODULE_TAGS改为optional,并在device/mediatek/common/device.mk中增加debug版本WiFiTest apk的安装，在build system中會透過product_FILES此變數記錄安裝目錄下的目標，這時目標除了.apk之外還多了.odex:
out/target/product/cci6735m_65u_nj_l1/system/priv-app/WiFiTest/WiFiTest.apk 
out/target/product/cci6735m_65u_nj_l1/system/priv-app/WiFiTest/arm64/WiFiTest.odex

因此透過debug tag安裝的module只會生成.apk，而透過PRODUCT_PACKAES安裝的才會產生.odex。
此設計與除錯會需要classes.dex關，因此帶debug tag的module才不做odex(因為會把.apk中的classes.dex刪除)。

[SOLUTION]
所以如果您需要在make 命令全编时产生WiFiTest.apk的odex,您需要将Android.mk中LOCAL_MODULE_TAGS改为：
LOCAL_MODULE_TAGS := optional

并在 device/mediatek/common/device.mk 中将如下设置增加eng时也需要安装此apk.(可以直接去掉判断)

ifeq ($(TARGET_BUILD_VARIANT), eng)
    PRODUCT_PACKAGES += WiFiTest
endif
```

## [FAQ15083] user版本无充电动画

```
user版本无充电动画，而eng版本无此问题。如果把uartlog打开，无此问题，关闭uartlog，会有问题。
[SOLUTION]
请在project的init.charging.rc中的mount ubifs后面都加上wait ：
mount ubifs ubi@system /system wait
mount ubifs ubi@system /system ro remount wait
mount ubifs ubi@userdata /data nosuid nodev wait
```

## [FAQ15079] L版本如何添加全局宏代码控制开关

```
L版本及之后，MTK采用google 编译架构，不再采用kk版本之前架构，android,kernel,lk,preloader各模块相互独立，
projectconfig.mk 中定义的宏将仅作用到 android 层
Version >= android 5.0
[SOLUTION]
由于Projectconfig.mk只作用于Android层,而kernel ，lk ，和preloader 是不起作用的，需要宏控制对应代码时，请分别在对应地方定义。具体可参考以下：

preloader部分：
如需宏控制pl这部分代码时，需在alps/bootable/bootloader/preloader/custom/$project/$(project).mk中增加需要的宏。

lk部分：
如需宏控制lk这部分代码时，需在alps/bootable/bootloader/lk/project/$(Project).mk文件中添加控制宏。

kernel部分：
如需宏控制kernel这部分代码时,参考以下步骤新增kernel config.
1.请在您的driver code所在目录中的Kconfig文件增加您的宏定义
具体怎么写可以参考Kconfig中的其他宏定义
举个例子:
config MTK_FB
bool "MediaTek Framebuffer Driver"
depends on FB
default y
select FB_SOFT_CURSOR
---help---
This selects the MediaTek(R) frame buffer driver.
If you want to use MediaTek(R) frame buffer diver, say Y.
2.在您对应的kernel defconfig配置文件中(如：kernel-3.10/arch/arm/configs/$(project)_defconfig(user及userdebug版本时需在此文件中配置)或$(project)_debug_defconfig(eng版本时需在此文件中配置))中设定您增加的宏的值,如 CONFIG_MTK_FB=y
3.在您的kernel代码中就可使用CONFIG_MTK_FB这个宏了

Android部分：
如需宏控制Android c,c++代码时,参考以下步骤
1.ProjectConfig.mk中定义您需要添加的宏CONFIG_XXX = yes
2.Android.mk中根据ProjectConfig.mk中添加的宏设定LOCAL_CFLAGS
ifeq ($(CONFIG_XXX),yes)
LOCAL_CFLAGS += -DCONFIG_XXX=yes
endif
3.接下来，您的code中就可以使用您定义的CONFIG_XXX宏了
务必注意，自L版本之后preloader/lk/kernel/android已经完全独立，代码不会有任何耦合，请参考以上方法设置控制宏。
```

## [FAQ14878] 如何打开binder的log

```
在分析perfromances问题时，常常会有些问题时卡在频繁的binder调用的地方，但binder调用如果时间小于500ms，是没有log出来的。
那如何将这些binder调用信息打印出来了？ 
[SOLUTION]
可以在我司DCC(http://dcc.mediatek.inc/)上搜索HowToOpenbinderLog.docx，该文档内有详细介绍。
```

## [FAQ15065] 如何用命令行强制开关HWUI

```
强制开HWUI：
adb shell setprop persist.sys.ui.hw true
adb shell setprop debug.viewroot.disableHW false
adb shell stop
adb shell start

强制关HWUI：
adb shell setprop debug.viewroot.disableHW true
adb shell setprop persist.sys.ui.hw false
adb shell stop
adb shell start
```

## [FAQ14814] 如何定义App的Max Adj

```
AMS 有一套完整的算法来调整进程的 ADJ. 比如当进程退出使用后, AMS 会将该进程的 ADJ 提高. 从而使得 Memory 不足时 Low Memory Killer 可以有依据杀死进程. 
但在产品层面, 总有一些进程是产品特别关心的. 对于这些进程, 不希望 ADJ 调整太高, 避免被 LMK 杀死. 可以有几种方法实现该需求. 比如:
1. 将进程设置为 Persistent. 使进程持续占据 Memory 不被杀死
2. 调整 ADJ 的最大许可值. 在 Memory 不是特别紧张时, 可以保证该进程不被杀死. 而当 Memory 特别紧张时, 又可以被 LMK 杀死, 从而释放出 Memory 给前台进程使用.
这里介绍方法 2.

[SOLUTION]

首先需要加入 Patch ALPS01995207.
然后修改 /vendor/mediatek/proprietary/frameworks/base/packages/FwkPlugin/src/com/mediatek/op/amsplus/DefaultCustomizedOomExt.java 中的函数 getCustomizedAdj(String processName). 如果传入的是需要重新定义 ADJ 的进程, 则返回期望的 ADJ.
需要注意的是, 这个修改对 AMS 的策略会产生影响. 必然会影响到其他进程. 所以请一定斟酌放入 getCustomizedAdj 中的进程, 以及期望的 ADJ.
如果需要 Check 修改结果, 需要打开 AMS 的 DEBUG_OOM_ADJ 开关. 当该进程的 ADJ 按照 getCustomizedAdj 的返回结果重新设定时, 会打印如下 trace:
getCustomized(XXXX) with adj = Y cur = Z
其中 Y 表示 getCustomized 给出的 ADJ, Z 表示 AMS 计算出的 ADJ.
```

## [FAQ14973] Adb sideload OTA升级失败报错："E: unknown volume for path [/sideload/pakage.zip]”

```
操作步骤：
1. Enter the recovery mode by pressing the buttons with Power + Volume
2. Select the "Recovery"
3. Pressing the button "Power" and soon after the button "Volume +"
4. Select the "Apply update from ADB"
5. On the PC running the command "adb sideload <filename>"
6. Check the behavior

实际结果：
Is not possible to carry out the recovery and is shown msg "Sideload aborted"
The log is shown:
E: unknown volume for path [/sideload/pakage.zip]
E: can`t mount /sideload/package.zip
I: GPT is supported!
[SOLUTION]
在bootable/recovery/ roots.cpp如下函数添加code：
1、ensure_path_mounted函数开始位置加上：
if (!strncmp(path, "/sideload", strlen("/sideload"))) {//add
   return 0；//add
}//add
Volume* v = volume_for_path(path);

2、同样ensure_path_unmounted函数开始位置加上：
if (!strncmp(path, "/sideload", strlen("/sideload"))) {//add
   return 0；//add
}//add
Volume* v = volume_for_path(path);
```

## [FAQ14889] [Gallery]移动定制机（OP01）三方apk保存图片后，在gallery中不能正常显示（含图）

```
问题确认：
Step 1. 首先确认database中图片插入数据库的宽高信息为0
方法一：
可通过mobile_log来确认（无width 和 height 信息，或赋值为0）：
08-24 16:33:29.582257   942   953 V MediaProvider: insertFile<<<: values=bucket_id=1606349962 media_type=1 storage_id=65537 date_modified=1440405209 parent=13 format=14337 file_name=Moji_20150824_1633.jpg bucket_display_name=Moji file_type=1 title=Moji_20150824_1633.jpg mime_type=image/jpeg date_added=1440405209 _display_name=1440405209520 _size=351585 datetaken=1440405209000 _data=/storage/sdcard0/DCIM/Moji/Moji_20150824_1633.jpg, rowId=608
 
方法二：
可通过导出手机中的database文件external.db，直接使用database工具查看；
database文件路径：/data/data/com.android.providers.media/databases/
 
Step 2. 确认调用了TileImageViewAdaptor.java文件的updateWidthAndHeight()方法更新宽和高为0
可通过mobile_log来确认：
08-24 16:33:53.416043 1944 1944 I Gallery2/TileImageViewAdapter: <updateWidthAndHeight> mImageWidth 0, mImageHeight 0
08-24 16:33:53.418353 1944 1944 I Gallery2/Op01ImageOptionsExt: <updateMediaType> mediaType [mediaType = NORMAL,width = 0,height = 0,orientation = 0,mimeType = image/jpeg,isDRM = 0,drmMethod = 0,groupID = 0,groupIndex = 0,groupCount = 0,bestShotMark = 0,filePath = /storage/sdcard0/DCIM/Moji/Moji_20150824_1633.jpg,uri = null,isVideo = false,isLivePhoto = false,isSlowMotion = false,bucketId = 1606349962,id = 608,fileSize = 351585,duration = 0,relateData = null, dateModifiedInSec = 1440405209, isRefocus = false]
 
修改方案：
方案一：
从根源上来解决：
push 第三方apk，修改其插入数据库时，对宽和高进行赋值；
 
方案二：
在gallery中针对这种database中保存图片宽和高为0的情况进行优化：
修改TileImageViewAdaptor.java文件的如下方法
public void updateWidthAndHeight(MediaItem item) {
    if (item != null) {
        // add by MTK begin
        if ((item.getWidth()==0) || (item.getHeight()==0)) {
            Log.d(TAG, " Item width and height are 0, return");
            return;
        }
        // add by MTK end
        mImageWidth = item.getWidth();
        mImageHeight = item.getHeight();
        Log.i(TAG, " mImageWidth " + mImageWidth + ", mImageHeight " + mImageHeight);
    }
}
```

## [FAQ14842] 如何支持自拍杆拍照功能

```
根据Log确定自拍杆按键对应的KeyCode是多少，进而根据这个KeyCode值来确认对应的按键是哪个。
一般常用的有：音量+、音量-、Enter
public static final int KEYCODE_VOLUME_UP       = 24;
public static final int KEYCODE_VOLUME_DOWN     = 25;
public static final int KEYCODE_ENTER           = 66;
这里以音量-键为例
在/packages/apps/Camera/src/com/android/camera/actor/PhotoActor.java文件中的onKeyDown方法和onKeyUp方法中添加对KEYCODE_VOLUME_DOWN 键的处理即可,

即在case KeyEvent.KEYCODE_CAMERA:之前添加：

case KeyEvent.KEYCODE_VOLUME_DOWN:
```

## [FAQ14937] [Storage]Download开机后恢复出厂设置userdata可用空间变小

```
在开启MTK_SHARED_SDCARD时，userdata分区会自适应emmc剩余空间的大小，您可能会注意到download bin档后开机，透过adb shell df或Setting -> Storage查询到的内部存储空间(/data)大小会比恢复出厂设置后稍大。
但是第二次再做恢复出厂设置，/data的空间大小就不会再发生变化，一直保持第一次恢复出厂后的大小。除非再次重新download，又会发生这样的现象。


[SOLUTION]
编译时分区表设定的userdata分区size较小（大概1GB多），build时生成的userdata.img是以这个较小的size生成的。从build log中会找到类似以下这段:
make_ext4fs -s -T -1 -S out/target/product/sisley2OTP/root/file_contexts -l 1237319680 -a data out/target/product/sisley2OTP/userdata.img out/target/product/sisley2OTP/data

Creating filesystem with parameters:
Size: 1237319680   //0x49c00000
Block size: 4096
Blocks per group: 32768
Inodes per group: 7552
Inode size: 256
Journal blocks: 4720
Label: 
Blocks: 302080
Block groups: 10
Reserved block group size: 79
Created filesystem with 33/75520 inodes and 10340/302080 blocks

可以看到这个例子中生成ext4 image时总的size为0x49c00000 (1180MB)。
而download后第一次开机后会执行ext4 resize操作，根据实际userdata分区的大小修改ext4 fs里面的相关参数，以达到文件系统自适应emmc实际大小的目的。 可以从kernel log中找到类似下面的log:

[    7.677582].(5)[180:resize_ext4]resize: Size for partition(/dev/block/platform/mtk-msdc.0/by-name/userdata) is 12064256K.  //0x2E0580000，userdata分区实际的size
[    7.678956].(5)[180:resize_ext4]resize: Size in superblock is 1208320K.  //0x49C000000, userdata在分区表中的size
[    7.679793].(5)[180:resize_ext4]resize: Size will (maybe) resize to(after adjust) is 12064256K.
[    7.681178].(5)[180:resize_ext4]resize: Running /system/bin/resize2fs on /dev/block/platform/mtk-msdc.0/by-name/userdata
[    8.169390].(0)[180:resize_ext4]resize: Resize ext4 return 0

在执行恢复出厂设置时，会擦除userdata分区，并重新利用make_ext4fs创建新的文件系统，这时候就是直接根据userdata分区的实际大小来创建ext4 fs。从factory reset recovery log中会找到类似以下这段:

Formatting /data...
format /data start=1420131485 
I:GPT is supported!
Creating filesystem with parameters:
Size: 12353798144     //0x2E0580000
Block size: 4096
Blocks per group: 32768
Inodes per group: 8112
Inode size: 256
Journal blocks: 32768
Label: 
Blocks: 3016064
Block groups: 93
Reserved block group size: 743
Created filesystem with 11/754416 inodes and 87558/3016064 blocks
format end=1420131494 duration=9

对比build时创建的userdata.img和factory reset时在userdata分区创建文件系统，由于userdata分区的size在这两种情况下不同，那么创建ext4时一些参数就会被自动调整，这里看到最重要的就是 Journal blocks差异较大，build时是 4720，recovery时是32768，差了110MB左右。inode per group也会有些差异，这些都是导致df出来的分区大小差异的原因。因为ext4 resize操作不会调整这些参数值，只会调整super block里面的参数，以及总的block和group数目。

一般手机只会在工厂产线上遇到这样的问题，手机在产线上一定会最后做factory reset，end user一般只会做OTA升级，不会再遇到这样的问题。
```

## [FAQ14881] 如何修改设置中语言显示的名称(如将"繁体中文（台湾）"修改为　　"中文（繁体）")

```
如何修改设置中语言显示的名称(如将　"繁体中文（台湾）"　修改为　"中文（繁体）")
语言名称的显示是在LocalePicker.java中(alps/framework/base/core/java/com/android/internal/app)函数getAllAssetLocales()中做的．如要修改可参考如下方案．
[SOLUTION]
可将LocalePicker.java中成员变量　
private static final boolean DEBUG = false；　将DEBUG的值置为true, 
然后抓一份log,　进设置－＞语言，停止抓log, 从log中会包含函数getAllAssetLocales(Context context, boolean isInDevelopeMode)打出的log，这个函数是把各语言加到一个list中，各语言显示的名称也有打出来，　可以对着log打印的地方修改这个显示的名称．
```

## [FAQ14938] [Storage]关于文件系统空间预留的说明

```
也许你在测试时无意中发现虽然把/data或/cache填满了，无法再写入数据，但是透过stat查看分区文件系统状态，free blocks并不等于0. 

[SOLUTION]
kernel-3.10 ext4模块本身会预留2%左右的分区存储空间做reserved空间，专门为ext4自己保留。在super.c (kernel-3.10\fs\ext4)的ext4_calculate_resv_clusters()这个函数中有以下这段code:
/*
* By default we reserve 2% or 4096 clusters, whichever is smaller.
* This should cover the situations where we can not afford to run
* out of space like for example punch hole, or converting
* uninitialized extents in delalloc path. In most cases such
* allocation would require 1, or 2 blocks, higher numbers are
* very rare.
*/
resv_clusters = ext4_blocks_count(EXT4_SB(sb)->s_es) >>
EXT4_SB(sb)->s_cluster_bits;

do_div(resv_clusters, 50);
resv_clusters = min_t(ext4_fsblk_t, resv_clusters, 4096);
这段code就是计算ext4预留空间大小的。EXT4_SB(sb)->s_cluster_bits的值一般为0，可以看到最终预留的空间是取分区空间的2%和4096的最小值，也就说最多会预留4096个block（4096bytes ），也就是16MB。

(1) system分区
执行busybox的stat -f /system会印出类似以下的信息:
# ./stat -f /system
File: "/system"
ID: d3609fe804970d6b Namelen: 255     Type: ext2/ext3
Block size: 4096
Blocks: Total: 380892     Free: 139835     Available: 135739
Inodes: Total: 98304      Free: 95634

这里Free - Available = 4096 blocks，即16MB，因为system分区一般size较大(大于1GB)，预留2%多半会超过16MB，因此会预留最多4096个block，即16MB。

(2)cache分区
cache分区一般size比较小，100~400MB之间，目前L版本常见的是400MB，以预留2%来计算的话，应该会预留的是8MB，以下的例子就是对应这种情况。
# ./stat -f /cache
File: "/cache"
ID: d3609fe804970d6b Namelen: 255     Type: ext2/ext3
Block size: 4096
Blocks: Total: 99186      Free: 99085      Available: 97037
Inodes: Total: 25600      Free: 25585
这里Free - Available = 2048 blocks，即8MB

(3) data分区
data分区一般size较大(大于1GB)，与system分区类似，按照理论分析应该也是要预留16MB才对，实际执行stat后的结果如下:
./stat -f /data
File: "/data"
ID: d3609fe804970d6b Namelen: 255     Type: ext2/ext3
Block size: 4096
Blocks: Total: 3232930    Free: 2911026    Available: 2902834
Inodes: Total: 827392     Free: 825699

Free - Available = 8192 blocks，即32MB
很奇怪，这里为什么变成了32MB呢？

为了防止data分区被普通的APP填满，MTK对/data分区额外做了空间预留，具体就是在init.mt6XXX.rc里面的以下这段:
on fs
write /proc/bootprof "INIT:Mount_START"
mount_all /fstab.mt6735
exec /system/bin/tune2fs -O has_journal -u 10010 -r 4096 /dev/block/platform/mtk-msdc.0/by-name/userdata

tune2fs会为uid <=10010的process再额外预留4096个blocks，即16MB。tune2fs这里会设置super block里面的s_r_blocks_count字段，这个字段在创建ext4 fs时默认值为0。

(4) Internal SD
在开启MTK_SHARED_SDCARD的情况下，Internal SD与/data会共享userdata的存储空间。但是/system/core/sdcard/sdcard.c中default会预留50MB，防止APP写internal sd时把/data填满。
#define DATA_FREE_SIZE_TH_DEFAULT (50UL*1024UL*1024UL)
如果有需求的话， 可以对这里预留的空间做客制化修改。

同样对internal sd执行stat
# ./stat -f /mnt/shell/emulated
File: "/mnt/shell/emulated"
ID: 0        Namelen: 255     Type: UNKNOWN
Block size: 4096
Blocks: Total: 3220130    Free: 2898219    Available: 2890027
Inodes: Total: 827392     Free: 825696
Free - Available = 8192 blocks，也是差32MB。

这是因为internal sd的Free和Available都是基于/data的Free和Available直接减去50MB得到的。

data Free - internal sd Free =  2911026 - 2898219 = 12807 blocks (50MB)
对于Internal SD来说，当Available为0时，这时候实际上还是可以写入数据的，直到Free为0为止。

因此建议APP call getFreeBlocks()来获取Internal SD的剩余空间，而不是getAvailableBlocks()。

而对于data来说，由于Linux Kernel会额外做限制，因此建议APP是call getAvailableBlocks()来获取/data的剩余可用空间，而不是getFreeBlocks()。 
```

## [FAQ14893] FOTA/OTA之後启动第三方APP出現APP Crash

```
用FOTA下载OTA包，下载完毕更新；
更新完毕后点击多个三方APP无法进入，提示报错（这些APK都是正常安装，非预置）。

报错信息类似：
Caused by: java.io.IOException: Failed to remove obsolete file from /data/dalvik-cache/arm/data@app@jp.naver.line.android-1@base.apk@classes.dex when searching for dex file /data/app/jp.naver.line.android-1/base.apk: Permission denied

[SOLUTION]
1. 如果apk之前有安装过，OTA升级后会检测到该apk的odex是旧的需要重新去提取，但是因为这个apk贵司长时间没有使用，L版本上默认PackageManagerService判断超过7天，则开机时不会做dexopt而报这种错误，此时一般重启之后这些apk会正常运行。

上述code中 mDexOptLRUThresholdInMills的值是7天，即若此apk上次使用时间(then=pkg.mLastPackageUsageTimeInMills)+7天还小于当前时间(now)，则此apk被判别为never不会被使用的apk，所以就不做dexopt了。那么异常时会出现上面的log。

2. 发生异常时如果点击了这几个apk且发现其无法使用（无法使用的原因可能是boot.oat有更新，此时apk的odex档是旧的，需要重新提取才可正常运行），即此时mLastPackageUsageTimeInMills会更新。
所以重新开机后这个条件if (then + mDexOptLRUThresholdInMills < now)就不会满足，即这几个apk会做dexopt，此时能够正确提取odex，这时apk能够正常运行。

3. 这是Google在L版本上的机制，不建议修改，如果需要规避，可以将i.remove();这行给注释掉，即超7天时仍可以正常提取odex.
```

## [FAQ13439] 添加低温警告

```
    修改
    alps\mediatek\packages\apps\BatteryWarning\src\com\mediatek\batterywarning\BatteryWarningActivity.java
    1.
    private static final int SAFETY_OVER_TIMEOUT_TYPE = 4;
    //添加低温类型5
    private static final int BATTERY_LOW_TEMPERATURE_TYPE = 5;
    
    2.
    static final int[] sWarningTitle = new int[] {
            R.string.title_charger_over_voltage,
            R.string.title_battery_over_temperature,
            R.string.title_over_current_protection,
            R.string.title_battery_over_voltage,
            R.string.title_safety_timer_timeout,
            /*添加低温字符串资源 */
            R.string.title_battery_low_temperature};
    3.
    private static final int[] sWarningMsg = new int[] {
            R.string.msg_charger_over_voltage,
            R.string.msg_battery_over_temperature,
            R.string.msg_over_current_protection,
            R.string.msg_battery_over_voltage,
            R.string.msg_safety_timer_timeout,
            /*添加低温字符串资源 */
            R.string.msg_battery_low_temperature };
    4.
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_POWER_DISCONNECTED.equals(action)) {
                if (mType == CHARGER_OVER_VOLTAGE_TYPE
                        || mType == SAFETY_OVER_TIMEOUT_TYPE || mType == BATTERY_LOW_TEMPERATURE_TYPE /*添加低温类型*/) {
                    Xlog.d(TAG, "receive ACTION_POWER_DISCONNECTED broadcast, finish");
                    finish();
                }
            }
        }
    };
    5.
    替换两个方法即可
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        mType = intent.getIntExtra("type", -1);
        Xlog.d(TAG, "onCreate, mType is " + mType);
        if (mType >= CHARGER_OVER_VOLTAGE_TYPE  && mType <= BATTERY_LOW_TEMPERATURE_TYPE/*改为低温类型*/) {
            showWarningDialog(mType);
            registerReceiver(mReceiver, new IntentFilter(
                    Intent.ACTION_POWER_DISCONNECTED));
        } else {
            finish();
        }
    }
    protected void onDestroy() {
        super.onDestroy();
        if (mType >= CHARGER_OVER_VOLTAGE_TYPE  && mType <= BATTERY_LOW_TEMPERATURE_TYPE/*改为低温类型*/) {
            unregisterReceiver(mReceiver);
        }
    }
    6.字符串资源
    values/strings.xml
        <string name="title_battery_low_temperature">"Low Battery Temperature"</string>
        <string name="msg_battery_low_temperature">"Your battery temperature is too low, please disconnect the charger!"</string>
    values-zh_rCN/strings.xml
        <string name="title_battery_low_temperature">"电池温度过低"</string>
        <string name="msg_battery_low_temperature">"您的电池温度过低，请断开充电器!"</string>
```

## [FAQ14661] 设置中电池耗电量排名不准确、显示有误等问题

```
1.先按照 Power profile for Android.pptx 中的步骤对 framwork/base/core/res/res/xml/power_profile.xml 文件中的各个参数进行测量 
<item name="battery.capacity">1000</item>此处1000即可。
2.build新版本后再次进行测试
```

## [FAQ14785] L平台上频繁GC导致UI卡顿

```
在L平台上频繁GC导致UI发生卡顿，通过systrace和log来判断是否是GC导致的，如果是，则可以使用下面的解决方案
[SOLUTION]
请按照如下的修改测试：
/frameworks/base/core/jni/android_util_Binder.cpp
158static void incRefsCreated(JNIEnv* env)
159{
160    int old = android_atomic_inc(&gNumRefsCreated);
161    if (false) {  //
162        android_atomic_and(0, &gNumRefsCreated);
163        env->CallStaticVoidMethod(gBinderInternalOffsets.mClass,
164                gBinderInternalOffsets.mForceGc);
165    } else {
166        ALOGV("Now have %d binder ops", old);
167    }
168}
169
```

## [FAQ14778] 手机支持的Mobile Class

```
手机支持的Mobile Class有：
1. Class_CC --> CS ONLY
2. Class_CG --> PS ONLY
3. Class_B, GSM Prefer --> CS & PS, CS Prefer
4. Class_B, GPRS Prefer --> CS & PS, PS prefer
 
对于Mobile Class，手机的默认设置应该是Class_B, GSM Prefer.
 
Mobile Class也可以通过Nvram来修改设定：
```

## [FAQ14830] 【Build and Make】L版本常见编译问题汇总

```
目前MOL系统针对build and make的FAQ有很多但过于分散，本FAQ主要针对目前适应L版本（Version >= android 5.0）的已有FAQ进行汇总，同时也汇总了DCC上可以参考的相关文档。 
  
[SOLUTION]
 
注意以下汇总，适应于L版本：
(1)编译环境搭建
 
android环境搭建请到DCC搜索文档：
Android_Build_Environment_on_Ubuntu_12.04_64-bit_Installation_SOP.docx
 
modem环境搭建请到DCC搜索文档：
MTK_MOLY_MakeBuild_Design_Customer.docx
 
(2)系列FAQs
 
[FAQ14443]合入patch的注意事项
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ14443
 
[FAQ11888]Turnkey AOSP的软件包的编译命令
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ11888
 
[FAQ14143]AOSP如何快速build kernel、lk 和 preloader
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ14143
 
[FAQ13925]AOSP如何单独build Preloader
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13925
 
[FAQ13735]AOSP 如何单独build LK
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13735
 
[FAQ13428]AOSP如何单独build kernel
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13428
 
[FAQ10625]提升Android编译速度
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ10625 
 
[FAQ07275]如何在linux中添加新的kernel module
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ07275
 
[FAQ14175]AOSP如何menuconfig
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ14175
 
[FAQ13609]L版本如何编译android module
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13609
 
[FAQ13697]L 版本如何将第三方so库打包到apk
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13697
 
[FAQ13232]L 预置apk
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13232
 
[FAQ14513]L GMS预置
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ14513
 
[FAQ14131]L版本预编译提取apk的odex文件，如何修改？
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ14131
 
[FAQ13465]L版本How to clone project
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13465
 
[FAQ13658]L版本上传git服务器后编译出错
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13658
 
[FAQ11794]Preloader bin size过大编译报错怎么办
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ11794
 
[FAQ14456]system.img>2G导致编译otapackage时报错如何处理
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ14456
 
[FAQ13408]AOSP编译常见问题
http://online.mediatek.inc/Pages/FAQ.aspx?List=SW&FAQID=FAQ13408
```

## [FAQ09389] [AT]在双卡版本中，如何在PC端发送AT命令给SIM2

```
非SGLTE版本：
Example：
当前手机中插入两张SIM卡，3G protocol在卡槽1，如果要通过PC端对SIM2发送AT命令，需要先下：
AT+ESUO=5

同样，如果
当前手机中插入两张SIM卡，3G protocol在卡槽2，如果要通过PC端对SIM1发送AT命令，需要先下：
AT+ESUO=5

关于AT+ESUO的具体参数解释，请参考DCC上AT_DOCUMENT_Modem.docx文档中所描述。

SGLTE版本：
SGLTE比较特殊，SIM1占用了protocol1和protocol2，所以如果需要发送AT命令到protocol2的话，那么需要先下：
AT+ESPO=2

如果是SGLTE DSDS版本，想将AT命令发送给SIM2，那么需要先下：
AT+ESPO=3

关于AT+ESPO的具体参数解释，请参考DCC上AT_DOCUMENT_Modem.docx文档中所描述。

L版本：
使用AT+ESUO=4发送AT给SIM1

使用AT+ESUO=5发送AT给SIM2

在C2K项目上，如果要发送AT命令到C2K的modem，请先下：
AT+ESUO=9
```

## [FAQ14829] [Gallery]相册列表界面，屏幕截图在相册缩略图中的字迹模糊

```
Fancy 界面显示的是图片缩略图，那既然是缩略图就存在不清晰的情况，而当图片上有字迹的时候，这种不清晰的情况就会表现出来。
缩略图界面的功能是图片的预览，如果需要查看清晰的图片，可以点击进入大图。
如果需要修改，可按照如下方式做改动：
在decode时提高BitmapFactory.Options中的inSampleSize，使得decode出来的图片变清晰，然后在这个基础上进行resize。

LocalImage.java的onDecodeOriginal()函数中，在
int targetSize = MediaItem.getTargetSize(type);
这句话之后添加
if (type == MediaItem.TYPE_FANCYTHUMBNAIL)
    targetSize = (int)(targetSize * 1.5f);
```

## [FAQ14693] 如何将device version由HAL3.2改为HAL1.0

```
Android one版本默认底层配的device version为HAL3.2，如果想改为HAL1.0，可以按以下方法修改。
[SOLUTION]
在文件config_static_metadata_common.h中把
case 0:
     //======================================================================
    CONFIG_METADATA_BEGIN(MTK_HAL_VERSION)
        CONFIG_ENTRY_VALUE(MTK_HAL_VERSION_3_2, MINT32)
    CONFIG_METADATA_END()
    //======================================================================
    break;
case 1:
     //======================================================================
    CONFIG_METADATA_BEGIN(MTK_HAL_VERSION)
        CONFIG_ENTRY_VALUE(MTK_HAL_VERSION_3_2, MINT32)
    CONFIG_METADATA_END()
    //======================================================================
    break;
改为
case 0:
     //======================================================================
    CONFIG_METADATA_BEGIN(MTK_HAL_VERSION)
        CONFIG_ENTRY_VALUE(MTK_HAL_VERSION_1_0, MINT32)
    CONFIG_METADATA_END()
    //======================================================================
    break;
case 1:
     //======================================================================
    CONFIG_METADATA_BEGIN(MTK_HAL_VERSION)
        CONFIG_ENTRY_VALUE(MTK_HAL_VERSION_1_0, MINT32)
    CONFIG_METADATA_END()
    //======================================================================
    break;
```

## [FAQ14749] 在电源设置中出现红线

```
那个红线是因为debug开关为true导致的，把BatteryHistoryChart.java中的DEBUG开关设置为false就可以了。
```

## [FAQ14769] L版本OTA升级遇到error："system has been remounted R/W; reflash device to reenable OTA updates"

```
L版本；如果有在bootable/recovery/目录下code中添加ensure_path_mounted(“/system”);
或者是在recovery mode下执行root integrity check之后，导致OTA升级失败，而且last_log中有如下error：
 
script aborted: system has been remounted R/W; reflash device to reenable OTA updates
system has been remounted R/W; reflash device to reenable OTA updates
[SOLUTION]

可以尝试在 /bootable/recovery/roots.cpp中作如下修改：(蓝色为添加部分)
int ensure_path_mounted(const char* path) {
} else if (strcmp(v->fs_type, "ext4") == 0 ||
    strcmp(v->fs_type, "vfat") == 0) {
    if (strcmp(v->mount_point, "/system") == 0)//add
        result = mount(v->device, v->mount_point, v->fs_type, MS_NOATIME | MS_NODEV | MS_NODIRATIME | MS_RDONLY, "");//add
    else //add
        result = mount(v->device, v->mount_point, v->fs_type, MS_NOATIME | MS_NODEV | MS_NODIRATIME, "");
如果问题还是不能解决，请提eservice给Mediatek，谢谢！
```

## [FAQ08895] 如何抓取traceview？

```
1、手机用usb连接到电脑，打开Eclispe的DDMS界面或Android Debug Monitor，进入Device 标签页，在识别到Device并连接成功之后，用鼠标点击你要进行method profiling的process，选择之后，这个process处于深蓝色高亮状态。
2、在Device这个面板的最上方那一排button中，将鼠标悬停在button上方，有提示文字，找到"Start Method Profiling"的button，点击该button，进行profiling动作。
3、接下来你就开始操作手机，复现问题。
4、操作复现问题完了之后，还是点击刚才那个button，此时button的提示文字会变为"Stop Method Profiling"，点击之后就停止了profiling动作，也就停止了抓取traceview。
5、抓完之后会自动打开刚才所抓取的traceview文件，如果是用Eclipse，请通过Eclipse的File-> Save as 功能，将该traceview文件另存下来提供给我们分析；如果是Android Device Monitor，则将鼠标悬停在已经打开的traceview文件上，该文件的保存路径会悬浮显示在文件名上方，按照此路径将抓到的traceview文件发给我们分析即可。
```

## [FAQ03568] [Audio Driver] 录音最开始一段时间的数据是录不到的

```
drop 120ms record data due to hardware pluse
[SOLUTION]
AudioType.h中
#define CAPTURE_DROP_MS (120)
此宏规定了会drop 120ms的数据
```

## [FAQ03685] [Audio Common] 如何打开HD record

```
HD record即高质量录音
打开方法如下：修改ProjectConfig.mk中
MTK_AUDIO_HD_REC_SUPPORT=yes
MTK_DUAL_MIC_SUPPORT=yes  (双mic项目才能开此项)
```

## [FAQ03966] [Audio Common] 通话时如何播放声音给对方听

```
默认情况下：通话时播放声音只有本端能听到，对方听不到，如果希望对方也能听到请参考如下修改
[SOLUTION]
AudioALSAStreamManager::AudioALSAStreamManager()中可以看到
mBGSDlGain(0xFF),
mBGSUlGain(0),
其中mBGSDlGain表示下行gain值，影响的是本端听到的声音大小
mBGSUlGain表示上行gain值，影响的是对方听到的声音大小，默认值是0，所以对方听不到
只要将mBGSUlGain改为非0值即可，最大值0xFF
```

## [FAQ03686] [Audio App] 录音机菜单项意义

```
录音机菜单项意义
[SOLUTION]
音质:
High(3gpp): AAC, stereo
Mid(3gpp): AAC, stereo //虽然和High的音频编码同为AAC但是bitrate和samplerate略差
Low(amr): AMR, mono
录音模式:
Normal: 普通录音
Meeting: 会议（近距）录音
Lecture: 远距录音
```

## [FAQ14782] L版本开启MTK_SHARED_SDCARD 后OTA包放入内卡如何MOTA升级成功？

```
L版本开启MTK_SHARED_SDCARD=yes， 并且把OTA包放入内卡，即升级包路径为：/data/media/0/update.zip，在进行MOTA升级时，重启机器会遇到一直卡在黑屏、但不会进入recovery mode的现象，仔细检查mtklog发现有如下error：
 
uncrypt : update package is /data/media/0/update.zip
uncrypt : failed to convert /data/media/0/update.zip to absolute path: Permission denied
[SOLUTION]
解决方法：
修改\alps\device\mediatek\common\sepolicy\uncrypt.te 如下：(其中蓝色为新添加)
# ==============================================
# MTK Policy Rule
# ============
allow uncrypt misc_device:chr_file *;
allow uncrypt platformblk_device:dir *;
allow uncrypt platformblk_device:blk_file *;
allow uncrypt system_data_file:file { open read };
allow uncrypt media_rw_data_file:dir { search getattr };
allow uncrypt media_rw_data_file:file { open read getattr };
```

## [FAQ14753] 预置apk到vendor/operator/app下面，有时候会编译不过

```
这种情况一般是apk本身没有对齐导致的，可以先使用zipalign重新对齐apk后再预置，具体做法如下：
out/host/linux-x86/bin/zipalign -f 4 unalign.apk aligned.apk
其中，unalign.apk指当前source apk，aligned.apk指对齐后输出的apk。
```

## [FAQ14537] 下拉菜单中闪光灯打开时，mtk camera app也可以正常启动

```
当mtk camera app启动时会主动发送广播到下拉菜单，提示去关闭闪光灯，然后mtk camera app再去启动相机，这样就可以正常启动了。具体实现可参考如下文档：
MTK Camera ap-broadcast-SystemUI_mt6735.pdf
 
文档可以去下面DMS中下载：
https://dcc.mediatek.com/Docs/Default.aspx
```

## [FAQ10591] 怎样编译MTK的SDK?

```
请参考 FAQ03042 的编译命令，然后会生成相应的zip包，那只需要将其产生的out目录下的zip包给到三方开发即可，其中public 的api都放在这个zip包中的docs\mediatek-sdk\reference目录下.
```

## [FAQ03042] 如何编译MTK的模拟器

```
MTK的emulator是基于MTK平台的codeabse编译得到用来模拟真机的虚拟Device,以下是具体的操作步骤：

1. Build MTK SDK Packages
-对于mt6572以前的chip，用如下的命令编译: 
./makeMtk banyan_addon
-从mt6572开始的chip,由于mt6572之后CPU开始支持X86架构，其performace会更好，mt6572之后，建议编译x86的emulator来使用.
./makeMtk banyan_addon_x86

编译完成后会在out/host/linux-x86/sdk_addon下生成MTK的SDK包，比如mtk_sdk_api_addon-17.1.zip，(其中17是android api level)

2. 解压mtk_sdk_api_addon_17.1.zip
将解压后的mtk_sdk_api_addon-17.1整个文件夹放在android原本的sdk的add-ons目录下。

3. 拷贝emulator相关的执行文件到android sdk tool下：
- 对ICS 4.0之前的版本：
进入android-sdk-windows\add-ons\banyan_addon_ALPS.GB.FDD.MP.V1_eng\tools 目录下，将其中的 emulator.exe 或者 emulator（如果使用Linux的SDK的话）复制出来，覆盖android-sdk-windows\tools下的相应emulator.exe

- 对ICS 4.0及之后的版本：
将mtk_sdk_api_addon-15.1\emulator对应文件夹下的emulator,emulator-arm,emulator-x86这三支文件替换android原本sdk的tools目录下的emulator,emulator-arm,emulator-x86这三支文件(建议备份google原始sdk下的emulator,emulator-arm,emulator-x86，以便后面用到Google emulator)。

4. 创建新的AVD
在Target里面选择带有MediaTek标志的，然后启动这一AVD就可以了
PS：创建AVD时需要同步将SDK的版本升级到相对的android版本，比如JB2对应的android API level 17,则对应SDK的版本也要升级到level 17,否则将在创建AVD的时候将load不出带MediaTek标志的target
```

## [FAQ10259] 如何将桌面和主菜单较长的图标名称显示完整?

```
有些APP的图标名称太长，在主菜单中显示不全，而且在桌面建立这些APP的快捷方式后，这些图标名称也会显示不全，如何将其显示完整？

[SOLUTION]

1. 请修改styles.xml，将
<style name="WorkspaceIcon.Portrait">
    <item name="android:drawablePadding">0dp</item>
    <item name="android:paddingLeft">4dp</item>
    <item name="android:paddingRight">4dp</item>
    <item name="android:paddingTop">@dimen/app_icon_padding_top</item>
    <item name="android:paddingBottom">4dp</item>
    <item name="android:textSize">13sp</item>
</style>

修改为：
<style name="WorkspaceIcon.Portrait">
    <item name="android:drawablePadding">0dp</item>
    <item name="android:paddingLeft">4dp</item>
    <item name="android:paddingRight">4dp</item>
    <item name="android:paddingTop">@dimen/app_icon_padding_top</item>
    <item name="android:paddingBottom">4dp</item>
    <item name="android:textSize">13sp</item>
    <item name="android:singleLine">false</item>
    <item name="android:lines">2</item>
</style>

2. 请修改BubbleTextView.java的applyFromShortcutInfo方法，将
setCompoundDrawablePadding((int) ((grid.folderIconSizePx - grid.iconSizePx) / 2f));
这行代码中的参数改小为合适的值。

3. 请修改PagedViewIcon.java的applyFromApplicationInfo方法，如下：
public void applyFromApplicationInfo(AppInfo info, boolean scaleUp, PagedViewIcon.PressedCallback cb) {
    mIcon = info.iconBitmap;
    mPressedCallback = cb;
    setCompoundDrawablesWithIntrinsicBounds(null, Utilities.createIconDrawable(mIcon), null, null);
    setCompoundDrawablePadding(xxxx);//mtk add（xxxx请自行调整为合适的值）
    setText(info.title);
    setTag(info);
}
```

## [FAQ14660] [Audio framework] 音量警告提示框选择OK，重启后再增大音量希望还会弹出音量警告提示框

```
目前的做法是:
音量警告提示框选择OK，重启后就不会再弹出警告提示框, 除非恢复出厂设置
 
如果希望重启后再增大音量希望还会弹出音量警告提示框
请参考如下修改:
 
 
[SOLUTION]
 
1: 可以在 AudioService.java 的构造方法中设个变量, 比如 bool bIsFirstBoot = true;

2: 然后在 checkSafeMediaVolume 方法中, 判断此变量, 如下:

private boolean checkSafeMediaVolume(int streamType, int index, int device) {
    synchronized (mSafeMediaVolumeState) {
        //add begin
        if(bIsFirstBoot){
            mSafeMediaVolumeState = SAFE_MEDIA_VOLUME_ACTIVE;
            bIsFirstBoot = false;
        }
        //add ends
        if ((mSafeMediaVolumeState == SAFE_MEDIA_VOLUME_ACTIVE) &&
                (mStreamVolumeAlias[streamType] == AudioSystem.STREAM_MUSIC) &&
                ((device & mSafeMediaVolumeDevices) != 0) &&
                (index > mSafeMediaVolumeIndex)) {
            return false;
        }
        return true;
    }
}
```

## [FAQ14685] 从2G log获取手机加密算法支持情况(A5 & GEA)

```
从catcher/ELT log中解码attach request信令，即可获取手机A5/GEA加密算法的支持信息。
具体解码工具的使用可参考：
[FAQ14417]Free 3GPP decode tool使用简介
```

## [FAQ11459] [AAL]动态开关AAL功能

```
手机连接ADB
cd sys/kernel/debug
echo aaloff>dispsys
```

## [FAQ09912] [MT6572]工厂模式背光测试，测试图片不是全屏显示

```
MT6572项目，配置qHD分辨率后，在工厂模式中测试背光，显示测试图片不是全屏显示

[SOLUTION]
默认测试资源分辨率是WVGA的，如要显示其他分辨率图片，需要在对应的工程目录中进行客制化

1、修改如下文件中的值为对应分辨率
    alps/mediatek/custom/{$project}factory/inc/cust_lcd.h
2、修改如下目录中的资源，为想要显示的对应分辨率图片 (请使用为png格式)
    alps/mediatek/custom/{$project}factory/res/images
```

## [FAQ10019] HDMI/MHL如何修改手机默认横竖屏显示方式

```
插入HDMI/MHL后，手机资源默认会横屏显示，如何去掉不用默认横屏显示，而根据G-sensor改变显示呢？

[SOLUTION]
请如下修改：
PhoneWindowManager.java
(alps/frameworks/base/policy/src/com/android/internal/policy/impl)

public int rotationForOrientationLw(int orientation, int lastRotation) {
    else if (mHdmiPlugged && mHdmiRotationLock && false) {  //添加红色部分
        // Ignore sensor when plugged into HDMI.
        // Note that the dock orientation overrides the HDMI orientation.
        preferredRotation = mHdmiRotation;
    }
    . . . . . .
}
```

## [FAQ08763] adb命令点亮屏幕说明

```
之前77平台在终端输入如下两个命令屏幕就可以点亮
echo on > /sys/power/state
echo 222 > /sys/class/leds/lcd-backlight/brightness

现在89平台输入这两个命令屏幕不能点亮，请问如何可以直接在终端通过命令来点亮屏幕？

[SOLUTION]
89以后平台和77之前的架构不一样，

可以如下操作测试：

在系统正常开启的时候，adb输入 
echo mem >/sys/power/state ==> kernel休眠
echo on >/sys/power/state  ==> kernel唤醒
echo 255 >/ sys/class/leds/lcd-backlight/brightness ==>点亮屏幕
这时候正常唤醒

在系统已经睡眠的时候，adb输入
echo on >/sys/power/state  ==> kernel唤醒
echo 255 >/ sys/class/leds/lcd-backlight/brightness ==>点亮屏幕
此时可以看到，背光已经被点亮了，然后再输入
./system/bin/boot_logo_updater
可以看到可以正常输出logo，说明adb cmd是可以正常唤醒系统的，并且LCM也是正常工作的。
不过现在ovl那边系统是disable的，所以只有黑色的数据。

75和77上面直接echo on >/sys/power/state就可以正常开启系统，89上面无法显示，是89的架构不同导致的，HWC那边在睡眠的时候就会关掉OVL这边的layer，故输入power on后只能显示黑色。
```

## [FAQ04402] 如何加载LCD相应的资源保证显示正常

```
1. 保证开机Logo可以正常显示
根据屏幕分辨率，在ProjectConfig.mk中修改宏BOOT_LOGO为相应的分辨率(如wvga/hvga/qhd……)，支持的分辨率可以在目录（Turnkey Project: mediatek/custom/common/lk/logo/）（AOSP Project：
bootable/bootloader/lk/dev/logo）中进行查找
如果在目录（Turnkey Project: mediatek/custom/common/lk/logo/）（AOSP Project：

bootable/bootloader/lk/dev/logo）中未找到屏幕相应的分辨率，请自行添加目录并添加相应的资源图片
2. 保证UI中的CP能够正常显示

需要根据屏幕分辨率，屏幕尺寸，计算DPI（dot per inch，每英寸像素数），再根据计算结果在ProjectConfig.mk中为宏MTK_PRODUCT_LOCALES添加相应的值(ldpi/mdpi/hdpi/xhdpi)

DPI计算方法
1)   利用勾股定理，计算屏幕对角线像素数 = (屏幕宽像素2+屏幕高像素2)0.5
2)   利用屏幕对角线像素数与屏幕尺寸计算DPI = 屏幕对角线像素数/屏幕尺寸
3)   以4.3英寸，720×1280屏幕为例，对角线像素数 = (7202+12802)0.5=1468.6，DPI = 1468.6/4.5 = 326.4
4)   根据dpi的值，选择适用的范围

如何根据DPI的值确定MTK_PRODUCT_LOCALES的参数，请参看下图
```

## [FAQ08889] 如何抓取hprof文件？

```
1. 命令行方式抓取，方法如下：

a) 通过输入adb命令的方式抓取，PIDXXX为对应进程的PID：
    adb remount
    adb shell chmod 0777 /data/misc
    adb shell kill -10 PIDXXX
b) 会在/data/misc目录下生成一个以pidXXX.hprof结尾的hprof文件。
c) 然后通过adb pull或其他方式将这个文件导出来即可。

2. 通过DDMS抓取：
a) 打开Eclipse，点击device窗口的Dump Hprof file 图标(绿色圆柱体，右边一条向下红色箭头线)
b) 等几秒中会弹出保存hporf的路径，然后就可以获取到当时的hprof了。

注意：hprof只能在ENG或开启了Root的User load上来抓取，这样才是有效的。
```

## [FAQ14644] 如何将GPRS/Edge Class改为Class 10

```
Method 1：Meta tool （Modify NVRAM）
other_LID->NVRAM_EF_CLASSMARK_RACAP_LID->1
Modify byte10 and byte12
    if byte10=0xb3,modify to byte10=0xab
    if byte10=0xb2,modify to byte10=0xaa
    byte12=0xd9, modify to byte12=0xd5

     /* BYTE 10:
                            * bit 8: multislot capability present,
                            * bit 7 ~ 3: mutlislot capability,
                            * bit 2: GPRS extended Dynamic Allocation cap =1
                            * bit 1 : RL indicator = 0 => R98 MS, 1 => R99 MS */

    /* BYTE 12: Lanslo 20060215: for selecting GPRS or EGPRS capability
                             * bit 8: PFC mode = 0b
                             * bit 7: EDGE multislot class present / EDGE support = 1b
                             * bit 6 ~ 2: EDGE multislot capability = 01100b
                             * bit 1: EDGE extended dynamic allocation capability = 1b
                             * Old value 0x80, new 0xd9(PFC on), 0x59 (PFC off) */
 Save NVRAM
Method 2：Modify nvram_data_items.c
For GPRS, change 0xb3 to oxab, 0xb2 to 0xaa
 #if defined(__EDGE_CARD_CLASS_10__) || defined(__GPRS_MULTISLOT_CLASS_10__)
                  0xab,   /* Default GPRS multislot class 10, ext DA support, R99 */
   #else
                  0xb3,  /* Default GPRS multislot class 12, ext DA support, R99 */
   #endif
#else /* __R99__*/
   #if defined(__EDGE_CARD_CLASS_10__) || defined(__GPRS_MULTISLOT_CLASS_10__)
                  0xaa,   /* Default GPRS multislot class 10, ext DA support, R98 */
   #else
                  0xb2,  /* Default GPRS multislot class 12, ext DA support, R98 */
   #endif
#endif /* __R99__ */
For EDGE, change 0xD9 to 0xD5
#ifdef __EGPRS_MODE__
   #if defined(__EDGE_CARD_CLASS_10__) || defined(__EDGE_MULTISLOT_CLASS_10__)
                  0xD5,   /* PFC on, EGPRS multislot class 10, Ext DA support */
   #else
                  0xD9,   /* PFC on, EGPRS multislot class 12, Ext DA support */
   #endif
 
Method 3：MTK builds code
```

## [FAQ14620] [Speech Common] 如何使2G通话支持AMR_WB编码

```
MTK release给客户的code默认情况为：
2G不支持AMR_WB，3G支持AMR_WB
如果贵司希望2G也要支持AMR_WB请参考此FAQ
[SOLUTION]
1.将custom_l4_utility.c的custom_check_white_list()里面所有的*is_gsm_white_list = KAL_TRUE;
2.修改好后replace modem load并format modem NVRAM
replace modem load方法：
 – 把modem的bin file重命名为modem.img并放在adb.exe路径下
 – adb remount
 – adb push modem.img /system/etc/firmware/modem.img
 – adb shell sync
 – adb shell reboot
format modem NVRAM方法：
 – adb shell 
 – cd data/nvram 
 – rm –r md 
 – reboot
```

## [FAQ10979] [SP Flash Tool]What is the difference between BROM VCOM and Pre-Loader VCOM?

```
Both BROM and Pre-Loader VCOM can be used to connect FlashTool or META tool, by which the device boots to download mode or META mode.

However, there are still some differences:
1. Different triggering ways and time-outs (USB only)
BROM: Usually you have to press download key(KCOL0) to force BROM VCOM; 3S time-out by default.
With an empty device, it boots to BROM mode with 40S time-out by default.
Pre-Loader: Always generates VCOM when USB cable in; 2.5S time-out by default.
Also called the Pre-Loader VCOM auto-detection.

2. Different handshaking protocols for PC tool (for both USB and UART)
The PC tool have to distinguishes VCOM as  BROM VCOM or Pre-Loader VCOM,

and applies the right commands or protocol to successfully connect to the device.
This action is done by MTK FlashtoolLib.dll for USB, you do not have to configure anything.
However, for UART VCOM, the device ID is not defined by BROM or Pre-Loader;
therefore PC tool can not distinguish between BROM and Pre-Loader, and has to configure it manually.

By default, MTK META tool supports Pre-Loader UART VCOM only.

3. Different USB capability and spec(USB only)
BROM VCOM is based on USB 1.1 with HW code stack(BROM means Boot-ROM in chip)
Pre-Loader VCOM is based on USB 2.0 with open source code stack, 
you can update Pre-Loader to change its flow and behavior.

4. Device side environment and HW module state may be different (for both USB and UART)
Like USB/PLL clock/DDR clock/External DRAM and other modules, it may be inited or re-inited.

5. For security project, BROM and Pre-Loader mode have different authority designs. 
There is no difference among non-security projects.

This applies to both USB and UART VCOM.

Note. "VCOM" mentioned here stands for both USB and UART VCOM, if not dedicated.
```

## [FAQ02249] IMEI、IMEISV、SVN

```
Description
关于IMEI、IMEISV、SVN
Solution
概念：
IMEI(International Mobile Equipment Identity)是国际移动设备身份码的缩写，固化于手机中，每个手机的IMEI应该是唯一、不变的。
IMEI码由GSM（全球移动通信协会）统一分配，授权BABT（英国通信认证管理委员会）审受。
2004年以前的标准中，IMEI共15位（取值必须是0~9的数字），依次分别是6位TAC、2位FAC、6位SNR、1位CD校验位。
2004年以后的标准中删去了最后的1位CD校验位，新加入了2位SVN(software version number)，故称IMEISV，共16位（取值仍必须是0~9的数字）。
SVN的取值也必须是0~9的数字，而且99这个值是被保留的。
网络对于IMEI或者IMEISV的检查：
网络对于IMEI或者IMEISV的检查是非必须的，各运营商会按照自己的策略在通信的某个阶段检查手机的IMEI或者IMEISV，并可能做进一步的动作。
可能检查IMEI或者IMEISV的阶段有：
开机注册网络时
周期性位置更新时
进行接打电话、收发短信、上网等业务时
或者其他（根据运营商的策略决定）
网络检查的时候会指明检查IMEI还是IMEISV，如果是检查IMEI，则手机许上报前14位IMEI（1位CD校验位不上报），如果是检查IMEISV，则手机上报16位IMEISV
 
与IMEI和IMEISV相关的协议标准是3GPP TS 23.003
```

## [FAQ02069] NITZ网络自动对时功能不起作用

```
在手机选项中开启了自动更新时间/日期，但是时间日期并没有自动更新
Root Cause
1. 网络不支持NITZ功能
2. NITZ信息在PS域(GPRS/EDGE)上发送
Solution
1. 请用对比机测试看是否能自动更新时间，如果其他平台手机也不行则可能是当地的移动网络不支持NITZ功能，或者可以在开机过程的catcher log中搜索是否有MM_Information这个消息，没有的话说明网络不支持NITZ
2. 请把GPRS连接设置为“一直在线”，或者打开会上网的程序以激活GPRS连接看时间是否能更新
```

## [FAQ02064] 信号跳变严重

```
在空闲待机状态下，信号跳变严重
Root Cause
可能的原因有：
天线性能不良
RF校准数据不正确
当时环境中的信号确实不稳定
金属外壳或者手握的方法使信号衰减
插入USB线时的电磁干扰影响到天线

Solution
首先检查以上各种可能的原因，如果都排除后还是信号跳变严重，请抓取log提交给我司分析
```

## [FAQ02411] [Field Trial]怎样从log中查看手机支持哪些GEA加密方法

```
首先连接上catcher抓取FT的log。做GPRS attach的动作。
在trace中查找[MS->NW]GMM_ATTACH_REQUEST.在primitive log窗口中。
点击[MS->NW]GMM_ATTACH_REQUEST他后面的第一条 DATA_REQ消息。
察看peer_message.08 01 02 f5 e0 41 08 02 05 f4 e2 38...
从第三个octect开始，就是MS NETWORK CAPABILITY
02表示MS NW CAPABILITY的长度为两个octect

8 7 6 5 4 3 2 1
1 1 1 1 0 1 0 1
1 1 1 0 0 0 0 0

第1排第8bit表示GEA/1=1表示avilable。
第2排第2-第7bit开始，从高位到低位表示GEA/2-GEA/7，因此
GEA/2 avilable
GEA/3 avilable
GEA/4 not avilable
GEA/5 not avilable
GEA/6 not avilable
GEA/7 not avilable
```

## [FAQ08885] Activity和Broadcast行为不正常时，如何抓取log？

```
1)    请使用mtklog抓取，保证有main log和event log产生
2)     对于activity行为不正常，请打开activity的log开关再抓取：
adb shell dumpsys activity log a on
这个命令只对当次开机有效

3)    对于broadcast行为不正常，请打开broadcast的log开关再抓取：
adb shell dumpsys activity log br on
这个命令只对当次开机有效

4)    请记录下问题发生时手机上的时间
```

## [FAQ14456] system.img>2G导致编译otapackage时报错如何处理

```
当system分区预制过多apk时如果image size超过2G 在make otapackage时会报如下错误
zipfile.LargeZipFile: Zipfile size would require ZIP64 extensions
或
in writestr zinfo.CRC = crc32(bytes) & 0xffffffff # CRC-32 checksum OverflowError: size does not fit in an int

[SOLUTION]
这是由于python 2.7 脚本限制
参考/prebuilts/python/linux-x86/2.7.5/lib/python2.7/
ZIP64_LIMIT = (1 << 31) - 1       (31bits相当于2G)

python 3.0+ 已提供solution,  但目前Android 编译环境使用2.x 语法与 3.0不兼容
对此google提供一个workaround solution
参考以下网址有提供详细patch内容
https://android-review.googlesource.com/#/c/142984 


另外还需修改以下脚本  build/tool/releasetools/
1、sign_target_files_apks
2、replace_img_from_target_files.py 
3、ota_from_target_files
4、img_from_target_files.py 
5 、img_from_target_files
6、common.py 
7、add_img_to_target_files
针对所有zipfile.ZipFile  添加最后 allowZip64=True 参数值
ex:
原始文件：
output_zip = zipfile.ZipFile(filename, "a", compression=zipfile.ZIP_DEFLATED) 
修改为：
output_zip = zipfile.ZipFile(filename, "a", compression=zipfile.ZIP_DEFLATED, allowZip64=True)
```

## [FAQ14484] 如何修改L版本recovery mode 小机器人界面进入菜单，由volume up&power改为直接按power(如同KK以前版本)

```
L版本进入recovery mode 会出现小机器人界面
需同时按volume up & power 才能进入菜单，
如何改为像KK以前版本，直接按power 进入菜单
 
[SOLUTION]
 
1.alps/bootable/recovery/Ui.cpp

key_long_press(false), 
key_down_count(0), 
enable_reboot(true), 
+ recovery_show_menu_flag(0), 
consecutive_power_keys(false), 
consecutive_alternate_keys(0), 

RecoveryUI::KeyAction RecoveryUI::CheckKey(int key) { 

+    if (key == KEY_POWER && recovery_show_menu_flag==false) { 
+      recovery_show_menu_flag=true; 
+      return TOGGLE; 
+    } 

if ((IsKeyPressed(KEY_POWER) && key == KEY_VOLUMEUP) || key == KEY_HOME) { 

2.alps/bootable/recovery/ui.h

int rel_sum; 
+ bool recovery_show_menu_flag; 
int consecutive_power_keys; 
int consecutive_alternate_keys; 
```

## [FAQ14229] 不编译原本的camera，只保留Gallery

```
当您有如下需求时，可以参考该FAQ：
目前gallery跟camera都是属于同一个进程，并且编译出来只有一个gallery2.apk。
如果有自己单独的camera apk，原生的Gallery2.apk中只希望包含gallery，不需要camera。
 
[solution]
如下修改：
1.修改gallery2中的android.mk，将camera相关的都注释掉。
2.将camera中的btn_shutter_video_pressed文件移到gallery2的drawable
3.将gallery2中将video_preferences.xml文件删除
```

## [FAQ14424] 拍照时强制开多颗CPU

```
进入相机拍照，拍照动画和拍照声音会概率性发生卡顿

[ANALYSE]

此问题发生的原因是在拍照期间概率性打开的CPU个数不够处理拍照时loading，所以会出现拍照动画和拍照声音卡顿的问题。

解决方法：拍照时强制开多颗（3或者4）CPU，足以处理拍照时的loading。

L版本上可以按以下方法修改。

[SOLUTION]

在PhotoMode.java (alps\packages\apps\camera\src\com\mediatek\camera\mode) 中：

一，import PerfServiceWrapper，IPerfServiceWrapper
import com.mediatek.perfservice.PerfServiceWrapper;
import com.mediatek.perfservice.IPerfServiceWrapper;
二，添加如下变量：
IPerfServiceWrapper mPerfService = null;
int mPerfHandle = -1;
三，public PhotoMode(ICameraContext cameraContext)中加入：
if(mPerfService!=null&&mPerfHandle==-1)
{
mPerfHandle=mPerfService.userReg(4,0);//第一个参数表示要开的CPU个数
}
四，public boolean capture()中加入
if(mPerfService!=null&&mPerfHandle==-1)
{
mPerfService.userEnableTimeout(mPerfHandle,10);//第二个参数表示多少秒之后timeout
}
```

## [FAQ14396] 【Audio Profile】如何取消安全音量警示框？

```
当插入有线耳机调节音量时，有一个音量保护，当超过某一个值时会弹出安全音量警示框，如何使之默认不显示？

[SOLUTION]
KK版本：
关闭宏 MTK_SAFEMEDIA_SUPPORT
L版本：
alps\frameworks\base\core\res\res\config.xml 里的 config-safe_media_volume_enabled 设为 false
```

## [FAQ14013] setting-关于手机-法律信息中对源码全选后 操作无反应

```
由于该网页非常大，所以全选这个操作非常费时，而且还有可能导致mem问题。
建议修改是去掉select all的action bar
[SOLUTION]
可以通过以下改动去掉ActionBar中的Select All功能
也就是在这个节目不show出这个选中全部的acitonbar，

external/chromium_org/content/public/android/java/src/org/chromium/content/browser/SelectActionModeCallback.java
...
private void createActionMenu(ActionMode mode, Menu menu) {
    mode.getMenuInflater().inflate(R.menu.select_action_menu, menu);
    /// M: delete select all in settings app @{
    /// M: delete select all in settings app @{
    if (mContext.getPackageName().contains("com.android.settings")) {
        menu.removeItem(R.id.select_action_menu_select_all);
    }
    /// @}
...
```

## [FAQ04513] 如何添加新的字库

```
新增字库有2种方法，一是替换原有的字库、二是加入到系统字库，其具体方法如下：

一、替换系统原有的字库：
如替换中文字库，把这个三方字库重命名为DroidSansFallBack.ttf，并拷贝到alps\frameworks\base\data\fonts下进行替换，重新编译就行。
如需替换其他字库（请参考FAQ12255 ，FAQ04224 ）找出对应的字库并替换。

二、添加到系统字库
1.         把对应的字库文件拷贝到frameworks/base/data/fonts下
2.         修改fallback_fonts.xml (frameworks/base/data/fonts)文件
<family>
    <fileset>
        <file>myfont.ttf </file>
    </fileset>
</family>

添加字库的时候需要把自己需要添加的字库写到fallback_fonts.xml 文件的前面，
如果写到结尾处如果之前的字库有该字体就会使得自己添加的字库无法生效。

（2.1 ） 在ANDROID L上同时需要在framework/base/data/fonts/目录下FONTS.XM文件中加入定义如
<font weight="100" style="normal">Roboto-Thin.ttf</font>
（weight代表字体的粗细 style是字体风格。可以根据贵司自定义字库和FONT文件中的字库定义）（其他android版本无需这个步骤）

3.         修改fonts.mk (frameworks/base/data/fonts)

a、ICS
PRODUCT_COPY_FILES := \
......
frameworks/base/data/fonts/NewFontFile.ttf:system/fonts/myfont.ttf \

b、JB
PRODUCT_PACKAGES:= \
myfont.ttf \
DroidSansFallback.ttf  \
......

4. 对于JB2,JB3,JB5,JB9,KK,L还需修改Android.mk
ifeq ($(MINIMAL_FONT_FOOTPRINT),true)
……
else # !MINIMAL_FONT
font_src_files += 
myfont.ttf \
……

5.对于GB版本的添加方法如下
1) 拷贝myfont.ttf文件到 alps\frameworks\base\data\fonts下
2) 修改frameworks/base/data/fonts/Android.mk文件：
copy_from := \ 
DroidSansMono.ttf \ 
myfont.ttf\ 
……

3) 修改external/skia/src/ports/SkFontHost_android.cpp 文件：
//增加以下语句
{"myfont.ttf", gFBNames}, 

6.         重新编译工程，download bin到手机测试。
```

## [FAQ09809] [NW]运营商名称支持多语言

```
运营商的名称显示，和多个方面有关系，在阅读本FAQ之前建议先参考
“FAQ09394 [NW]网络运营商名称显示&SIM名称显示”
 
如FAQ09394所讲，运营商名称有4种来源，这里讲到的只会是第4种，也就是存储在xml中的，也只有用这种来源显示的名字才能扩展成支持多语言。那在xml中的，只有一种显示语言，就是spn这个字段的内容，如果切换语言，这个名称也不会变。
 
例如Spn-conf.xml中有个字段<spnOverrides numeric="31000" spn="NEPW"/>，也就是运营商的plmn是31000，其对应的名称是“NEPW”。当运营商的来源是xml时，那这种case下这个运营商的名称会显示“NEPW”，那即使当前手机切换到其他语言，仍然显示的是“NEPW”。
 
[SOLUTION]
有了上面的背景，那就切入正题，要想在这种case下(当运营商的来源是xml)支持多语言显示，就要在对应res中添加一个Strings，然后再添加各种语言的翻译，然后显示的时候就用res中string，而不用读取xml中的spn了。 具体做法如下:
(1)在alps\mediatek\frameworks\base\res\res\values\Strings.xml(L之后的版本：alps\vendor\mediatek\proprietary\frameworks\base\res\res\values\strings.xml)中定义个字串,其名称为A
(2)在同res目录下的其他values添加A对应的语言翻译
(3)在alps\mediatek\frameworks\base\res\res\values\public.xml (L之后的版本：alps\vendor\mediatek\proprietary\frameworks\base\res\res\values\ public.xml)中添加A的id, id取值type为string的那一组的最后一个string的id+1 
(4)在alps\frameworks\opt\telephony\src\java\com\android\internal\telephony\Ril.java (L之后的版本：alps\frameworks\opt\telephony\src\java\com\android\internal\telephony\uicc\SpnOverride.java)中的lookupOperatorName()方法，依照numeric等于A运营商的plmn，其operName就是这个字串A的内容。
 
因为运营商有很多，把所有的运营商名称都换成这个样子比较耗工作量(请按照需求添加)。
 
注: 目前只支持实体运营商，MVNO还不支持
```

## [FAQ12075] 如何让 keguard run 在 com.android.keyguard 进程

```
如何让 keguard run 在 com.android.keyguard 进程
[SOLUTION]
KK 上, keyguard 默认会 run 在 com.android.systemui 进程中
如果需要将 keyguard run 在 com.android.keyguard 进程中
请修改 alps\frameworks\base\packages\Keyguard\res\values\mtk_config.xml
- <string name="keyguard_process_name">com.android.systemui</string>
+ <string name="keyguard_process_name">com.android.keyguard</string>

L上keyguard作为SystemUI的一个lib,不再是一个独立的apk,不能运行在单独的进程。
```

## [FAQ08700] 锁屏界面播放音乐或者FM时, 按音量键没有VolumePanel显示

```
在 Keyguard 界面，播放music 或者FM时，按音量键可以调节音量大小，但是不显示出 VolumePanel, 这是 Google  default design，Google 原生对比机也是这样的行为。

在 Keyguard 出现的時候，之所以不显示 VolumePanel 是因为 KeyguardViewBase .interceptMediaKey()把 volume 相关的 keys 拦下來，直接呼叫 AudioManager 的调整音量 API，直接调整音量，但不显示出 UI.

[SOLUTION]
如果希望在 Keyguard 画面下仍然要 show 出 VolumePanel，可以改写 KeyguardViewBase
private static final boolean KEYGUARD_MANAGES_VOLUME = true; // 把这里改成 false即可。
keyguard界面调节音量并显示VolumePanel只针对当前播放music 或者FM时，并不是调整当前情景模式的音量，二者不要混淆，后者目前不支持。
```

## [FAQ13826] android L 上切换字库方法

```
本FAQ介绍的是在 android  L上需要实现切换字库的功能。
 其他android版本上切换字库请参考FAQ09662 
[SOLUTION]
切换字体我司提供两种方法
方法一：无论是在何种语言下都使用客户定制的字库
方法二：在特定的语言下使用客户定制的字库

方法一
1.         把对应的字库文件拷贝到frameworks/base/data/fonts下

2.         修改fallback_fonts.xml (frameworks/base/data/fonts)文件（在文件中加入客户定制的字库）
例如
<family>
    <fileset>
       <file>myfont.ttf </file>
    </fileset>
</family>

3. framework/base/data/fonts/目录下FONTS.XM文件中加入定义如
<font weight="100" style="normal">Roboto-Thin.ttf</font>

方法二
前面两步和方法一的前两步一致，第三步改为如下
3. 如果是需要在某些语言需要切换字库而其他语言不需要，直接加入如下步骤。
framework\base\graphics\java\android\graphics\FontListParser.java
中的
private static Family readFamily(XmlPullParser parser) 这个函数中在下面对应位置加入红色代码
        throws XmlPullParserException, IOException {
    String name = parser.getAttributeValue(null, "name");
    String lang = parser.getAttributeValue(null, "lang");
    String variant = parser.getAttributeValue(null, "variant");
    List<Font> fonts = new ArrayList<Font>();
    while (parser.next() != XmlPullParser.END_TAG) {
        if (parser.getEventType() != XmlPullParser.START_TAG) continue;
        String tag = parser.getName();
        if (tag.equals("font")) {
            String weightStr = parser.getAttributeValue(null, "weight");
            int weight = weightStr == null ? 400 : Integer.parseInt(weightStr);
            boolean isItalic = "italic".equals(parser.getAttributeValue(null, "style"));
            String filename = parser.nextText();
 //added 
 String country_code=SystemProperties.get("persist.sys.lang_country", "GB");
 if(country_code.equals("RU") ||country_code.equals("UA")){
        if(filename.equals("Roboto-Regular.ttf")){
                      filename = "RobotoCondensed-Regular.ttf";
  }
}
 //end
```

## [FAQ14324] [Audio App]L1(>=5.1)版本, 后台播放音乐，浏览器访问百度音乐首页，后台音乐不会停

```
L1 之后的版本, 后台播放音乐的状态下,使用浏览器(google chromium )访问百度音乐首页, 后台音乐不会停止播放
而 KK 或之前的版本, 相同的情况下, 后台音乐会停止播放

[SOLUTION]
这个问题是 L1 版本所特有的, 通过分析我司发现:

chromium 浏览器在播放百度首页上音乐的时候, 去 requestAudioFocus 时发出的通知是 AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK, 这个通知不会停止其它程序的声音输出,
但会使其它程序的声音输出暂时变低一下. 这个是 google chromium ap 行为.

相比于 L 或之前 KK 的版本, 其 requestAudioFocus 时发出的通知是 AUDIOFOCUS_LOSS,
所以后台音乐会停止播放
```

## [FAQ13715] [Gallery] 如何修改gallery的背景色

```
Gallery的背景色定义在：
Gallery2/res/values/colors.xml 文件中

<!-- configuration for album set page -->
<color name="albumset_background">#1A1A1A</color>

<!-- configuration for album page -->
<color name="album_background">#1A1A1A</color>

<!-- configuration for photo page -->
<color name="photo_background">#1A1A1A</color>

上述3个定义分别对应了gallery3个page的背景色；
如果需要修改背景色为黑色，则需要将对应值修改为#000000；
如果需要修改背景色为白色，则需要将对应值修改为#FFFFFF。

L版本补充说明：
在L版本Photopage页面，背景色不再从上述文件中获得，则第三项修改不起效；
请参照如下方式进行修改：
PhotoPage.java
protected float[] getBackgroundColor() {
    if (mModel != null && mModel.isCamera(0)) {
        mPhotoPageBackgroundColor[0] = 0.0f;
    } else {
        mPhotoPageBackgroundColor[0] = 1.0f;
        mPhotoPageBackgroundColor[1] = 1.0f;
        mPhotoPageBackgroundColor[2] = 1.0f;
        mPhotoPageBackgroundColor[3] = 1.0f;
        Log.d(TAG, "PhotoPage.getBackgroundColor");
    }
    mBackgroundColor = mPhotoPageBackgroundColor;
    return mPhotoPageBackgroundColor;
}
如上蓝色标示位置，都修改为1.0f则是白色；如果都修改为0.0f则是对应黑色。


补充问题分析：
修改整个window的theme为白色，再修改以上背景色为白色后，进入gallery时仍会闪出一帧黑色背景：
可尝试修改Gallery2/res/layout/gl_root_group.xml文件如下：
<View android:id="@+id/gl_root_cover"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="@android:color/black"
    android:visibility="gone"/>
请将android:background="@android:color/black"  颜色修改为白色。
```

## [FAQ03851] 打开/关闭RDS方法

```
目前没有宏来切换RDS的开启与关闭，如果需要修改的话必须通过修改代码来完成。具体如下：
1、Fmradioservice在启动过程中会调用isRDSSupported（）从而调用native 层的isRDSsupport()来获取RDS的开关状态，如下代码片段：
public boolean isRDSSupported() {
    boolean isRDSSupported = (FMRadioNative.isRDSsupport() == 1);
    LogUtils.d(TAG, "FMRadioService.isRDSSupported: " + isRDSSupported);
    return isRDSSupported;
}直接修改上层APK上的接口isRDSSupported即可。

2、Natvie 层isRDSsupport()会调用drivr端的设定，如下：

case FM_IOCTL_RDS_SUPPORT: {
    fm_s32 support = FM_RDS_ENABLE;
    WCN_DBG(FM_NTC | MAIN, "FM_IOCTL_RDS_SUPPORT\n");
    if (copy_to_user((void*)arg, &support, sizeof(fm_s32))) {
        ret = -EFAULT;
        goto out;
    }
    break;
由上面这段代码可以看到driver端默认RDS为打开状态。

通过以上的描述可以看到，打开/关闭 RDS有两种方式：

方法一：在Fmradioservice --> isRDSSupported 中直接将变量isRDSSupported值修改掉。0：关闭RDS，1：打开RDS

方法二： 修改driver端的设定，即native层将case FM_IOCTL_RDS_SUPPORT中fm_s32 support = FM_RDS_ENABLE值改掉， 0：关闭RDS， 1：打开RDS
```

## [FAQ10669] 设定FM打开时默认频率的方法

```
同的FM chip 会包含各种不同的频率反馈以满足不同国家/区域的使用，鉴于此情况就会有FM打开时默认开启的频率的修改需求。
此FAQ 提供客户定制自己FM 开启时的默认频率。由于此部分的设定是在java层，所以不同平台、不同chip修改方法都是一样的。
具体方法如下。

修改 alps/mediatek/packages/apps/FMRadio/src/com/mediatek/FMRadio/FMRadioUtils.java 中
public static final int DEFAULT_STATION = FeatureOption.MTK_FM_50KHZ_SUPPORT ? 8000 : 800;
```

## [FAQ14168] GPS问题调试—MobileLog中有关GPS关键LOG的释义

```
在mobile log中，有很多GPS相关的log出现在main log和kernel log、properties文件中，他们的意思是什么，通过这篇文档进行总结，以便在处理GPS 问题时，能够根据这些log快速的收敛问题。

特别先提醒，这些log并非所有的软件版本上都有，所以只需要根据已经的log结合这份文档即可。

l  Properties文件，可以收集到该问题相关的版本信息

1.   168 [ro.mediatek.version.branch]: [KK2.MP13]
2.   169 [ro.mediatek.version.release]: [ALPS.KK2.MP13.V1.1]
3.   222 [gsm.project.baseband]: [6752_LWT_KK_MD1_HW(DEFAULT)]
4.   227 [gsm.version.baseband]: [MOLY.LR9.W1423.MD.LWTG.CMCC.MP.V1.P33

l  Kernel log文件

1.    16468 <3>[  280.806548] (0)[341:mtk_wmtd][WMT-PLAT][I]wmt_plat_dump_pin_conf:GPS_SYNC(not defined)

GPS SYNC pin不用配置

2.   16469 <3>[  280.806557] (0)[341:mtk_wmtd][WMT-PLAT][I]wmt_plat_dump_pin_conf:GPS_LNA(GPIO-2147483580)

GPIO-2147483580表示的GPIO68,这个GPIO的配置在“GPS问题大全.docx”的4.1章节有提到如何配置该GPIO。如果没有使用外部LNA，那么就不需要配置该GPIO了。

3.    16626 <3>[  280.852549] (1)[341:mtk_wmtd][WMT-CONF][I]wmt_conf_parse:#32(co_clock_flag)=>0x0

从这一条中的co_clock_flag=0表示采用的TCXO的方案，如果为1表示采用的是Coclock.

4.    17055 <4>[  281.533172] (0)[237:mnld][GPS] GPS_open: WMT turn on GPS OK!
打开GPS

5.    45005 <4>[  437.737848] (0)[237:mnld][GPS] GPS_close: WMT turn off GPS OK!
关闭GPS
 
l  Main log文件

1.   03400 05-13 16:07:58.210429   766  1337 V Provider/Settings:  from settings cache , name = location_providers_allowed , value = gps,network

Value后面的值表示的定位方式，这里表示gps定位和网络定位。

2.   04132 05-13 16:08:06.191351   766  1387 D LocationManagerService: request 42815df8 gps Request[ACCURACY_FINE gps requested=0 fastest=0] from com.mediatek.ygps(1001)

这里是表示gps定位，其应用是ygps，这一点经常会被用到debug 问题

3.   04142 05-13 16:08:06.193005   766   787 D GpsLocationProvider: startNavigating, singleShot is false

打开GPS

4.   04227 05-13 16:08:06.295280   237   237 D mnl_linux: mnl_utl_load_property: EPO_Enabled: 1

这里表示EPO使能,EPO是可以提供星历辅助数据

5.   04228 05-13 16:08:06.295286   237   237 D mnl_linux: mnl_utl_load_property: BEE_Enabled: 1

这里表示BEE使能，BEE是可以提供星历辅助数据。

6.   04229 05-13 16:08:06.295548   237   237 D mnl_linux: mnl_utl_load_property: SUPL_Enabled: 1

这里表示AGPS使能

7.   04238 05-13 16:08:06.296514   237   237 D MNLD    : launch_daemon_thread: chip_id is 0x6752

GPS chip是6752

8.   04279 05-13 16:08:06.301853   237   237 D mnl_linux: mtk_gps_sys_init: gps_tcxo_hz : 26000000

采用26M时钟

9.   04280 05-13 16:08:06.301861   237   237 D mnl_linux: mtk_gps_sys_init: gps_tcxo_ppb : 0

0表示时钟频偏采用默认2000ppm

10.  04286 05-13 16:08:06.301995   237   237 D MNLD    : linux_gps_init: TCXO

表示采用的是TCXO，非省晶体方案

11.  03928 01-14 23:36:49.154   171   171 D MNLD    : linux_gps_init: GPS coclock

表示采用的是Coclock，省晶体方案

12.  05-13 16:08:07.030960   237   237 D MNLD    : linux_gps_init: GNSSOPMode: 2

这里GNSSOPMode=2

13.  17129 05-15 03:36:25.760   288   325 D agps    : [agps][n][AGPS] [MNL] read  pmtk=[$PMTK764,0,0,0,1,0,128*3D

PMTK764这个log可以知道当前是支持什么卫星系统的， 三个0后面的1表示支持1种卫星系统；

1后面的0和128表示对这个卫星系统的说明，0表示是GPS卫星

0042 $$PMTK764,0,0,0,2,0,128,4,128*15

这个PMTK764中的2表示支持2种卫星系统，（0，128）表示GPS卫星系统，（4，128）表示GLONASS

14.  05-13 16:08:07.031018   237   237 D MNLD    : linux_gps_init: init_cfg.C0 = 0

如果是Coclock方案，0表示没有校准

15.  05-13 16:08:07.031026   237   237 D MNLD    : linux_gps_init: init_cfg.C1 = 0

如果是Coclock方案，0表示没有校准

16.  05-13 16:08:07.031035   237   237 D MNLD    : linux_gps_init: init_cfg.initU = 0

如果是Coclock方案，0表示没有校准

17.  05-13 16:08:07.031043   237   237 D MNLD    : linux_gps_init: init_cfg.lastU = 0

如果是Coclock方案，0表示没有校准

18.  04377 05-13 16:08:07.036831   237   237 D MNLD    : linux_gps_init: dbg_file_name (/data/misc/gpsdebug.log) 

这里表示gps debug log存放在/data/misc下面

19.  016963 05-12 09:48:22.431   266   266 D MNLD    : linux_gps_init: dbg_file_name (/storage/sdcard0/mtklog/gpsdbglog/gpsdebug.log) 

这里表示gps debug log存放在/storage/sdcard0/mtklog/gpsdbglog/下面

20.  04408 05-13 16:08:07.526851   237  2792 D mnl_linux: mtk_gps_sys_nmea_output_to_app: $PMTK010,001*2E

PMTK010表示GPS软件已经跑正常了，这一点是判断GPS软件正常工作常用的手段。

21.  04419 05-13 16:08:07.531313   237  2792 D mnl_linux: $GNRMC,080807.009,V,3953.7875,N,11620.6085,E,0.000,0.00,130515,,,N*5B

NMEA也是判断GPS软件正常工作常用的手段

22.  04439 05-13 16:08:07.531876   766   787 D gps_mtk : mtk_gps_start: line = 3644sta.status = GPS_STATUS_ENGINE_ON

通过该log“GPS_STATUS_ENGINE_ON”，在手机最上面的状态栏，是可以看到GPS定位状态图标

23.  05944 05-13 16:08:20.550455   766  2574 D GpsLocationProvider: TTFF: 13003

表示GPS的定位时间死13.003s

24.  25275 05-13 16:10:42.491472   766   787 D GpsLocationProvider: stopNavigating

关闭GPS

25.  25366 05-13 16:10:42.511134   766  2574 D gps_mtk : mnld_to_gps_handler: line = 3020sta.status = GPS_STATUS_ENGINE_OFF

通过该log“GPS_STATUS_ENGINE_OFF”，在手机最上面的状态栏，GPS定位状态图标消失

26.  25378 05-13 16:10:42.795323   766  1376 D gps_mtk : mtk_gps_delete_aiding_data: line = 3898Send MNL_CMD_RESTART_FULL in HAL

这里的log表示是FULL start，如果看到下面图片的log，请对应查找

27.  083004 05-12 09:50:00.510   827  1468 D LocationManagerService: request 1434db9 gps Request[ACCURACY_FINE gps requested=+10s0ms fastest=+10s0ms] from com.tct.weather(10052)

108716 05-12 09:50:31.004   827  1468 I LocationManagerService: remove 1434db9

通过上面的log可得知GPS定位开始的时间和结束的时间，是com.tct.weather这个应用打开的GPS，这里的1434db9很重要，是你判断结束的对应log点

28. 
109104 05-12 09:50:31.404   827  8800 V GpsLocationProvider: GNSS SV count: 9 ephemerisMask: 0 almanacMask: 0
109105 05-12 09:50:31.405   827  8800 V GpsLocationProvider: sv: 22 snr: 0.0 elev: 66.0 azimuth: 198.0
109106 05-12 09:50:31.406   827  8800 V GpsLocationProvider: sv: 14 snr: 0.0 elev: 54.0 azimuth: 15.0
109107 05-12 09:50:31.408   827  8800 V GpsLocationProvider: sv: 25 snr: 3.0 elev: 52.0 azimuth: 55.0   U
109110 05-12 09:50:31.409   827  8800 V GpsLocationProvider: sv: 31 snr: 2.3600001 elev: 48.0 azimuth: 289.0   U
109111 05-12 09:50:31.409   827  8800 V GpsLocationProvider: sv: 18 snr: 2.48 elev: 36.0 azimuth: 162.0   U
109113 05-12 09:50:31.410   827  8800 V GpsLocationProvider: sv: 32 snr: 0.0 elev: 24.0 azimuth: 318.0
109116 05-12 09:50:31.412   827  8800 V GpsLocationProvider: sv: 12 snr: 3.2 elev: 16.0 azimuth: 39.0   U
109117 05-12 09:50:31.412   827  8800 V GpsLocationProvider: sv: 29 snr: 0.0 elev: 13.0 azimuth: 115.0
109120 05-12 09:50:31.413   827  8800 V GpsLocationProvider: sv: 4 snr: 0.0 elev: 7.0 azimuth: 280.0
从上面的log上可以看到可视卫星有9颗，每颗卫星的ID、SNR、ELEV、AZIMUTH

29. 
109109 05-12 09:50:31.408   827   860 D LocationManagerService: incoming location: Location[gps 23.032397,114.349453 acc=7 et=+35m46s616ms alt=43.0 vel=0.0 bear=10.53 {Bundle[{}]}]

有这行log，表示这一秒一定是定位成功的，这个log中的gps表示这个定位成功的位置是GPS提供出来的。

30.  
04520 05-13 16:08:07.548131   766  1378 D LocationManagerService: request 42509ab8 network Request[POWER_LOW network requested=+1s0ms fastest=+1s0ms] from com.mediatek.nlpservice(10047)
04566 05-13 16:08:07.576011   766   787 D LocationManagerService: incoming location: Location[network 39.896459,116.343475 acc=257 et=+23m51s504ms]
04580 05-13 16:08:07.582307   766  1226 I LocationManagerService: remove 42509ab8
从这几行log中的“network Request[POWER_LOW network requested”表示是网络定位，是” com.mediatek.nlpservice”应用或者是服务去请求的，网络定位比较快，可以看到立即就拿到了位置，根据42509ab8，可以判断什么时候关闭了这次网络定位

31.  
04581 05-13 16:08:07.582319   766   787 D gps_mtk : mtk_gps_inject_location: line = 3845ts.tv_sec= 229820461603619098,ts.tv_nsec = 8953004843085074432
04582 05-13 16:08:07.582352   766   787 D gps_mtk : mtk_gps_inject_location: line = 3846inject location lati= 39.896459, longi = 116.343475,accuracy =257.000000

这里的log表示将位置辅助和参考时间数据注入给GPS 模块，来加速GPS定位。
```

## [FAQ07950] 如何分析GPSLog

```
对于GPSLog有两种类型的文件，主要是依据其文件内容划分。文件内部存储的只是$GP开口的log，那么这种log称为NMEA log；文件内部除了$GP的log，还有其他的一些log，例如$PMTK的log等等，这种log称为GPS DebugLog。

其实一般情况下，可以通过NMEALog就可以看出来很多的信息。看NMEALog主要是对NMEA协议里的集中常用NMEA语句的各个字段熟悉即可。

1.   基本检查

GPGGA中可以得到UTC时间、经纬度、当前定位状态、使用的卫星数目、HDOP等等；

GPGSA中可以得到定位类型、所使用到的卫星ID；

GPGSV中可以得到可视卫星的数目，然后会一次列举出每科可视卫星的ID、方位角、仰角和信号强度；

GPRMC中可以得到UTC时间、定位状态、经纬度、速度、UTC日期；

GPACCURACY是我司加入的获取定位精度的语句。

2.   检查SNR

根据SNR值是很好的判断卫星信号强弱的方法，强信号是指CNR大于40db，中讯号是指 CNR大于30db，弱讯号是指CNR大于20db，20db以下视为极弱讯号。我司根据的spec:6颗卫星SNR>40db，可以达到CEP:3m。

在测试传导性能/整机性能的时候，打入-130dbm的信号，如果可以看到收到的卫星SNR>40.5db,这表示贵司的硬件GPS天线做的不错;如果是在35db以下，可能就是表示硬件GPS做的很差喽。

3.   缺少哪些辅助资讯

如果产看是否触发AGPS，需要从GPS debug Log中分析，搜索PMTK730这个语句，因为辅助数据主要是看时间、位置、星历这三个。$PMTK730,0,0,0,1,0,1,1,0：从这个语句中的一个1表示缺少星历、第二个1表示缺少位置、第三个1表示缺少时间。PMTK710表示获取星历辅助数据，PMTK712表示获取时间辅助资讯，PMTK713表示缺少位置辅助资讯。

当所有的辅助资讯都有拿到之后，显示出来的PMTK730后面的都会是0.

4.   查看卫星分布如何

通过看GPGSV里的卫星的方位角和仰角可以判断卫星的位置，通过判断GPGSA里的卫星可以知道当前定位使用了哪些卫星，这样就可以知道当前使用定位计算的这些卫星的卫星分布如何、信号强度如何。

通过GPGGA里的HDOP来判断当前卫星的分布如何，这个值越小越好。卫星分布越好，越有可能产生的定位精度越高。所以HDOP是定位精度的充分但非必要条件。

5.   当前有哪些星历被保存

通过搜索GPS Debug Log文件中PMTKEPH，该关键词会告诉你当前有哪些卫星是已经解析下来辅助资讯的。例如PMTKEPH,3,12,15,18表示有3颗卫星已经解析下来了星历数据，他们的卫星ID 是12、15、18.

6.   如何判断GPS已经正常工作

GPS工作起来首先会在GPS debug Log中打印出来PMTK010的字样，所以通过判断这个可以知道GPS是否有正常工作起来。

7.   星历数据是来自EPO、HotStill还是实时解算

如果知道当前使用到的卫星星历数据是来自实时接收解算下来的星历、还是EPP,或者是HotStill，同样也是通过判断PMTKEPH。

如果该关键字后面跟着的卫星ID是正整数，那么是实时接收解算下来的星历；

如果是浮点数，而且是负数，但是小数点后都是0，表示的是EPO；

如果是浮点数，而且是负数，但是小数点后的是非0，表示的是Hotstill；

8.   判断AGPS/EPO/HotStill是否工作

从GPS Debug log中搜索到wk，epo表示EPO有工作；

从GPS debug log中搜索到wkbee表示Hotstill有工作；

从GPS Debug log中搜索到wkssi表示AGPS有工作。

9.   H/W/C/F GPS Start

通过从打开GPS的第一条GPGGA语句来确认是什么启动方式，如果该语句中的时间是235944，那么表示没有时间辅助资讯，这是完全冷启动；如果有时间信息，但是位置是8960.0000，N，0000.0000，E，这表示是冷启动；如果既有时间也有位置，可以看第一条PMTKEPH中是几颗有卫星的星历，如果一颗没有，那么这是暖启动；如果发现也有位置、时间、而且至少4颗以上的星历，那么这是热启动。

10. 定位

看定位精度，请以3D定位为准。因为2D定位下定位精度会很大。

11. 如何判断是否是coclock
000045.784,HBD,IF1,BOT,ClkType,254
这里的254表示是coclock，255表示是TCXO。
如果是coclock，那么可以通过如下log判断是否有校准成功。
000069 $PMTK013,32,ClkType,254,C0,1.373238,C1,-0.196573,k,1*24
12, 如何判断GPS power 成功。
请通过GPS_INIT_DONE来确认。
13，如何判断之前有没有定位成功过。
这在AGPS 认证测试中经常会用来判断测试前是否有3D fix过。
请通过PMTKDBG的倒数第五个数据是否非0，如下红色部分。
000103 $PMTKDBG,12,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,
0093,0001,0002,0000,0000,0022,0001,0000,0.0000,0.0224,0.0000,0.0000,0.0000,0.0000,*4C

14, 如何确认MNL Version。
通过000045.807,HBD,IF1,BOT,MNLVer,AXN_3.60,1312,MNL_VER_14011701ALPS05_3.60_06,22,40
15,如何确认acqusition、bit sync、subframe sync的状态。
请过如下log，下面log中表示捕获到9颗卫星，有9颗卫星已经bit sync，6颗卫星子帧同步。
$PMTK015,532335,6,438756,NACQ,9,NBS,9,NSFS,6,NEXS,6*6C
```

## [FAQ14127] GPS问题调试—NTP/NLP/EPO加速定位功能

```
NTP/NLP的加速定位功能，是由NTP提供时间辅助、NLP提供位置辅助，再加上EPO 提供星历辅助，旨在达到在有网络情况下，所有场景都是热启动。

 

这篇文档会介绍

1， NTP/NLP/EPO的下载和触发原理。

2， 如何check NTP/NLP/EPO起到作用。

[SOLUTION]

NTP/NLP主要是加速定位时间TTFF，其原理是获取如下三者，以此来加速定位时间。

NTP给时间；

NLP给位置；

EPO给星历。
NTP/NLP/EPO的下载和触发原理。

对于NTP，在手机开机后，要通过网络同步一次时间时间就可以了,那么在后续（没有网络也没有问题）使用gps应用时，NTP就可以派上用场。

对于NLP，必须要每次都要有网络，而且手机设置下位置辅助需要设置为高精度，那么在打开gps应用是，NLP才会起到作用。

对于EPO，触发下载的流程如下：


该功能要在客户的软件包里，需要包含两件事情，这两件事情都可以通过这个FAQ里的几个check工作检查。
1，ALPS01856056的patch。
2，NLP APP，例如百度、GMS、高德。对于这一点，MTK已经和baidu合作，对于客户可以有两种方式来做。方式一是客户可以直接从MTK拿BAIDU NLP APP；方式二是客户和NLP 厂商取得。

 

要判断NTP/NLP是否有起到加速作用，check 工作是必要的。

l  对于NTP

不会有问题，不需要检查。

l  对于EPO

不会有问题，不需要检查。
可以从录制的gps debug log中check “$[AGT],Extract epo done”

l  对于NLP 

可以从录制的gps debug log中check “$DBnm_NLP”

或者是check mobile log中的 “gps_mtk : mtk_gps_inject_location:”

否则，请check如下5步。。

1， Does your NLP package name (ex: GMS or Baidu NLP) exist in config.xml?

frameworks\base\core\res\res\values\config.xml

<string-array name="config_locationProviderPackageNames" translatable="false">
    <!-- The standard AOSP fused location provider -->
    <item>com.android.location.fused</item>
    <!-- MTK add for GMS -->
    <item>com.google.android.gms</item>           请重点看这这里：GMS
    <item>com.baidu.map.location</item>           请重点看这这里：BAIDU
    <!-- MTK add end -->
</string-array>

2， Is NLP (ex: GMS or Baidu NLP) installed in your DUT?

对于GMS，可以check在手机上是否有google map、gmail、play store等app。

对于Baidu，可以check setting-》app->all， 检查是否有NetworkLocation（网络定位）存在。如果没有，请安装。如果是手动安装，请一定要重启一次手机才可以生效。
 
对于其他，请check 相关NLP 服务是否有安装。

3， Does NLP service (MTK proprietary module) exist?

请到设置-》app->all， 检查是否有MTK NLP Service存在。如果没有，请到PMS系统上申请ALPS01856056的patch。

4， Is NLP enabled from Settings?

可以check setting-》location-》mode，如下：

5， Does you turn on Wi-Fi connection or Data connection?
```

## [FAQ14117] 单个APP优化时间过长的问题

```
单个APP优化时间过长会导致开机时间过长的问题，这种情况主要是dex2oat使用的优化线程数较少导致的。可以尝试如下的解法。

[SOLUTION]
1.判断当前使用的线程数
形如下面的Log表示，当前使用了2个线程
dex2oat : dex2oat took 5.745s (threads: 2)
2.如果线程数小于CPU的核心数，在L0版本上可以申请如下的patch:
ALPS02069213 
3.在某些L1版本上面需要修改如下的文件：
修改的art/dex2oat/dex2oat.cc这个文件中的下面的代码：
818 static int dex2oat(int argc, char** argv) {
   ............
872   int thread_count = sysconf(_SC_NPROCESSORS_CONF);
873   //if (thread_count >= 2)  {
874   //  thread_count /= 2;
875   //}
```

## [FAQ13090] 三方apk接收不到开机广播

```
自启动失败/接收不到BOOT_COMPLETED广播可能的原因:

[SOLUTION]
(必现)
(1)、BOOT_COMPLETED对应的action和uses-permission没有一起添加
需要三方应用在AndroidManifest.xml中写入：
<action android:name="android.intent.action.BOOT_COMPLETED" ⁄>
<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" ⁄>
(2)、应用安装到了sd卡内，安装在sd卡内的应用是收不到BOOT_COMPLETED广播的.
(概率出现 )
(3)、对于android3.1以后版本，如果要应用接收开机广播有两种方法：
a).将应用预置到/system/app/目录。
b).安装应用后先启动一次，适用于有Activity的应用。
注释：
1、BOOT_COMPLETED这个广播比较特殊，预置到system/app下面的apk才会通过android.intent.action.BOOT_COMPLETED来开机自启动。而预置到data/app,vendor/app下面的三方apk，若安装从来没有启动过和被用户手动强制停止，它就是处于“stopped state”(此应用的信息保存在/data/system/users/0/package-restrictions.xml中)，它的接收器将会无法接收任何广播，无法开机之后自动启动。但是安装这个应用之后只要是有手动去点击下这个apk，下次开机就肯定是会自动启动起来的，也是接收这个BOOT_COMPLETED广播。

2、与此同时系统增加了2个Flag：FLAG_INCLUDE_STOPPED_PACKAGES和FLAG_EXCLUDE_STOPPED_PACKAGES ，来标识一个intent是否激活处于“stopped state”的应用。

3、Google允许应用和后台服务通过给广播intent设置FLAG_INCLUDE_STOPPED_PACKAGES来唤醒处于“stopped state”的程序，也就是用户自己写的广播intent可以控制这个机制，但是系统自带的广播intent默认都是FLAG_EXCLUDE_STOPPED_PACKAGES，由于不能修改，所以就没法通过系统广播自启动了。
```

## [FAQ13790] L如何让三方APK发送的SMS不显示出来

```
在GsmSMSDispatcher.java (alps\frameworks\opt\telephony\src\java\com\android\internal\telephony\gsm) 中找到所有
if (SmsApplication.shouldWriteMessageForPackage(callingPkg, mContext) ...){...}的地方有五处

在此if语句块条件外面增加一个判断，如：
if(!callingPkg.equals("贵司的三方应用名")){
    if (SmsApplication.shouldWriteMessageForPackage(callingPkg, mContext) &&!isFilterOutByPpl(destAddr, text)) {
        messageUri = writeOutboxMessage(getSubId(), destAddr, text, deliveryIntent != null,callingPkg);
    }
}
温馨提示：如果不确定"贵司的三方应用名"是怎样，可以在修改前添加log打印出callingPkg
```

## [FAQ08791] 设置中，辅助功能下的增强网页辅助功能解释

```
设置->辅助功能->增强网页辅助功能
使用talkback（谷歌辅助程序，帮助盲人等视障用户操作设备）操作手机，浏览网页的时候，辅助功能里面允许插入网页脚本以后，就可以操作浏览器了。
```

## [FAQ14081] 如何判断android OS是32位还是64位？

```
简单的方法是查看是否存在/system/lib64目录，可以通过adb shell ls /system/lib64看是否可以看到。
```

## [FAQ13906] [Others]从“百度图片”下载图片出现异常

```
步骤： 默认浏览器进入百度-》选择图片-》进入单张图片-》点击浏览器底端的“下载”按钮（重要）
可能会出现如下现象：
 
1. 去下载app里直接点击刚才下载的图片, 提示图片无法打开. 
2. 去设置、显示、壁纸、图库, 在图库里选择刚才下载的图片就会报错.
3. 下载gif格式图片，在图库中打开后发现图片是静态的.
4. 下载多张图片后, 去图库查看, 只有部分显示.
 
[SOLUTION]

经过确认：所有问题的根源均在于下载时，服务器传送的图片mime_type类型出错:
原本image/jpeg类型的，下载后是"image/jpeg"
原本image/gif类型的，下载后是"image/gif"
即：比原本的mime_type类型多了一对引号。且该mime_type值是写入到数据库（db）中的。

问题1的原因是下载app的intent中mime_type不匹配；
问题2的原因同上；
问题3的原因是因为显示时，从db中读出的类型不对，不会按照动态显示；
问题4的原因是有些图片插入数据库之后，还会再次扫描update，从db中读出的mime_type不对，导致修改了media_type为0，gallery中query数据库时限制media_type为1，因此不会在gallery中显示。

因为是服务器的原因（本身服务器传的mime_type值有问题），一般情况下由于服务器的error类型各种各样，Download端不可能针对所有情况都处理，因此默认不做处理，即：保持这些错误。

若必须要修改，请参考FAQ12292：浏览器下载文件无法打开的修改方法，在图片信息插入到db之前就更改错误的mime_type。
```

## [FAQ13934] 如何添加Static Library (静态库)到Share Library(共享库)

```
如何添加Static Library (静态库)到Share Library(共享库)

如:如何添加libnexsound.a到libaudio.primary.default.so
[SOLUTION]
如: 修改 mediatek\platform\mt6592\hardware\audio\android.mk  (各个不同的版本和平台均可参考)

include $(CLEAR_VARS)
LOCAL_MODULE :=libnexsound
LOCAL_SRC_FILES:=libnexsound.a
LOCAL_MODULE_CLASS:=STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX:=.a
include $(BUILD_PREBUILT)

LOCAL_STATIC_LIBRARIES := libnexsound

动态库和静态库的区别？？？？？？？
```

## [FAQ13557] [Audio Profile]打开MTK_SAFEMEDIA_SUPPORT后，插入耳机，第三方播放器的音量无法调节到最大。

```
第三方视频播放器，用的音量调节框是播放器自身的，所以不能跟系统自带的铃声选择框一样，可以弹出铃声最大警告框，点击“确认”后，才可以继续调大音量。
改法：
将VolumePanel.java里的在onDisplaySafeVolumeWaring()里最前面的if((flags&AudioManager.FLAG_SHOW_UI)!=0 || mDilalog.isShowing())  这个判断条件去掉
```

## [FAQ13933] 如何修改系统提示音 (ex:触摸提示音)

```
有两种方法可以修改:
1.修改音频参数,系统音的参数位于

KK: AudioMTKPolicyManager.cpp
L:AudioCustomVolume.h
根据如下mode调整
audiovolume_system[NUM_OF_VOL_MODE][AUDIO_MAX_VOLUME_STEP]数组:
enum VolumeMode {
    VOLUME_NORMAL_MODE = 0,
    VOLUME_HEADSET_MODE,
    VOLUME_SPEAKER_MODE,
    VOLUME_HEADSET_SPEAKER_MODE,
    NUM_OF_VOL_MODE
};

2.修改音源:

修改相应音源,
如: 触摸提示音的音源是/media/audio/ui/Effect_Tick.ogg 
```

## [FAQ13899] [VS]RTSP流媒体UA/UAProfile修改方法

```
方法一：直接修改配置脚本custom.conf
*.UAProfileURL = http://218.249.47.94/Xianghe/MTK_Phone_KK_UAprofile.xml
改为
*.UAProfileURL = http://218.249.47.94/Xianghe/MTK_Athens15_UAProfile.xml 
 
KK版本路径：alps/mediatek/config/&project_name/custom.conf里下面行
L版本路径在：alps/vendor/mediatek/proprietary/frameworks/base/custom/custom.conf
客户的也可以放在alps/device/mediatek/&project_name/custom.conf

方法二：修改代码
请修改frameworks/av/media/libstagefright/rtsp/ARTSPConnection.cpp
Void ARTSPConnection:: MakeUserAgent(AString *userAgent) 
里面有两处userAgent->append(“x-wap-profile: http://218.249.47.94/Xianghe/MTK_Athens15_UAProfile.xml”)让它always跑到.
```

## [FAQ05690] [USB] How to add ISO files into BICR?

```
对于KK版本：
1. 将ISO文件放到alps/system/mobile_toolkit/目录下
2. 修改LOCAL_MODULE为ISO文件名，修改LOCAL_MODULE_TAGS为optional alps/system/mobile_toolkit/Android.mk
3. 将ISO文件名添加进PRODUCT_PACKAGES  alps/build/target/product/$project.mk
4. 修改ISO文件名 alps/mediatek/config/<project>/init.rc
5. 编译：./mk <project> new

对于L版本：
1. 替换alps\device\mediatek\common\iAmCdRom.iso
2. 如果要设置BICR为默认，修改alps\device\mediatek\common\device.mk文件相应的ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=bicr
3. make & download
```

## [FAQ08810] [Others]如何将工厂模式的内容显示，从中文修改为英文

```
开机按开机键+下音量键，进入工厂模式。目前内容显示为中文，如何修改为英文显示。
[SOLUTION]
（1）关掉GB2312 option。
ICS版本：
\mediatek\source\factory\src\miniui\font.mk中SUPPORT_GB2312 := yes改为no
GB3,JB,JB2版本：
\mediatek\factory\src\miniui\font.mk中SUPPORT_GB2312 := yes改为no
JB3及JB3之后版本：
\mediatek\config\[project name]\ProjectConfig.mk
和\mediatek\config\common\ProjectConfig.mk中MTK_FACTORY_MODE_IN_GB2312=yes改为no
（2）参考uistrings_eng.h将factory.ini中各MenuItem翻译为英文。
例如：
MenuItem=Keys;
MenuItem=Jogball;
MenuItem=OpticalFingerNavi;
MenuItem=Touch Panel;
（3）重新build，再验证，可以使用ADB command（cat /etc/factory.ini）来验证手机中的factory.ini是否有更新成功。
```

## [FAQ13883] 如何配置mtklogger各种参数

```
配置mtklogger各项参数
[SOLUTION]
配置文件路径
KK版本 :
alps/mediatek/external/xlog/tools/mtklog-config-eng.prop (若配置userload则是mtklog-config-user.prop）
L 版本:
alps\vendor\mediatek\proprietary\external\xlog\tools\mtklog-config-eng.prop  (若配置userload则是mtklog-config-user.prop）

配置文件内容解析
#注意所有赋值后面不要有空格，否则无法解析
#默认存储路径
mtklog_path = internal_sd/external_sd
#默认是否开机自启动
com.mediatek.log.mobile.enabled = true/false
com.mediatek.log.modem.enabled = true/false
com.mediatek.log.net.enabled = true/false
com.mediatek.log.taglog.enabled = true/false
#默认存储大小
com.mediatek.log.mobile.maxsize = 300
com.mediatek.log.mobile.totalmaxsize = 800
com.mediatek.log.net.maxsize = 200
com.mediatek.log.modem.maxsize = 600
 
查看手机中mtklogger当前设置状态
cat /data/data/com.mediatek.mtklogger/shared_prefs/com.mediatek.mtklogger_preferences.xml
```

## [FAQ07757] [Audio Tuning Tool] adb.exe识别不到设备

```
由于adb.exe会与VID&PID绑定，如果客户修改了ADB的VID&PID，可能会导致SDK(Software Development Kit)中的adb.exe识别不到设备，此时在命令行提示符界面下敲入adb devices或者adb shell都会提示错误。
[SOLUTION]
可以按照下面的方法适配ADB的VID。
使用Google原生的adb.exe，然后添加一个外部的配置文件adb_usb.ini。具体操作如下：
找到adb.exe的安装目录，假如adb.exe在C盘：
— 搜索整个C盘寻找文件夹“.android”
— 新建“adb_usb.ini”文件拷贝到“.android”文件夹下
— 在“adb_usb.ini”文件中填写相应ADB设备的VID，可以参考如下截图，e.g. 0x17EF 
 
— 运行：adb kill-server
— 运行：adb start-server
— 此时再运行“adb shell” 就可以连上ADB了。
```

## [FAQ08064] [Debug]如何抓取vm log

```
抓取VM log步骤如下：
1，Enter Engineer Mode\Audio\SpeechLogger，Mark "Enable Speech log" 
2，Mark "Normal -VM+EPL" 
3, Mark"Dump Speech Debug Info" 
4,Set Engineer Mode\Audio\speech enhancement/Common para 0=6 
5，After finish above setting, every call will be recorded as a .vm file automatically, and saved in ""mtk log\audio dump\"
VM log是用来记录声音数据的，您在测试时麻烦讲话大声一点，而且通话时间也稍稍长一点，至少保证通话有一分钟，这样方便我们来解析数据分析。
```

## [FAQ11544] [USB]-[CDROM]如何设定打开CDROM后windows弹出自动播放窗口？

```
该feature实现与代码无关，是通过CDROM内置的iso镜像客户化完成的。
制作iso镜像文件时，在根目录添加autorun.inf文件，
内容格式：
[autorun]
Icon=my.ico                                      //光盘图标
open=客制化执行程序的路径                    //默认执行的程序
shell\加密文件\command=UDE.exe          //右键磁盘的操作项
==================================================================
同理，如果要修改连接PC后的UMS功能出现的U盘的盘符对应的图标，
 1、用记事本在U盘或硬盘下编辑如下内容： 
[autorun] 
icon=*.ico 
2、把*.ico图标文件复制到移动存储设备根目录。 
3、然后把此文件保存为Autorun.inf 
4、将这两个文件（图标文件和inf文件）的属性改为只读、隐藏。 
注：*代表图标文件名 
Notice:
–这个autorun.inf的方法适用于U盘，CDROM.iso，UMS时可能需要修改android的权限，默认不能在根目录放文件。
```

## [FAQ13720] [Audio APP]歌曲名称以拼音排序时，以‘a’ 'an' 'the'开始的歌曲不做任何处理

```
1、请在PinyinKeyUtils.java文件的keyFor方法中修改如下：
public static String keyFor(String name) {
    ……
    name = name.trim().toLowerCase();
    //删除以下
    if (name.startsWith("the ")) {
        name = name.substring(4);
    }
    if (name.startsWith("an ")) {
        name = name.substring(3);
    }
    if (name.startsWith("a ")) {
        name = name.substring(2);
    }
    //删除以上
    ……
}
2、将歌曲文件删除后重新copy才会生效。
```

## [FAQ13721] [AudioApp]软件disable FM

```
请在mediatek\config\project下的ProjectConfig.mk文件中修改如下：
MTK_FM_SUPPORT=no
MTK_FMRADIO_APP=no
```

## [FAQ13722] [AudioApp]FMRadio录音时，若意外停止，能保存录音文件

```
请在如下进行修改,
1、FMRadioService.java
  private void exitFM() {
      ……
     else if (FMRecorder.STATE_RECORDING == fmState) {
               //添加如下
               mFMRecorder.StopRecordOrPlay();     
                LogUtils.d(TAG, "StopRecordOrPlay");
String defaultName = getRecordingName();
saveRecording(defaultName);
               //添加如上     
                /*mFMRecorder.discardRecording();  
                LogUtils.d(TAG, "Discard Recording.");*/    //删除原来的代码
            }……
2、请在FMRecorder.java文件中添加如下：
public void StopRecordOrPlay() {
   LogUtils.d(TAG, ">> StopRecordOrPlay");
    // release recorder
    if ((STATE_RECORDING == mInternalState) && (null != mRecorder)) {
        stopRecorder();
   // release player
    } else if ((STATE_PLAYBACK == mInternalState) && (null != mPlayer)) {
        stopPlayer();
    }
}
```

## [FAQ13788] 关于平台PPPoE的支持情况

```
PPPoE协议全称是PPP over Ethernet，是在以太网络中转播数据包的一种拨号上网技术，比如电信网络的ADSL就是用PPPoE进行拨号链接。
那么Android支持PPPoE功能吗？
[SOLUTION]
Android本身是不支持PPPoE的，而PPPoE并非类似TCP/IP的基础协议，而是一种封装协议，即可以通过3rd的资源来实现。
MTK平台也不支持PPPoE功能，在部分版本开放了PPPoE的API，java层对应的编译开关为MTK_CTPPPOE_SUPPORT，可以通过在工程中搜索这个编译开关来跟踪代码流程。
```

## [FAQ13739] Camera界面的pickermanager icon较慢显示出来

```
1.      Launch camera；
2. 在capture mode icon & preview screen全部显示出来后, pickermanager icon要等2s左右才显示出来 
[SOLUTION]
请在PMS上直接申请patch: ALPS01988332
或做如下修改
alps\packages\apps\Camera\src\com\android\camera\bridge\CameraAppUiImpl.java as below:
    @Override

    public void setViewState(ViewState state) {

        Log.i(TAG, "[setViewState],mCurrentViewState:" + mCurrentViewState + ",newState:" + state);

        if (mCurrentViewState == state) {

            return;

        }
       ...................

        switch (mCurrentViewState) {

        case VIEW_STATE_NORMAL:

            setViewManagerVisible(true);

            setViewManagerEnable(true);

            mShutterManager.setEnabled(true);            mShutterManager.setVideoShutterEnabled(mIsVideoShutterButtonEanble);

            mSettingManager.setFileter(true);

            mSettingManager.setAnimationEnabled(true, true);

            // For tablet

            if (FeatureSwitcher.isSubSettingEnabled()) {

                mSubSettingManager.setFileter(true);

                mSubSettingManager.setAnimationEnabled(true, true);

            }

            ///add this if statement

            if ((!mCameraActivity.isVideoMode() || !mCameraActivity.isNonePickIntent()) .

                    && mCameraActivity.isCameraOpened()) {

                mPickerManager.show();

            }

            ///add end

            if (!mMainHandler.hasMessages(MSG_SHOW_ONSCREEN_INDICATOR)) {

                showIndicator(0);

            } else {

                Log.d(TAG, "[setViewState]mMainHandler has message MSG_SHOW_ONSCREEN_INDICATOR");

            }

            break;

       

        case VIEW_STATE_CAPTURE:

            mModePicker.hideToast();

            mSettingManager.collapse(true);

 

................................

}
```

## [FAQ13614] NOD32 认为DM.apk以及SmsReg.apk是病毒的原因

```
通过NOD32 Mobile Security & Antivirus应用检查软件会出现Gedma. E, Gedma. C 俩个疑似病毒,经分析怀疑NOD32 Mobile Security & Antivirus应用检测出来的结果因为手机存在dm.apk和SmsReg.apk俩个APK导致的
[SOLUTION]
Dm.apk和SmsReg.都会去向服务器发送注册的信息，其中内容包含：IMEI,Manufacture,Model,Software Vewsion
杀毒软件认为两个apk有去收集手机信息而去做这种判断。
 
dm是指device manager，而smsreg是CMCC需要的dm，也就是定制的dm。
dm中比较常用的是FOTA功能，也就是OTA升级，它会收集手机的信息到服务器，服务器根据这些信息做鉴权，然后检查是否有新版本，然后决定是否给手机新版本的差分包。
那smsreg也是会收集一些常用的配置信息，而且smsreg这个需求，CMCC目前已经不再要求，这个功能可以直接去掉。
另外dm中主要是FOTA功能，如果不用，也可以关闭。具体请参照FAQ12918。
```

## [FAQ13601] 怎样打印出手机上网时访问的网址内容？

```
手机访问网络时会用浏览器输入网址，这些是用户界面可见的；
apk也需要通过网址访问apk的服务器，这些在用户界面不可见。
那么如何在手机端把访问的网址打印出来呢？
[SOLUTION]
其实平台默认已经会打印这些dns query数据了，示例如下：
01-30 17:54:12.740885 241 6353 D libc-netbsd: res_queryN name = gmail-smtp-in.l.google.com, class = 1, type = 1
01-30 17:54:12.741026 241 6353 D libc-netbsd: res_queryN name = gmail-smtp-in.l.google.com succeed
01-30 17:54:13.921741 241 6354 D libc-netbsd: res_queryN name = www.google.com <http://www.google.com/> , class = 1, type = 1
01-30 17:54:13.944311 241 6354 D libc-netbsd: res_queryN name = www.google.com <http://www.google.com/>  succeed
01-30 17:57:59.523221 241 6378 D libc-netbsd: res_queryN name = supl.sonyericsson.com, class = 1, type = 1
01-30 17:57:59.555766 241 6378 D libc-netbsd: res_queryN name = supl.sonyericsson.com succeed

这部分代码在getaddrinfo.c中的res_queryN()函数中，只要是本机发起的dns query，不论是使用wifi或data及使用浏览器或apk都会经由这里。
所以我们可以在这里打印出本机主动发起的链接。
提醒：
若本机作为热点，其他链接到热点的设备访问网络，这样的访问信息在本机是没有办法抓到的。
原因是本机当前作为热点启用的是dnsmasq应用，这个应用只有转发数据包的功能，并不会到dns libc。
```

## [FAQ13589] [Audo framework] L 版本上播放歌曲是否使用 NuPlayer

```
在 Android default code 中, L 版本播放歌曲是使用 NuPlayer 来做的
但出于功耗方面的考量, 我司对下面两种格式的歌曲仍然会使用 awesomeplayer 来播放
这两种格式是
audio/mpeg
audio/ape
 
AwesomePlayer 在工作时开的 thread 更少, 所以功耗表现会相比与 NuPlayer 好
如果希望与 android default code 保持一致
请参考如下 solution
[SOLUTION]
修改frameworks/av/media/libmediaplayerservice/MediaPlayerService.cpp 中的
status_t MediaPlayerService::Client::setDataSource(int fd, int64_t offset, int64_t length) 方法内
找到下面这段代码, 并将其注释掉:
if(!strcasecmp(tmp,"audio/mpeg") || !strcasecmp(tmp,"audio/ape")) {
    playerType = STAGEFRIGHT_PLAYER;
}
```

## [FAQ13587] [Audio App]音效设置界面右上角的开关图标未居中显示

```
在 KK 版本上, 上述图标会显示为相对居中, 显示效果比较友好
而 L 版本上, 此图标则相对比较靠左, 或靠右显示
 
如果需要调整为较居中显示开关图标,
可以参考以下解法
 
[SOLUTION]
修改 vendor/mediatek/proprietary/frameworks/base/res/res/values/styles.xml
中 <item name="android:switchMinWidth">80dp</item> 的定义
原值是 80, 可改为 60 或其它实际调整后觉得看起来比较合适的值
```

## [FAQ13583] [Audio APP]如何在music中屏蔽不支持的音乐

```
首先, 你需要知道这些要屏蔽的音乐文件的 mimeType,
如果不知道, 可去mediaProvier 的 database 中查询对应的音乐文件的 mime_type 的值
 
假定我们已经知道要屏蔽的音乐文件的 mimeType 为 audio/x-ms-wma
 则我们可以通过如下方法去做屏蔽处理
 
 
[SOLUTION]
 1: 如果只在 Music apk 中做屏蔽处理(其它三方 apk 不做屏蔽处理)的话, 可以参考下面改法:
修改 Music apk 包中 TrackBrowserActivity.java 
在 getTrackCursor 方法内
找到下面这行
where.append(" AND " + MediaStore.Audio.Media.IS_MUSIC + "=1");
在它后面加入:
where.append(" AND mime_type != 'audio/x-ms-wma'");  //其中红色字体的为所需要屏蔽的 mimetype, 请按需修改
 
2: 如果要在 framework 中做屏蔽处理(任何 apk 都无法查到被屏蔽的文件):
可以参考下面的改法:
修改 MediaScanner.java
 
1: 添加定义:
static String MIME_UNKNOWN = "unknown_mime";
 
2: 增加方法
private boolean isUnsupportMime(){
 if(mMimeType == null)
  return false;
 if(mMimeType.equals("audio/x-ms-wma")){ 
    return true;
    } //如果还有其它想过滤掉的 mimetype, 请再加入 else if(mMimeType.equals("xxx")) return true;
 
 return false;
}

3: private ContentValues toValues() 方法首行加入:
if(isUnsupportMime()){
    Log.d(TAG,"change mime to unknown");
    mMimeType = MIME_UNKNOWN;
    mNoMedia = true;
}

4: endFile 方法中在如下参考行
ContentValues values = toValues();
之后加入:
if(mMimeType != null && mMimeType.equals(MIME_UNKNOWN)){
    mFileType = 0;
    music = 0;
}
```

## [FAQ12999] [Audio App] 音乐播放列表丢失

```
开启MTK_2SDCARD_SWAP后，内置SD CARD的第一次开机：
1.进入本地音乐点击任意歌曲添加至新建播放列表A;
2.连接USB存储添加任意音频文件至SD卡;
3.添加成功后关闭USB存储，返回查看新建播放列表：发现之前创建的列表A已经丢失;
4.再次新建一个播放列表B;
5.连接USB存储后，进入本地音乐查看新建播放列表：第一次创建的列表A重新出现，但列表B不存在；
6.关闭USB存储,查看新建播放列表：列表B正常显示;
 
[SOLUTION]

=====================================================================
开启MTK_2SDCARD_SWAP后，内置SD CARD的第一次开机：
 
1.进入本地音乐点击任意歌曲添加至新建播放列表 A 
>>>创建external-xxx.db; 列表A在external-xxx.db

2.连接USB存储添加任意音频文件至SD卡
>>>external-xxx.db被重命名为external.db;

3.添加成功后关闭USB存储，返回查看新建播放列表
>>>创建一个新的external-xxx.db；从external-xxx.db查询，从而这里找不到之前的列表A

4.再次新建一个播放列表B
>>>列表B被写入external-xxx.db
 
5.连接USB存储后，进入本地音乐查看新建播放列表：第一次创建的列表A重新出现，但列表B不存在；
>>>查询external.db,从而找到了之前的列表A，找不到列表B
 
6.关闭USB存储,查看新建播放列表：列表B正常显示;
>>>查询external-xxx.db，找到列表B
=====================================================================
```

## [FAQ13558] 取消录像按键音

```
进入camera，点击录像开始和录像结束的button时，默认是有声音的。现希望取消录像的按键音。
[SOLUTION]
alps\packages\apps\Camera\src\com\android\camera\SettingChecker.java文件中的setParameterValue()函数内:
case ROW_SETTING_MUTE_RECORDING_SOUND:
          Log.i(TAG, "enableRecordingSound value = " + value);
           parameters.enableRecordingSound(value);
修改为
case ROW_SETTING_MUTE_RECORDING_SOUND:
          Log.i(TAG, "enableRecordingSound value = " + value);         
                  parameters.enableRecordingSound(1);
```

## GPS 相关问题

```
FAQ13253	GPS问题分类--AGPS认证相关	SW > ALPS > GPS	2014-12-31
FAQ13252	GPS问题分类--GPS资料	SW > ALPS > GPS	2014-12-31
FAQ13251	GPS问题分类--测试相关	SW > ALPS > GPS	2014-12-31
FAQ13247	GPS问题分类--LOG相关	SW > ALPS > GPS	2014-12-31
```

## [FAQ11156] 手机做热点时，如何获取连过来设备的具体信息？

```
手机做热点时，可以读取连过来的client的信息，平台默认会显示mac地址在热点热点设定界面。
[SOLUTION]
1、连过来的设备的信息存放在/data/misc/dhcp/dnsmasq.leases中
2、它的格式是：
/系统id，不需取值/client mac地址/client ip地址/ client device name/加权后mac地址，也不需取值
1357041758   88:00:12:34:56:78 192.168.43.133 android-184cc6c105d7a3b 01:88:00:12:34:56:78
 
2、参考WifiServie.java的getClientIp()方法，可以客制化这个方法取得device name，具体如下：
public String getClientDeviceName(String deviceAddress) {//传mac地址进来
    enforceAccessPermission();
    if (TextUtils.isEmpty(deviceAddress)) {
        return null;
    }
//读取对应的文件信息
    for (String s : readClientList("/data/misc/dhcp/dnsmasq.leases")) {
        if (s.indexOf(deviceAddress) != -1) {
            String[] fields = s.split(" ");
//校验数据是否破损
            if (fields.length > 4) {
//返回第4个栏位
                return fields[3];
            }
        }
    }
    return null;
}
```

## [FAQ11153] 如何确认是谁修改了SettingsProvider中某变量的值

```
以下以Settings.Global.WIFI_SLEEP_POLICY为例，对应的value是wifi_sleep_policy，其他变量请具体配置对应value：
1:修改Settings.java (alps\frameworks\base\core\java\android\provider) 中
在 class Secure 内部类的
public static boolean putStringForUser(ContentResolver resolver, String name, String value, int userHandle) {
    //的后面添加
    if(name.equals(Settings.Global.WIFI_SLEEP_POLICY)){ //add begin
        Log.d(TAG,"@@## name = "+ name+ "value = "+value,new Exception("Settings"));
    } //add end

2:修改
ContentResolver.java (alps\frameworks\base\core\java\android\content)中
在
public final Uri insert(Uri url, ContentValues values) {
    后添加
    if(values.containsKey("wifi_sleep_policy")){//add begin
        Log.d("Settings","@@##@@ url = "+ url+", values = "+ values,new Exception("Settings"));
    }//add end
在
public final int update(Uri uri, ContentValues values, String where, String[] selectionArgs) {
后添加
    if(values.containsKey("wifi_sleep_policy")){//add begin
        Log.d("Settings","@@## url = "+ uri+", values = "+ values,new Exception("Settings"));
    }//add end
 
3、复制问题并提供main_log，通过对应的callstack可以找到是谁操作了变量。
```

## [FAQ11160] 定位是谁通过注册AlarmManager来发intent

```
有些intent是通过AlarmManager注册后发送的，可能是第三方的apk，这会为user带来干扰以为出现了bug，可以通过下面的log进行定位。
 
[SOLUTION]
以某次发送 WifiManager.action.DELAYED_DRIVER_STOP 为例：
01-01 00:07:31.773   669   717 E AlarmManager: Alarm at trigger: Alarm{42d14330 type 0 android}
01-01 00:07:31.773   669   717 V AlarmManager: Native set alarm :Alarm{41c22b28 type 0 com.xxxx.safecenter}
01-01 00:07:31.773   669   717 V ActivityManager: Broadcast: Intent { act=com.android.server.WifiManager.action.DELAYED_DRIVER_STOP flg=0x14 (has extras) } ordered=true userid=0 callerApp=null
 
可以看到在 setalarm 后 intent 就被发出，往前看log找到是 com.xxxx.safecenter 设定了它；
对应的代码在 AlarmManagerService.java 的 toString() 方法，会打印 package name。
```

## [FAQ12094] 拼音以v结尾的中文字，搜索时输入v搜索不到

```
所有拼音以V结尾的中文字，如“女”，“吕”，“绿”等。
1.添加号码时可以用V输入添加；
2.搜索时，将V之前的拼音输入，能搜到目标结果；
3.输入V之后，无法搜索到目标结果；

[SOLUTION]

汉语拼音的声母韵母表中没有V，只是在输入法中把u加两点的韵母设置在V键上，而搜索时，我们只是搜索汉字所对应的拼音，所以不可以用V来搜索，且u，u加两点的韵母，本来两者之间界限比较模糊，如yu,就是用u替代的u加两点的韵母，且google原生参考机：Nexus也是同样的现象，请知悉和验证。
谢谢！
```

## [FAQ10074] 勾选USB调试后关闭开发者选项后退出再进入开发者选项为打开状态

```
Developer options的总开关会在进入developer options的时候去做这样的一个判断：
是否所有的developer options选项都被关闭，若没有，就会重新开启developer options总开关；
所以若是想要总开关成功关闭，需要先关掉所有的developer选项，然后再关闭总开关才能生效。
相关代码：DevelopmentSettings.java onResume()
if (mHaveDebugSettings && !mLastEnabledState) {
    // Overall debugging is disabled, but there are some debug
    // settings that are enabled.  This is an invalid state.  Switch
    // to debug settings being enabled, so the user knows there is
    // stuff enabled and can turn it all off if they want.
    Settings.Global.putInt(getActivity().getContentResolver(), Settings.Global.DEVELOPMENT_SETTINGS_ENABLED, 1);
    mLastEnabledState = true;
    mEnabledSwitch.setChecked(mLastEnabledState);
    setPrefsEnabledState(mLastEnabledState);
}

此为google 原生设计。
```

## [FAQ13193] [DCT]Android L版本上codegen.dws文件的路径

```
1. 在Android L版本上 DCT tool配置的codegen.dws文件在preloader、lk、kernel中是独立的，被分开放置，其路径如下：
preloader： 
alps\bootable\bootloader\preloader\custom\$(proj)\dct\dct\codegen.dws

lk:
alps\bootable\bootloader\lk\target\$(proj)\dct\dct\codegen.dws

kernel:
alps\kernel-3.10\arch\arm\mach-$(platform)\$(proj)\dct\dct\codegen.dws

or

alps\kernel-3.10\drivers\misc\mediatek\mach\$(platform)\$(proj)\dct\dct\codegen.dws

2. 修改某一个路径下的dws文件，不会影响其他两个路径下的dws文件，所以在修改dws文件之后，必须copy到上面的三个路径下，您的修改才会正常生效。

3. 对应的，DCT tool也被分开放置在3个路径中，具体如下：
preloader：
alps\bootable\bootloader\preloader\tools\dct\
lk：
alps\bootable\bootloader\lk\scripts\dct\
kernel：
alps\kernel-3.10\tools\dct\

4. 重新编译使修改后的codegen.dws文件生效
make -j24 pl 2>&1 | tee preloader.log
make -j24 lk 2>&1 | tee lk.log
make -j24 kernel 2>&1 | tee kernel.log
make -j24 bootimage 2>&1 | tee bootimage.log

备注：
$(platform)：指所用的platform
$(proj)：指所用的project
```

## [FAQ12984] 从Camera滑入空的Gallery背景有一根黑线

```
1. Camera文件夹内容为空
2. 进入Camera, 向左滑动进入Gallery
3. 显示0 images/videos available, 同时查看背景有一根黑线
 
解决方法：
packages\apps\Gallery2\src\com\android\gallery3d\glrenderer\GLES20Canvas.java
为：
public void drawTexture(BasicTexture texture, int x, int y, int width, int height) {
    if (width <= 0 || height <= 0) {
        return;
    }
    copyTextureCoordinates(texture, mTempSourceRect);
    mTempTargetRect.set(x, y, x + width - 1, y + height - 1); // M: modify this line
    convertCoordinate(mTempSourceRect, mTempTargetRect, texture);
    Log.d(TAG, "[Gallery Issue] drawTexture src: " + mTempSourceRect + ", target: " + mTempTargetRect);
    drawTextureRect(texture, mTempSourceRect, mTempTargetRect);
}
private static void copyTextureCoordinates(BasicTexture texture, RectF outRect) {
    int left = 0;
    int top = 0;
    int right = texture.getWidth() - 1;      // M: modify this line
    int bottom = texture.getHeight() - 1; // M: modify this line
    if (texture.hasBorder()) {
        left = 1;
        top = 1;
        right -= 1;
        bottom -= 1;
    }
    outRect.set(left, top, right, bottom);
}
```

## [FAQ13081] 64bit系统上，如何判断运行的进程是32bit还是64bit

```
64bit系统上，运行的进程可能是32bit，也可能是64bit，这里给出判断的方法。
[SOLUTION]
确认adb可以连接成功后，执行命令: adb shell ps --abi，ABI一栏如果包含"32 "，说明为32bit，否则为64bit。下面以内部参考机运行上述命令后的结果为示例：
```

## [FAQ13077] 如何判断当前机器运行的kernel是32 bit还是64bit

```
搭载64bit芯片的机器，运行的kernel可能是32bit，也可能是64bit，这里给出判断的方法。 
 
[SOLUTION] 
判断方法有如下两种： 
1. 确认adb可以连接成功后，执行命令: adb shell cat /proc/cpuinfo，Processor一项如果包含"aarch64 "，说明为64bit kernel，否则为32bit。下面为内部参考机kernel分别为32bit、64bit时运行上述命令后的结果：

2. 确认adb可以连接成功后，执行命令: adb shell cat /proc/sys/kernel/osbit，如结果为"64 "，说明为64bit kernel，否则为32bit。
下面为内部参考机kernel为64bit时运行上述命令后的结果：
```

## [FAQ08944] 预置邮件客户端中的签名

```
预置或者客制化邮件客户端中的发信人签名，如：
英文:
Send via Pandora
中文:
发送自潘多拉
 
[SOLUTION]
File:
Email/src/com/android/email/activity/setup/AccountSetupNames.java
# class FinalSetupTask # function doInBackground(Void... params):
add line：
        cv.put(AccountColumns.SIGNATURE, getString(R.string.signature));
below the line:
        ContentValues cv = new ContentValues();
Please NOTE that "R.string.signature" is a new string resource you need to add.
For your case, please add a new String resource R.string.signature as "Send via Pandora", which is easy to do i18n as well.
If you want to change this default signature to others, modify the R.string.signature as you wish.
```

## [FAQ12752] 如何修改MTKlogger默认存储容量大小

```
有时候debug问题需要，需要修改MTKlogger的默认存储容量。

请修改alps\mediatek\external\xlog\tools\ 下的mtklog-config-XXX.prop文件,
将对应mobile log，modem log，net log的maxsize修改为需要的值即可。
```

## [FAQ13440] 用搜狗表情符号命名文件夹，有的成功，有的不成功

```
不同的文件系统对表情符号的支持度是不同的：
EXT4：支持
FAT：不支持

在打开SD SAHRED的情况下：
phone storage：文件系统是ext4，在file manager中用表情符号命名，是可以成功的。
SD：文件系统是FAT，在file manager中用表情符号命名，会返回操作失败的信息

在没有打开SD SHARED的情况下：
phone storage和SD： 文件系统是FAT，不支持表情符号命名。

上述描述的是手机端，手机端支持并不表示PC端也会支持，因为PC端是FAT的文件格式，请知悉～


FAT 和 EXT4 文件格式的区别？？？
```

## [FAQ13537] [Gallery]将PC图片收藏里的图片cpy至手机，会不显示缩略图查看detail会报错

```
Win7 拷过来的图从ultraedit中看到它的exif header并不算是标准的，会导致gallery读取exif时发生exception，因此无法显示缩略图和detail信息
修改方法如下：
在ExifParser.java文件readTag函数中约561 行

System.arraycopy(mDataAboveIfd0, (int)***************)
修改为：
if (mDataAboveIfd0 == null) return null;
System.arraycopy(mDataAboveIfd0, (int)***************)
```

## [FAQ13535] 将保存照片的文件夹camera改为西班牙语Cámara导致livePhoto拍照异常

```
在 packages/apps/Camera/src/com/android/camera/Storage.java 中把照片的保存路径做如下修改后导致livephoto拍照异常：

public static final String DIRECTORY = DCIM + "/Cámara";
public static final String FOLDER_PATH = "/" + Environment.DIRECTORY_DCIM + "/Cámara";

[SOLUTION]
此问题是由于á这个字母编码比较特殊，从String转成字符流时出现错误，现在使用新的ByteArrayInputStream对象，然后指定utf-8编码可以解决。
具体修改方法如下：
1、在 VideoLivePhotoActor.java 中的 getScenario() 函数中
将
"<?xml version=\"1.0\"?>"
改为
"<?xml version=\"1.0\" encoding=\"utf-8\"?>"
2、在 ScenarioReader.java 中的 getScenario() 函数中
将
StringBufferInputStream myXML = new StringBufferInputStream(xml);
改为
ByteArrayInputStream myXML = new ByteArrayInputStream(xml.getBytes("UTF-8"));
```

## [FAQ12118] 关于修改底色为白色后，设置中菜单字体显示为灰色字体问题（白底黑字）

```
修改背景底色为白色后，设置下有些菜单字体显示为灰色，如下：
设置里安全选项里 “Auto start management,App permissions,Clear Credentials”三个字体的颜色灰色
要修改字体为黑色，请参考如下solution
 
[SOLUTION]
请修改  mediatek/packages/apps/PermissionControl/AndroidManifest.xml
<application
    android:taskAffinity=""
    android:persistent="true"
    android:icon="@mipmap/ic_launcher_settings"
    android:theme="@android:style/Theme.Holo"
    android:allowClearUserData="false" >
修改android:theme和贵司setting使用的theme一致。
请修改后测试即可。如果仍然有疑问请再联系MTK技术人员。
```

## [FAQ12117] 手动安装apk,恢复出厂设置后，应用没有删除

```
关闭 ProjectConfig.mk 中的 MTK_SPECIAL_FACTORY_RESET 或者 push 一个内容为空的 .keep_list 到 data/app 即可解决此问题
```

## [FAQ11264] 无法保存包含“{CID}”的网址为书签

```
由于"{" / "}"为非法的URL字符，所以无法保存，如果您需要保存此类网址，建议在保存前将“{CID}” 替换成Client ID，可以按如下方式修改：
AddBookmarkPage.java
import com.android.browser.provider.BrowserProvider;
 
 boolean save() {
 ...
  if (unfilteredUrl.indexOf("{CID}") != -1) { 
    unfilteredUrl = unfilteredUrl.replace("{CID}", 
    BrowserProvider.getClientId(getApplicationContext().getContentResolver())); 
  }
  String url = unfilteredUrl.trim();
 ...

```

## [FAQ12988] 大量图片时Gallery打开图片速度很慢

## [FAQ13408] AOSP编译常见问题

## [FAQ13642] [Audio App]home界面点击fm图标后，fm不自动播放

## [FAQ13719] [Audio App]FM菜单选项中添加手动设置频率

## [FAQ12170] [sdcard-common]KK版本如何去掉内置T卡？

## [FAQ13908] [keypad]怎样实现单按PowerKey重启功能？

## [FAQ12958] [Audio Profile]如何在状态栏添加一个general和outdoor对应的图标

## [FAQ13474] [Audio Profile]如何让设置的通知音只播放前10秒

## [FAQ11130] WAP PUSH参数介绍

## [FAQ09383] [BMT] 如何设置长摁powerkey（或者powerkey+homekey）使得系统重启或者关机

## [FAQ08960] [Others]如何在工厂模式支持special factory reset功能，执行reset后可以清除测试痕迹并保留/data/app下预置apk？

## [FAQ13676] 在Dialpad中长按输入的号码，无复制粘贴等选项出来

## [FAQ09466] 如何关闭zram(内存压缩)以测试系统性能

## [FAQ13931] [keypad]怎样在Android L版本添加新Key？

## [FAQ14325] [Audio framework] 如何去掉AMR格式

## [FAQ14329] [Audio framework]如何在Framework层互斥两个通过 MediaPlayer 播放的音乐播放器

## [FAQ04521] 【ICU】如何修改某语言的数字显示系统

## [FAQ14364] 如何把L版本的Recents APP风格改成KK版本的风格

## [FAQ14178] L版本增加关机振动

## [FAQ14106] L版本如何enable "adb shell dumpsys alarm"命令

## [FAQ12947] [Recovery]Update LOGO&LK&PRELOADER via OTA upgrade

## [FAQ08919] [NW]网络运营商名称显示规则（锁屏界面，下拉列表）---网络名称 客制化方法 和 问题处理flow

## [FAQ09394] [NW]网络运营商名称显示&SIM名称显示

## [FAQ14481] [Audio Effect]玩游戏雷霆战机时发生卡顿的问题

## [FAQ12646] 适配开机lk阶段任意尺寸充电图标（比lcm size 小的图片）

## [FAQ14527] IPO（smart phone fast boot up）Enable Guide

## [FAQ14656] 检查版本是否支持SBP功能？？？SBP是什么？？？

## [FAQ14744] L版本APPIOT常见问题总结(对比机可以复现)  APPIOT 是什么意思？？

## [FAQ14751] L 版本Security OTA升级方法

## [FAQ14531] [Audio Profile]“提示音和通知”中试听手机铃声时来电，来电铃声和预览铃声声音重叠

## [FAQ14667] [Audio Profile]情景模式里如何增加通话音量进度条调节？

## [FAQ07275] 如何在linux中添加新的kernel module

## [FAQ13320] [Audio Profile]如何打开各个铃声选择框的default、silent、more选项

## [FAQ14861] mms去掉彩信功能

## [FAQ14768] 修改ART mode减少ROM大小 （如GMO project / FOTA升级）

## [FAQ14868] modem log用什么工具分析?????catcher

## [FAQ14724] Android 5.0上的Settings Search功能介绍

## [FAQ13137] 为什么MTKLogger UI显示的路径与实际路径不一致？

## [FAQ15040] 如何增加色度，饱和度，对比度，亮度的调节幅度

## [FAQ11559] [USB名称修改系列] 第17项-如何修改"USB tethering" 在PC端的显示

## [FAQ11062] 如何实现usb驱动自动安装？

## [FAQ12749] 联系人如何区分*123与123这两个号码

## [FAQ15070] Android5.0版本APN界面会显示运营商名字的问题

## [FAQ15113] 低电压关机，关机充电到15%自动开机

## [FAQ09065] [Others]MTK发布的Android software Tools 工具包中所有工具的说明

## [FAQ15257] [Audio App]如何在通知栏上显示 music 播放/暂停 的控件

## [FAQ15332] 快速开关wifi，导致wifi打不开

## [FAQ15503] 预置运营商的wifi AP之后引起功耗大

## [FAQ09200] [Dialer][Geocoding]如何关闭来电号码归属地？

## [FAQ09009] [Dialer]如何修改号码显示格式？比如将number修改为4-4-3分段格式

## [FAQ11929] [Dialer]相同号码联系人A和B, 拨打B时通话界面和通话记录都显示A

## [FAQ09449] [Dialer]通话记录匹配异常

## [FAQ10377] [Dialer]Google的固话号码归属地-区号与归属地对照表[中国大陆部分]

## [FAQ10383] 添加MCCMNC自动号码匹配后拨号匹配不到联系人

## [FAQ10342] [Dialer][Geocoding]修改手机号码归属地

## [FAQ14869] 如何分别设置前后Camera不同的默认Preview Size

## [FAQ17396] check jni问题解决方法

## [FAQ12677] 【Phone Call】带"*" "#"的语音信箱号码会匹配到联系人的问题

## [FAQ04400] [Others] 如何手动强制更新PC端USB驱动

## [FAQ09781] [Dialer]如何能在来电时始终在对方号码前加上国家码

## [FAQ11604] Email里面添加优先级指示

## [FAQ09450] 如何在"设置->关于手机"界面添加Logo

## [FAQ17438] 5G hotspot 设置

## [FAQ07588] [Audio App]FM播放时拔出耳机后,FM APP出现"拔出耳机，Fm停止"的提示框，然后自动close

## [FAQ04249] [sdcard-common]新开项目SDCard不识别，如何debug？

## [FAQ16262] [video recoder]录像时关闭Record audio,录的视频播放时间只有录制时间的一半

## [FAQ16263] [Video][Video Player] 进入视频播放器，播放视频文件提示“insufficient memory”

## [FAQ10251] MT6582/MT6592 平台上，dump camera buffer的方式

## [FAQ06196] [Audio App]FM搜台时如何选择性保存搜到的电台

## [FAQ03932] [Audio Driver]如何打开/关闭3G通话时对AMR-WB的支持

## [FAQ17482] [others]setting中删除视频和图片在Gallery中仍可以查看缩略图

## [FAQ03604] [Contacts Data] 联系人名字多音字的处理方法

## [FAQ17545] [AudioProfile]关于M版本双卡铃声

## [FAQ17578] omacp的email xml文件样本

## [FAQ12935] 【Contacts Data】预置联系人之Vcard预置联系人

## [FAQ10133] 【Contacts Data】 联系人列表如何将联系人名字为泰语的联系人归类到# group

## [FAQ10398] 【Contacts Data】"万俟" 应该排列在"M"下面,而不是"W"下面.

## [FAQ10385] 【Contacts Data】 Google默认群组名称可以修改吗？

## [FAQ08580] 【Zone】如何通过网络确定当前时区

## [FAQ17627] 电信自注册基础知识??????

## [FAQ17665] 快速修改调试Feature Table

## [FAQ13560] [BMT]长按power key（power key+home key）shutdown 或者reset phone

## [FAQ17710] Android UI显示电量跳变

## [FAQ17774] [People]美式英语下面输入特殊名字字符，出现 DisplayName变化为phone number

## [FAQ08972] [NW]信号格显示的平滑处理

## [FAQ17839] Browser参数支持情况

## [FAQ17838] Browser的M版本UA Profile

## [FAQ13734] 状态栏中的信号栏添加上下行标识

## [FAQ17968] new Mediaplayer耗时导致开机过程中kernel logo到开机动画之间黑屏

## [FAQ09041] [People]如何修改联系人地址显示格式？

## [FAQ09414] [People]分享可见的联系人，通过短信。短信内容修改成将注释和地址也显示出来

## [FAQ10047] [People][联系人头像】联系人通过拍照设置头像，图库中会有两张同样的图片，如何删除其中一张

## [FAQ11085] [People]联系人详情界面的某些字段前面加"!"

## [FAQ10667] [People]联系人字段中增加生日字段

## [FAQ11096] [People]【匈牙利】匈牙利语环境下，联系人的姓名顺序颠倒

## [FAQ11676] [People]需要每次新建联系人都弹出帐号选择列表

## [FAQ11693] [People]联系人详情界面设置默认号码后位置不移动只在末尾打上钩

## [FAQ12527] [People]输入8或者6会搜索出来name和number都没有6的联系人

## [FAQ12523] [People]在联系人搜索界面中同时搜到+7开头和8开头的记录

## [FAQ13132] [People]PeopleList搜索机制

## [FAQ14055] [People]Android平台系统语言从繁体中文切换到简体中文，联系人中文排序看似乱码

## [FAQ17502] [Gallery]照片详情中的时间格式与系统时间格式不一致

## [FAQ18017] recovery mode开机闪屏问题分析

## [FAQ18023] Settings--Storage&USB，选择图片--删除，提示不能删除此文件

## [FAQ04172] 如何修改有几张卡插入就显示几个信号图标

## [FAQ11117] 如何把状态栏信号格改为5格

## [FAQ09448] 如何在quicksettings中增加一个新的buttons

## [FAQ14365] 下拉通知栏底部如何显示运营商图标

## [FAQ18050] 如何获取2G服务小区信号强度和信号质量

## [FAQ17787] L-OS通过T卡升级到M-OS后（lk不升级）不能连接meta

## [FAQ14866] [Audio App]代码如何实现识别“耳机hook键长按”的动作？music和fm apk并对此进行响应

## [FAQ04679] 双卡项目如何在状态栏显示或隐藏G,3G以及卡1和卡2的信号标识

## [FAQ09081] NavigationBar（虚拟按键）横屏时显示位置

## [FAQ13709] 如何在 QuickSettings 上添加一个开关

## [FAQ08581] [Audio Profile] 如何修改情景模式的默认值

## [FAQ18073] M 版本快速开关飞行模式出现飞行模式开启时蓝牙打开

## [FAQ17995] How to do calibration with MauiMeta tool

## [FAQ18089] 短信SMS流程及解码方法介绍

## [FAQ18107] 如何解决ListView打开下拉回弹效果后有时无法回弹的问题？

## [FAQ18154] modemlog无法打开或关闭，提示命令超时

## [FAQ11447] [Recovery][Common]从JB(4.2)版本通过FOTA升级到KK(4.4)版本的注意事项

## [FAQ14051] 在长按power键弹出的关机对话框中添加“Airplane Mode”菜单

## [FAQ14053] L1下拉状态栏QuickSetting没有数据连接

## [FAQ18110] Vibrator概率性不震动

## [FAQ12073] [SEC]如何屏蔽SIMME LOCK解锁界面

## [FAQ13736] [Audio Profile]L版本上music如何设置双卡铃声

## [FAQ18193] [Audio Policy]如何添加开关修改指定场景的输出device

## [FAQ18234] 使用monitor中的systrace抓取时出现trace_marker:Bad File Descriptor(9)

## [FAQ15274] 如何使用watchpoint？

## [FAQ18098] [Graphics]Skia绘图的dump方法

## [FAQ04906] [USB名称修改系列] 第13项-如何修改USB存储在PC"我的电脑"中显示的label名称

## [FAQ10135] [People]新建/编辑联系人时，检测输入的email/邮件地址格式是否合法

## [FAQ14415] 如何开启early printk调试kernel？

## [FAQ12122] [SEC]过期卡锁卡需求-卡2依赖卡1 (越南为例)

## [FAQ12123] [SEC]过期卡锁卡需求-双卡相互依赖 (KK版本)

## [FAQ18351] How to fix MAC address by driver

## [FAQ12521] [Dialer]如何在通话界面上实现+7和8互相匹配

## [FAQ06838] 如何通过omnipeek抓取sniffer log--new

## [FAQ18373] qq音乐播放，进入多任务杀掉QQ音乐后，耳机hook键就不起作用

## [FAQ18202] [Recovery][Common]Android L ->M版本OTA/T卡升级注意事项

## [FAQ13232] L 预置apk

## [FAQ13893] android L小区广播预置方法

## [FAQ17487] [USB] PC上如何正确配置、安装USB驱动

## [FAQ14736] 【sdcard-FAT filesystem】如何预置资源到手机存储

## [FAQ12895] 如何使用工具抓取ftrace

## [FAQ18016] L/M版本开机黑屏问题区分

## [FAQ14102] L版本开机提示“Android正在升级或启动”

## [FAQ12410] Panorama照片在Gallery中沒有动画

## [FAQ09198] Setting语言与输入法列表客制化

## [FAQ08649] [SP FlashTool/SP Multiport Download Tool] Donwload完整性检查和开机检查客制化

## [FAQ06038] 如何打开DB文件

## [FAQ05872] 如何用DDMS分析native memory leak

## [FAQ13345] Android L版本上指南针apk读取不到sensor数据的原因分析

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
## [FAQ11202] 如何在Eclipse中调试Framework和APK

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

## 自拍杆的原理？？？自拍杆上的按键键值如何定义？？

## smart PA 是什么东西？？？

## C2K 是什么意思？？？

```
C2K：CDMA2000

EVDO : 表示支持中国电信3G数据业务。
CDMA2000是网络制式，类似于GSM、WCDMA、TD-SCDMA
EVDO是该制式下的一种网络技术，以实现3G的高速数据链接，类似于WCDMA的EDGE、HSPA等。
在中国电信3G网络中，将CDMA2000划分为CDMA 1X和CDMA EVDO，其中1X特指CS业务（主要是语音通话业务），而EVDO则独立支持高速3G数据业务，也就是通常用户体验的高速数据业务下载应用，都承载在EVDO网络上
```

## I2C是什么东西？？？

## ResourceOverlay 怎么用？？？

## 如何读取和修改 SIM 卡里的文件？？

## 如何自定义状态栏上的图标？？就像KIKA输入法那样？？

## 如何自定义AT命令？？？怎么发送？？怎么接收处理？？

## 如何在添加 nomedia 文件？？

## 什么是三段式耳机？？什么是四段式耳机？？

## 手机加密算法？？？ GEA？？？

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

FAQ看到了243页

## Android 8.1移植：针对某个APK做到wifi和gprs分别做到允许和禁止两种策略

```
https://blog.csdn.net/zengrunxiu/article/details/81027275
```
