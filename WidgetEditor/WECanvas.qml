import QtQuick 2.0

Item {

    function createRect(){
        var rect = Qt.createComponent("WERect.qml")
        var rectObj = rect.createObject(mainWindow, {"x":0, "y":20})

        outPut.addText(0,
                   "import QtQuick 2.7\nRectangle{\n}\n")
    }

}
