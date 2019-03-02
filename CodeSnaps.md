在注释中添加生效的路径
研究输入法
把培训做成视频
lint怎么用？？？？？？？？？
整理bug并归类？？？？？？？

# mtk开发论坛

http://bbs.16rd.com/forum-263-1.html

# 常用Base类

BaseActivity
BaseAdapter
BaseFragment

# 常用工具类

https://github.com/Blankj/AndroidUtilCode/blob/master/utilcode/README-CN.md
https://github.com/BolexLiu/DevNote
文件操作工具类

# 更新jdk版本

sudo update-alternatives --config java
sudo update-alternatives --config javac

# 常用jar包
操作excel的包
操作json的包
jsoup
爬虫的包

# 整理语言列表

# 常用缩写的意思(单开一个)

# 常用默认值的修改(单开一个)

# 常用sql语句

# 常用库(AndroidStudio)

# 常用adb命令

[awesome-adb](https://github.com/mzlogin/awesome-adb)

# 常用git命令

# 常用工具安装

qgit
vscode

# 打印当前所使用的类名、方法名、行号

``` bash
android.util.Log.e("zhangqi8888", Thread.currentThread().getStackTrace()[2].getMethodName()+"  "+Thread.currentThread().getStackTrace()[2].getMethodName()+"  "+Thread.currentThread().getStackTrace()[2].getLineNumber());
```

# android:duplicateParentState 属性详解

[android:duplicateParentState](https://blog.csdn.net/sodino/article/details/8809778)

``` Java
setDuplicateParentStateEnabled(true)
```

# Android进阶学习网站
https://github.com/lizhangqu/CoreLink
https://github.com/GcsSloop/AndroidNote?utm_source=gold_browser_extension

# 反射代码模板

# OnClickListener
``` Java
button.setOnClickListener(new android.view.View.OnClickListener() {
    @Override
    public void onClick(android.view.View v) {
        android.util.Log.e("zhangqi8888", "onClick(1) view:" + view);
    }
});
```

# OnKeyListener
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

# 对话框的按键监听
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

# OnFocusChangeListener
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

# onLongClickListener
``` Java
view.setOnLongClickListener(new android.view.View.OnLongClickListener() {
    @Override
    public boolean onLongClick(android.view.View v) {
        android.util.Log.e("zhangqi8888", "onLongClick() v:" + v);
        return false;
    }
});
```

# onLayoutChangeListener 监听布局的变化
``` Java
getListView().addOnLayoutChangeListener(new android.view.View.OnLayoutChangeListener() {
    @Override
    public void onLayoutChange(android.view.View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        android.util.Log.e("zhangqi8888", "onLayoutChangeListener(1)" + v);
    }
});
```

# ListView onItemClickListener
``` Java
mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(){
    public void onItemClick(android.widget.AdapterView<?> parent, android.view.View view, int position, long id){
        android.util.Log.e("zhangqi8888", "onItemClick(1)" + view);
    }
});
```

# CheckBox.setOnCheckedChangeListener
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

# 监听全局布局的变化
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

# ListView上seekbar的按键监听
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

# 监听音量的变化
``` Java
mAudioManager.listenRingerModeAndVolume(new AudioProfileListener() {
    public void onRingerVolumeChanged(int oldVolume, int newVolume, String extra) {
        android.util.Log.e("listenRingerModeAndVolume", "StatusBarWindowView->onRingerVolumeChanged("+oldVolume+","+newVolume+")");
        seekbar_volume.setProgress(mAudioManager.getStreamVolume(AudioManager.STREAM_RING));
    }
}, AudioProfileListener.LISTEN_RINGER_VOLUME_CHANGED);
```

# 监听sim状态的变化
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

# Handler handleMessage
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

# 通过handler处理长按的消息？？？？

# 启动线程
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

# try-catch模板
``` Java
try {
    Object mObject = null;
    mObject.toString();
} catch (Exception e) {
    e.printStackTrace();
    android.util.Log.e("zhangqi8888", "NPE:" + e, e);
}
```


# 滚动条不消失
``` xml
android:fadeScrollbars="false"
```

# apn-conf.xml 文件中各个参数的含义？？？？

# listenRingerModeAndVolume 监听情景模式的变化
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

# setTextSize
``` Java
setTextSize(android.util.TypedValue.COMPLEX_UNIT_DIP, 21.0f);
```

# 调节情景模式
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

# onKeyDown / onKeyUp
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

# 下拉通知栏
``` Java
((android.app.StatusBarManager)getSystemService("statusbar")).expandNotificationsPanel();
```

# 获取View的几种方法
``` Java
int id = getContext().getResources().getIdentifier("android:id/search_src_text", null, null);
View mView = findViewById(id);
```

# 启动service
``` Java
Intent intent = new Intent("xxx");
intent.setPackage("xxx");
intent.setComponent(new ComponentName("aaa", "bbb"));
startService(intent);
```

# 绑定service bindService
``` Java
mContext.bindService(new Intent("android.intent.action.START_MMS_SETTINGS_SERVICE_AIDL"), conn, Service.BIND_AUTO_CREATE);
```

# 用代码写LinearLayout

# 常用View控件的xml模板
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

# 常用属性
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

# 修改actionbar的颜色
``` Java
window.getDecorView().findViewById(com.android.internal.R.id.action_bar_container).setBackgroundColor(android.graphics.Color.parseColor("#ffffff"));
```

# 发送广播
``` Java
sendBroadcast(new Intent(""));
```

# 发送通知模板Notification
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

# 动态注册监听广播
``` Java
registerReceiver(new android.content.BroadcastReceiver() {
    public void onReceive(android.content.Context context, android.content.Intent intent){
        String action = intent.getAction();
        android.util.Log.e("zhangqi8888", "onReceive()" + action);
    }
}, new android.content.IntentFilter("$1"));
```

# 颜色解析
``` Java
textView.setTextColor(android.graphics.Color.parseColor("#0096ff"));
```

# 反色相关代码(color inversion)
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

# 更新界面显示
``` Java
try {
    mActivityManager.updateConfiguration(null);
} catch (RemoteException e) {
}
```

# 给apk签名

# Android.mk模板(各个属性的含义)
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

# AndroidManifest中的模板？？？？
## Activity模板？？？？
## Service模板？？？？
## Receiver模板？？？？
## ContentProvider模板？？？？
## 常用权限
``` xml
//T卡读写权限
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_MEDIA_STORAGE" />

//全局对话框的权限
<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>
```

# Style常用属性

# SharedPreference保存读取
``` Java
//保存
getSharedPreferences("prefs", Context.MODE_APPEND).edit().putBoolean("isFirst", true).apply();

//读取
boolean isFirst = getSharedPreferences("prefs", Context.MODE_APPEND).getBoolean("isFirst", false);
```

# ro值的读取(在某些地方可能需要用到反射)
``` Java
android.os.SystemProperties.get("ro.build.type", "null");
```

# persist值的保存读取？权限问题

# ContentObserver监听某个数据库的值

``` Java
getContentResolver().registerContentObserver(android.provider.Settings.System.getUriFor(android.provider.Settings.System.AIRPLANE_MODE_ON), false, new android.database.ContentObserver(new android.os.Handler()) {
    @Override
    public void onChange(boolean selfChange, android.net.Uri uri) {
        super.onChange(selfChange, uri);
        android.util.Log.e("zhangqi8888", "onChange()" + uri);
    }
});
```

# Toast

``` Java
android.widget.Toast.makeText(getContext(), "", 2000).show();
```

# Toast高级版

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

# Toast自定义版

# Toast开源库

# Dialog模板

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

# AlertDialog模板

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

# 全局对话框

使用 Application 作为 Dialog 的 Context 将对话框的window类型设置为 WindowManager.LayoutParams.TYPE_SYSTEM_ALERT
``` Java
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

# AlertDialog状态不变黑

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

# showProgressDialog

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

# 隐藏toolbar上的 NavigationView

``` Java
Toolbar mToolbar = (Toolbar) findViewById(com.android.internal.R.id.action_bar);
if (mToolbar != null) {
    mToolbar.getNavigationView().setVisibility(View.GONE);
}
```

# PreferenceActivity的使用

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

# 通话录音之前播放DTMF声音通知对方

``` Java
CallCommandClient.getInstance().playDtmfTone('9', true);
CallCommandClient.getInstance().stopDtmfTone();
```

# 按键转发

``` Java
import android.view.KeyEvent;

private long mKeyRemappingSendFakeKeyDownTime;
private void keyRemappingSendFakeKeyEvent(int action, int keyCode) {
    long eventTime = android.os.SystemClock.uptimeMillis();
    if (action == KeyEvent.ACTION_DOWN) {
        mKeyRemappingSendFakeKeyDownTime = eventTime;
    }
    android.view.KeyEvent keyEvent = new android.view.KeyEvent(mKeyRemappingSendFakeKeyDownTime, eventTime, action, keyCode, 0);
    android.hardware.input.InputManager inputManager = (android.hardware.input.InputManager) getActivity().getSystemService(Context.INPUT_SERVICE);
    inputManager.injectInputEvent(keyEvent, android.hardware.input.InputManager.INJECT_INPUT_EVENT_MODE_ASYNC);
}

mEditTextFrequency.setOnKeyListener(new View.OnKeyListener() {
    @Override
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if(keyEvent.getAction() == KeyEvent.ACTION_UP && keyEvent.getKeyCode() == KeyEvent.KEYCODE_STAR){
            //转发
            keyRemappingSendFakeKeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_NUMPAD_DOT);
            keyRemappingSendFakeKeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_NUMPAD_DOT);
            return true;
        }
        return false;
    }
});
```

# 去掉状态栏

``` Java
//注意在setContentView()之前调用，否则无效。
requestWindowFeature(Window.FEATURE_NO_TITLE);
```

# 设置窗口格式为半透明

``` Java
getWindow().setFormat(PixelFormat.TRANSLUCENT);
```

# 全屏
``` Java
//注意在setContentView()之前调用，否则无效。
getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
```

# Android中在非UI线程里更新View的不同方法
``` Java
Activity.runOnUiThread( Runnable )
View.post( Runnable )
View.postDelayed( Runnable, long )
Hanlder
AsyncTask
```

# 通话静音
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

# 禁止截屏
``` Java
getWindow().addFlags(WindowManager.LayoutParams.FLAG_SECURE);
```

# 判断屏幕旋转方向
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

//调用如下
edtRemark.setFilters(new InputFilter[]{new UIHelper.EmojiExcludeFilter()});
```

