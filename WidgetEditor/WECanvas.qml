import QtQuick 2.0

Item {
    property var rects: []
    property var recData: []
    property var text: []
    function createRect(){
        var rect = Qt.createComponent("WERect.qml")
        var rectObj = rect.createObject(mainWindow, {"x":0, "y":20})
        rects.push(rectObj)
    }

    function getData(){
        for(var i = 0; i < rects.length; i++){
            if(!rects[i].color) rects[i].color = ""
            if(!rects[i].source) rects[i].source = ""
            if(!rects[i].text) rects[i].text = ""
            if(!rects[i].textColor) rects[i].textColor = "#00000000"
        }

        for(var i = 0; i < rects.length; i++){
            recData.push("\n\n    Rectangle{\n        Image{\n            anchors.fill: parent\n            source: \""  + rects[i].source + "\"\n        }\n        Text{\n            anchors.fill: parent\n            text: \"" + rects[i].text + "\"\n            font.pixelSize: " + rects[i].textSize + "\n            color: \"" + rects[i].textColor + "\"\n        }\n        x: "+ rects[i].x +"\n        y: " + rects[i].y + "\n        width: " + rects[i].width + "\n        height: " + rects[i].height + "\n        color: \"" + rects[i].color + "\"\n    }")
        }
        recData.push("\n}\n")

    }


}
