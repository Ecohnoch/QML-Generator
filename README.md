# QML-Generator
This project can automatically generate QML Codes!!

#工程简介
##一.PlatForm
    Qt5.7 QtQuick 2.7, Windows 10 和 Ubuntu 16.04均编译通过
<br>
##二.功能
###2.1快速创建可视化元素
    支持用户手动创建可视化元素(rect),并且双击该元素对其属性值进行修改,属性值目前有下面几种:
      * x
      * y
      * width
      * height
      * color
      * source (图片的路径
      * text (文字
      * textSize
      * textColor
    如下图:
![image](https://github.com/ecohnoch/QML-Generator/raw/master/WidgetEditor/image/briefView.png)  
###2.2根据结果,生成QML文档
    点击File-OutPut, 即可生成所创建的可视化元素的QML文档,保存qml结尾文本文件之后,win用户可以直接使用命令行的qmlscene打开界面
    如下图 :
![image](https://github.com/ecohnoch/QML-Generator/raw/master/WidgetEditor/image/briefView2.png)
##三.使用方法
###3.1创建可视化元素
    点击右边的rect按钮即可创建一个可视化元素,理论上创建的数量无上限
    鼠标区域在元素之内时表示选中, 滑轮可以改变width和height,双击其可编辑其属性
###3.2生成QML文档
    点击File-OutPut即可, 注意,请在最后完成编辑之后再输出,不然会出现奇怪的错误
##四.关于与作者信息
![image](https://github.com/ecohnoch/QML-Generator/raw/master/WidgetEditor/image/briefView3.png)
    Ecohnoch, 岐山凤鸣, 作于2016年10月14日