# ViewPager无限滑动
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

# 判断ViewPager的滑动方向
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

# 根据百分比计算颜色值
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

# 解析图片的几种方法
``` Java
Bitmap bitmap = BitmapFactory.decodeResource(R.drawable.ic_launcher);
```

# HttpClient
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

# Shape的模板
``` xml
<?xml version="1.0" encoding="utf-8"?>
<!-- android:shape指定形状类型，默认为rectangle -->
<shape xmlns:android="http://schemas.android.com/apk/res/android"　android:shape="rectangle">
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

# 文字根据状态更改颜色的Selector模板
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

# 背景色根据状态更改颜色的Selector模板
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

# 设置Activity透明
``` Xml
<style name="TransparentActivity" parent="AppBaseTheme">
    <item name="android:windowBackground">@android:color/transparent</item>
    <item name="android:colorBackgroundCacheHint">@null</item>
    <item name="android:windowIsTranslucent">true</item>
    <item name="android:windowNoTitle">true</item>
    <item name="android:windowContentOverlay">@null</item>
</style>
```

# 切换系统中某个组件的状态,设置其enable或disable
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

# 代码设置activity全屏/非全屏
``` Java
//切换到全屏
getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FORCE_NOT_FULLSCREEN);
getActivity().getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);

//切换到非全屏
getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
getWindow().addFlags(WindowManager.LayoutParams.FLAG_FORCE_NOT_FULLSCREEN);
```

# 调用开发者选项中显示触摸位置功能
``` Java
android.provider.Settings.System.putInt(getContentResolver(), "show_touches", 1);
```

# px-dp转换
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

# px-sp转换
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

# dip转px
``` Java
public static int dipToPX(final Context ctx, float dip) {
    return (int)TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, dip, ctx.getResources().getDisplayMetrics());
}
```

# 手机号码正则表达式
``` Java
public static final String REG_PHONE_CHINA = "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";
```

# 邮箱正则表达式
``` Java
public static final String REG_EMAIL = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
```

# 收集设备信息
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

# 判断是否有SD卡
``` Java
public static boolean haveSDCard() {
    return android.os.Environment.getExternalStorageState().equals(android.os.Environment.MEDIA_MOUNTED);
}
```

# 查看是否有存储卡插入
``` Java
String status=Environment.getExternalStorageState();
if(status.equals(Enviroment.MEDIA_MOUNTED)){
}
```

# 动态隐藏软键盘
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

# 动态显示软键盘
``` Java
public static void showSoftInput(Context context, EditText edit) {
    edit.setFocusable(true);
    edit.setFocusableInTouchMode(true);
    edit.requestFocus();
    InputMethodManager inputManager = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
    inputManager.showSoftInput(edit, 0);
}
```

# 动态显示或隐藏软键盘
``` Java
public static void toggleSoftInput(Context context, EditText edit) {
    edit.setFocusable(true);
    edit.setFocusableInTouchMode(true);
    edit.requestFocus();
    InputMethodManager inputManager = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
    inputManager.toggleSoftInput(InputMethodManager.SHOW_FORCED, 0);
}
```

# 主动回到home
``` Java
public static void goHome(Context context) {
    Intent mHomeIntent = new Intent(Intent.ACTION_MAIN);
    mHomeIntent.addCategory(Intent.CATEGORY_HOME);
    mHomeIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
    context.startActivity(mHomeIntent);
}
```

# 设置状态栏的颜色
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

# 通过style设置状态栏颜色
``` xml
<item name="android:windowLightStatusBar">true</item>
```


# 修改状态栏高度
frameworks/base/core/res/res/values/dimens.xml
``` Java
<dimen name="status_bar_height">48dp</dimen>
```

# 获取状态栏高度
``` Java
public static int getStatusBarHeight(Activity activity) {
    Rect frame = new Rect();
    activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(frame);
    return frame.top;
}
```

# 获取状态栏高度
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

# 获取状态栏高度＋标题栏(ActionBar)高度
``` Java
public static int getTopBarHeight(Activity activity) {
    return activity.getWindow().findViewById(Window.ID_ANDROID_CONTENT).getTop();
}
```

# 获得手机UA
``` Java
public String getUserAgent() {
    String user_agent = ProductProperties.get(ProductProperties.USER_AGENT_KEY, null);
    return user_agent;
}
```

# 清空手机上的cookie
``` Java
CookieSyncManager.createInstance(getApplicationContext());
CookieManager.getInstance().removeAllCookie();
```

# 建立gprs链接
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

# 获取MCC+MNC代码 (SIM卡运营商国家代码和运营商网络代码)
``` Java
// 仅当用户已在网络注册时有效, CDMA 可能会无效（中国移动：46000 46002, 中国联通：46001,中国电信：46003）
public static String getNetworkOperator(Context context) {
    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    return telephonyManager.getNetworkOperator();
}
```

# 获取运营商名称
``` Java
// (例：中国联通、中国移动、中国电信) 仅当用户已在网络注册时有效, CDMA 可能会无效)
public static String getNetworkOperatorName(Context context) {
    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    return telephonyManager.getNetworkOperatorName();
}
```

# 获取移动终端类型
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

# 判断手机连接的网络类型(2G,3G,4G)
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

# 获取网络类型名称
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


# 判断当前手机的网络类型(WIFI还是2,3,4G)
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

# 启动App默认的Activity
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

# 拨打电话
``` Java
public static void call(Context context, String phoneNumber) {
    context.startActivity(new Intent(Intent.ACTION_CALL, Uri.parse("tel:" + phoneNumber)));
}
```

# 跳转到拨号界面
``` Java
public static void callDial(Context context, String phoneNumber) {
    context.startActivity(new Intent(Intent.ACTION_DIAL, Uri.parse("tel:" + phoneNumber)));
}
```

# 发送短信
``` Java
public static void sendSms(Context context, String phoneNumber, String content) {
    Uri uri = Uri.parse("smsto:" + (TextUtils.isEmpty(phoneNumber) ? "" : phoneNumber));
    Intent intent = new Intent(Intent.ACTION_SENDTO, uri);
    intent.putExtra("sms_body", TextUtils.isEmpty(content) ? "" : content);
    context.startActivity(intent);
}
```

# 发送彩信
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

# 发送email
``` Java
String mime = "img/jpg";
shareIntent.setDataAndType(Uri.fromFile(fd), mime);
shareIntent.putExtra(Intent.EXTRA_STREAM, Uri.fromFile(fd));
shareIntent.putExtra(Intent.EXTRA_SUBJECT, subject);
shareIntent.putExtra(Intent.EXTRA_TEXT, body);
```

# 打开浏览器浏览某一个网站
``` Java
Intent viewIntent = new Intent("android.intent.action.VIEW",Uri.parse("http://vaiyanzi.cnblogs.com"));
startActivity(viewIntent);
```

# 唤醒屏幕并解锁
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

# 判断当前App处于前台还是后台状态
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

# 判断当前手机是否处于锁屏(睡眠)状态
``` Java
public static boolean isSleeping(Context context) {
    KeyguardManager kgMgr = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
    boolean isSleeping = kgMgr.inKeyguardRestrictedInputMode();
    return isSleeping;
}
```

# 判断当前是否有网络连接
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

# 判断当前是否是WIFI连接状态
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

# 安装APK
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

# 获取已经安装的APK路径
``` Java
PackageManager pm = getPackageManager();
for (ApplicationInfo app : pm.getInstalledApplications(0)) {
    Log.d("PackageList", "package: " + app.packageName + ", sourceDir: " + app.sourceDir);
}
```

# 判断当前设备是否为手机
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

# 判断设备是否是平板
``` Java
public static boolean isTablet(Context context) {
    return (context.getResources().getConfiguration().screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK) >= Configuration.SCREENLAYOUT_SIZE_LARGE;
}
```

# 监听apk的安装和卸载
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

# 获取内存大小
``` Java
ActivityManager.MemoryInfo outInfo = new ActivityManager.MemoryInfo();
activityManager.getMemoryInfo(outInfo);
//可用内存
outInfo.availMem
//是否在低内存状态
outInfo.lowMemory
```

# 取得ScrollView的实际高度
``` Java
scrollview.getHeight()
scrollview.getMeasuredHeight()
scrollview.compute()
scrollview.getLayoutParams().height
```

# 获取当前设备宽高，单位px
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

# 获取屏幕宽高
``` Java
DisplayMetrics dm = new DisplayMetrics();
//获取窗口属性
getWindowManager().getDefaultDisplay().getMetrics(dm);
int screenWidth = dm.widthPixels;//320
int screenHeight = dm.heightPixels;//480
```

# 获取当前设备的IMEI，需要与上面的isPhone()一起使用
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

# 获取SIM卡的IMSI号码
方法1
``` Java
TelephonyManager tm = (TelephonyManager) getSystemService(TELEPHONY_SERVICE);
String mIMSI = tm.getSubscriberIdGemini(PhoneConstants.GEMINI_SIM_1);
```

方法2
``` Java
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


