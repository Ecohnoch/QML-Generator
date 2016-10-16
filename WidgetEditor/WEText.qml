import QtQuick 2.7
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

Window {
    title: "OutPut"
    width: 320; height: 240
    minimumWidth: 320; minimumHeight: 240
    modality: Qt.ApplicationModal
    color: systemPalette.window
    //FontLoader{id: font; source: "qrc:/font/liberationmono.ttf"}

    TextArea {
        id: mainText
        anchors.fill: parent
        Layout.fillWidth: true
        Layout.fillHeight: true
        font.family: uiFont.name
        text:"import QtQuick 2.7\nItem{\n    id: root\n    width: 720\n    height: 480\n"
    }
    function addText(position, text){
        mainText.insert(position, text)
    }
    function changeText(start, end, text){
        mainText.remove(start, end)
        mainText.insert(start, text)
    }
    function getText(start, end){
        mainText.getText(start, end)
    }
    function getAllText(){
        return mainText.text
    }

    function getTextLength(){
        return mainText.text.length
    }
    function textShow(){
        mainText.text = "import QtQuick 2.7\nimport QtMultimedia 5.4\nItem{\n    id: root\n    width: 720\n    height: 480\n"
        canvas.getData()
        for(var i = 0; i < canvas.recData.length; i++){
            outPut.addText(outPut.getTextLength(), canvas.recData[i])
        }
        for(var i = 0; i < canvas.aniImages.length; i++){
            outPut.addText(outPut.getTextLength(), canvas.aniData[i])
        }
        for(var i = 0; i < canvas.musicData.length; i++){
            outPut.addText(outPut.getTextLength(), canvas.musicData[i])
            console.log(canvas.musicData[i])
        }
    }
}
