import QtQuick 2.7
import QtQuick.Controls 1.3
//import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

Window {
    title: "About The Author"
    width: 320; height: 240
    minimumWidth: 320; minimumHeight: 240
    modality: Qt.ApplicationModal
    color: systemPalette.window
    ScrollView{
        anchors.fill: parent
    }
    TextEdit{
        id: textEdit
        anchors.fill: parent
        anchors.margins: 10
        renderType: Text.NativeRendering
        textFormat: TextEdit.RichText
        wrapMode: TextEdit.Wrap
        readOnly: true
        selectByMouse: false
        onLinkActivated: Qt.openUrlExternally(link)
        text: "<b>" + Qt.application.name + " " + Qt.application.version + "</b><br><br>
              This is a QML File Editor, you can set visible items by your mouse, and the QML File will be generated.<br>
              My real name is chuyuan Xiong, you can call me Ecohnoch, this is my English name. <br>
              If you want to see more things , you can goto <a href=\"https://www.github.com/ecohnoch\"> <br>
              My Github Website."
        MouseArea{
            anchors.fill: parent
            cursorShape: textEdit.hoveredLink ? Qt.PointingHandCursor : Qt.ArrowCursor
            acceptedButtons: Qt.NoButton
        }
    }



}