# 获取当前设备的MAC地址
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

# 获取android设备唯一标示码
``` Java
String android_id = Secure.getString(getContext().getContentResolver(), Secure.ANDROID_ID)
```

# 获取当前程序的版本号
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



# 精确获取屏幕尺寸
``` Java
public static double getScreenPhysicalSize(Activity ctx) {
    DisplayMetrics dm = new DisplayMetrics();
    ctx.getWindowManager().getDefaultDisplay().getMetrics(dm);
    double diagonalPixels = Math.sqrt(Math.pow(dm.widthPixels, 2) + Math.pow(dm.heightPixels, 2));
    return diagonalPixels / (160 * dm.density);
}
```

# 计算字宽
``` Java
public static float getTextWidth(String text, float Size) {
    TextPaint FontPaint = new TextPaint();
    FontPaint.setTextSize(Size);
    return FontPaint.measureText(text);
}
```

# 获取应用程序下所有的activity
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

# 获取设备上已安装并且可启动的应用列表
``` Java
Intent intent = new Intent(Intent.ACTION_MAIN);
intent.addCategory(Intent.CATEGORY_LAUNCHER);
List<ResolveInfo> activities = getPackageManager().queryIntentActivities(intent, 0)
```

# 列出系统中所有安装的app的信息
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

