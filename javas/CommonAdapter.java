package com.sagereal.zq.test;

import java.util.List;
import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

/**
 * 
 * 万能Adapter
 * @author zq
 *
 * @param <T>
 */
public abstract class CommonAdapter<T extends Object> extends BaseAdapter {
	/** 上下文 */
	protected Context mContext;
	/** 数据源 */
	protected List mData;
	private int mLayoutId;
	public CommonAdapter(Context mContext, int layoutId) {
		super();
		this.mContext = mContext;
		this.mLayoutId = layoutId;
	}
	public int getCount() {
		return mData.size();
	}
	public T getItem(int position) {
		return (T) (mData == null ? 0 : mData.get(position));
	}
	public long getItemId(int position) {
		return position;
	}
	public View getView(int position, View convertView, ViewGroup parent) {
		ViewHolder holder = ViewHolder.getViewHolder(mContext, convertView, parent, mLayoutId, position);
		convert(holder, getItem(position));
		return holder.getConvertView();
	}
	/*** 设置数据 */
	public abstract void setData(List data);
	/*** 实现给View赋数据的方法 */
	public abstract void convert(ViewHolder holder, T item);
}

class ViewHolder<T extends View> {
	/** the object of the TAG */
	private String TAG = getClass().getSimpleName();
	/** the object of the view */
	private SparseArray<View> mViews;
	/** the object of the position */
	private int mPosition;
	/** the object of the converview */
	private View mConvertView;
	/***
	 * 构造方法
	 * 
	 * @param context
	 * @param parent
	 * @param layoutId
	 * @param position
	 */
	public ViewHolder(Context context, ViewGroup parent, int layoutId, int position) {
		super();
		this.mPosition = position;
		this.mViews = new SparseArray<View>();
		mConvertView = LayoutInflater.from(context).inflate(layoutId, parent, false);
		mConvertView.setTag(this);
	}
	/**
	 * get the object of the ViewHolder
	 * 
	 * @param context
	 * @param convertView
	 * @param parent
	 * @param layoutId
	 * @param position
	 * @return
	 */
	public static ViewHolder getViewHolder(Context context, View convertView, ViewGroup parent, int layoutId, int position) {
		if (convertView == null) {
			return new ViewHolder(context, parent, layoutId, position);
		} else {
			ViewHolder holder = (ViewHolder) convertView.getTag();
			// 修改位置变化
			holder.mPosition = position;
			Log.d("getViewHolder", "getViewHolder：position:--->" + position);
			return holder;
		}
	}
	/**
	 * find the view by the viewId
	 * 
	 * @param viewId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public T findView(int viewId) {
		View view = mViews.get(viewId);
		if (view == null) {
			view = mConvertView.findViewById(viewId);
			// 添加View对象
			mViews.put(viewId, view);
		}
		return (T) view;
	}
	/**
	 * get the object of the convertView
	 * 
	 * @return
	 */
	public View getConvertView() {
		return mConvertView;
	}
	public int getPosition() {
		return mPosition;
	}
	/**
	 * 为TextView设置值
	 * 
	 * @param viewId
	 * @param text
	 * @return
	 */
	public ViewHolder setText(int viewId, String text) {
		TextView textView = (TextView) findView(viewId);
		textView.setText(text);
		return this;
	}
	/**
	 * 为ImageView设置值
	 * 
	 * @param viewId
	 * @param resId
	 * @return
	 */
	public ViewHolder setImageResource(int viewId, int resId) {
		ImageView view = (ImageView) findView(viewId);
		view.setImageResource(resId);
		return this;
	}
	// TODO 待写View设置的辅助的方法
}
