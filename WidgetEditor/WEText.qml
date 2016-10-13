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
    }
    function addText(position, text){
        mainText.insert(position, text)
    }
}
