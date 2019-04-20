package com.iqqijni.dv12key.tools;

import android.content.Context;

public class SystemPropertiesProxy {
    public static String get(Context context, String key) throws IllegalArgumentException {
        String ret = "";
        try {
            Class SystemProperties = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (String) SystemProperties.getMethod("get", new Class[]{String.class}).invoke(SystemProperties, new Object[]{new String(key)});
        } catch (IllegalArgumentException iAE) {
            throw iAE;
        } catch (Exception e) {
            return "";
        }
    }

    public static String get(Context context, String key, String def) throws IllegalArgumentException {
        String ret = def;
        try {
            Class SystemProperties = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (String) SystemProperties.getMethod("get", new Class[]{String.class, String.class}).invoke(SystemProperties, new Object[]{new String(key), new String(def)});
        } catch (IllegalArgumentException iAE) {
            throw iAE;
        } catch (Exception e) {
            return def;
        }
    }

    public static Integer getInt(Context context, String key, int def) throws IllegalArgumentException {
        Integer ret = Integer.valueOf(def);
        try {
            Class SystemProperties = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (Integer) SystemProperties.getMethod("getInt", new Class[]{String.class, Integer.TYPE}).invoke(SystemProperties, new Object[]{new String(key), new Integer(def)});
        } catch (IllegalArgumentException iAE) {
            throw iAE;
        } catch (Exception e) {
            return Integer.valueOf(def);
        }
    }

    public static Long getLong(Context context, String key, long def) throws IllegalArgumentException {
        Long ret = Long.valueOf(def);
        try {
            Class SystemProperties = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (Long) SystemProperties.getMethod("getLong", new Class[]{String.class, Long.TYPE}).invoke(SystemProperties, new Object[]{new String(key), new Long(def)});
        } catch (IllegalArgumentException iAE) {
            throw iAE;
        } catch (Exception e) {
            return Long.valueOf(def);
        }
    }

    public static Boolean getBoolean(Context context, String key, boolean def) throws IllegalArgumentException {
        Boolean ret = Boolean.valueOf(def);
        try {
            Class SystemProperties = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (Boolean) SystemProperties.getMethod("getBoolean", new Class[]{String.class, Boolean.TYPE}).invoke(SystemProperties, new Object[]{new String(key), new Boolean(def)});
        } catch (IllegalArgumentException iAE) {
            throw iAE;
        } catch (Exception e) {
            return Boolean.valueOf(def);
        }
    }
}
