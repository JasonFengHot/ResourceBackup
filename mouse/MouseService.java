package com.android.server.mouse;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.Context;
import android.content.IntentFilter;
import android.content.Intent;
import android.content.BroadcastReceiver;
import android.os.RemoteException;
import android.os.IMouseService;
import android.os.Bundle;
import android.os.SystemClock;
import android.app.Instrumentation;
import android.graphics.PixelFormat;
import android.graphics.Color;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import android.util.Log;
import android.os.Handler;
import android.os.Message;
import com.android.server.mouse.MouseView;

public class MouseService extends IMouseService.Stub {
    private final static String TAG = "MouseService";
    private Context mContext;
    private WindowManager mWindowManager;
    private MouseView mMouseView;
    public MouseService(Context context) {
        super();
        mContext = context;
        mWindowManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
    }
    private void initMouseView(){
        if(mMouseView != null){
            return;
        }
        if(mContext == null){
            android.util.Log.e(TAG, "Context is null, init fail!");
            return;
        }
        mMouseView = new MouseView(mContext, this);
        mMouseView.setVisibility(View.GONE);
        // MouseView LayoutParams
        WindowManager.LayoutParams mLayoutParams = new WindowManager.LayoutParams();
        mLayoutParams.width = -1;
        mLayoutParams.height = -1;
        mLayoutParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON;
        mLayoutParams.format = PixelFormat.TRANSLUCENT;
        mLayoutParams.type = WindowManager.LayoutParams.TYPE_SECURE_SYSTEM_OVERLAY;
        mWindowManager.addView(mMouseView, mLayoutParams);
    }

