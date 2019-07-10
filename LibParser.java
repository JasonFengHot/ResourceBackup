import java.io.File;

public class LibParser {
    public static void main(String[] args) {
        File file = new File("vendor/mediatek/proprietary/packages/inputmethods/KikaIME/lib");
        for (String fileName : file.list()) {
            if (fileName.endsWith(".so")) {
                System.out.println("PRODUCT_COPY_FILES += vendor/mediatek/proprietary/packages/inputmethods/KikaIME/lib/"+fileName+":system/lib/"+fileName);
            }
        }
    }
}