# 将raw中的apk拷贝到/data/data/包名/files/中
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

# 文件读写相关
https://blog.csdn.net/lilu_leo/article/details/6597302
https://blog.csdn.net/lilu_leo/article/details/6589510

# 保存文件

# 拷贝文件
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

# 使用DexClassLoader加载 /data/data/包名/files/ 下的apk的classes.dex，并通过反射执行。
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

# 动态加载其他已经安装的apk的dex文件， 并通过反射执行
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

# 获取其他包中的资源
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

# 获取Activity的图标
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

# 获取当前app的签名信息
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

# 获取apk文件的签名信息
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

# 获取apk文件的权限信息
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


# 检测字符串中是否包含汉字
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

# 检测字符串中只能包含:中文、数字、下划线(_)、横线(-)
``` Java
public static boolean checkNickname(String sequence) {
    final String format = "[^\\u4E00-\\u9FA5\\uF900-\\uFA2D\\w-_]";
    Pattern pattern = Pattern.compile(format);
    Matcher matcher = pattern.matcher(sequence);
    return !matcher.find();
}
```

# 检查又没有应用程序来接受处理你发出的intent
``` Java
public static boolean isIntentAvailable(Context context, String action) {
    final PackageManager packageManager = context.getPackageManager();
    final Intent intent = new Intent(action);
    List<ResolveInfo> list = packageManager.queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY);
    return list.size() > 0;
}
```

