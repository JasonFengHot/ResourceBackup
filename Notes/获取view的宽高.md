

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

SharePreference监听
``` Java
SharedPreferences sp1 = getSharedPreferences(getPackageName() + "test", MODE_PRIVATE);
sp1.registerOnSharedPreferenceChangeListener(new SharedPreferences.OnSharedPreferenceChangeListener() { 
    @Override 
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
    	// do any thing you want 
    }
});
```

TextView各种padding解析、长度测量

详细说明：TextView的文字长度测量及各种padding解析
https://www.jianshu.com/p/fd9cce7a333f


1.View.post()原理

原文跳转：【Andorid源码解析】View.post() 到底干了啥
https://www.jianshu.com/p/85fc4decc947



原文跳转：Android KeyEvent 点击事件分发处理流程（一）
https://www.jianshu.com/p/2f28386706a0