import QtAV 1.6
import QtQuick 2.7


Item {
    property var allObj: []
    property var objName: []
    function getObjNum() {return allObj.length}
    function getObjName(index) {return objName[index]}
    function getObj(index) {return allObj[index]}
    //rect
    property var rects: []
    property var recData: []
    property var text: []
    //animatedImage
    property var aniImages: []
    property var aniData: []
    //music
    property var musics: []
    property var musicData: []
    //buttons
    property var buttons: []
    property var buttonData: []

    function createRect(){
        var rect = Qt.createComponent("WERect.qml")
        var rectObj = rect.createObject(mainItem, {"x":0, "y":20})
        rects.push(rectObj)
        allObj.push(rectObj)
        objName.push("rect")
    }

    function creatAnimatedImage(){
        var aniImage = Qt.createComponent("WEBAnimate.qml")
        var aniImageObj = aniImage.createObject(mainItem, {"x": 0, "y":20})
        aniImages.push(aniImageObj)
        allObj.push(aniImageObj)
        objName.push("aniImg")
    }

    function creatMusic(){
        var music = Qt.createComponent("WEMusic.qml")
        var musicObj = music.createObject(mainItem, {"x": 0, "y": 20})
        musics.push(musicObj)
        allObj.push(musicObj)
        objName.push("music")
    }

    function creatButton(){
        var button = Qt.createComponent("WERealButton.qml")
        var buttonObj = button.createObject(mainItem, {"x": 0, "y": 20})
        buttons.push(button)
        allObj.push(button)
        objName.push("button")
    }

    function getData(){
        for(var i = 0; i < rects.length; i++){
            if(!rects[i].color) rects[i].color = ""
            if(!rects[i].source) rects[i].source = ""
            if(!rects[i].text) rects[i].text = ""
            if(!rects[i].textColor && rects[i].text === "") rects[i].textColor = "#00000000"
        }

        for(var i = 0; i < aniImages.length; i++){
            if(!aniImages[i].source) aniImages[i].source = ""
        }

        for(var i = 0; i < musics.length; i++){
            if(!musics[i].source) musics[i].source = ""
        }

        for(var i = 0; i < rects.length; i++){
            recData.push("\n\n    Rectangle{\n        Image{\n            anchors.fill: parent\n            source: \""  + rects[i].source + "\"\n        }\n        Text{\n            anchors.fill: parent\n            text: \"" + rects[i].text + "\"\n            font.pixelSize: " + rects[i].textSize + "\n            color: \"" + ((rects[i].textColor==="")?"#00000000":rects[i].textColor) + "\"\n        }\n        x: "+ rects[i].x +"\n        y: " + rects[i].y + "\n        width: " + rects[i].width + "\n        height: " + rects[i].height + "\n        color: \"" + rects[i].color + "\"\n    }")
        }

        for(var i = 0; i < aniImages.length; i++){
            aniData.push("\n    AnimatedImage{\n        x: " + aniImages[i].x + "\n        y: " + aniImages[i].y + "\n        width: " + aniImages[i].width + "\n        height: " + aniImages[i].height + "\n        source: \"" + aniImages[i].source + "\"\n    }\n\n")
        }

        for(var i = 0; i < musics.length; i++){
            musicData.push("\n    Video{\n        source:\"" + musics[i].source + "\"\n        onStopped: {if(" + musics[i].isLoop + ") play()}\n        volume: " + musics[i].volume + "\n    }\n\n")
        }
        musicData.push("\n}\n")
    }


}
