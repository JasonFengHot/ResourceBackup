import java.io.File;

public class Main {
    public static void main(String[] args) {
        File file = new File("/home/zq/Downloads/Kika-20190527-18Lang/Kika-20190527-18Lang/sos");
        for (String fileName : file.list()) {
            if (fileName.endsWith(".so")) {
                System.out.println("PRODUCT_COPY_FILES += vendor/mediatek/proprietary/packages/inputmethods/KikaIME/lib/"+fileName+":system/lib/"+fileName);
            }
        }
    }
}
