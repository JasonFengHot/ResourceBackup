import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

public class ParseApk {
	public static void main(String[] args) {
		//System.out.println("args0:"+args[0]);
		if (args == null || args.length == 0 || args[0] == null || !args[0].endsWith(".apk")) {
			System.out.println("Please input right apk path!");
			return;
		}
		
		ArrayList<String> libNames = parseLibFiles(new File(args[0]));
		System.out.println("# add to Android.mk");
		for (String libName : libNames) {
			System.out.println("#################### " + libName + " begin ####################");
			System.out.println("include $(CLEAR_VARS)");
			System.out.println("LOCAL_MODULE := " + libName);
			System.out.println("LOCAL_SRC_FILES := lib/" + libName + ".so");
			System.out.println("LOCAL_MODULE_CLASS := SHARED_LIBRARIES");
			System.out.println("LOCAL_MODULE_TAGS := optional");
			System.out.println("LOCAL_MODULE_SUFFIX := .so");
			System.out.println("LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib");
			System.out.println("include $(BUILD_PREBUILT)");
			System.out.println("#################### " + libName + " end   ####################");
			System.out.println();
		}
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println("# add to common.mk");
		for(String libName:libNames){
			System.out.println("PRODUCT_PACKAGES += " + libName);
		}
		

	}

	public static ArrayList<String> parseLibFiles(File file) {
		ArrayList<String> libNames = new ArrayList<String>();
		try {
			ZipFile zipfile = new ZipFile(file); // 创建ZipFile对象
			// System.out.println(zipfile.getName()); // 打印Zip文件路径
			// System.out.println("ZIP条目数：" + zipfile.size()); // 打印Zip文件条目数
			Enumeration<? extends ZipEntry> en = zipfile.entries();
			ZipEntry entry;
			while (en.hasMoreElements()) {
				entry = (ZipEntry) en.nextElement();
				String entryName = entry.getName();
				if (entryName.contains("lib") && entryName.endsWith(".so")) {
					String libName = entryName.substring(entryName.lastIndexOf("/") + 1).replaceAll(".so", "");
					libNames.add(libName);
				}
			}
			zipfile.close();
		} catch (ZipException e) {
			System.out.println(file.getName() + "压缩文件错误");
		} catch (IOException e) {
			System.out.println(file.getName() + "读取文件时出错");
		}
		return libNames;
	}
}

