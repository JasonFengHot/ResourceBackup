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
//通过id的名称获取id
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
getWindow().getDecorView().findViewById(com.android.internal.R.id.action_bar_container).setBackgroundColor(android.graphics.Color.parseColor("#ffffff"));
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
textView.setTextColor(0x0000ff00);
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

## 常用权限????TODO
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

# 设置状态栏透明

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

# 获取SIM卡的IMSI号码

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

# 保存文件

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

## 39go默认壁纸(其他的一些属性也会在 device/mediatek/common/overlay/ago/ 目录下overlay)

device/mediatek/common/overlay/ago/frameworks/base/core/res/res/drawable-nodpi/default_wallpaper.jpg

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

注意1：PRODUCT_AAPT_PREF_CONFIG只能设置一种dpi。不能设置为PRODUCT_AAPT_PREF_CONFIG := xhdpi  xxhdpi 这种错误形式。
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
VSS - Virtual Set Size 虚拟耗用内存（包括共享库占用的内存）
RSS - Resident Set Size 实际使用物理内存（包括共享库占用的内存）
PSS - Proportional Set Size 实际使用的物理内存（比例分配共享库占用的内存）
USS - Unique Set Size 进程独自占用的物理内存（不包括共享库占用的内存）


VSS：VSS表示一个进程可訪问的所有内存地址空间的大小。

这个大小包含了进程已经申请但尚未使用的内存空间。在实际中非常少用这样的方式来表示进程占用内存的情况，用它来表示单个进程的内存使用情况是不准确的。
RSS：表示一个进程在RAM中实际使用的空间地址大小。包含了所有共享库占用的内存。这样的表示进程占用内存的情况也是不准确的。
PSS：表示一个进程在RAM中实际使用的空间地址大小，它按比例包括了共享库占用的内存。假如有3个进程使用同一个共享库，那么每一个进程的PSS就包括了1/3大小的共享库内存。

这样的方式表示进程的内存使用情况较准确。但当仅仅有一个进程使用共享库时，其情况和RSS一模一样。
USS：表示一个进程本身占用的内存空间大小，不包括其他不论什么成分，这是表示进程内存大小的最好方式！
```

## free命令查看剩余可用空间

``` bash
free 命令显示系统使用和空闲的内存情况，包括物理内存、交互区内存(swap)和内核缓冲区内存。
		    total        used        free      shared     buffers
Mem:        441946112   432463872     9482240     1175552     1437696
-/+ buffers/cache:      431026176    10919936
Swap:       331452416    91521024   239931392
```

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