# 使用TransitionDrawable实现渐变效果
``` Java
private void setImageBitmap(ImageView imageView, Bitmap bitmap) {
    final TransitionDrawable td = new TransitionDrawable(new Drawable[] { new ColorDrawable(android.R.color.transparent), new BitmapDrawable(mContext.getResources(), bitmap) });
    imageView.setBackgroundDrawable(imageView.getDrawable());
    imageView.setImageDrawable(td);
    td.startTransition(200);
}
```

# 发送广播扫描指定文件
``` Java
sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, uri));
```

# 多进程Preferences数据共享
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

# 泛型ArrayList转数组
``` Java
public static <T> T[] toArray(Class<?> cls, ArrayList<T> items) {
    if (items == null || items.size() == 0) {
        return (T[]) Array.newInstance(cls, 0);
    }
    return items.toArray((T[]) Array.newInstance(cls, items.size()));
}
```

# 保存恢复ListView为当前位置
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

# 调用便携式热点和数据共享设置
``` Java
public static Intent getHotspotSetting() {
    Intent intent = new Intent();
    intent.setAction(Intent.ACTION_MAIN);
    ComponentName com = new ComponentName("com.android.settings", "com.android.settings.TetherSettings");
    intent.setComponent(com);
    return intent;
}
```

# 格式化输出IP地址
``` Java
public static String getIp(Context ctx) {
    return Formatter.formatIpAddress((WifiManager) ctx.getSystemService(Context.WIFI_SERVICE).getConnectionInfo().getIpAddress());
}
```

