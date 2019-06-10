

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


