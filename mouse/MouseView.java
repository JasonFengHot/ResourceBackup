package com.android.server.mouse;

import java.util.List;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.app.Activity;
import android.view.WindowManager;

public class MouseView extends View {
    private Context mContext;
    private Paint mPaint;
    private Bitmap mPointerBitmap;
    // mouse pointer init position
    private int xx = 50;
    private int yy = 50;
    public final static int DIRECTION_UNKNOWN = -1;
    public final static int DIRECTION_LEFT = 0;
    public final static int DIRECTION_UP = 1;
    public final static int DIRECTION_RIGHT = 2;
    public final static int DIRECTION_DOWN = 3;
    public final static int SPEED_FASTEST = 4;
    public final static int SPEED_SLOWEST = 1;
    private int mSpeed = SPEED_SLOWEST;
    private int mDirection = DIRECTION_UNKNOWN;
    private int BORDER_LEFT = 0;
    private int BORDER_TOP = 0;
    private int BORDER_RIGHT;
    private int BORDER_BOTTOM;
    private WindowManager windowManager;
    private int moveCount;
    private boolean moveMouse;
    private boolean scrollMouse;
    private MouseService mouseService;

    public MouseView(Context context) {
        super(context);
        initView(context);
    }

    public MouseView(Context context, MouseService mouseService) {
        super(context);
        initView(context);
        this.mouseService = mouseService;
    }

    public MouseView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView(context);
    }

    private void initView(Context context){
        mContext = context;
        windowManager = (WindowManager) mContext.getSystemService(Context.WINDOW_SERVICE);
        BORDER_RIGHT = windowManager.getDefaultDisplay().getWidth() - 6;
        BORDER_BOTTOM = windowManager.getDefaultDisplay().getHeight() - 20;
        mPaint = new Paint();
        mPaint.setColor(Color.WHITE);
        mPointerBitmap = BitmapFactory.decodeResource(getResources(), com.android.internal.R.drawable.pointer_arrow);
    }

    private boolean isRunning = true;

    @Override
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        isRunning = visibility == View.VISIBLE ? true : false;
        // the thread is started for updating mouse pointer position
        new Thread(new Runnable() {
            @Override
            public void run() {
                while (isRunning) {
                    try {
                        scrollMouse = false;
                        switch (mDirection) {
                        case DIRECTION_LEFT:
                            if(moveMouse){
                                xx -= mSpeed;
                            }
                            // move to the left border
                            if (xx < BORDER_LEFT) {
                                xx = BORDER_LEFT;
                                moveMouse = false;
                                scrollMouse = true;
                            }
                            break;
                        case DIRECTION_UP:
                            if(moveMouse){
                                yy -= mSpeed;
                            }
                            // move to the up border
                            if (yy <= BORDER_TOP) {
                                yy = BORDER_TOP;
                                moveMouse = false;
                                scrollMouse = true;
                            }
                            break;
                        case DIRECTION_RIGHT:
                            if(moveMouse){
                                xx += mSpeed;
                            }
                            // move to the right border
                            if (xx > BORDER_RIGHT) {
                                xx = BORDER_RIGHT;
                                moveMouse = false;
                                scrollMouse = true;
                            }
                            break;
                        case DIRECTION_DOWN:
                            if(moveMouse){
                                yy += mSpeed;
                            }
                            // move to the bottom border
                            if (yy >= getBorderBottom()) {
                                yy = getBorderBottom();
                                moveMouse = false;
                                scrollMouse = true;
                            }
                            break;
                        }
                        if (moveMouse) {
                            moveCount++;
                            if (moveCount % 5 == 0) {
                                if (mSpeed < SPEED_FASTEST) {
                                    mSpeed++;
                                }
                            }
                            postInvalidate();
                        }else if(canScrollInApp && canScroll && scrollMouse){
                            scrollMouse();
                        }
                        Thread.sleep(25);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }).start();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        // draw mouse pointer view
        canvas.drawBitmap(mPointerBitmap, xx, yy, mPaint);
    }
    public int getXX(){
        return xx;
    }
    public int getYY(){
        return yy;
    }
    public int getBorderLeft(){
        return BORDER_LEFT;
    }
    public int getBorderRight(){
        return BORDER_RIGHT;
    }
    public int getBorderTop(){
        return BORDER_TOP;
    }
    public int getBorderBottom(){
        if (isFullScreen()) {
            return BORDER_BOTTOM + 18;
        }
        return BORDER_BOTTOM;
    }

    public boolean isFullScreen(){
        int[] screenParams = new int[2];
        getLocationOnScreen(screenParams);
        return screenParams[0] == 0 && screenParams[1] == 0;
    }

    private boolean canScroll = false;
    private boolean canScrollInApp = false;
    public void moveMouse(int direction, boolean isDown, boolean canScrollInApp){
        this.canScrollInApp = canScrollInApp;
        if(isDown){
            // mouse down : start moving mouse
            if(direction != DIRECTION_UNKNOWN){
                mDirection = direction;
                moveMouse = true;
                canScroll = true;
            }
        }else{
            // mouse up : stop moving mouse
            moveMouse = false;
            mDirection = DIRECTION_UNKNOWN;
            moveCount = 0;
            mSpeed = SPEED_SLOWEST;
            canScroll = false;
        }
    }
    public void scrollMouse(){
        //bug149266 lijiangsong Modify mouse move in browser 2018/10/11 begin
        //Faceboooklite can't scroll sunchao 2018-10-30 begin
        if(mouseService != null){
        //Faceboooklite can't scroll sunchao 2018-10-30 end
        //bug149266 lijiangsong Modify mouse move in browser 2018/10/11 end
            mouseService.scrollMouse(mDirection);
        }
    }
}

