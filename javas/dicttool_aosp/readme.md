下载官方的 LatinIME 代码，切换到 kitkat 分支
把 LatinIME 代码整个拷贝到 packages/inputmethods 目录下
然后用 ./makeMtk xxx -t mma packages/inputmethods/LatinIME/ 的方式模块编译就可以生成 dicttool_aosp

1.准备好sample.combinded文件
注意格式与packages/inputmethods/latinIME/dictionaries/sample.combinded相同,
同时packages/inputmethods/latinIME/dictionaries/下一句有很多.combinded.gz的文件，把这些文件解压就是.combinded文件了。
2.把/out/host/linux-x86/framework/dicttool_aosp.jar 文件和自己写的 sample.combinded 放在同一目录下。在windows 命令行中运行如下指令：
java -jar dicttool_aosp.jar makedict -s sample.combinded -d main_xx.dict （其中的xx代表语言码，例如英语为 en, 俄文为 ru，
要生成英文词库就是 java -jar dicttool_aosp.jar makedict -s sample.combinded -d main_en.dict）（必须已安装JDK,版本需高于build 1.6.0_39-b04，否则可能会报某些方法找不到的错误）
会在当前目录下生成文件main_xx.dict 
3.将生成的main_xx.dict文件拷贝到packages\inputmethods\LatinIME\java\res\raw下
4.然后在packages\inputmethods\LatinIME\java\res\xml\spellchecker.xml文件中查看是否已经有该语言的subtype，如果没有则添加对应语言的subtype。
5.然后重编 latin 输入法。
