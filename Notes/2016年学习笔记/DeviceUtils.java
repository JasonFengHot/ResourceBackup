package com.sagereal.zq.test;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Log;

public class DeviceUtils {
	/**
	 * 获取应用程序的IMEI号
	 */
	public static String getIMEI(Context context) {
		if (context == null) {
			Log.e("YQY", "getIMEI  context为空");
		}
		TelephonyManager telecomManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		String imei = telecomManager.getDeviceId();
		Log.e("YQY", "IMEI标识：" + imei);
		return imei;
	}
	/**
	 * 获取设备的系统版本号
	 */
	public static int getDeviceSDK() {
		int sdk = android.os.Build.VERSION.SDK_INT;
		Log.e("YQY", "设备版本：" + sdk);
		return sdk;
	}
	/**
	 * 获取设备的型号
	 */
	public static String getDeviceName() {
		String model = android.os.Build.MODEL;
		Log.e("YQY", "设备型号：" + model);
		return model;
	}
}