    //Redmine68188 zhangqi modified for mouse swipe function 2018/01/17:begin
    public void scrollMouse(int direction){
		//test {153619} modify facebook show not complete sunchao 2018-11-14 begin
		int localeY = mMouseView.getYY()+20;
        if(MouseView.DIRECTION_LEFT == direction){
            sendSwipe(120, localeY, 200, localeY);
        }else if(MouseView.DIRECTION_UP == direction){
            sendSwipe(120, 160, 120, 240);
        }else if(MouseView.DIRECTION_RIGHT == direction){
            sendSwipe(120, localeY, 40, localeY);
        }else if(MouseView.DIRECTION_DOWN == direction){
            sendSwipe(120, 160, 120, 80);
        }
		//test {153619} modify facebook show not complete sunchao 2018-11-14 end
    }
    private Thread scrollThread = null;
    private Boolean isScrolling = false;
    private void sendSwipe(final float x1, final float y1, final float x2, final float y2) {
	    if(scrollThread == null){
	        scrollThread = new Thread(new Runnable(){
	            public void run(){
                    synchronized(isScrolling){
                        isScrolling = true;
                        int inputSource = 3;
                        int duration = 300;
                        long now = SystemClock.uptimeMillis();
                        injectMotionEvent(inputSource, MotionEvent.ACTION_DOWN, now, x1, y1, 0.0f);
                        long startTime = now;
                        long endTime = startTime + duration;
                        while (now < endTime) {
                            long elapsedTime = now - startTime;
                            float alpha = (float) elapsedTime / duration;
                            injectMotionEvent(inputSource, MotionEvent.ACTION_MOVE, now, lerp(x1, x2, alpha), lerp(y1, y2, alpha), 0.0f);
                            now = SystemClock.uptimeMillis();
                        }
                        injectMotionEvent(inputSource, MotionEvent.ACTION_UP, now, x2, y2, 0.0f);
                        isScrolling = false;
                        scrollThread = null;
                        try{
                            Thread.sleep(500);
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                    }
                }
            });
            scrollThread.start();
        }
    }
    public boolean canScrollInDirection(int direction){
        switch(direction){
            case MouseView.DIRECTION_LEFT:
				//test {153619} modify facebook show not complete sunchao 2018-11-14 begin
                if(isFaceBookLiteTop()){
                    return true;
                }
                return false;
            case MouseView.DIRECTION_RIGHT:
                if(isFaceBookLiteTop()){
                    return true;
                }
				//test {153619} modify facebook show not complete sunchao 2018-11-14 end
                return false;
            case MouseView.DIRECTION_UP:
                if(isFaceBookLiteTop()){
                    return true;
                }
                return false;
            case MouseView.DIRECTION_DOWN:
                if(isFaceBookLiteTop()){
                    return true;
                }
                return false;
        }
        return false;
    }
    private static final float lerp(float a, float b, float alpha) {
        return (b - a) * alpha + a;
    }
    private MotionEvent injectMotionEvent(int inputSource, int action, long when, float x, float y, float pressure) {
        final float DEFAULT_SIZE = 1.0f;
        final int DEFAULT_META_STATE = 0;
        final float DEFAULT_PRECISION_X = 1.0f;
        final float DEFAULT_PRECISION_Y = 1.0f;
        final int DEFAULT_DEVICE_ID = 0;
        final int DEFAULT_EDGE_FLAGS = 0;
        MotionEvent event = MotionEvent.obtain(when, when, action, x, y, pressure, DEFAULT_SIZE, DEFAULT_META_STATE, DEFAULT_PRECISION_X, DEFAULT_PRECISION_Y, DEFAULT_DEVICE_ID, DEFAULT_EDGE_FLAGS);
        event.setSource(inputSource);
        Instrumentation instrumentation = new Instrumentation();
        instrumentation.sendPointerSync(event);
        return event;
    }
    //Redmine68188 zhangqi modified for mouse swipe function 2018/01/17:end
    // zhangqi modified for mouse show function 2018/01/18:begin
    private boolean isMouseShown = false;
    @Override
    public boolean isMouseShow(){
        if(mMouseView != null){
            isMouseShown = mMouseView.getVisibility() == View.VISIBLE ? true : false;
        }
        return isMouseShown;
    }
    @Override
    public void showMouse(boolean show){
        if(mMouseView == null){
            initMouseView();
        }
        mMouseView.setVisibility(show ? View.VISIBLE : View.GONE);
    }
    // zhangqi modified for mouse show function 2018/01/18:end
    @Override
    public boolean moveMouse(int direction, boolean isDown, boolean canScrollInApp){
        mMouseView.moveMouse(direction, isDown, canScrollInApp);
        return false;
    }
    @Override
    public boolean canMoveInDirection(int direction){
        boolean canMove = true;
        if(direction == MouseView.DIRECTION_LEFT && mMouseView != null && mMouseView.getXX() <= mMouseView.getBorderLeft()){
            canMove = false;
            android.util.Log.e("zhangqi8888", "MouseService->canMoveInDirection(1) x:"+mMouseView.getXX()+" y:"+mMouseView.getYY());
        }else if(direction == MouseView.DIRECTION_RIGHT && mMouseView != null && mMouseView.getXX() >= mMouseView.getBorderRight()){
            canMove = false;
            android.util.Log.e("zhangqi8888", "MouseService->canMoveInDirection(2) x:"+mMouseView.getXX()+" y:"+mMouseView.getYY());
        }else if(direction == MouseView.DIRECTION_UP && mMouseView != null && mMouseView.getYY() <= mMouseView.getBorderTop()){
            canMove = false;
            android.util.Log.e("zhangqi8888", "MouseService->canMoveInDirection(3) x:"+mMouseView.getXX()+" y:"+mMouseView.getYY());
        }else if(direction == MouseView.DIRECTION_DOWN && mMouseView != null && mMouseView.getYY() >= mMouseView.getBorderBottom()){
            canMove = false;
            android.util.Log.e("zhangqi8888", "MouseService->canMoveInDirection(4) x:"+mMouseView.getXX()+" y:"+mMouseView.getYY());
        }
        return canMove;
    }
    //Redmine75167 zhangqi modified for mouse click function 2016/12/19:begin
    private long downTime = -1;
    private long upTime = -1;
    private final static int MSG_MOUSE_EVENT = 0x555;
    private Handler mHandler = new Handler(){
        public void handleMessage(Message msg){
            switch(msg.what){
                case MSG_MOUSE_EVENT:
                    //long press
                    mouseClick(true);
                    break;
            }
        }
    };
    private void mouseClick(final boolean isLongClick){
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    int xx = mMouseView.getXX() + 3;
                    int yy = mMouseView.getYY() + 21;
                    if (mMouseView.isFullScreen()) {
                        yy = mMouseView.getYY() + 2;
                    }
                    Instrumentation instrumentation = new Instrumentation();
                    long eventTime = SystemClock.uptimeMillis();
                    MotionEvent eventDown = MotionEvent.obtain(eventTime, eventTime, MotionEvent.ACTION_DOWN, xx, yy, 0);
                    MotionEvent eventUp = MotionEvent.obtain(eventTime, eventTime, MotionEvent.ACTION_UP, xx, yy, 0);
                    instrumentation.sendPointerSync(eventDown);
                    if(!isLongClick){
                        instrumentation.sendPointerSync(eventUp);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).start();
    }
    @Override
    public void clickMouse(final boolean isDown, final boolean handleUp){
        if(isDown){
            downTime = SystemClock.uptimeMillis();
            mHandler.sendEmptyMessageDelayed(MSG_MOUSE_EVENT, 500);
        }else{
            upTime = SystemClock.uptimeMillis();
            if(downTime > 0 && upTime > 0 && upTime - downTime > 0){
                mHandler.removeMessages(MSG_MOUSE_EVENT);
                //short press
                if(upTime - downTime < 600){
                    mouseClick(false);
                }else if(handleUp){
                    mouseClick(false);
                }
            }
        }
    }
    //Redmine75167 zhangqi modified for mouse click function 2016/12/19:end
    private boolean isFaceBookLiteTop(){
        ComponentName topActivity = getTopActivity();
        String packageName = "";
        String className = "";
        if(topActivity != null){
            packageName = topActivity.getPackageName().trim();
            className = topActivity.getClassName().trim();
        }
        if ("com.facebook.lite".equalsIgnoreCase(packageName)) {
            return true;
        }
        return false;
    }
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
}