# ip地址转成8位16进制串
``` Java
/** ip转16进制 */
public static String ipToHex(String ips) {
   StringBuffer result = new StringBuffer();
   if (ips != null) {
       StringTokenizer st = new StringTokenizer(ips, ".");
       while (st.hasMoreTokens()) {
           String token = Integer.toHexString(Integer.parseInt(st.nextToken()));
           if (token.length() == 1)
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
               if (i != 0)
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

# 文件夹排序
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

# 发送不重复的通知
``` Java
public static void sendNotification(Context context, String title, String message, Bundle extras) {
    Intent mIntent = new Intent(context, FragmentTabsActivity.class);
    mIntent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
    mIntent.putExtras(extras);
    int requestCode = (int) System.currentTimeMillis();
    PendingIntent mContentIntent = PendingIntent.getActivity(context, requestCode, mIntent, 0);
    Notification mNotification = new NotificationCompat.Builder(context).setContentTitle(title).setSmallIcon(R.drawable.app_icon)
        .setContentIntent(mContentIntent).setContentText(message).build();
    mNotification.flags |= Notification.FLAG_AUTO_CANCEL;
    mNotification.defaults = Notification.DEFAULT_ALL;
    NotificationManager mNotificationManager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
    mNotificationManager.notify(requestCode, mNotification);
}
```

# 通过代码设置TextView的样式
``` Java
new TextView(new ContextThemeWrapper(this, R.style.text_style));
```

# 通过html设置TextView中内容的样式
``` Java
tv.setText(Html.fromHtml("<font color="#ff0000">红色</font>其它颜色"));
```

# WebView保留缩放功能但隐藏缩放控件
``` Java
mWebView.getSettings().setSupportZoom(true);
mWebView.getSettings().setBuiltInZoomControls(true);
if (DeviceUtils.hasHoneycomb()){
     mWebView.getSettings().setDisplayZoomControls(false);
}
```

# 通过代码解压zip包
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

# 从assets中读取文本和图片资源
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

# 解析assets文件夹下的xml文件
``` Java
SAXParserFactory.newInstance().newSAXParser().parse(getResources().getAssets().open("apns-conf.xml"), apnHandler);
```

# 展开、收起状态栏
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

# 计算字宽
``` Java
public static float getTextWidth(String text, float Size) {
    TextPaint FontPaint = new TextPaint();
    FontPaint.setTextSize(Size);
    return FontPaint.measureText(text);
}
```

# 图片的旋转
``` Java
Bitmap bitmapOrg = BitmapFactory.decodeResource(this.getContext().getResources(), R.drawable.moon);
Matrix matrix = new Matrix();
matrix.postRotate(-90);//旋转的角度
Bitmap resizedBitmap = Bitmap.createBitmap(bitmapOrg, 0, 0, bitmapOrg.getWidth(), bitmapOrg.getHeight(), matrix, true);
BitmapDrawable bmd = new BitmapDrawable(resizedBitmap);
```

# 格式化string.xml 中的字符串
``` xml
// in strings.xml..
<string name="my_text">Thanks for visiting %s. You age is %d!</string>
```

``` Java
// and in the java code:
String.format(getString(R.string.my_text), "oschina", 33);
```

# 查看电池使用详情
``` Java
Intent intentBatteryUsage = new Intent(Intent.ACTION_POWER_USAGE_SUMMARY);
startActivity(intentBatteryUsage);
```

# android获取存储卡路径以及使用情况
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

# android中添加新的联系人
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

# 唤醒屏幕并解锁
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

# 判断当前App处于前台还是后台状态
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

# 获取栈顶Activity
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
	if(topActivity != null){
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

# 判断当前手机是否处于休眠状态
``` Java
public static boolean isSleeping(Context context) {
    KeyguardManager kgMgr = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
    boolean isSleeping = kgMgr.inKeyguardRestrictedInputMode();
    return isSleeping;
}
```

# 在View Layout完成后获取 控件大小
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

# 关键帧插值器
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

# 给图片叠加渐变
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

# ListView 或者 GridView 去除滑动特性 (即固定高度)
``` Java
@Override
protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
    heightMeasureSpec = MeasureSpec.makeMeasureSpec(Integer.MAX_VALUE >> 2, MeasureSpec.AT_MOST);
    super.onMeasure(widthMeasureSpec, heightMeasureSpec);
}
```

# 获取系统长按时间，自定义View会用到
``` Java
getSystemLongPressTime
```

# 圆形的ImageView,CircleImageView
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

# 通过代码动态设置语言
``` Java
Resources resources = getResources();//获得res资源对象
Configuration config = resources.getConfiguration();//获得设置对象
DisplayMetrics dm = resources.getDisplayMetrics();//获得屏幕参数：主要是分辨率，像素等。
config.locale = Locale.SIMPLIFIED_CHINESE; //简体中文
resources.updateConfiguration(config, dm);
```

# 根据控件的id名称获取控件
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

# 获取图片信息
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

# 解析res/drawable下图片的另一种方式
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

# 通过代码创建快捷方式
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

# 通过代码动态设置view的selector
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

# 模拟鼠标点击？？？？

# 模拟鼠标长按？？？？

# 模拟滑动？？？？

# 模拟按键事件？？？？
``` Java
//方法a
new EditText(context).onKeyDown(keyCode, new KeyEvent(KeyEvent.ACTION_DOWN, keyCode));	//模拟按键的点击事件,这里必须需要一个EditText才可以

//方法b, 这个也可以通过命令行发送	adb shell input keyevent 82
Process process = Runtime.getRuntime().exec("input keyevent 82");						//模拟按键的点击事件,82相当于上面的keyCode

//方法c
Instrumentation instrumentation = new Instrumentation();
instrumentation.sendKeyDownUpSync(KeyEvent.KEYCODE_MENU);

//方法d
Instrumentation instrumentation = new Instrumentation();
instrumentation.sendKeySync(new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MENU));
instrumentation.sendKeySync(new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MENU));
```

# 通过反射修改全局默认字体
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

# 通过反射获取FeatureOption中的所有字段的值
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

# 通过反射设置EditText的游标颜色
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

# Launcher上长按下键RecyclerView乱跳的问题
``` Java
@Override
public View onInterceptFocusSearch(View focused, int direction) {
    int currentPosition = getPosition(getFocusedChild());
    int count = getItemCount();
    int lastVisiblePosition = findLastVisibleItemPosition();
    android.util.Log.e("onInterceptFocusSearch", "AllAppsGridAdapter->onInterceptFocusSearch(1) currentPosition:"+currentPosition+" lastVisiblePosition:"+lastVisiblePosition);
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
    android.util.Log.e("onInterceptFocusSearch", "AllAppsGridAdapter->onInterceptFocusSearch(2) currentPosition:"+currentPosition+" lastVisiblePosition:"+lastVisiblePosition);
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


# SRLauncher修改图片之后，部分图片不生效
在 Android.mk 文件中看到有 LOCAL_USE_AAPT2 := true　，说明是用AAPT2来编译链接资源的，把这个去掉用aapt去编译即可
因为 AAPT2 不会重新编译生成 SRLauncher_intermediates，而 AAPT 就会重新生成

The main idea behind AAPT2, apart from new features, is that it divides the 'package' step into two: 'compile' and 'link'. It improves performance, since if only one file changes, you only need to recompile that one file and link all the intermediate files with the 'link' command.

https://fucknmb.com/2018/10/05/%E5%86%8D%E8%B0%88aapt2%E8%B5%84%E6%BA%90%E5%88%86%E5%8C%BA/









# tint 着色器的原理和使用方法
http://yifeng.studio/2017/03/30/android-tint/
mMessageListItem.setBackgroundTintList(android.content.res.ColorStateList.valueOf(0x00000000));







# Android 利用 <activity-alias> 动态改变 App 桌面图标
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

## 获取电池电量

``` Java
android.os.BatteryManager batteryManager = (android.os.BatteryManager)getSystemService("batterymanager");
int battery = batteryManager.getIntProperty(4);//BATTERY_PROPERTY_CAPACITY = 4
```

## TAG模板

``` Java
private static final String TAG = $className$.class.getSimpleName();
```

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

## 