# QML-Generator
This project can automatically generate QML Codes!!

#工程简介
##一.PlatForm
    Qt5.7 QtQuick 2.7, Windows 10 和 Ubuntu 16.04均编译通过
<br>
##二.功能
###2.1快速创建可视化元素
####2.1.1支持用户手动创建可视化元素(rect),并且双击该元素对其属性值进行修改,属性值目前有下面几种:
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
![image](https://github.com/ecohnoch/QML-Generator/raw/master/WidgetEditor/image/briefView4.png)
####2.1.2支持用户手动创建动态图片(aniImg),并且双击该元素对其属性值进行修改,属性值目前有下面几种:
        * x
        * y
        * width
        * height
        * source
####2.1.3支持用户手动创建音乐元素(music),并且双击该元素可以对其属性值进行修改,属性值目前有下面几种:
        * source
        * isLoop(是否循环播放
        * volumn
        * sure(是否隐藏该元素
####2.1.4支持用户手动创建管理元素(manager),双击该元素可以找到目前画板上所有的对象
        如下图:
![image](https://github.com/ecohnoch/QML-Generator/raw/master/WidgetEditor/image/briefView5.png)
###2.2根据结果,生成QML文档
    点击File-OutPut, 即可生成所创建的可视化元素的QML文档,可复制,可粘贴,可以直接用load生成界面,也可以保存为文本后命令行生成
![image](https://github.com/ecohnoch/QML-Generator/raw/master/WidgetEditor/image/briefView6.png)
![image](https://github.com/ecohnoch/QML-Generator/raw/master/WidgetEditor/image/briefView7.png)
##三.使用方法
###3.1创建可视化元素
    点击右边的按钮即可创建一个可视化元素,理论上创建的数量无上限
    鼠标区域在元素之内时表示选中, 滑轮可以改变width和height,双击其可编辑其属性
###3.2生成QML文档
    点击File-OutPut即可, 注意,请在最后完成编辑之后再输出,不然会出现奇怪的错误
##四.关于与作者信息
![image](https://github.com/ecohnoch/QML-Generator/raw/master/WidgetEditor/image/briefView3.png)
    Ecohnoch, 岐山凤鸣, 作于2016年10月14日
